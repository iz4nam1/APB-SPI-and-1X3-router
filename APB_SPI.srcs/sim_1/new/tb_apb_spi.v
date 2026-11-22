`timescale 1ns/1ps
/***************************************************************************************************
FILENAME    :  tb_apb_spi.v
DESCRIPTION :  Self-checking testbench for apb_spi (+ spi_master). Four slaves, one per SPI mode.
  - reset values, CONFIG read-back
  - 16 transfers: every slave (mode 0..3) x every clock divider; checks MISO->RX and MOSI->slave
  - PSLVERR on write while busy / write to STATUS, and that busy writes are ignored
****************************************************************************************************/
module tb_apb_spi;

  reg PCLK, PRESETn, PSEL, PENABLE, PWRITE;
  reg [7:0] PADDR, PWDATA;
  wire [7:0] PRDATA;
  wire PREADY, PSLVERR;
  wire miso, mosi, sck;
  wire [3:0] ss_n;
  wire [7:0] s0_rx, s1_rx, s2_rx, s3_rx;
  integer errors, s, c;
  reg [7:0] tx, st, rxv, srx, cfg_rb;
  reg e;

  apb_spi #(.BASE(4'h4)) DUT(.PCLK(PCLK), .PRESETn(PRESETn), .PSEL(PSEL), .PENABLE(PENABLE),
      .PWRITE(PWRITE), .PADDR(PADDR), .PWDATA(PWDATA), .PRDATA(PRDATA), .PREADY(PREADY),
      .PSLVERR(PSLVERR), .miso(miso), .mosi(mosi), .sck(sck), .ss_n(ss_n));

  spi_slave_model #(.CPOL(0), .CPHA(0)) S0(.sck(sck), .ss_n(ss_n[0]), .mosi(mosi), .miso(miso), .tx_data(8'hF0), .rx_data(s0_rx));
  spi_slave_model #(.CPOL(0), .CPHA(1)) S1(.sck(sck), .ss_n(ss_n[1]), .mosi(mosi), .miso(miso), .tx_data(8'hF1), .rx_data(s1_rx));
  spi_slave_model #(.CPOL(1), .CPHA(0)) S2(.sck(sck), .ss_n(ss_n[2]), .mosi(mosi), .miso(miso), .tx_data(8'hF2), .rx_data(s2_rx));
  spi_slave_model #(.CPOL(1), .CPHA(1)) S3(.sck(sck), .ss_n(ss_n[3]), .mosi(mosi), .miso(miso), .tx_data(8'hF3), .rx_data(s3_rx));

  initial begin PCLK = 1'b0; forever #5 PCLK = ~PCLK; end

  // ---------------- APB master tasks (SETUP phase, then ACCESS phase) ----------------
  task apb_write(input [7:0] a, input [7:0] d, output er);
    begin
      @(negedge PCLK); PSEL = 1; PWRITE = 1; PADDR = a; PWDATA = d; PENABLE = 0;
      @(negedge PCLK); PENABLE = 1;
      #4 er = PSLVERR;                       // sample just BEFORE the edge that ends the ACCESS phase
      if (PREADY !== 1'b1) begin $display("[FAIL] PREADY not high"); errors = errors + 1; end
      @(negedge PCLK);
      PSEL = 0; PENABLE = 0; PWRITE = 0;
    end
  endtask

  task apb_read(input [7:0] a, output [7:0] d);
    begin
      @(negedge PCLK); PSEL = 1; PWRITE = 0; PADDR = a; PENABLE = 0;
      @(negedge PCLK); PENABLE = 1;
      #4 d = PRDATA;                         // sample just BEFORE the edge that ends the ACCESS phase
      @(negedge PCLK);
      PSEL = 0; PENABLE = 0;
    end
  endtask

  task expect_true(input cond, input [8*44-1:0] name);
    begin
      if (cond) $display("[PASS] %0s", name);
      else begin $display("[FAIL] %0s", name); errors = errors + 1; end
    end
  endtask

  // one complete byte transfer through the APB registers
  task spi_xfer(input integer slave, input integer clk_sel, input [7:0] txb);
    reg [7:0] cfg, stat, rxd, srxd, expd;
    integer t;
    reg er;
    begin
      cfg  = {2'b00, slave[1], slave[0], slave[1:0], clk_sel[1:0]};   // CPOL=slave[1] CPHA=slave[0]
      expd = 8'hF0 + slave;
      apb_write(8'h40, cfg, er);
      apb_write(8'h44, txb, er);
      apb_write(8'h4C, 8'h01, er);
      stat = 8'hFF; t = 0;
      while (!(stat[0] == 1'b0 && stat[1] == 1'b1) && t < 3000) begin
        apb_read(8'h48, stat);
        t = t + 1;
      end
      apb_read(8'h44, rxd);
      case (slave)
        0: srxd = s0_rx;  1: srxd = s1_rx;  2: srxd = s2_rx;  default: srxd = s3_rx;
      endcase
      if (stat[1] == 1'b1 && rxd === expd && srxd === txb)
        $display("[PASS] mode%0d clk_sel%0d tx=%h rx=%h", slave, clk_sel, txb, rxd);
      else begin
        $display("[FAIL] mode%0d clk_sel%0d tx=%h rx=%h (exp %h) slave_got=%h status=%h",
                 slave, clk_sel, txb, rxd, expd, srxd, stat);
        errors = errors + 1;
      end
    end
  endtask

  initial begin
    errors = 0; PSEL = 0; PENABLE = 0; PWRITE = 0; PADDR = 0; PWDATA = 0; PRESETn = 0;
    repeat (4) @(negedge PCLK);
    PRESETn = 1;
    repeat (2) @(negedge PCLK);

    // reset values
    apb_read(8'h48, st);   expect_true(st === 8'h00, "reset: STATUS = 0");
    apb_read(8'h40, cfg_rb); expect_true(cfg_rb === 8'h00, "reset: CONFIG = 0");
    expect_true(ss_n === 4'b1111, "reset: all SS high");

    // CONFIG read-back
    apb_write(8'h40, 8'h2D, e); apb_read(8'h40, cfg_rb);
    expect_true(cfg_rb === 8'h2D && !e, "CONFIG write/read-back");

    // every mode x every divider
    for (s = 0; s < 4; s = s + 1)
      for (c = 0; c < 4; c = c + 1) begin
        tx = $random;
        spi_xfer(s, c, tx);
      end

    // edge patterns
    spi_xfer(0, 0, 8'h00);
    spi_xfer(1, 0, 8'hFF);
    spi_xfer(3, 1, 8'hA5);

    // busy behaviour: start a slow transfer (mode1, /16) and poke registers meanwhile
    apb_write(8'h40, 8'h17, e);              // CPHA=1, slave1, clk_sel=3
    apb_write(8'h44, 8'h5A, e);
    apb_write(8'h4C, 8'h01, e);
    apb_write(8'h40, 8'h00, e);
    expect_true(e === 1'b1, "write CONFIG while busy -> PSLVERR");
    apb_write(8'h4C, 8'h01, e);
    expect_true(e === 1'b1, "second START while busy -> PSLVERR");
    apb_read(8'h48, st);
    expect_true(st[0] === 1'b1, "STATUS shows BUSY");
    st = 8'hFF;
    while (st[0] !== 1'b0) apb_read(8'h48, st);
    apb_read(8'h40, cfg_rb);
    expect_true(cfg_rb === 8'h17, "busy write was ignored (CONFIG unchanged)");
    apb_read(8'h44, rxv);
    expect_true(rxv === 8'hF1 && s1_rx === 8'h5A, "transfer completed correctly despite pokes");

    // write to read-only STATUS
    apb_write(8'h48, 8'hFF, e);
    expect_true(e === 1'b1, "write to STATUS -> PSLVERR");

    repeat (5) @(negedge PCLK);
    if (errors == 0) $display("=== ALL TESTS PASSED ===");
    else             $display("=== %0d TEST(S) FAILED ===", errors);
    $finish;
  end

  initial begin #2000000; $display("[FAIL] global timeout"); $finish; end
  initial begin $dumpfile("tb_apb_spi.vcd"); $dumpvars(0, tb_apb_spi); end

endmodule