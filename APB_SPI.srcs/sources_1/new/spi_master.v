`timescale 1ns/1ps
/***************************************************************************************************
FILENAME    :  spi_master.v
DESCRIPTION :  8-bit SPI master core, synthesizable, all four SPI modes, 4 slave selects.
               Rewritten from spi_master5: single always block, real resets, no 'Z' values,
               no derived clock (SCK is produced with a clock-enable tick from PCLK).

  clk_sel : SCK = PCLK/2, /4, /8, /16 for 0,1,2,3
  cpol    : SCK idle level           cpha : 0 = sample on leading edge, 1 = sample on trailing edge
  ss_sel  : which of ss_n[3:0] goes low
  start   : 1-cycle pulse (ignored while busy), tx_data is captured on start
  done    : 1-cycle pulse when the byte is finished, rx_data holds the received byte
****************************************************************************************************/
module spi_master(
  input        clk,
  input        rstn,
  input        start,
  input  [7:0] tx_data,
  input  [1:0] clk_sel,
  input  [1:0] ss_sel,
  input        cpol,
  input        cpha,
  input        miso,
  output reg   busy,
  output reg   done,
  output reg [7:0] rx_data,
  output       mosi,
  output       sck,
  output [3:0] ss_n
);

  localparam IDLE = 2'd0, SETUP = 2'd1, XFER = 2'd2, HOLD = 2'd3;

  reg [1:0] state;
  reg [3:0] half;        // PCLK cycles per SCK half period: 1,2,4,8
  reg [3:0] div_cnt;
  reg [3:0] edge_cnt;    // 0..15 : even = leading edge, odd = trailing edge
  reg [7:0] tx_sh, rx_sh;
  reg       mosi_r, sck_r, l_cpha;
  reg [3:0] ss_r;

  wire tick = (div_cnt == (half - 4'd1));

  assign mosi = mosi_r;
  assign sck  = sck_r;
  assign ss_n = ss_r;

  always @(posedge clk) begin
    if (!rstn) begin
      state <= IDLE;  busy <= 1'b0;  done <= 1'b0;  rx_data <= 8'h00;
      half <= 4'd1;   div_cnt <= 4'd0;  edge_cnt <= 4'd0;
      tx_sh <= 8'h00; rx_sh <= 8'h00;
      mosi_r <= 1'b0; sck_r <= 1'b0;  l_cpha <= 1'b0;  ss_r <= 4'b1111;
    end else begin
      done <= 1'b0;
      case (state)

        IDLE: begin
          sck_r   <= cpol;
          div_cnt <= 4'd0;
          if (start) begin
            l_cpha   <= cpha;
            half     <= (4'd1 << clk_sel);
            ss_r     <= ~(4'b0001 << ss_sel);
            edge_cnt <= 4'd0;
            rx_sh    <= 8'h00;
            if (cpha) begin                       // first bit is driven on the first leading edge
              tx_sh  <= tx_data;
              mosi_r <= 1'b0;
            end else begin                        // first bit must already be on MOSI
              mosi_r <= tx_data[7];
              tx_sh  <= {tx_data[6:0], 1'b0};
            end
            busy  <= 1'b1;
            state <= SETUP;
          end
        end

        SETUP: begin                              // SS low for one half period before the first edge
          if (tick) begin div_cnt <= 4'd0; state <= XFER; end
          else      div_cnt <= div_cnt + 1'b1;
        end

        XFER: begin
          if (tick) begin
            div_cnt  <= 4'd0;
            sck_r    <= ~sck_r;
            edge_cnt <= edge_cnt + 1'b1;
            if (!edge_cnt[0]) begin               // leading edge
              if (l_cpha) begin mosi_r <= tx_sh[7]; tx_sh <= {tx_sh[6:0], 1'b0}; end
              else        rx_sh <= {rx_sh[6:0], miso};
            end else begin                        // trailing edge
              if (l_cpha) rx_sh <= {rx_sh[6:0], miso};
              else if (edge_cnt != 4'd15) begin mosi_r <= tx_sh[7]; tx_sh <= {tx_sh[6:0], 1'b0}; end
            end
            if (edge_cnt == 4'd15) state <= HOLD;
          end else
            div_cnt <= div_cnt + 1'b1;
        end

        HOLD: begin                               // SS stays low one more half period
          if (tick) begin
            div_cnt <= 4'd0;
            ss_r    <= 4'b1111;
            mosi_r  <= 1'b0;
            rx_data <= rx_sh;
            busy    <= 1'b0;
            done    <= 1'b1;
            state   <= IDLE;
          end else
            div_cnt <= div_cnt + 1'b1;
        end

      endcase
    end
  end

endmodule