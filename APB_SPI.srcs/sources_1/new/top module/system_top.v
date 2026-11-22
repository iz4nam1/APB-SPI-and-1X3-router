`timescale 1ns/1ps
/***************************************************************************************************
FILENAME    :  system_top.v
DESCRIPTION :  One APB bus, two peripherals:
                 0x40-0x4F  apb_spi     (8-bit SPI master, 4 slave selects)
                 0x60-0x7F  router_apb  (1x3 router)
               Each peripheral returns 0 on PRDATA when it is not selected, so the buses are OR-ed.
****************************************************************************************************/
module system_top(
  input        PCLK,
  input        PRESETn,
  input        PSEL,
  input        PENABLE,
  input        PWRITE,
  input  [7:0] PADDR,
  input  [7:0] PWDATA,
  output [7:0] PRDATA,
  output       PREADY,
  output       PSLVERR,
  input        miso,
  output       mosi,
  output       sck,
  output [3:0] ss_n
);

  wire [7:0] prdata_spi, prdata_rtr;
  wire       pready_spi, pready_rtr, pslverr_spi, pslverr_rtr;

  apb_spi #(.BASE(4'h4)) u_spi(
    .PCLK(PCLK), .PRESETn(PRESETn), .PSEL(PSEL), .PENABLE(PENABLE), .PWRITE(PWRITE),
    .PADDR(PADDR), .PWDATA(PWDATA), .PRDATA(prdata_spi), .PREADY(pready_spi), .PSLVERR(pslverr_spi),
    .miso(miso), .mosi(mosi), .sck(sck), .ss_n(ss_n));

  router_apb #(.BASE(3'b011)) u_rtr(
    .PCLK(PCLK), .PRESETn(PRESETn), .PSEL(PSEL), .PENABLE(PENABLE), .PWRITE(PWRITE),
    .PADDR(PADDR), .PWDATA(PWDATA), .PRDATA(prdata_rtr), .PREADY(pready_rtr), .PSLVERR(pslverr_rtr));

  assign PRDATA  = prdata_spi | prdata_rtr;
  assign PREADY  = pready_spi & pready_rtr;
  assign PSLVERR = pslverr_spi | pslverr_rtr;

endmodule
