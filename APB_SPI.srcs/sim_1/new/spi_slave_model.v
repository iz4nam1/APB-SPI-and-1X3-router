`timescale 1ns/1ps
/***************************************************************************************************
FILENAME    :  spi_slave_model.v      *** SIMULATION ONLY - do not add as a design source ***
DESCRIPTION :  Behavioural SPI slave for testbenches. Supports all four modes (CPOL/CPHA parameters).
               tx_data is loaded when ss_n falls and shifted out on MISO; rx_data is what the master sent.
****************************************************************************************************/
module spi_slave_model #(parameter CPOL = 0, parameter CPHA = 0)(
  input        sck,
  input        ss_n,
  input        mosi,
  output       miso,
  input  [7:0] tx_data,
  output [7:0] rx_data
);

  reg [7:0] tx_sh, rx_sh;
  reg [4:0] ecnt;

  assign miso    = ss_n ? 1'bz : tx_sh[7];
  assign rx_data = rx_sh;

  always @(negedge ss_n) begin
    tx_sh = tx_data;
    rx_sh = 8'h00;
    ecnt  = 5'd0;
  end

  always @(posedge sck or negedge sck) begin
    if (ss_n === 1'b0) begin
      if (ecnt[0] == 1'b0) begin                       // leading edge
        if (CPHA == 0) rx_sh = {rx_sh[6:0], mosi};
        else if (ecnt != 0) tx_sh = {tx_sh[6:0], 1'b0};
      end else begin                                   // trailing edge
        if (CPHA == 0) tx_sh = {tx_sh[6:0], 1'b0};
        else           rx_sh = {rx_sh[6:0], mosi};
      end
      ecnt = ecnt + 1'b1;
    end
  end

endmodule