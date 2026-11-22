`timescale 1ns/1ps
/***************************************************************************************************
FILENAME    :  tb_system.v
DESCRIPTION :  Self-checking system testbench: APB master -> system_top (SPI master + router).
  S1  SPI transfer through the APB bus to slave 1
  S2  router packets sent through the APB registers (ports 2, 1, 0), bytes and output port checked
  S3  bad parity -> ERR flag
  S4  SPI -> router: the byte read over SPI becomes the payload of a router packet
  S5  longest packet (payload 63) so the RX buffer back-pressure path is used
  S6  APB error responses (START with incomplete packet, write to read-only register)
****************************************************************************************************/
module tb_system;

  reg PCLK, PRESETn, PSEL, PENABLE, PWRITE;
  reg [7:0] PADDR, PWDATA;
  wire [7:0] PRDATA;
  wire PREADY, PSLVERR;
  wire miso, mosi, sck;
  wire [3:0] ss_n;
  wire [7:0] s0_rx, s1_rx, s2_rx, s3_rx;

  integer errors;
  reg [7:0] st, rxv, d, p;
  reg       e;

  reg [7:0] exp_b [0:127];
  integer   exp_n;
  reg [7:0] got_b [0:127];
  reg [1:0] got_p [0:127];
  integer   got_n;

  system_top DUT(.PCLK(PCLK), .PRESETn(PRESETn), .PSEL(PSEL), .PENABLE(PENABLE), .PWRITE(PWRITE),
                 .PADDR(PADDR), .PWDATA(PWDATA), .PRDATA(PRDATA), .PREADY(PREADY), .PSLVERR(PSLVERR),
                 .miso(miso), .mosi(mosi), .sck(sck), .ss_n(ss_n));

  spi_slave_model #(.CPOL(0), .CPHA(0)) S0(.sck(sck), .ss_n(ss_n[0]), .mosi(mosi), .miso(miso), .tx_data(8'hF0), .rx_data(s0_rx));
  spi_slave_model #(.CPOL(0), .CPHA(1)) S1(.sck(sck), .ss_n(ss_n[1]), .mosi(mosi), .miso(miso), .tx_data(8'hF1), .rx_data(s1_rx));
  spi_slave_model #(.CPOL(1), .CPHA(0)) S2(.sck(sck), .ss_n(ss_n[2]), .mosi(mosi), .miso(miso), .tx_data(8'hF2), .rx_data(s2_rx));
  spi_slave_model #(.CPOL(1), .CPHA(1)) S3(.sck(sck), .ss_n(ss_n[3]), .mosi(mosi), .miso(miso), .tx_data(8'hF3), .rx_data(s3_rx));

  initial begin PCLK = 1'b0; forever #5 PCLK = ~PCLK; end

  task apb_write(input [7:0] a, input [7:0] dd, output er);
    begin
      @(negedge PCLK); PSEL = 1; PWRITE = 1; PADDR = a; PWDATA = dd; PENABLE = 0;
      @(negedge PCLK); PENABLE = 1;
      #4 er = PSLVERR;                       // sample just BEFORE the edge that ends the ACCESS phase
      @(negedge PCLK);
      PSEL = 0; PENABLE = 0; PWRITE = 0;
    end
  endtask

  task apb_read(input [7:0] a, output [7:0] dd);
    begin
      @(negedge PCLK); PSEL = 1; PWRITE = 0; PADDR = a; PENABLE = 0;
      @(negedge PCLK); PENABLE = 1;
      #4 dd = PRDATA;                        // sample just BEFORE the edge that ends the ACCESS phase
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

  // ---------------- SPI helper ----------------
  task spi_read_byte(input integer slave, input [7:0] txb, output [7:0] rxd);
    reg [7:0] stat; integer t; reg er;
    begin
      apb_write(8'h40, {2'b00, slave[1], slave[0], slave[1:0], 2'b00}, er);
      apb_write(8'h44, txb, er);
      apb_write(8'h4C, 8'h01, er);
      stat = 8'hFF; t = 0;
      while (!(stat[0] == 1'b0 && stat[1] == 1'b1) && t < 2000) begin apb_read(8'h48, stat); t = t + 1; end
      apb_read(8'h44, rxd);
    end
  endtask

  // ---------------- router helpers ----------------
  task push(input [7:0] b);
    reg er;
    begin
      apb_write(8'h60, b, er);
      exp_b[exp_n] = b; exp_n = exp_n + 1;
      if (er) begin $display("[FAIL] push rejected"); errors = errors + 1; end
    end
  endtask

  // fixed_en=1 : first payload byte is fixed_b (used to carry the SPI byte)
  task rtr_send(input [1:0] addr, input [5:0] len, input bad, input fixed_en, input [7:0] fixed_b);
    reg [7:0] par, b; integer k; reg er;
    begin
      par = 8'h00; exp_n = 0;
      b = {len, addr}; push(b); par = par ^ b;
      for (k = 0; k < len; k = k + 1) begin
        b = (fixed_en && k == 0) ? fixed_b : $random;
        push(b); par = par ^ b;
      end
      b = bad ? ~par : par; push(b);
      apb_write(8'h64, 8'h03, er);                  // START + clear ERR
      if (er) begin $display("[FAIL] START rejected"); errors = errors + 1; end
    end
  endtask

  // pops n bytes from the RX buffer while the packet is still streaming
  task rtr_collect(input integer n);
    integer t;
    begin
      got_n = 0; t = 0;
      while (got_n < n && t < 6000) begin
        apb_read(8'h68, st);
        if (st[3]) begin
          apb_read(8'h74, p);
          apb_read(8'h6C, d);
          got_b[got_n] = d; got_p[got_n] = p[1:0]; got_n = got_n + 1;
        end
        t = t + 1;
      end
    end
  endtask

  task rtr_check(input [1:0] addr, input [8*44-1:0] name);
    integer n; reg ok;
    begin
      ok = (got_n == exp_n);
      for (n = 0; n < exp_n; n = n + 1)
        if (got_b[n] !== exp_b[n] || got_p[n] !== addr) ok = 1'b0;
      if (ok) $display("[PASS] %0s", name);
      else begin $display("[FAIL] %0s (got %0d of %0d bytes)", name, got_n, exp_n); errors = errors + 1; end
    end
  endtask

  initial begin
    errors = 0; PSEL = 0; PENABLE = 0; PWRITE = 0; PADDR = 0; PWDATA = 0; PRESETn = 0;
    repeat (4) @(negedge PCLK);
    PRESETn = 1;
    repeat (2) @(negedge PCLK);

    // S1: SPI through the system bus
    spi_read_byte(1, 8'hC3, rxv);
    expect_true(rxv === 8'hF1 && s1_rx === 8'hC3, "S1 SPI transfer via system bus (slave1)");

    // S2: router packets
    rtr_send(2'b10, 6'd5, 1'b0, 1'b0, 8'h00);  rtr_collect(exp_n);  rtr_check(2'b10, "S2 payload5  -> port2");
    apb_read(8'h68, st); expect_true(st[1] === 1'b0 && st[0] === 1'b0, "S2 no ERR, TX idle");
    rtr_send(2'b01, 6'd14, 1'b0, 1'b0, 8'h00); rtr_collect(exp_n);  rtr_check(2'b01, "S2 payload14 -> port1");
    rtr_send(2'b00, 6'd16, 1'b0, 1'b0, 8'h00); rtr_collect(exp_n);  rtr_check(2'b00, "S2 payload16 -> port0");

    // S3: bad parity
    rtr_send(2'b01, 6'd8, 1'b1, 1'b0, 8'h00);  rtr_collect(exp_n);  rtr_check(2'b01, "S3 bad-parity packet delivered");
    repeat (5) @(negedge PCLK);
    apb_read(8'h68, st); expect_true(st[1] === 1'b1, "S3 ERR flag set");
    apb_write(8'h64, 8'h02, e);
    apb_read(8'h68, st); expect_true(st[1] === 1'b0, "S3 ERR flag cleared");

    // S4: SPI byte becomes router payload
    spi_read_byte(2, 8'h00, rxv);
    rtr_send(2'b00, 6'd1, 1'b0, 1'b1, rxv);    rtr_collect(exp_n);  rtr_check(2'b00, "S4 SPI byte routed to port0");
    expect_true(got_b[1] === 8'hF2, "S4 payload byte equals slave2 data F2");

    // S5: longest packet
    rtr_send(2'b10, 6'd63, 1'b0, 1'b0, 8'h00); rtr_collect(exp_n);  rtr_check(2'b10, "S5 payload63 -> port2 (back-pressure)");

    // S6: APB error responses
    apb_write(8'h60, 8'h04, e); apb_write(8'h64, 8'h01, e);
    expect_true(e === 1'b1, "S6 START with incomplete packet -> PSLVERR");
    apb_write(8'h64, 8'h04, e);
    apb_write(8'h68, 8'hFF, e);
    expect_true(e === 1'b1, "S6 write to STATUS -> PSLVERR");

    repeat (5) @(negedge PCLK);
    if (errors == 0) $display("=== ALL TESTS PASSED ===");
    else             $display("=== %0d TEST(S) FAILED ===", errors);
    $finish;
  end

  initial begin #20000000; $display("[FAIL] global timeout"); $finish; end
  initial begin $dumpfile("tb_system.vcd"); $dumpvars(0, tb_system); end

endmodule