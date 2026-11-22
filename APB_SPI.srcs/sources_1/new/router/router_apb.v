`timescale 1ns/1ps
/***************************************************************************************************
FILENAME    :  router_apb.v
DESCRIPTION :  APB slave around router_top, so software (or the SPI side of your system) can send
               packets into the 1x3 router and read them back.

  Why this wrapper is needed: router_top wants ONE byte per clock while pkt_valid is high and it
  stalls with 'busy'. An APB master is slower, so the wrapper
    - stores the packet in a TX buffer (software pushes bytes),
    - on START streams it into the router in hardware, honouring 'busy',
    - drains all three router outputs into an RX buffer (so the router's 30-cycle read timeout
      never fires) and lets software pop the bytes, each tagged with its output port.

  Address = {BASE[2:0], offset[4:0]}      default BASE = 3'b011  ->  0x60 .. 0x7F
  0x60 TXDATA   W   push one byte (header, payload..., parity) into the TX buffer
  0x64 CTRL     W   [0] START (needs a complete packet in the buffer)  [1] clear ERR flag
  0x68 STATUS   R   [0] TX_RUN  [1] ERR (sticky: parity mismatch)  [2] ROUTER_BUSY
                    [3] RX_NOT_EMPTY  [4] RX_FULL
  0x6C RXDATA   R   head byte of the RX buffer; the read pops it
  0x70 RXCOUNT  R   bytes waiting in the RX buffer
  0x74 RXPORT   R   output port (0..2) the head byte came from
  0x78 TXCOUNT  R   bytes in the TX buffer

  PSLVERR: write to a read-only register, push while streaming/full, START with an incomplete
  packet (buffer length must equal header length + 2).
****************************************************************************************************/
module router_apb #(parameter [2:0] BASE = 3'b011)(
  input            PCLK,
  input            PRESETn,
  input            PSEL,
  input            PENABLE,
  input            PWRITE,
  input      [7:0] PADDR,
  input      [7:0] PWDATA,
  output reg [7:0] PRDATA,
  output           PREADY,
  output           PSLVERR
);

  wire       sel = PSEL & (PADDR[7:5] == BASE);
  wire [2:0] idx = PADDR[4:2];
  wire       wr  = sel & PENABLE & PWRITE;
  wire       rd  = sel & PENABLE & ~PWRITE;

  // ---------------- router ----------------
  wire [7:0] d0, d1, d2;
  wire       v0, v1, v2, err, busy;
  wire       pkt_valid_w;
  wire [7:0] data_in_w;
  wire       rb0, rb1, rb2;

  router_top u_router(.clock(PCLK), .resetn(PRESETn), .pkt_valid(pkt_valid_w),
                      .read_enb_0(rb0), .read_enb_1(rb1), .read_enb_2(rb2), .data_in(data_in_w),
                      .busy(busy), .err(err), .vld_out_0(v0), .vld_out_1(v1), .vld_out_2(v2),
                      .data_out_0(d0), .data_out_1(d1), .data_out_2(d2));

  // ---------------- TX buffer + streamer ----------------
  reg [7:0] txb [0:127];
  reg [7:0] tx_cnt;                    // bytes pushed
  reg [6:0] tx_idx;                    // byte being presented to the router
  reg       tx_run;
  reg       err_seen;

  wire [7:0] tx_total = {2'b00, txb[0][7:2]} + 8'd2;      // header + payload + parity
  wire       last     = ({1'b0, tx_idx} == tx_total - 8'd1);

  wire start_cond = (idx == 3'd1) & PWDATA[0] & ~tx_run & (tx_cnt >= 8'd2) & (tx_cnt == tx_total);
  wire start_ok   = wr & start_cond;

  assign pkt_valid_w = tx_run & ~last;
  assign data_in_w   = txb[tx_idx];

  always @(posedge PCLK) begin
    if (!PRESETn) begin
      tx_cnt <= 8'd0; tx_idx <= 7'd0; tx_run <= 1'b0; err_seen <= 1'b0;
    end else begin
      if (err) err_seen <= 1'b1;
      else if (wr & (idx == 3'd1) & PWDATA[1]) err_seen <= 1'b0;

      if (wr & (idx == 3'd0) & ~tx_run & ~tx_cnt[7]) begin
        txb[tx_cnt[6:0]] <= PWDATA;
        tx_cnt <= tx_cnt + 1'b1;
      end

      if (!tx_run) begin
        if (start_ok & ~busy) begin tx_run <= 1'b1; tx_idx <= 7'd0; end
      end else if (!busy) begin              // router consumed the byte on this clock edge
        tx_idx <= tx_idx + 1'b1;
        if (last) begin tx_run <= 1'b0; tx_cnt <= 8'd0; end
      end
    end
  end

  // ---------------- RX capture buffer ----------------
  reg [9:0] rxb [0:63];                // {port, byte}
  reg [5:0] rx_wp, rx_rp;
  reg [6:0] rx_cnt;
  reg [2:0] hit;
  wire      rx_full = (rx_cnt >= 7'd60);

  assign rb0 = v0 & ~rx_full;                      // one port is drained per clock (priority 0>1>2)
  assign rb1 = v1 & ~v0 & ~rx_full;
  assign rb2 = v2 & ~v0 & ~v1 & ~rx_full;

  wire       any_hit = |hit;
  wire [1:0] hport   = hit[0] ? 2'd0 : (hit[1] ? 2'd1 : 2'd2);
  wire [7:0] hdata   = hit[0] ? d0   : (hit[1] ? d1   : d2);
  wire       pop     = rd & (idx == 3'd3) & (rx_cnt != 7'd0);

  always @(posedge PCLK) begin
    if (!PRESETn) begin
      hit <= 3'b000; rx_wp <= 6'd0; rx_rp <= 6'd0; rx_cnt <= 7'd0;
    end else begin
      hit <= {rb2, rb1, rb0};                      // the byte shows up on d* one clock later
      if (any_hit) begin rxb[rx_wp] <= {hport, hdata}; rx_wp <= rx_wp + 1'b1; end
      if (pop)     rx_rp <= rx_rp + 1'b1;
      case ({any_hit, pop})
        2'b10: rx_cnt <= rx_cnt + 1'b1;
        2'b01: rx_cnt <= rx_cnt - 1'b1;
        default: ;
      endcase
    end
  end

  // ---------------- APB read / error ----------------
  assign PREADY  = 1'b1;
  assign PSLVERR = wr & (((idx == 3'd0) & (tx_run | tx_cnt[7])) |
                         ((idx == 3'd1) & PWDATA[0] & ~start_cond) |
                         (idx >= 3'd2));

  always @(*) begin
    PRDATA = 8'h00;
    if (sel & ~PWRITE) begin
      case (idx)
        3'd2: PRDATA = {3'b000, rx_full, (rx_cnt != 7'd0), busy, err_seen, tx_run};
        3'd3: PRDATA = (rx_cnt != 7'd0) ? rxb[rx_rp][7:0] : 8'h00;
        3'd4: PRDATA = {1'b0, rx_cnt};
        3'd5: PRDATA = {6'b0, rxb[rx_rp][9:8]};
        3'd6: PRDATA = tx_cnt;
        default: PRDATA = 8'h00;
      endcase
    end
  end

endmodule
