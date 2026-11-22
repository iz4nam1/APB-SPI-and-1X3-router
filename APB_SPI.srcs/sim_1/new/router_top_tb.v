`timescale 1ns/1ps
/***************************************************************************************************
FILENAME    :  router_top_tb.v
DESCRIPTION :  Self-checking testbench for router_top (prints [PASS]/[FAIL] for every test)

  T1  good packet, payload 5   -> port 2
  T2  good packet, payload 14  -> port 1
  T3  payload 16 (FIFO fills, reader starts late) -> port 0
  T4  bad parity byte          -> err must go high, data still delivered
  T5  timeout: nobody reads    -> FIFO flushed by soft reset, FSM not stuck, next packet works
  T6  invalid address (2'b11)  -> nothing is written
  T7  port0 packet waits in WAIT_TILL_EMPTY while port1 holds unread data -> must not wait for port1
  T8  port1 soft-reset timeout fires in the middle of a port0 packet -> packet must survive
****************************************************************************************************/

module router_top_tb;

  reg clk, resetn, pkt_valid;
  reg read_enb_0, read_enb_1, read_enb_2;
  reg [7:0] datain;
  wire [7:0] data_out_0, data_out_1, data_out_2;
  wire vld_out_0, vld_out_1, vld_out_2, err, busy;

  reg [2:0] rd_en;                 // which output ports the testbench is reading
  reg [7:0] exp_mem [0:191];       // expected bytes, 64 per port: header, payload..., parity
  integer   exp_len [0:2];
  reg [7:0] got_mem [0:191];       // bytes actually read, 64 per port
  integer   got_cnt [0:2];
  integer   errors;
  reg       err_seen;
  reg [2:0] rd_hit;
  time      t0, t1;

  router_top DUT(.clock(clk), .resetn(resetn), .pkt_valid(pkt_valid),
                 .read_enb_0(read_enb_0), .read_enb_1(read_enb_1), .read_enb_2(read_enb_2),
                 .data_in(datain), .busy(busy), .err(err),
                 .vld_out_0(vld_out_0), .vld_out_1(vld_out_1), .vld_out_2(vld_out_2),
                 .data_out_0(data_out_0), .data_out_1(data_out_1), .data_out_2(data_out_2));

  // ---------------- clock ----------------
  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
  end

  // ---------------- reader: reads a port whenever it has data and rd_en says so ----------------
  always @(negedge clk) begin
    read_enb_0 = rd_en[0] & vld_out_0;
    read_enb_1 = rd_en[1] & vld_out_1;
    read_enb_2 = rd_en[2] & vld_out_2;
  end

  // a byte is on data_out the cycle AFTER a read; rd_hit remembers that a read happened
  always @(posedge clk) begin
    rd_hit[0] <= read_enb_0 & vld_out_0;
    rd_hit[1] <= read_enb_1 & vld_out_1;
    rd_hit[2] <= read_enb_2 & vld_out_2;
    if (err) err_seen <= 1'b1;
  end

  always @(negedge clk) begin
    if (rd_hit[0]) begin got_mem[0*64 + got_cnt[0]] = data_out_0; got_cnt[0] = got_cnt[0] + 1; end
    if (rd_hit[1]) begin got_mem[1*64 + got_cnt[1]] = data_out_1; got_cnt[1] = got_cnt[1] + 1; end
    if (rd_hit[2]) begin got_mem[2*64 + got_cnt[2]] = data_out_2; got_cnt[2] = got_cnt[2] + 1; end
  end

  // ---------------- tasks ----------------
  task do_reset;
    begin
      @(negedge clk) resetn = 1'b0;
      @(negedge clk);
      @(negedge clk) resetn = 1'b1;
      @(negedge clk);
    end
  endtask

  task clear_got;
    integer p;
    begin
      for (p = 0; p < 3; p = p + 1) got_cnt[p] = 0;
    end
  endtask

  // sends header, payload, parity (bad_parity=1 sends the inverted parity)
  task send_packet(input [1:0] addr, input [5:0] len, input bad_parity);
    reg [7:0] par, hdr, pl;
    integer k, base;
    begin
      base   = addr * 64;
      par    = 8'h00;
      err_seen = 1'b0;
      wait (!busy);
      @(negedge clk);
      hdr       = {len, addr};
      pkt_valid = 1'b1;
      datain    = hdr;
      par       = par ^ hdr;
      exp_mem[base] = hdr;
      @(negedge clk);
      for (k = 0; k < len; k = k + 1) begin
        wait (!busy);
        @(negedge clk);
        pl     = $random;
        datain = pl;
        par    = par ^ pl;
        exp_mem[base + 1 + k] = pl;
      end
      wait (!busy);
      @(negedge clk);
      pkt_valid = 1'b0;
      datain    = bad_parity ? ~par : par;
      exp_mem[base + 1 + len] = datain;
      exp_len[addr] = len + 2;
      @(negedge clk);
    end
  endtask

  // compares what was read from a port with what was sent to it
  task check_port(input integer port, input [8*40-1:0] name);
    integer n, base, t;
    reg ok;
    begin
      t = 0;
      while (got_cnt[port] < exp_len[port] && t < 400) begin
        @(negedge clk);
        t = t + 1;
      end
      repeat (3) @(negedge clk);
      base = port * 64;
      ok   = (got_cnt[port] == exp_len[port]);
      for (n = 0; n < exp_len[port]; n = n + 1)
        if (got_mem[base + n] !== exp_mem[base + n]) ok = 1'b0;
      if (ok)
        $display("[PASS] %0s", name);
      else begin
        $display("[FAIL] %0s (read %0d of %0d bytes)", name, got_cnt[port], exp_len[port]);
        errors = errors + 1;
      end
    end
  endtask

  task expect_true(input cond, input [8*40-1:0] name);
    begin
      if (cond)
        $display("[PASS] %0s", name);
      else begin
        $display("[FAIL] %0s", name);
        errors = errors + 1;
      end
    end
  endtask

  // ---------------- test sequence ----------------
  initial begin
    errors = 0; rd_en = 3'b000; pkt_valid = 1'b0; datain = 8'h00; resetn = 1'b1;
    read_enb_0 = 1'b0; read_enb_1 = 1'b0; read_enb_2 = 1'b0;
    err_seen = 1'b0; rd_hit = 3'b000;
    exp_len[0] = 0; exp_len[1] = 0; exp_len[2] = 0;
    clear_got;
    do_reset;

    // T1
    clear_got; rd_en = 3'b111;
    send_packet(2'b10, 6'd5, 1'b0);
    check_port(2, "T1 good packet len5 -> port2");
    expect_true(!err_seen, "T1 err stays low");

    // T2
    clear_got;
    send_packet(2'b01, 6'd14, 1'b0);
    check_port(1, "T2 good packet len14 -> port1");
    expect_true(!err_seen, "T2 err stays low");

    // T3: reader starts late so the FIFO fills (header+16 payload > 16 entries)
    clear_got; rd_en = 3'b000;
    fork
      send_packet(2'b00, 6'd16, 1'b0);
      begin repeat (22) @(negedge clk); rd_en = 3'b001; end
    join
    check_port(0, "T3 len16 FIFO-full path -> port0");
    expect_true(!err_seen, "T3 err stays low");

    // T4
    clear_got; rd_en = 3'b111;
    send_packet(2'b01, 6'd8, 1'b1);
    check_port(1, "T4 bad parity packet delivered");
    expect_true(err_seen, "T4 err raised on bad parity");

    // T5: timeout and recovery
    clear_got; rd_en = 3'b000;
    send_packet(2'b00, 6'd4, 1'b0);
    repeat (45) @(negedge clk);
    expect_true(vld_out_0 === 1'b0, "T5 FIFO0 flushed by soft reset");
    expect_true(busy === 1'b0,      "T5 FSM not stuck after timeout");
    clear_got; rd_en = 3'b111;
    send_packet(2'b00, 6'd6, 1'b0);
    check_port(0, "T5 packet after timeout -> port0");

    // T6: invalid address
    clear_got; rd_en = 3'b111;
    wait (!busy);
    @(negedge clk);
    pkt_valid = 1'b1; datain = {6'd4, 2'b11};
    repeat (3) @(negedge clk);
    pkt_valid = 1'b0; datain = 8'h00;
    repeat (3) @(negedge clk);
    expect_true(vld_out_0 === 1'b0 && vld_out_1 === 1'b0 && vld_out_2 === 1'b0,
                "T6 invalid address writes nothing");
    expect_true(busy === 1'b0, "T6 FSM stays idle");

    // T7: FIFO1 holds unread data AND FIFO0 is still non-empty, so a new packet for port0
    //     goes to WAIT_TILL_EMPTY. It must leave that state as soon as FIFO0 (its own fifo) is empty.
    repeat (40) @(negedge clk);
    clear_got; rd_en = 3'b000;
    send_packet(2'b01, 6'd2, 1'b0);               // A -> FIFO1, left unread
    send_packet(2'b00, 6'd2, 1'b0);               // C -> FIFO0, left unread
    fork
      send_packet(2'b00, 6'd3, 1'b0);             // B -> port0 (FIFO0 not empty -> WAIT_TILL_EMPTY)
      begin
        repeat (2) @(negedge clk);
        rd_en = 3'b001;                           // read port0 only, FIFO1 stays unread
        wait (vld_out_0 === 1'b0);                // FIFO0 drained
        repeat (3) @(negedge clk);
        expect_true(!(DUT.FSM.PS == 3'b011 && vld_out_1 === 1'b1),
                    "T7 WAIT ends when OWN fifo empties");
      end
    join
    begin : t7_wait
      integer w;
      w = 0;
      while (got_cnt[0] < 9 && w < 200) begin @(negedge clk); w = w + 1; end
    end
    begin : t7_cmp
      integer n; reg ok;
      ok = (got_cnt[0] == 9);
      for (n = 0; n < 5; n = n + 1)
        if (got_mem[4 + n] !== exp_mem[n]) ok = 1'b0;   // bytes 4..8 read = packet B (bytes 0..3 = packet C)
      expect_true(ok, "T7 packet B delivered intact");
    end

    // T8: the soft reset of ANOTHER port (port1 timeout) must not abort a packet to port0
    repeat (40) @(negedge clk);
    clear_got; rd_en = 3'b001;
    send_packet(2'b01, 6'd2, 1'b0);               // A -> FIFO1, unread: its timeout fires ~30 cycles later
    repeat (16) @(negedge clk);
    send_packet(2'b00, 6'd14, 1'b0);              // B -> port0, long enough to span that timeout
    check_port(0, "T8 port0 packet survives port1 timeout");
    expect_true(!err_seen, "T8 err stays low");

    repeat (5) @(negedge clk);
    if (errors == 0) $display("=== ALL TESTS PASSED ===");
    else             $display("=== %0d TEST(S) FAILED ===", errors);
    $finish;
  end

  initial begin
    #200000;
    $display("[FAIL] global timeout - simulation hung");
    $finish;
  end

  initial begin
    $dumpfile("router_top_tb.vcd");
    $dumpvars(0, router_top_tb);
  end

endmodule