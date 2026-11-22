`timescale 1ns/1ps
/***************************************************************************************************
FILENAME    :  apb_spi.v
DESCRIPTION :  APB slave (8-bit address, 8-bit data) wrapped around spi_master.
               Zero wait states (PREADY = 1). Write happens in the ACCESS phase.

  Address = {BASE[3:0], offset}      default BASE = 4'h4  ->  0x40 .. 0x4F
  0x40 CONFIG  R/W  [1:0] clk_sel  [3:2] slave select  [4] CPHA  [5] CPOL
  0x44 DATA    W: TX byte        R: last received byte
  0x48 STATUS  R    [0] BUSY     [1] DONE (set at end of transfer, cleared on start)
  0x4C CMD     W    [0] START

  PSLVERR is raised for: any write while a transfer is running, and any write to STATUS.
****************************************************************************************************/
module apb_spi #(parameter [3:0] BASE = 4'h4)(
  input            PCLK,
  input            PRESETn,
  input            PSEL,
  input            PENABLE,
  input            PWRITE,
  input      [7:0] PADDR,
  input      [7:0] PWDATA,
  output reg [7:0] PRDATA,
  output           PREADY,
  output           PSLVERR,
  input            miso,
  output           mosi,
  output           sck,
  output     [3:0] ss_n
);

  wire       sel = PSEL & (PADDR[7:4] == BASE);
  wire [1:0] idx = PADDR[3:2];
  wire       wr  = sel & PENABLE & PWRITE;

  reg  [7:0] cfg_reg, tx_reg;
  reg        done_flag;
  wire       busy, done;
  wire [7:0] rx_data;

  wire start = wr & (idx == 2'd3) & PWDATA[0] & ~busy;

  assign PREADY  = 1'b1;
  assign PSLVERR = wr & ((idx == 2'd2) | busy);

  always @(posedge PCLK) begin
    if (!PRESETn) begin
      cfg_reg <= 8'h00; tx_reg <= 8'h00; done_flag <= 1'b0;
    end else begin
      if (start)          done_flag <= 1'b0;
      else if (done)      done_flag <= 1'b1;
      if (wr & ~busy) begin
        if (idx == 2'd0) cfg_reg <= PWDATA;
        if (idx == 2'd1) tx_reg  <= PWDATA;
      end
    end
  end

  always @(*) begin
    PRDATA = 8'h00;
    if (sel & ~PWRITE) begin
      case (idx)
        2'd0: PRDATA = cfg_reg;
        2'd1: PRDATA = rx_data;
        2'd2: PRDATA = {6'b0, done_flag, busy};
        default: PRDATA = 8'h00;
      endcase
    end
  end

  spi_master u_spi(
    .clk(PCLK), .rstn(PRESETn), .start(start), .tx_data(tx_reg),
    .clk_sel(cfg_reg[1:0]), .ss_sel(cfg_reg[3:2]), .cpol(cfg_reg[5]), .cpha(cfg_reg[4]),
    .miso(miso), .busy(busy), .done(done), .rx_data(rx_data),
    .mosi(mosi), .sck(sck), .ss_n(ss_n));

endmodule
