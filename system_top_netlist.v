// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Nov 22 12:25:26 2026
// Host        : Anusna running 64-bit major release  (build 9200)
// Command     : write_verilog -force D:/Projects/xilinx/APB_SPI/system_top_netlist.v
// Design      : system_top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module apb_spi
   (mosi_OBUF,
    SR,
    sck_OBUF,
    PRDATA_OBUF,
    PSLVERR_OBUF,
    \PRDATA[7] ,
    \PRDATA[6] ,
    \PRDATA[5] ,
    \PRDATA[1] ,
    \PRDATA[0] ,
    l_cpha_reg,
    Q,
    PCLK_IBUF_BUFG,
    PRESETn_IBUF,
    PADDR_IBUF,
    PSEL,
    \tx_cnt_reg[2] ,
    \PADDR[4] ,
    \tx_cnt_reg[5] ,
    PSEL_0,
    PWDATA_IBUF,
    \tx_cnt_reg[4] ,
    \tx_cnt_reg[3] ,
    PSEL_IBUF,
    miso_IBUF,
    PENABLE_IBUF,
    PWRITE_IBUF);
  output mosi_OBUF;
  output [0:0]SR;
  output sck_OBUF;
  output [2:0]PRDATA_OBUF;
  output PSLVERR_OBUF;
  output \PRDATA[7] ;
  output \PRDATA[6] ;
  output \PRDATA[5] ;
  output \PRDATA[1] ;
  output \PRDATA[0] ;
  output l_cpha_reg;
  output [3:0]Q;
  input PCLK_IBUF_BUFG;
  input PRESETn_IBUF;
  input [5:0]PADDR_IBUF;
  input PSEL;
  input \tx_cnt_reg[2] ;
  input \PADDR[4] ;
  input \tx_cnt_reg[5] ;
  input PSEL_0;
  input [7:0]PWDATA_IBUF;
  input \tx_cnt_reg[4] ;
  input \tx_cnt_reg[3] ;
  input PSEL_IBUF;
  input miso_IBUF;
  input PENABLE_IBUF;
  input PWRITE_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire \PADDR[4] ;
  wire [5:0]PADDR_IBUF;
  wire PCLK_IBUF_BUFG;
  wire PENABLE_IBUF;
  wire \PRDATA[0] ;
  wire \PRDATA[1] ;
  wire \PRDATA[5] ;
  wire \PRDATA[6] ;
  wire \PRDATA[7] ;
  wire [2:0]PRDATA_OBUF;
  wire PRESETn_IBUF;
  wire PSEL;
  wire PSEL_0;
  wire PSEL_IBUF;
  wire PSLVERR_OBUF;
  wire [7:0]PWDATA_IBUF;
  wire PWRITE_IBUF;
  wire [3:0]Q;
  wire [0:0]SR;
  wire cfg_reg;
  wire \cfg_reg_reg_n_0_[0] ;
  wire \cfg_reg_reg_n_0_[1] ;
  wire \cfg_reg_reg_n_0_[4] ;
  wire \cfg_reg_reg_n_0_[5] ;
  wire \cfg_reg_reg_n_0_[6] ;
  wire \cfg_reg_reg_n_0_[7] ;
  wire done_flag;
  wire l_cpha_reg;
  wire miso_IBUF;
  wire mosi_OBUF;
  wire sck_OBUF;
  wire [1:0]ss_sel;
  wire \tx_cnt_reg[2] ;
  wire \tx_cnt_reg[3] ;
  wire \tx_cnt_reg[4] ;
  wire \tx_cnt_reg[5] ;
  wire [6:0]tx_reg;
  wire tx_reg_0;
  wire \tx_reg_reg_n_0_[7] ;
  wire u_spi_n_9;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \cfg_reg_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(cfg_reg),
        .D(PWDATA_IBUF[0]),
        .Q(\cfg_reg_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cfg_reg_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(cfg_reg),
        .D(PWDATA_IBUF[1]),
        .Q(\cfg_reg_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cfg_reg_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(cfg_reg),
        .D(PWDATA_IBUF[2]),
        .Q(ss_sel[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cfg_reg_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(cfg_reg),
        .D(PWDATA_IBUF[3]),
        .Q(ss_sel[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cfg_reg_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(cfg_reg),
        .D(PWDATA_IBUF[4]),
        .Q(\cfg_reg_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cfg_reg_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(cfg_reg),
        .D(PWDATA_IBUF[5]),
        .Q(\cfg_reg_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cfg_reg_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(cfg_reg),
        .D(PWDATA_IBUF[6]),
        .Q(\cfg_reg_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cfg_reg_reg[7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(cfg_reg),
        .D(PWDATA_IBUF[7]),
        .Q(\cfg_reg_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    done_flag_reg
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(u_spi_n_9),
        .Q(done_flag),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_reg_0),
        .D(PWDATA_IBUF[0]),
        .Q(tx_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_reg_0),
        .D(PWDATA_IBUF[1]),
        .Q(tx_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_reg_0),
        .D(PWDATA_IBUF[2]),
        .Q(tx_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_reg_0),
        .D(PWDATA_IBUF[3]),
        .Q(tx_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_reg_0),
        .D(PWDATA_IBUF[4]),
        .Q(tx_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_reg_0),
        .D(PWDATA_IBUF[5]),
        .Q(tx_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_reg_0),
        .D(PWDATA_IBUF[6]),
        .Q(tx_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_reg_reg[7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_reg_0),
        .D(PWDATA_IBUF[7]),
        .Q(\tx_reg_reg_n_0_[7] ),
        .R(SR));
  spi_master u_spi
       (.E(cfg_reg),
        .\PADDR[4] (\PADDR[4] ),
        .PADDR_IBUF(PADDR_IBUF),
        .PCLK_IBUF_BUFG(PCLK_IBUF_BUFG),
        .PENABLE_IBUF(PENABLE_IBUF),
        .\PRDATA[0] (\PRDATA[0] ),
        .\PRDATA[1] (\PRDATA[1] ),
        .\PRDATA[5] (\PRDATA[5] ),
        .\PRDATA[6] (\PRDATA[6] ),
        .\PRDATA[7] (\PRDATA[7] ),
        .PRDATA_OBUF(PRDATA_OBUF),
        .PRESETn_IBUF(PRESETn_IBUF),
        .PSEL(PSEL),
        .PSEL_0(PSEL_0),
        .PSEL_IBUF(PSEL_IBUF),
        .PSLVERR_OBUF(PSLVERR_OBUF),
        .PWDATA_IBUF(PWDATA_IBUF[0]),
        .PWRITE_IBUF(PWRITE_IBUF),
        .Q({\cfg_reg_reg_n_0_[7] ,\cfg_reg_reg_n_0_[6] ,\cfg_reg_reg_n_0_[5] ,\cfg_reg_reg_n_0_[4] ,ss_sel,\cfg_reg_reg_n_0_[1] ,\cfg_reg_reg_n_0_[0] }),
        .SR(SR),
        .done_flag(done_flag),
        .done_flag_reg(u_spi_n_9),
        .l_cpha_reg_0(l_cpha_reg),
        .miso_IBUF(miso_IBUF),
        .mosi_OBUF(mosi_OBUF),
        .sck_OBUF(sck_OBUF),
        .\ss_n[3] (Q),
        .\tx_cnt_reg[2] (\tx_cnt_reg[2] ),
        .\tx_cnt_reg[3] (\tx_cnt_reg[3] ),
        .\tx_cnt_reg[4] (\tx_cnt_reg[4] ),
        .\tx_cnt_reg[5] (\tx_cnt_reg[5] ),
        .\tx_reg_reg[0] (tx_reg_0),
        .\tx_reg_reg[7] ({\tx_reg_reg_n_0_[7] ,tx_reg}));
endmodule

module router_apb
   (\PRDATA[2] ,
    err_seen_reg_0,
    PRDATA_OBUF,
    \PRDATA[4] ,
    \PRDATA[3] ,
    PSLVERR,
    SR,
    PCLK_IBUF_BUFG,
    PSEL,
    \PADDR[3] ,
    \PADDR[3]_0 ,
    PADDR_IBUF,
    PRESETn_IBUF,
    PWRITE_IBUF,
    PENABLE_IBUF,
    PSEL_IBUF,
    \rx_data_reg[7] ,
    \rx_data_reg[6] ,
    \rx_data_reg[5] ,
    \cfg_reg_reg[1] ,
    \cfg_reg_reg[0] ,
    PWDATA_IBUF);
  output \PRDATA[2] ;
  output err_seen_reg_0;
  output [4:0]PRDATA_OBUF;
  output \PRDATA[4] ;
  output \PRDATA[3] ;
  output PSLVERR;
  input [0:0]SR;
  input PCLK_IBUF_BUFG;
  input PSEL;
  input \PADDR[3] ;
  input \PADDR[3]_0 ;
  input [5:0]PADDR_IBUF;
  input PRESETn_IBUF;
  input PWRITE_IBUF;
  input PENABLE_IBUF;
  input PSEL_IBUF;
  input \rx_data_reg[7] ;
  input \rx_data_reg[6] ;
  input \rx_data_reg[5] ;
  input \cfg_reg_reg[1] ;
  input \cfg_reg_reg[0] ;
  input [7:0]PWDATA_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire \PADDR[3] ;
  wire \PADDR[3]_0 ;
  wire [5:0]PADDR_IBUF;
  wire PCLK_IBUF_BUFG;
  wire PENABLE_IBUF;
  wire \PRDATA[2] ;
  wire \PRDATA[3] ;
  wire \PRDATA[4] ;
  wire [4:0]PRDATA_OBUF;
  wire \PRDATA_OBUF[0]_inst_i_3_n_0 ;
  wire \PRDATA_OBUF[0]_inst_i_4_n_0 ;
  wire \PRDATA_OBUF[1]_inst_i_3_n_0 ;
  wire \PRDATA_OBUF[1]_inst_i_4_n_0 ;
  wire \PRDATA_OBUF[3]_inst_i_3_n_0 ;
  wire \PRDATA_OBUF[4]_inst_i_5_n_0 ;
  wire \PRDATA_OBUF[5]_inst_i_3_n_0 ;
  wire \PRDATA_OBUF[6]_inst_i_3_n_0 ;
  wire \PRDATA_OBUF[7]_inst_i_4_n_0 ;
  wire PRESETn_IBUF;
  wire PSEL;
  wire PSEL_IBUF;
  wire PSLVERR;
  wire PSLVERR_OBUF_inst_i_10_n_0;
  wire PSLVERR_OBUF_inst_i_11_n_0;
  wire PSLVERR_OBUF_inst_i_12_n_0;
  wire PSLVERR_OBUF_inst_i_13_n_0;
  wire PSLVERR_OBUF_inst_i_14_n_0;
  wire PSLVERR_OBUF_inst_i_6_n_0;
  wire PSLVERR_OBUF_inst_i_7_n_0;
  wire PSLVERR_OBUF_inst_i_8_n_0;
  wire [7:0]PWDATA_IBUF;
  wire PWRITE_IBUF;
  wire [0:0]SR;
  wire any_hit;
  wire \cfg_reg_reg[0] ;
  wire \cfg_reg_reg[1] ;
  wire err_seen;
  wire err_seen_i_2_n_0;
  wire err_seen_reg_0;
  wire \hit_reg_n_0_[0] ;
  wire \hit_reg_n_0_[1] ;
  wire \hit_reg_n_0_[2] ;
  wire [5:0]p_0_in_16;
  wire [5:0]p_0_in__5;
  wire [6:0]p_0_in__6;
  wire [9:0]p_1_in;
  wire pop;
  wire rb0;
  wire rb1;
  wire rb2;
  wire [6:0]rx_cnt;
  wire rx_cnt0_carry__0_i_1_n_0;
  wire rx_cnt0_carry__0_i_2_n_0;
  wire rx_cnt0_carry__0_n_3;
  wire rx_cnt0_carry_i_1_n_0;
  wire rx_cnt0_carry_i_2_n_0;
  wire rx_cnt0_carry_i_3_n_0;
  wire rx_cnt0_carry_i_4_n_0;
  wire rx_cnt0_carry_i_5_n_0;
  wire rx_cnt0_carry_n_0;
  wire rx_cnt0_carry_n_1;
  wire rx_cnt0_carry_n_2;
  wire rx_cnt0_carry_n_3;
  wire \rx_cnt[6]_i_1_n_0 ;
  wire [6:0]rx_cnt_reg__0;
  wire \rx_data_reg[5] ;
  wire \rx_data_reg[6] ;
  wire \rx_data_reg[7] ;
  wire [5:0]rx_rp;
  wire \rx_rp[0]_i_1_n_0 ;
  wire \rx_rp[1]_i_1_n_0 ;
  wire \rx_rp[2]_i_1_n_0 ;
  wire \rx_rp[3]_i_1_n_0 ;
  wire \rx_rp[4]_i_1_n_0 ;
  wire \rx_rp[5]_i_2_n_0 ;
  wire \rx_rp[5]_i_3_n_0 ;
  wire \rx_rp[5]_i_4_n_0 ;
  wire \rx_rp[5]_i_5_n_0 ;
  wire \rx_rp[5]_i_6_n_0 ;
  wire [5:0]rx_wp_reg__0;
  wire rxb_reg_0_63_0_2_i_4_n_0;
  wire rxb_reg_0_63_0_2_n_0;
  wire rxb_reg_0_63_0_2_n_1;
  wire rxb_reg_0_63_0_2_n_2;
  wire rxb_reg_0_63_3_5_n_0;
  wire rxb_reg_0_63_3_5_n_1;
  wire rxb_reg_0_63_3_5_n_2;
  wire rxb_reg_0_63_6_8_n_0;
  wire rxb_reg_0_63_6_8_n_1;
  wire rxb_reg_0_63_6_8_n_2;
  wire rxb_reg_0_63_9_9_n_0;
  wire [7:0]tx_cnt;
  wire \tx_cnt[0]_i_1_n_0 ;
  wire \tx_cnt[1]_i_1_n_0 ;
  wire \tx_cnt[2]_i_1_n_0 ;
  wire \tx_cnt[3]_i_2_n_0 ;
  wire \tx_cnt[4]_i_1_n_0 ;
  wire \tx_cnt[5]_i_1_n_0 ;
  wire \tx_cnt[6]_i_1_n_0 ;
  wire \tx_cnt[6]_i_2_n_0 ;
  wire \tx_cnt[7]_i_2_n_0 ;
  wire \tx_cnt[7]_i_3_n_0 ;
  wire \tx_cnt[7]_i_5_n_0 ;
  wire \tx_cnt[7]_i_6_n_0 ;
  wire \tx_cnt[7]_i_7_n_0 ;
  wire tx_idx;
  wire \tx_idx[1]_rep__0_i_1_n_0 ;
  wire \tx_idx[1]_rep__1_i_1_n_0 ;
  wire \tx_idx[1]_rep_i_1_n_0 ;
  wire \tx_idx[2]_i_1_n_0 ;
  wire \tx_idx[6]_i_5_n_0 ;
  wire \tx_idx_reg[1]_rep__0_n_0 ;
  wire \tx_idx_reg[1]_rep__1_n_0 ;
  wire \tx_idx_reg[1]_rep_n_0 ;
  wire [6:0]tx_idx_reg__0;
  wire tx_run_reg_n_0;
  wire \txb[0][7]_i_1_n_0 ;
  wire \txb[0][7]_i_2_n_0 ;
  wire \txb[100][7]_i_1_n_0 ;
  wire \txb[101][7]_i_1_n_0 ;
  wire \txb[102][7]_i_1_n_0 ;
  wire \txb[102][7]_i_2_n_0 ;
  wire \txb[103][7]_i_1_n_0 ;
  wire \txb[104][7]_i_1_n_0 ;
  wire \txb[105][7]_i_1_n_0 ;
  wire \txb[106][7]_i_1_n_0 ;
  wire \txb[107][7]_i_1_n_0 ;
  wire \txb[108][7]_i_1_n_0 ;
  wire \txb[109][7]_i_1_n_0 ;
  wire \txb[10][7]_i_1_n_0 ;
  wire \txb[110][7]_i_1_n_0 ;
  wire \txb[111][7]_i_1_n_0 ;
  wire \txb[112][7]_i_1_n_0 ;
  wire \txb[113][7]_i_1_n_0 ;
  wire \txb[114][7]_i_1_n_0 ;
  wire \txb[115][7]_i_1_n_0 ;
  wire \txb[116][7]_i_1_n_0 ;
  wire \txb[117][7]_i_1_n_0 ;
  wire \txb[118][7]_i_1_n_0 ;
  wire \txb[119][7]_i_1_n_0 ;
  wire \txb[11][7]_i_1_n_0 ;
  wire \txb[120][7]_i_1_n_0 ;
  wire \txb[121][7]_i_1_n_0 ;
  wire \txb[122][7]_i_1_n_0 ;
  wire \txb[123][7]_i_1_n_0 ;
  wire \txb[124][7]_i_1_n_0 ;
  wire \txb[125][7]_i_1_n_0 ;
  wire \txb[125][7]_i_2_n_0 ;
  wire \txb[126][7]_i_1_n_0 ;
  wire \txb[127][7]_i_1_n_0 ;
  wire \txb[12][7]_i_1_n_0 ;
  wire \txb[13][7]_i_1_n_0 ;
  wire \txb[14][7]_i_1_n_0 ;
  wire \txb[15][7]_i_1_n_0 ;
  wire \txb[15][7]_i_2_n_0 ;
  wire \txb[16][7]_i_1_n_0 ;
  wire \txb[16][7]_i_2_n_0 ;
  wire \txb[17][7]_i_1_n_0 ;
  wire \txb[17][7]_i_2_n_0 ;
  wire \txb[18][7]_i_1_n_0 ;
  wire \txb[18][7]_i_2_n_0 ;
  wire \txb[18][7]_i_3_n_0 ;
  wire \txb[19][7]_i_1_n_0 ;
  wire \txb[1][7]_i_1_n_0 ;
  wire \txb[1][7]_i_2_n_0 ;
  wire \txb[20][7]_i_1_n_0 ;
  wire \txb[21][7]_i_1_n_0 ;
  wire \txb[22][7]_i_1_n_0 ;
  wire \txb[23][7]_i_1_n_0 ;
  wire \txb[23][7]_i_2_n_0 ;
  wire \txb[24][7]_i_1_n_0 ;
  wire \txb[25][7]_i_1_n_0 ;
  wire \txb[25][7]_i_2_n_0 ;
  wire \txb[26][7]_i_1_n_0 ;
  wire \txb[26][7]_i_2_n_0 ;
  wire \txb[27][7]_i_1_n_0 ;
  wire \txb[28][7]_i_1_n_0 ;
  wire \txb[29][7]_i_1_n_0 ;
  wire \txb[29][7]_i_2_n_0 ;
  wire \txb[2][7]_i_1_n_0 ;
  wire \txb[2][7]_i_2_n_0 ;
  wire \txb[30][7]_i_1_n_0 ;
  wire \txb[31][7]_i_1_n_0 ;
  wire \txb[31][7]_i_2_n_0 ;
  wire \txb[32][7]_i_1_n_0 ;
  wire \txb[32][7]_i_2_n_0 ;
  wire \txb[33][7]_i_1_n_0 ;
  wire \txb[33][7]_i_2_n_0 ;
  wire \txb[34][7]_i_1_n_0 ;
  wire \txb[35][7]_i_1_n_0 ;
  wire \txb[35][7]_i_2_n_0 ;
  wire \txb[36][7]_i_1_n_0 ;
  wire \txb[37][7]_i_1_n_0 ;
  wire \txb[37][7]_i_2_n_0 ;
  wire \txb[38][7]_i_1_n_0 ;
  wire \txb[39][7]_i_1_n_0 ;
  wire \txb[3][7]_i_1_n_0 ;
  wire \txb[40][7]_i_1_n_0 ;
  wire \txb[40][7]_i_2_n_0 ;
  wire \txb[40][7]_i_3_n_0 ;
  wire \txb[41][7]_i_1_n_0 ;
  wire \txb[41][7]_i_2_n_0 ;
  wire \txb[42][7]_i_1_n_0 ;
  wire \txb[43][7]_i_1_n_0 ;
  wire \txb[43][7]_i_2_n_0 ;
  wire \txb[44][7]_i_1_n_0 ;
  wire \txb[45][7]_i_1_n_0 ;
  wire \txb[46][7]_i_1_n_0 ;
  wire \txb[46][7]_i_2_n_0 ;
  wire \txb[47][7]_i_1_n_0 ;
  wire \txb[48][7]_i_1_n_0 ;
  wire \txb[48][7]_i_2_n_0 ;
  wire \txb[49][7]_i_1_n_0 ;
  wire \txb[49][7]_i_2_n_0 ;
  wire \txb[4][7]_i_1_n_0 ;
  wire \txb[4][7]_i_2_n_0 ;
  wire \txb[4][7]_i_3_n_0 ;
  wire \txb[50][7]_i_1_n_0 ;
  wire \txb[50][7]_i_2_n_0 ;
  wire \txb[51][7]_i_1_n_0 ;
  wire \txb[51][7]_i_2_n_0 ;
  wire \txb[52][7]_i_1_n_0 ;
  wire \txb[52][7]_i_2_n_0 ;
  wire \txb[53][7]_i_1_n_0 ;
  wire \txb[53][7]_i_2_n_0 ;
  wire \txb[54][7]_i_1_n_0 ;
  wire \txb[54][7]_i_2_n_0 ;
  wire \txb[55][7]_i_1_n_0 ;
  wire \txb[56][7]_i_1_n_0 ;
  wire \txb[56][7]_i_2_n_0 ;
  wire \txb[56][7]_i_3_n_0 ;
  wire \txb[57][7]_i_1_n_0 ;
  wire \txb[57][7]_i_2_n_0 ;
  wire \txb[58][7]_i_1_n_0 ;
  wire \txb[59][7]_i_1_n_0 ;
  wire \txb[5][7]_i_1_n_0 ;
  wire \txb[5][7]_i_2_n_0 ;
  wire \txb[5][7]_i_3_n_0 ;
  wire \txb[60][7]_i_1_n_0 ;
  wire \txb[60][7]_i_2_n_0 ;
  wire \txb[61][7]_i_1_n_0 ;
  wire \txb[62][7]_i_1_n_0 ;
  wire \txb[63][7]_i_1_n_0 ;
  wire \txb[64][7]_i_1_n_0 ;
  wire \txb[64][7]_i_2_n_0 ;
  wire \txb[65][7]_i_1_n_0 ;
  wire \txb[65][7]_i_2_n_0 ;
  wire \txb[66][7]_i_1_n_0 ;
  wire \txb[67][7]_i_1_n_0 ;
  wire \txb[68][7]_i_1_n_0 ;
  wire \txb[69][7]_i_1_n_0 ;
  wire \txb[6][7]_i_1_n_0 ;
  wire \txb[6][7]_i_2_n_0 ;
  wire \txb[6][7]_i_3_n_0 ;
  wire \txb[70][7]_i_1_n_0 ;
  wire \txb[70][7]_i_2_n_0 ;
  wire \txb[71][7]_i_1_n_0 ;
  wire \txb[72][7]_i_1_n_0 ;
  wire \txb[72][7]_i_2_n_0 ;
  wire \txb[73][7]_i_1_n_0 ;
  wire \txb[73][7]_i_2_n_0 ;
  wire \txb[74][7]_i_1_n_0 ;
  wire \txb[74][7]_i_2_n_0 ;
  wire \txb[75][7]_i_1_n_0 ;
  wire \txb[76][7]_i_1_n_0 ;
  wire \txb[76][7]_i_2_n_0 ;
  wire \txb[77][7]_i_1_n_0 ;
  wire \txb[78][7]_i_1_n_0 ;
  wire \txb[79][7]_i_1_n_0 ;
  wire \txb[7][7]_i_1_n_0 ;
  wire \txb[80][7]_i_1_n_0 ;
  wire \txb[81][7]_i_1_n_0 ;
  wire \txb[82][7]_i_1_n_0 ;
  wire \txb[82][7]_i_2_n_0 ;
  wire \txb[83][7]_i_1_n_0 ;
  wire \txb[84][7]_i_1_n_0 ;
  wire \txb[84][7]_i_2_n_0 ;
  wire \txb[85][7]_i_1_n_0 ;
  wire \txb[86][7]_i_1_n_0 ;
  wire \txb[87][7]_i_1_n_0 ;
  wire \txb[88][7]_i_1_n_0 ;
  wire \txb[88][7]_i_2_n_0 ;
  wire \txb[89][7]_i_1_n_0 ;
  wire \txb[8][7]_i_1_n_0 ;
  wire \txb[8][7]_i_2_n_0 ;
  wire \txb[8][7]_i_3_n_0 ;
  wire \txb[90][7]_i_1_n_0 ;
  wire \txb[91][7]_i_1_n_0 ;
  wire \txb[92][7]_i_1_n_0 ;
  wire \txb[93][7]_i_1_n_0 ;
  wire \txb[94][7]_i_1_n_0 ;
  wire \txb[94][7]_i_2_n_0 ;
  wire \txb[95][7]_i_1_n_0 ;
  wire \txb[96][7]_i_1_n_0 ;
  wire \txb[96][7]_i_2_n_0 ;
  wire \txb[97][7]_i_1_n_0 ;
  wire \txb[98][7]_i_1_n_0 ;
  wire \txb[99][7]_i_1_n_0 ;
  wire \txb[9][7]_i_1_n_0 ;
  wire \txb[9][7]_i_2_n_0 ;
  wire \txb_reg_n_0_[0][0] ;
  wire \txb_reg_n_0_[0][1] ;
  wire \txb_reg_n_0_[100][0] ;
  wire \txb_reg_n_0_[100][1] ;
  wire \txb_reg_n_0_[100][2] ;
  wire \txb_reg_n_0_[100][3] ;
  wire \txb_reg_n_0_[100][4] ;
  wire \txb_reg_n_0_[100][5] ;
  wire \txb_reg_n_0_[100][6] ;
  wire \txb_reg_n_0_[100][7] ;
  wire \txb_reg_n_0_[101][0] ;
  wire \txb_reg_n_0_[101][1] ;
  wire \txb_reg_n_0_[101][2] ;
  wire \txb_reg_n_0_[101][3] ;
  wire \txb_reg_n_0_[101][4] ;
  wire \txb_reg_n_0_[101][5] ;
  wire \txb_reg_n_0_[101][6] ;
  wire \txb_reg_n_0_[101][7] ;
  wire \txb_reg_n_0_[102][0] ;
  wire \txb_reg_n_0_[102][1] ;
  wire \txb_reg_n_0_[102][2] ;
  wire \txb_reg_n_0_[102][3] ;
  wire \txb_reg_n_0_[102][4] ;
  wire \txb_reg_n_0_[102][5] ;
  wire \txb_reg_n_0_[102][6] ;
  wire \txb_reg_n_0_[102][7] ;
  wire \txb_reg_n_0_[103][0] ;
  wire \txb_reg_n_0_[103][1] ;
  wire \txb_reg_n_0_[103][2] ;
  wire \txb_reg_n_0_[103][3] ;
  wire \txb_reg_n_0_[103][4] ;
  wire \txb_reg_n_0_[103][5] ;
  wire \txb_reg_n_0_[103][6] ;
  wire \txb_reg_n_0_[103][7] ;
  wire \txb_reg_n_0_[104][0] ;
  wire \txb_reg_n_0_[104][1] ;
  wire \txb_reg_n_0_[104][2] ;
  wire \txb_reg_n_0_[104][3] ;
  wire \txb_reg_n_0_[104][4] ;
  wire \txb_reg_n_0_[104][5] ;
  wire \txb_reg_n_0_[104][6] ;
  wire \txb_reg_n_0_[104][7] ;
  wire \txb_reg_n_0_[105][0] ;
  wire \txb_reg_n_0_[105][1] ;
  wire \txb_reg_n_0_[105][2] ;
  wire \txb_reg_n_0_[105][3] ;
  wire \txb_reg_n_0_[105][4] ;
  wire \txb_reg_n_0_[105][5] ;
  wire \txb_reg_n_0_[105][6] ;
  wire \txb_reg_n_0_[105][7] ;
  wire \txb_reg_n_0_[106][0] ;
  wire \txb_reg_n_0_[106][1] ;
  wire \txb_reg_n_0_[106][2] ;
  wire \txb_reg_n_0_[106][3] ;
  wire \txb_reg_n_0_[106][4] ;
  wire \txb_reg_n_0_[106][5] ;
  wire \txb_reg_n_0_[106][6] ;
  wire \txb_reg_n_0_[106][7] ;
  wire \txb_reg_n_0_[107][0] ;
  wire \txb_reg_n_0_[107][1] ;
  wire \txb_reg_n_0_[107][2] ;
  wire \txb_reg_n_0_[107][3] ;
  wire \txb_reg_n_0_[107][4] ;
  wire \txb_reg_n_0_[107][5] ;
  wire \txb_reg_n_0_[107][6] ;
  wire \txb_reg_n_0_[107][7] ;
  wire \txb_reg_n_0_[108][0] ;
  wire \txb_reg_n_0_[108][1] ;
  wire \txb_reg_n_0_[108][2] ;
  wire \txb_reg_n_0_[108][3] ;
  wire \txb_reg_n_0_[108][4] ;
  wire \txb_reg_n_0_[108][5] ;
  wire \txb_reg_n_0_[108][6] ;
  wire \txb_reg_n_0_[108][7] ;
  wire \txb_reg_n_0_[109][0] ;
  wire \txb_reg_n_0_[109][1] ;
  wire \txb_reg_n_0_[109][2] ;
  wire \txb_reg_n_0_[109][3] ;
  wire \txb_reg_n_0_[109][4] ;
  wire \txb_reg_n_0_[109][5] ;
  wire \txb_reg_n_0_[109][6] ;
  wire \txb_reg_n_0_[109][7] ;
  wire \txb_reg_n_0_[10][0] ;
  wire \txb_reg_n_0_[10][1] ;
  wire \txb_reg_n_0_[10][2] ;
  wire \txb_reg_n_0_[10][3] ;
  wire \txb_reg_n_0_[10][4] ;
  wire \txb_reg_n_0_[10][5] ;
  wire \txb_reg_n_0_[10][6] ;
  wire \txb_reg_n_0_[10][7] ;
  wire \txb_reg_n_0_[110][0] ;
  wire \txb_reg_n_0_[110][1] ;
  wire \txb_reg_n_0_[110][2] ;
  wire \txb_reg_n_0_[110][3] ;
  wire \txb_reg_n_0_[110][4] ;
  wire \txb_reg_n_0_[110][5] ;
  wire \txb_reg_n_0_[110][6] ;
  wire \txb_reg_n_0_[110][7] ;
  wire \txb_reg_n_0_[111][0] ;
  wire \txb_reg_n_0_[111][1] ;
  wire \txb_reg_n_0_[111][2] ;
  wire \txb_reg_n_0_[111][3] ;
  wire \txb_reg_n_0_[111][4] ;
  wire \txb_reg_n_0_[111][5] ;
  wire \txb_reg_n_0_[111][6] ;
  wire \txb_reg_n_0_[111][7] ;
  wire \txb_reg_n_0_[112][0] ;
  wire \txb_reg_n_0_[112][1] ;
  wire \txb_reg_n_0_[112][2] ;
  wire \txb_reg_n_0_[112][3] ;
  wire \txb_reg_n_0_[112][4] ;
  wire \txb_reg_n_0_[112][5] ;
  wire \txb_reg_n_0_[112][6] ;
  wire \txb_reg_n_0_[112][7] ;
  wire \txb_reg_n_0_[113][0] ;
  wire \txb_reg_n_0_[113][1] ;
  wire \txb_reg_n_0_[113][2] ;
  wire \txb_reg_n_0_[113][3] ;
  wire \txb_reg_n_0_[113][4] ;
  wire \txb_reg_n_0_[113][5] ;
  wire \txb_reg_n_0_[113][6] ;
  wire \txb_reg_n_0_[113][7] ;
  wire \txb_reg_n_0_[114][0] ;
  wire \txb_reg_n_0_[114][1] ;
  wire \txb_reg_n_0_[114][2] ;
  wire \txb_reg_n_0_[114][3] ;
  wire \txb_reg_n_0_[114][4] ;
  wire \txb_reg_n_0_[114][5] ;
  wire \txb_reg_n_0_[114][6] ;
  wire \txb_reg_n_0_[114][7] ;
  wire \txb_reg_n_0_[115][0] ;
  wire \txb_reg_n_0_[115][1] ;
  wire \txb_reg_n_0_[115][2] ;
  wire \txb_reg_n_0_[115][3] ;
  wire \txb_reg_n_0_[115][4] ;
  wire \txb_reg_n_0_[115][5] ;
  wire \txb_reg_n_0_[115][6] ;
  wire \txb_reg_n_0_[115][7] ;
  wire \txb_reg_n_0_[116][0] ;
  wire \txb_reg_n_0_[116][1] ;
  wire \txb_reg_n_0_[116][2] ;
  wire \txb_reg_n_0_[116][3] ;
  wire \txb_reg_n_0_[116][4] ;
  wire \txb_reg_n_0_[116][5] ;
  wire \txb_reg_n_0_[116][6] ;
  wire \txb_reg_n_0_[116][7] ;
  wire \txb_reg_n_0_[117][0] ;
  wire \txb_reg_n_0_[117][1] ;
  wire \txb_reg_n_0_[117][2] ;
  wire \txb_reg_n_0_[117][3] ;
  wire \txb_reg_n_0_[117][4] ;
  wire \txb_reg_n_0_[117][5] ;
  wire \txb_reg_n_0_[117][6] ;
  wire \txb_reg_n_0_[117][7] ;
  wire \txb_reg_n_0_[118][0] ;
  wire \txb_reg_n_0_[118][1] ;
  wire \txb_reg_n_0_[118][2] ;
  wire \txb_reg_n_0_[118][3] ;
  wire \txb_reg_n_0_[118][4] ;
  wire \txb_reg_n_0_[118][5] ;
  wire \txb_reg_n_0_[118][6] ;
  wire \txb_reg_n_0_[118][7] ;
  wire \txb_reg_n_0_[119][0] ;
  wire \txb_reg_n_0_[119][1] ;
  wire \txb_reg_n_0_[119][2] ;
  wire \txb_reg_n_0_[119][3] ;
  wire \txb_reg_n_0_[119][4] ;
  wire \txb_reg_n_0_[119][5] ;
  wire \txb_reg_n_0_[119][6] ;
  wire \txb_reg_n_0_[119][7] ;
  wire \txb_reg_n_0_[11][0] ;
  wire \txb_reg_n_0_[11][1] ;
  wire \txb_reg_n_0_[11][2] ;
  wire \txb_reg_n_0_[11][3] ;
  wire \txb_reg_n_0_[11][4] ;
  wire \txb_reg_n_0_[11][5] ;
  wire \txb_reg_n_0_[11][6] ;
  wire \txb_reg_n_0_[11][7] ;
  wire \txb_reg_n_0_[120][0] ;
  wire \txb_reg_n_0_[120][1] ;
  wire \txb_reg_n_0_[120][2] ;
  wire \txb_reg_n_0_[120][3] ;
  wire \txb_reg_n_0_[120][4] ;
  wire \txb_reg_n_0_[120][5] ;
  wire \txb_reg_n_0_[120][6] ;
  wire \txb_reg_n_0_[120][7] ;
  wire \txb_reg_n_0_[121][0] ;
  wire \txb_reg_n_0_[121][1] ;
  wire \txb_reg_n_0_[121][2] ;
  wire \txb_reg_n_0_[121][3] ;
  wire \txb_reg_n_0_[121][4] ;
  wire \txb_reg_n_0_[121][5] ;
  wire \txb_reg_n_0_[121][6] ;
  wire \txb_reg_n_0_[121][7] ;
  wire \txb_reg_n_0_[122][0] ;
  wire \txb_reg_n_0_[122][1] ;
  wire \txb_reg_n_0_[122][2] ;
  wire \txb_reg_n_0_[122][3] ;
  wire \txb_reg_n_0_[122][4] ;
  wire \txb_reg_n_0_[122][5] ;
  wire \txb_reg_n_0_[122][6] ;
  wire \txb_reg_n_0_[122][7] ;
  wire \txb_reg_n_0_[123][0] ;
  wire \txb_reg_n_0_[123][1] ;
  wire \txb_reg_n_0_[123][2] ;
  wire \txb_reg_n_0_[123][3] ;
  wire \txb_reg_n_0_[123][4] ;
  wire \txb_reg_n_0_[123][5] ;
  wire \txb_reg_n_0_[123][6] ;
  wire \txb_reg_n_0_[123][7] ;
  wire \txb_reg_n_0_[124][0] ;
  wire \txb_reg_n_0_[124][1] ;
  wire \txb_reg_n_0_[124][2] ;
  wire \txb_reg_n_0_[124][3] ;
  wire \txb_reg_n_0_[124][4] ;
  wire \txb_reg_n_0_[124][5] ;
  wire \txb_reg_n_0_[124][6] ;
  wire \txb_reg_n_0_[124][7] ;
  wire \txb_reg_n_0_[125][0] ;
  wire \txb_reg_n_0_[125][1] ;
  wire \txb_reg_n_0_[125][2] ;
  wire \txb_reg_n_0_[125][3] ;
  wire \txb_reg_n_0_[125][4] ;
  wire \txb_reg_n_0_[125][5] ;
  wire \txb_reg_n_0_[125][6] ;
  wire \txb_reg_n_0_[125][7] ;
  wire \txb_reg_n_0_[126][0] ;
  wire \txb_reg_n_0_[126][1] ;
  wire \txb_reg_n_0_[126][2] ;
  wire \txb_reg_n_0_[126][3] ;
  wire \txb_reg_n_0_[126][4] ;
  wire \txb_reg_n_0_[126][5] ;
  wire \txb_reg_n_0_[126][6] ;
  wire \txb_reg_n_0_[126][7] ;
  wire \txb_reg_n_0_[127][0] ;
  wire \txb_reg_n_0_[127][1] ;
  wire \txb_reg_n_0_[127][2] ;
  wire \txb_reg_n_0_[127][3] ;
  wire \txb_reg_n_0_[127][4] ;
  wire \txb_reg_n_0_[127][5] ;
  wire \txb_reg_n_0_[127][6] ;
  wire \txb_reg_n_0_[127][7] ;
  wire \txb_reg_n_0_[12][0] ;
  wire \txb_reg_n_0_[12][1] ;
  wire \txb_reg_n_0_[12][2] ;
  wire \txb_reg_n_0_[12][3] ;
  wire \txb_reg_n_0_[12][4] ;
  wire \txb_reg_n_0_[12][5] ;
  wire \txb_reg_n_0_[12][6] ;
  wire \txb_reg_n_0_[12][7] ;
  wire \txb_reg_n_0_[13][0] ;
  wire \txb_reg_n_0_[13][1] ;
  wire \txb_reg_n_0_[13][2] ;
  wire \txb_reg_n_0_[13][3] ;
  wire \txb_reg_n_0_[13][4] ;
  wire \txb_reg_n_0_[13][5] ;
  wire \txb_reg_n_0_[13][6] ;
  wire \txb_reg_n_0_[13][7] ;
  wire \txb_reg_n_0_[14][0] ;
  wire \txb_reg_n_0_[14][1] ;
  wire \txb_reg_n_0_[14][2] ;
  wire \txb_reg_n_0_[14][3] ;
  wire \txb_reg_n_0_[14][4] ;
  wire \txb_reg_n_0_[14][5] ;
  wire \txb_reg_n_0_[14][6] ;
  wire \txb_reg_n_0_[14][7] ;
  wire \txb_reg_n_0_[15][0] ;
  wire \txb_reg_n_0_[15][1] ;
  wire \txb_reg_n_0_[15][2] ;
  wire \txb_reg_n_0_[15][3] ;
  wire \txb_reg_n_0_[15][4] ;
  wire \txb_reg_n_0_[15][5] ;
  wire \txb_reg_n_0_[15][6] ;
  wire \txb_reg_n_0_[15][7] ;
  wire \txb_reg_n_0_[16][0] ;
  wire \txb_reg_n_0_[16][1] ;
  wire \txb_reg_n_0_[16][2] ;
  wire \txb_reg_n_0_[16][3] ;
  wire \txb_reg_n_0_[16][4] ;
  wire \txb_reg_n_0_[16][5] ;
  wire \txb_reg_n_0_[16][6] ;
  wire \txb_reg_n_0_[16][7] ;
  wire \txb_reg_n_0_[17][0] ;
  wire \txb_reg_n_0_[17][1] ;
  wire \txb_reg_n_0_[17][2] ;
  wire \txb_reg_n_0_[17][3] ;
  wire \txb_reg_n_0_[17][4] ;
  wire \txb_reg_n_0_[17][5] ;
  wire \txb_reg_n_0_[17][6] ;
  wire \txb_reg_n_0_[17][7] ;
  wire \txb_reg_n_0_[18][0] ;
  wire \txb_reg_n_0_[18][1] ;
  wire \txb_reg_n_0_[18][2] ;
  wire \txb_reg_n_0_[18][3] ;
  wire \txb_reg_n_0_[18][4] ;
  wire \txb_reg_n_0_[18][5] ;
  wire \txb_reg_n_0_[18][6] ;
  wire \txb_reg_n_0_[18][7] ;
  wire \txb_reg_n_0_[19][0] ;
  wire \txb_reg_n_0_[19][1] ;
  wire \txb_reg_n_0_[19][2] ;
  wire \txb_reg_n_0_[19][3] ;
  wire \txb_reg_n_0_[19][4] ;
  wire \txb_reg_n_0_[19][5] ;
  wire \txb_reg_n_0_[19][6] ;
  wire \txb_reg_n_0_[19][7] ;
  wire \txb_reg_n_0_[1][0] ;
  wire \txb_reg_n_0_[1][1] ;
  wire \txb_reg_n_0_[1][2] ;
  wire \txb_reg_n_0_[1][3] ;
  wire \txb_reg_n_0_[1][4] ;
  wire \txb_reg_n_0_[1][5] ;
  wire \txb_reg_n_0_[1][6] ;
  wire \txb_reg_n_0_[1][7] ;
  wire \txb_reg_n_0_[20][0] ;
  wire \txb_reg_n_0_[20][1] ;
  wire \txb_reg_n_0_[20][2] ;
  wire \txb_reg_n_0_[20][3] ;
  wire \txb_reg_n_0_[20][4] ;
  wire \txb_reg_n_0_[20][5] ;
  wire \txb_reg_n_0_[20][6] ;
  wire \txb_reg_n_0_[20][7] ;
  wire \txb_reg_n_0_[21][0] ;
  wire \txb_reg_n_0_[21][1] ;
  wire \txb_reg_n_0_[21][2] ;
  wire \txb_reg_n_0_[21][3] ;
  wire \txb_reg_n_0_[21][4] ;
  wire \txb_reg_n_0_[21][5] ;
  wire \txb_reg_n_0_[21][6] ;
  wire \txb_reg_n_0_[21][7] ;
  wire \txb_reg_n_0_[22][0] ;
  wire \txb_reg_n_0_[22][1] ;
  wire \txb_reg_n_0_[22][2] ;
  wire \txb_reg_n_0_[22][3] ;
  wire \txb_reg_n_0_[22][4] ;
  wire \txb_reg_n_0_[22][5] ;
  wire \txb_reg_n_0_[22][6] ;
  wire \txb_reg_n_0_[22][7] ;
  wire \txb_reg_n_0_[23][0] ;
  wire \txb_reg_n_0_[23][1] ;
  wire \txb_reg_n_0_[23][2] ;
  wire \txb_reg_n_0_[23][3] ;
  wire \txb_reg_n_0_[23][4] ;
  wire \txb_reg_n_0_[23][5] ;
  wire \txb_reg_n_0_[23][6] ;
  wire \txb_reg_n_0_[23][7] ;
  wire \txb_reg_n_0_[24][0] ;
  wire \txb_reg_n_0_[24][1] ;
  wire \txb_reg_n_0_[24][2] ;
  wire \txb_reg_n_0_[24][3] ;
  wire \txb_reg_n_0_[24][4] ;
  wire \txb_reg_n_0_[24][5] ;
  wire \txb_reg_n_0_[24][6] ;
  wire \txb_reg_n_0_[24][7] ;
  wire \txb_reg_n_0_[25][0] ;
  wire \txb_reg_n_0_[25][1] ;
  wire \txb_reg_n_0_[25][2] ;
  wire \txb_reg_n_0_[25][3] ;
  wire \txb_reg_n_0_[25][4] ;
  wire \txb_reg_n_0_[25][5] ;
  wire \txb_reg_n_0_[25][6] ;
  wire \txb_reg_n_0_[25][7] ;
  wire \txb_reg_n_0_[26][0] ;
  wire \txb_reg_n_0_[26][1] ;
  wire \txb_reg_n_0_[26][2] ;
  wire \txb_reg_n_0_[26][3] ;
  wire \txb_reg_n_0_[26][4] ;
  wire \txb_reg_n_0_[26][5] ;
  wire \txb_reg_n_0_[26][6] ;
  wire \txb_reg_n_0_[26][7] ;
  wire \txb_reg_n_0_[27][0] ;
  wire \txb_reg_n_0_[27][1] ;
  wire \txb_reg_n_0_[27][2] ;
  wire \txb_reg_n_0_[27][3] ;
  wire \txb_reg_n_0_[27][4] ;
  wire \txb_reg_n_0_[27][5] ;
  wire \txb_reg_n_0_[27][6] ;
  wire \txb_reg_n_0_[27][7] ;
  wire \txb_reg_n_0_[28][0] ;
  wire \txb_reg_n_0_[28][1] ;
  wire \txb_reg_n_0_[28][2] ;
  wire \txb_reg_n_0_[28][3] ;
  wire \txb_reg_n_0_[28][4] ;
  wire \txb_reg_n_0_[28][5] ;
  wire \txb_reg_n_0_[28][6] ;
  wire \txb_reg_n_0_[28][7] ;
  wire \txb_reg_n_0_[29][0] ;
  wire \txb_reg_n_0_[29][1] ;
  wire \txb_reg_n_0_[29][2] ;
  wire \txb_reg_n_0_[29][3] ;
  wire \txb_reg_n_0_[29][4] ;
  wire \txb_reg_n_0_[29][5] ;
  wire \txb_reg_n_0_[29][6] ;
  wire \txb_reg_n_0_[29][7] ;
  wire \txb_reg_n_0_[2][0] ;
  wire \txb_reg_n_0_[2][1] ;
  wire \txb_reg_n_0_[2][2] ;
  wire \txb_reg_n_0_[2][3] ;
  wire \txb_reg_n_0_[2][4] ;
  wire \txb_reg_n_0_[2][5] ;
  wire \txb_reg_n_0_[2][6] ;
  wire \txb_reg_n_0_[2][7] ;
  wire \txb_reg_n_0_[30][0] ;
  wire \txb_reg_n_0_[30][1] ;
  wire \txb_reg_n_0_[30][2] ;
  wire \txb_reg_n_0_[30][3] ;
  wire \txb_reg_n_0_[30][4] ;
  wire \txb_reg_n_0_[30][5] ;
  wire \txb_reg_n_0_[30][6] ;
  wire \txb_reg_n_0_[30][7] ;
  wire \txb_reg_n_0_[31][0] ;
  wire \txb_reg_n_0_[31][1] ;
  wire \txb_reg_n_0_[31][2] ;
  wire \txb_reg_n_0_[31][3] ;
  wire \txb_reg_n_0_[31][4] ;
  wire \txb_reg_n_0_[31][5] ;
  wire \txb_reg_n_0_[31][6] ;
  wire \txb_reg_n_0_[31][7] ;
  wire \txb_reg_n_0_[32][0] ;
  wire \txb_reg_n_0_[32][1] ;
  wire \txb_reg_n_0_[32][2] ;
  wire \txb_reg_n_0_[32][3] ;
  wire \txb_reg_n_0_[32][4] ;
  wire \txb_reg_n_0_[32][5] ;
  wire \txb_reg_n_0_[32][6] ;
  wire \txb_reg_n_0_[32][7] ;
  wire \txb_reg_n_0_[33][0] ;
  wire \txb_reg_n_0_[33][1] ;
  wire \txb_reg_n_0_[33][2] ;
  wire \txb_reg_n_0_[33][3] ;
  wire \txb_reg_n_0_[33][4] ;
  wire \txb_reg_n_0_[33][5] ;
  wire \txb_reg_n_0_[33][6] ;
  wire \txb_reg_n_0_[33][7] ;
  wire \txb_reg_n_0_[34][0] ;
  wire \txb_reg_n_0_[34][1] ;
  wire \txb_reg_n_0_[34][2] ;
  wire \txb_reg_n_0_[34][3] ;
  wire \txb_reg_n_0_[34][4] ;
  wire \txb_reg_n_0_[34][5] ;
  wire \txb_reg_n_0_[34][6] ;
  wire \txb_reg_n_0_[34][7] ;
  wire \txb_reg_n_0_[35][0] ;
  wire \txb_reg_n_0_[35][1] ;
  wire \txb_reg_n_0_[35][2] ;
  wire \txb_reg_n_0_[35][3] ;
  wire \txb_reg_n_0_[35][4] ;
  wire \txb_reg_n_0_[35][5] ;
  wire \txb_reg_n_0_[35][6] ;
  wire \txb_reg_n_0_[35][7] ;
  wire \txb_reg_n_0_[36][0] ;
  wire \txb_reg_n_0_[36][1] ;
  wire \txb_reg_n_0_[36][2] ;
  wire \txb_reg_n_0_[36][3] ;
  wire \txb_reg_n_0_[36][4] ;
  wire \txb_reg_n_0_[36][5] ;
  wire \txb_reg_n_0_[36][6] ;
  wire \txb_reg_n_0_[36][7] ;
  wire \txb_reg_n_0_[37][0] ;
  wire \txb_reg_n_0_[37][1] ;
  wire \txb_reg_n_0_[37][2] ;
  wire \txb_reg_n_0_[37][3] ;
  wire \txb_reg_n_0_[37][4] ;
  wire \txb_reg_n_0_[37][5] ;
  wire \txb_reg_n_0_[37][6] ;
  wire \txb_reg_n_0_[37][7] ;
  wire \txb_reg_n_0_[38][0] ;
  wire \txb_reg_n_0_[38][1] ;
  wire \txb_reg_n_0_[38][2] ;
  wire \txb_reg_n_0_[38][3] ;
  wire \txb_reg_n_0_[38][4] ;
  wire \txb_reg_n_0_[38][5] ;
  wire \txb_reg_n_0_[38][6] ;
  wire \txb_reg_n_0_[38][7] ;
  wire \txb_reg_n_0_[39][0] ;
  wire \txb_reg_n_0_[39][1] ;
  wire \txb_reg_n_0_[39][2] ;
  wire \txb_reg_n_0_[39][3] ;
  wire \txb_reg_n_0_[39][4] ;
  wire \txb_reg_n_0_[39][5] ;
  wire \txb_reg_n_0_[39][6] ;
  wire \txb_reg_n_0_[39][7] ;
  wire \txb_reg_n_0_[3][0] ;
  wire \txb_reg_n_0_[3][1] ;
  wire \txb_reg_n_0_[3][2] ;
  wire \txb_reg_n_0_[3][3] ;
  wire \txb_reg_n_0_[3][4] ;
  wire \txb_reg_n_0_[3][5] ;
  wire \txb_reg_n_0_[3][6] ;
  wire \txb_reg_n_0_[3][7] ;
  wire \txb_reg_n_0_[40][0] ;
  wire \txb_reg_n_0_[40][1] ;
  wire \txb_reg_n_0_[40][2] ;
  wire \txb_reg_n_0_[40][3] ;
  wire \txb_reg_n_0_[40][4] ;
  wire \txb_reg_n_0_[40][5] ;
  wire \txb_reg_n_0_[40][6] ;
  wire \txb_reg_n_0_[40][7] ;
  wire \txb_reg_n_0_[41][0] ;
  wire \txb_reg_n_0_[41][1] ;
  wire \txb_reg_n_0_[41][2] ;
  wire \txb_reg_n_0_[41][3] ;
  wire \txb_reg_n_0_[41][4] ;
  wire \txb_reg_n_0_[41][5] ;
  wire \txb_reg_n_0_[41][6] ;
  wire \txb_reg_n_0_[41][7] ;
  wire \txb_reg_n_0_[42][0] ;
  wire \txb_reg_n_0_[42][1] ;
  wire \txb_reg_n_0_[42][2] ;
  wire \txb_reg_n_0_[42][3] ;
  wire \txb_reg_n_0_[42][4] ;
  wire \txb_reg_n_0_[42][5] ;
  wire \txb_reg_n_0_[42][6] ;
  wire \txb_reg_n_0_[42][7] ;
  wire \txb_reg_n_0_[43][0] ;
  wire \txb_reg_n_0_[43][1] ;
  wire \txb_reg_n_0_[43][2] ;
  wire \txb_reg_n_0_[43][3] ;
  wire \txb_reg_n_0_[43][4] ;
  wire \txb_reg_n_0_[43][5] ;
  wire \txb_reg_n_0_[43][6] ;
  wire \txb_reg_n_0_[43][7] ;
  wire \txb_reg_n_0_[44][0] ;
  wire \txb_reg_n_0_[44][1] ;
  wire \txb_reg_n_0_[44][2] ;
  wire \txb_reg_n_0_[44][3] ;
  wire \txb_reg_n_0_[44][4] ;
  wire \txb_reg_n_0_[44][5] ;
  wire \txb_reg_n_0_[44][6] ;
  wire \txb_reg_n_0_[44][7] ;
  wire \txb_reg_n_0_[45][0] ;
  wire \txb_reg_n_0_[45][1] ;
  wire \txb_reg_n_0_[45][2] ;
  wire \txb_reg_n_0_[45][3] ;
  wire \txb_reg_n_0_[45][4] ;
  wire \txb_reg_n_0_[45][5] ;
  wire \txb_reg_n_0_[45][6] ;
  wire \txb_reg_n_0_[45][7] ;
  wire \txb_reg_n_0_[46][0] ;
  wire \txb_reg_n_0_[46][1] ;
  wire \txb_reg_n_0_[46][2] ;
  wire \txb_reg_n_0_[46][3] ;
  wire \txb_reg_n_0_[46][4] ;
  wire \txb_reg_n_0_[46][5] ;
  wire \txb_reg_n_0_[46][6] ;
  wire \txb_reg_n_0_[46][7] ;
  wire \txb_reg_n_0_[47][0] ;
  wire \txb_reg_n_0_[47][1] ;
  wire \txb_reg_n_0_[47][2] ;
  wire \txb_reg_n_0_[47][3] ;
  wire \txb_reg_n_0_[47][4] ;
  wire \txb_reg_n_0_[47][5] ;
  wire \txb_reg_n_0_[47][6] ;
  wire \txb_reg_n_0_[47][7] ;
  wire \txb_reg_n_0_[48][0] ;
  wire \txb_reg_n_0_[48][1] ;
  wire \txb_reg_n_0_[48][2] ;
  wire \txb_reg_n_0_[48][3] ;
  wire \txb_reg_n_0_[48][4] ;
  wire \txb_reg_n_0_[48][5] ;
  wire \txb_reg_n_0_[48][6] ;
  wire \txb_reg_n_0_[48][7] ;
  wire \txb_reg_n_0_[49][0] ;
  wire \txb_reg_n_0_[49][1] ;
  wire \txb_reg_n_0_[49][2] ;
  wire \txb_reg_n_0_[49][3] ;
  wire \txb_reg_n_0_[49][4] ;
  wire \txb_reg_n_0_[49][5] ;
  wire \txb_reg_n_0_[49][6] ;
  wire \txb_reg_n_0_[49][7] ;
  wire \txb_reg_n_0_[4][0] ;
  wire \txb_reg_n_0_[4][1] ;
  wire \txb_reg_n_0_[4][2] ;
  wire \txb_reg_n_0_[4][3] ;
  wire \txb_reg_n_0_[4][4] ;
  wire \txb_reg_n_0_[4][5] ;
  wire \txb_reg_n_0_[4][6] ;
  wire \txb_reg_n_0_[4][7] ;
  wire \txb_reg_n_0_[50][0] ;
  wire \txb_reg_n_0_[50][1] ;
  wire \txb_reg_n_0_[50][2] ;
  wire \txb_reg_n_0_[50][3] ;
  wire \txb_reg_n_0_[50][4] ;
  wire \txb_reg_n_0_[50][5] ;
  wire \txb_reg_n_0_[50][6] ;
  wire \txb_reg_n_0_[50][7] ;
  wire \txb_reg_n_0_[51][0] ;
  wire \txb_reg_n_0_[51][1] ;
  wire \txb_reg_n_0_[51][2] ;
  wire \txb_reg_n_0_[51][3] ;
  wire \txb_reg_n_0_[51][4] ;
  wire \txb_reg_n_0_[51][5] ;
  wire \txb_reg_n_0_[51][6] ;
  wire \txb_reg_n_0_[51][7] ;
  wire \txb_reg_n_0_[52][0] ;
  wire \txb_reg_n_0_[52][1] ;
  wire \txb_reg_n_0_[52][2] ;
  wire \txb_reg_n_0_[52][3] ;
  wire \txb_reg_n_0_[52][4] ;
  wire \txb_reg_n_0_[52][5] ;
  wire \txb_reg_n_0_[52][6] ;
  wire \txb_reg_n_0_[52][7] ;
  wire \txb_reg_n_0_[53][0] ;
  wire \txb_reg_n_0_[53][1] ;
  wire \txb_reg_n_0_[53][2] ;
  wire \txb_reg_n_0_[53][3] ;
  wire \txb_reg_n_0_[53][4] ;
  wire \txb_reg_n_0_[53][5] ;
  wire \txb_reg_n_0_[53][6] ;
  wire \txb_reg_n_0_[53][7] ;
  wire \txb_reg_n_0_[54][0] ;
  wire \txb_reg_n_0_[54][1] ;
  wire \txb_reg_n_0_[54][2] ;
  wire \txb_reg_n_0_[54][3] ;
  wire \txb_reg_n_0_[54][4] ;
  wire \txb_reg_n_0_[54][5] ;
  wire \txb_reg_n_0_[54][6] ;
  wire \txb_reg_n_0_[54][7] ;
  wire \txb_reg_n_0_[55][0] ;
  wire \txb_reg_n_0_[55][1] ;
  wire \txb_reg_n_0_[55][2] ;
  wire \txb_reg_n_0_[55][3] ;
  wire \txb_reg_n_0_[55][4] ;
  wire \txb_reg_n_0_[55][5] ;
  wire \txb_reg_n_0_[55][6] ;
  wire \txb_reg_n_0_[55][7] ;
  wire \txb_reg_n_0_[56][0] ;
  wire \txb_reg_n_0_[56][1] ;
  wire \txb_reg_n_0_[56][2] ;
  wire \txb_reg_n_0_[56][3] ;
  wire \txb_reg_n_0_[56][4] ;
  wire \txb_reg_n_0_[56][5] ;
  wire \txb_reg_n_0_[56][6] ;
  wire \txb_reg_n_0_[56][7] ;
  wire \txb_reg_n_0_[57][0] ;
  wire \txb_reg_n_0_[57][1] ;
  wire \txb_reg_n_0_[57][2] ;
  wire \txb_reg_n_0_[57][3] ;
  wire \txb_reg_n_0_[57][4] ;
  wire \txb_reg_n_0_[57][5] ;
  wire \txb_reg_n_0_[57][6] ;
  wire \txb_reg_n_0_[57][7] ;
  wire \txb_reg_n_0_[58][0] ;
  wire \txb_reg_n_0_[58][1] ;
  wire \txb_reg_n_0_[58][2] ;
  wire \txb_reg_n_0_[58][3] ;
  wire \txb_reg_n_0_[58][4] ;
  wire \txb_reg_n_0_[58][5] ;
  wire \txb_reg_n_0_[58][6] ;
  wire \txb_reg_n_0_[58][7] ;
  wire \txb_reg_n_0_[59][0] ;
  wire \txb_reg_n_0_[59][1] ;
  wire \txb_reg_n_0_[59][2] ;
  wire \txb_reg_n_0_[59][3] ;
  wire \txb_reg_n_0_[59][4] ;
  wire \txb_reg_n_0_[59][5] ;
  wire \txb_reg_n_0_[59][6] ;
  wire \txb_reg_n_0_[59][7] ;
  wire \txb_reg_n_0_[5][0] ;
  wire \txb_reg_n_0_[5][1] ;
  wire \txb_reg_n_0_[5][2] ;
  wire \txb_reg_n_0_[5][3] ;
  wire \txb_reg_n_0_[5][4] ;
  wire \txb_reg_n_0_[5][5] ;
  wire \txb_reg_n_0_[5][6] ;
  wire \txb_reg_n_0_[5][7] ;
  wire \txb_reg_n_0_[60][0] ;
  wire \txb_reg_n_0_[60][1] ;
  wire \txb_reg_n_0_[60][2] ;
  wire \txb_reg_n_0_[60][3] ;
  wire \txb_reg_n_0_[60][4] ;
  wire \txb_reg_n_0_[60][5] ;
  wire \txb_reg_n_0_[60][6] ;
  wire \txb_reg_n_0_[60][7] ;
  wire \txb_reg_n_0_[61][0] ;
  wire \txb_reg_n_0_[61][1] ;
  wire \txb_reg_n_0_[61][2] ;
  wire \txb_reg_n_0_[61][3] ;
  wire \txb_reg_n_0_[61][4] ;
  wire \txb_reg_n_0_[61][5] ;
  wire \txb_reg_n_0_[61][6] ;
  wire \txb_reg_n_0_[61][7] ;
  wire \txb_reg_n_0_[62][0] ;
  wire \txb_reg_n_0_[62][1] ;
  wire \txb_reg_n_0_[62][2] ;
  wire \txb_reg_n_0_[62][3] ;
  wire \txb_reg_n_0_[62][4] ;
  wire \txb_reg_n_0_[62][5] ;
  wire \txb_reg_n_0_[62][6] ;
  wire \txb_reg_n_0_[62][7] ;
  wire \txb_reg_n_0_[63][0] ;
  wire \txb_reg_n_0_[63][1] ;
  wire \txb_reg_n_0_[63][2] ;
  wire \txb_reg_n_0_[63][3] ;
  wire \txb_reg_n_0_[63][4] ;
  wire \txb_reg_n_0_[63][5] ;
  wire \txb_reg_n_0_[63][6] ;
  wire \txb_reg_n_0_[63][7] ;
  wire \txb_reg_n_0_[64][0] ;
  wire \txb_reg_n_0_[64][1] ;
  wire \txb_reg_n_0_[64][2] ;
  wire \txb_reg_n_0_[64][3] ;
  wire \txb_reg_n_0_[64][4] ;
  wire \txb_reg_n_0_[64][5] ;
  wire \txb_reg_n_0_[64][6] ;
  wire \txb_reg_n_0_[64][7] ;
  wire \txb_reg_n_0_[65][0] ;
  wire \txb_reg_n_0_[65][1] ;
  wire \txb_reg_n_0_[65][2] ;
  wire \txb_reg_n_0_[65][3] ;
  wire \txb_reg_n_0_[65][4] ;
  wire \txb_reg_n_0_[65][5] ;
  wire \txb_reg_n_0_[65][6] ;
  wire \txb_reg_n_0_[65][7] ;
  wire \txb_reg_n_0_[66][0] ;
  wire \txb_reg_n_0_[66][1] ;
  wire \txb_reg_n_0_[66][2] ;
  wire \txb_reg_n_0_[66][3] ;
  wire \txb_reg_n_0_[66][4] ;
  wire \txb_reg_n_0_[66][5] ;
  wire \txb_reg_n_0_[66][6] ;
  wire \txb_reg_n_0_[66][7] ;
  wire \txb_reg_n_0_[67][0] ;
  wire \txb_reg_n_0_[67][1] ;
  wire \txb_reg_n_0_[67][2] ;
  wire \txb_reg_n_0_[67][3] ;
  wire \txb_reg_n_0_[67][4] ;
  wire \txb_reg_n_0_[67][5] ;
  wire \txb_reg_n_0_[67][6] ;
  wire \txb_reg_n_0_[67][7] ;
  wire \txb_reg_n_0_[68][0] ;
  wire \txb_reg_n_0_[68][1] ;
  wire \txb_reg_n_0_[68][2] ;
  wire \txb_reg_n_0_[68][3] ;
  wire \txb_reg_n_0_[68][4] ;
  wire \txb_reg_n_0_[68][5] ;
  wire \txb_reg_n_0_[68][6] ;
  wire \txb_reg_n_0_[68][7] ;
  wire \txb_reg_n_0_[69][0] ;
  wire \txb_reg_n_0_[69][1] ;
  wire \txb_reg_n_0_[69][2] ;
  wire \txb_reg_n_0_[69][3] ;
  wire \txb_reg_n_0_[69][4] ;
  wire \txb_reg_n_0_[69][5] ;
  wire \txb_reg_n_0_[69][6] ;
  wire \txb_reg_n_0_[69][7] ;
  wire \txb_reg_n_0_[6][0] ;
  wire \txb_reg_n_0_[6][1] ;
  wire \txb_reg_n_0_[6][2] ;
  wire \txb_reg_n_0_[6][3] ;
  wire \txb_reg_n_0_[6][4] ;
  wire \txb_reg_n_0_[6][5] ;
  wire \txb_reg_n_0_[6][6] ;
  wire \txb_reg_n_0_[6][7] ;
  wire \txb_reg_n_0_[70][0] ;
  wire \txb_reg_n_0_[70][1] ;
  wire \txb_reg_n_0_[70][2] ;
  wire \txb_reg_n_0_[70][3] ;
  wire \txb_reg_n_0_[70][4] ;
  wire \txb_reg_n_0_[70][5] ;
  wire \txb_reg_n_0_[70][6] ;
  wire \txb_reg_n_0_[70][7] ;
  wire \txb_reg_n_0_[71][0] ;
  wire \txb_reg_n_0_[71][1] ;
  wire \txb_reg_n_0_[71][2] ;
  wire \txb_reg_n_0_[71][3] ;
  wire \txb_reg_n_0_[71][4] ;
  wire \txb_reg_n_0_[71][5] ;
  wire \txb_reg_n_0_[71][6] ;
  wire \txb_reg_n_0_[71][7] ;
  wire \txb_reg_n_0_[72][0] ;
  wire \txb_reg_n_0_[72][1] ;
  wire \txb_reg_n_0_[72][2] ;
  wire \txb_reg_n_0_[72][3] ;
  wire \txb_reg_n_0_[72][4] ;
  wire \txb_reg_n_0_[72][5] ;
  wire \txb_reg_n_0_[72][6] ;
  wire \txb_reg_n_0_[72][7] ;
  wire \txb_reg_n_0_[73][0] ;
  wire \txb_reg_n_0_[73][1] ;
  wire \txb_reg_n_0_[73][2] ;
  wire \txb_reg_n_0_[73][3] ;
  wire \txb_reg_n_0_[73][4] ;
  wire \txb_reg_n_0_[73][5] ;
  wire \txb_reg_n_0_[73][6] ;
  wire \txb_reg_n_0_[73][7] ;
  wire \txb_reg_n_0_[74][0] ;
  wire \txb_reg_n_0_[74][1] ;
  wire \txb_reg_n_0_[74][2] ;
  wire \txb_reg_n_0_[74][3] ;
  wire \txb_reg_n_0_[74][4] ;
  wire \txb_reg_n_0_[74][5] ;
  wire \txb_reg_n_0_[74][6] ;
  wire \txb_reg_n_0_[74][7] ;
  wire \txb_reg_n_0_[75][0] ;
  wire \txb_reg_n_0_[75][1] ;
  wire \txb_reg_n_0_[75][2] ;
  wire \txb_reg_n_0_[75][3] ;
  wire \txb_reg_n_0_[75][4] ;
  wire \txb_reg_n_0_[75][5] ;
  wire \txb_reg_n_0_[75][6] ;
  wire \txb_reg_n_0_[75][7] ;
  wire \txb_reg_n_0_[76][0] ;
  wire \txb_reg_n_0_[76][1] ;
  wire \txb_reg_n_0_[76][2] ;
  wire \txb_reg_n_0_[76][3] ;
  wire \txb_reg_n_0_[76][4] ;
  wire \txb_reg_n_0_[76][5] ;
  wire \txb_reg_n_0_[76][6] ;
  wire \txb_reg_n_0_[76][7] ;
  wire \txb_reg_n_0_[77][0] ;
  wire \txb_reg_n_0_[77][1] ;
  wire \txb_reg_n_0_[77][2] ;
  wire \txb_reg_n_0_[77][3] ;
  wire \txb_reg_n_0_[77][4] ;
  wire \txb_reg_n_0_[77][5] ;
  wire \txb_reg_n_0_[77][6] ;
  wire \txb_reg_n_0_[77][7] ;
  wire \txb_reg_n_0_[78][0] ;
  wire \txb_reg_n_0_[78][1] ;
  wire \txb_reg_n_0_[78][2] ;
  wire \txb_reg_n_0_[78][3] ;
  wire \txb_reg_n_0_[78][4] ;
  wire \txb_reg_n_0_[78][5] ;
  wire \txb_reg_n_0_[78][6] ;
  wire \txb_reg_n_0_[78][7] ;
  wire \txb_reg_n_0_[79][0] ;
  wire \txb_reg_n_0_[79][1] ;
  wire \txb_reg_n_0_[79][2] ;
  wire \txb_reg_n_0_[79][3] ;
  wire \txb_reg_n_0_[79][4] ;
  wire \txb_reg_n_0_[79][5] ;
  wire \txb_reg_n_0_[79][6] ;
  wire \txb_reg_n_0_[79][7] ;
  wire \txb_reg_n_0_[7][0] ;
  wire \txb_reg_n_0_[7][1] ;
  wire \txb_reg_n_0_[7][2] ;
  wire \txb_reg_n_0_[7][3] ;
  wire \txb_reg_n_0_[7][4] ;
  wire \txb_reg_n_0_[7][5] ;
  wire \txb_reg_n_0_[7][6] ;
  wire \txb_reg_n_0_[7][7] ;
  wire \txb_reg_n_0_[80][0] ;
  wire \txb_reg_n_0_[80][1] ;
  wire \txb_reg_n_0_[80][2] ;
  wire \txb_reg_n_0_[80][3] ;
  wire \txb_reg_n_0_[80][4] ;
  wire \txb_reg_n_0_[80][5] ;
  wire \txb_reg_n_0_[80][6] ;
  wire \txb_reg_n_0_[80][7] ;
  wire \txb_reg_n_0_[81][0] ;
  wire \txb_reg_n_0_[81][1] ;
  wire \txb_reg_n_0_[81][2] ;
  wire \txb_reg_n_0_[81][3] ;
  wire \txb_reg_n_0_[81][4] ;
  wire \txb_reg_n_0_[81][5] ;
  wire \txb_reg_n_0_[81][6] ;
  wire \txb_reg_n_0_[81][7] ;
  wire \txb_reg_n_0_[82][0] ;
  wire \txb_reg_n_0_[82][1] ;
  wire \txb_reg_n_0_[82][2] ;
  wire \txb_reg_n_0_[82][3] ;
  wire \txb_reg_n_0_[82][4] ;
  wire \txb_reg_n_0_[82][5] ;
  wire \txb_reg_n_0_[82][6] ;
  wire \txb_reg_n_0_[82][7] ;
  wire \txb_reg_n_0_[83][0] ;
  wire \txb_reg_n_0_[83][1] ;
  wire \txb_reg_n_0_[83][2] ;
  wire \txb_reg_n_0_[83][3] ;
  wire \txb_reg_n_0_[83][4] ;
  wire \txb_reg_n_0_[83][5] ;
  wire \txb_reg_n_0_[83][6] ;
  wire \txb_reg_n_0_[83][7] ;
  wire \txb_reg_n_0_[84][0] ;
  wire \txb_reg_n_0_[84][1] ;
  wire \txb_reg_n_0_[84][2] ;
  wire \txb_reg_n_0_[84][3] ;
  wire \txb_reg_n_0_[84][4] ;
  wire \txb_reg_n_0_[84][5] ;
  wire \txb_reg_n_0_[84][6] ;
  wire \txb_reg_n_0_[84][7] ;
  wire \txb_reg_n_0_[85][0] ;
  wire \txb_reg_n_0_[85][1] ;
  wire \txb_reg_n_0_[85][2] ;
  wire \txb_reg_n_0_[85][3] ;
  wire \txb_reg_n_0_[85][4] ;
  wire \txb_reg_n_0_[85][5] ;
  wire \txb_reg_n_0_[85][6] ;
  wire \txb_reg_n_0_[85][7] ;
  wire \txb_reg_n_0_[86][0] ;
  wire \txb_reg_n_0_[86][1] ;
  wire \txb_reg_n_0_[86][2] ;
  wire \txb_reg_n_0_[86][3] ;
  wire \txb_reg_n_0_[86][4] ;
  wire \txb_reg_n_0_[86][5] ;
  wire \txb_reg_n_0_[86][6] ;
  wire \txb_reg_n_0_[86][7] ;
  wire \txb_reg_n_0_[87][0] ;
  wire \txb_reg_n_0_[87][1] ;
  wire \txb_reg_n_0_[87][2] ;
  wire \txb_reg_n_0_[87][3] ;
  wire \txb_reg_n_0_[87][4] ;
  wire \txb_reg_n_0_[87][5] ;
  wire \txb_reg_n_0_[87][6] ;
  wire \txb_reg_n_0_[87][7] ;
  wire \txb_reg_n_0_[88][0] ;
  wire \txb_reg_n_0_[88][1] ;
  wire \txb_reg_n_0_[88][2] ;
  wire \txb_reg_n_0_[88][3] ;
  wire \txb_reg_n_0_[88][4] ;
  wire \txb_reg_n_0_[88][5] ;
  wire \txb_reg_n_0_[88][6] ;
  wire \txb_reg_n_0_[88][7] ;
  wire \txb_reg_n_0_[89][0] ;
  wire \txb_reg_n_0_[89][1] ;
  wire \txb_reg_n_0_[89][2] ;
  wire \txb_reg_n_0_[89][3] ;
  wire \txb_reg_n_0_[89][4] ;
  wire \txb_reg_n_0_[89][5] ;
  wire \txb_reg_n_0_[89][6] ;
  wire \txb_reg_n_0_[89][7] ;
  wire \txb_reg_n_0_[8][0] ;
  wire \txb_reg_n_0_[8][1] ;
  wire \txb_reg_n_0_[8][2] ;
  wire \txb_reg_n_0_[8][3] ;
  wire \txb_reg_n_0_[8][4] ;
  wire \txb_reg_n_0_[8][5] ;
  wire \txb_reg_n_0_[8][6] ;
  wire \txb_reg_n_0_[8][7] ;
  wire \txb_reg_n_0_[90][0] ;
  wire \txb_reg_n_0_[90][1] ;
  wire \txb_reg_n_0_[90][2] ;
  wire \txb_reg_n_0_[90][3] ;
  wire \txb_reg_n_0_[90][4] ;
  wire \txb_reg_n_0_[90][5] ;
  wire \txb_reg_n_0_[90][6] ;
  wire \txb_reg_n_0_[90][7] ;
  wire \txb_reg_n_0_[91][0] ;
  wire \txb_reg_n_0_[91][1] ;
  wire \txb_reg_n_0_[91][2] ;
  wire \txb_reg_n_0_[91][3] ;
  wire \txb_reg_n_0_[91][4] ;
  wire \txb_reg_n_0_[91][5] ;
  wire \txb_reg_n_0_[91][6] ;
  wire \txb_reg_n_0_[91][7] ;
  wire \txb_reg_n_0_[92][0] ;
  wire \txb_reg_n_0_[92][1] ;
  wire \txb_reg_n_0_[92][2] ;
  wire \txb_reg_n_0_[92][3] ;
  wire \txb_reg_n_0_[92][4] ;
  wire \txb_reg_n_0_[92][5] ;
  wire \txb_reg_n_0_[92][6] ;
  wire \txb_reg_n_0_[92][7] ;
  wire \txb_reg_n_0_[93][0] ;
  wire \txb_reg_n_0_[93][1] ;
  wire \txb_reg_n_0_[93][2] ;
  wire \txb_reg_n_0_[93][3] ;
  wire \txb_reg_n_0_[93][4] ;
  wire \txb_reg_n_0_[93][5] ;
  wire \txb_reg_n_0_[93][6] ;
  wire \txb_reg_n_0_[93][7] ;
  wire \txb_reg_n_0_[94][0] ;
  wire \txb_reg_n_0_[94][1] ;
  wire \txb_reg_n_0_[94][2] ;
  wire \txb_reg_n_0_[94][3] ;
  wire \txb_reg_n_0_[94][4] ;
  wire \txb_reg_n_0_[94][5] ;
  wire \txb_reg_n_0_[94][6] ;
  wire \txb_reg_n_0_[94][7] ;
  wire \txb_reg_n_0_[95][0] ;
  wire \txb_reg_n_0_[95][1] ;
  wire \txb_reg_n_0_[95][2] ;
  wire \txb_reg_n_0_[95][3] ;
  wire \txb_reg_n_0_[95][4] ;
  wire \txb_reg_n_0_[95][5] ;
  wire \txb_reg_n_0_[95][6] ;
  wire \txb_reg_n_0_[95][7] ;
  wire \txb_reg_n_0_[96][0] ;
  wire \txb_reg_n_0_[96][1] ;
  wire \txb_reg_n_0_[96][2] ;
  wire \txb_reg_n_0_[96][3] ;
  wire \txb_reg_n_0_[96][4] ;
  wire \txb_reg_n_0_[96][5] ;
  wire \txb_reg_n_0_[96][6] ;
  wire \txb_reg_n_0_[96][7] ;
  wire \txb_reg_n_0_[97][0] ;
  wire \txb_reg_n_0_[97][1] ;
  wire \txb_reg_n_0_[97][2] ;
  wire \txb_reg_n_0_[97][3] ;
  wire \txb_reg_n_0_[97][4] ;
  wire \txb_reg_n_0_[97][5] ;
  wire \txb_reg_n_0_[97][6] ;
  wire \txb_reg_n_0_[97][7] ;
  wire \txb_reg_n_0_[98][0] ;
  wire \txb_reg_n_0_[98][1] ;
  wire \txb_reg_n_0_[98][2] ;
  wire \txb_reg_n_0_[98][3] ;
  wire \txb_reg_n_0_[98][4] ;
  wire \txb_reg_n_0_[98][5] ;
  wire \txb_reg_n_0_[98][6] ;
  wire \txb_reg_n_0_[98][7] ;
  wire \txb_reg_n_0_[99][0] ;
  wire \txb_reg_n_0_[99][1] ;
  wire \txb_reg_n_0_[99][2] ;
  wire \txb_reg_n_0_[99][3] ;
  wire \txb_reg_n_0_[99][4] ;
  wire \txb_reg_n_0_[99][5] ;
  wire \txb_reg_n_0_[99][6] ;
  wire \txb_reg_n_0_[99][7] ;
  wire \txb_reg_n_0_[9][0] ;
  wire \txb_reg_n_0_[9][1] ;
  wire \txb_reg_n_0_[9][2] ;
  wire \txb_reg_n_0_[9][3] ;
  wire \txb_reg_n_0_[9][4] ;
  wire \txb_reg_n_0_[9][5] ;
  wire \txb_reg_n_0_[9][6] ;
  wire \txb_reg_n_0_[9][7] ;
  wire u_router_n_17;
  wire u_router_n_18;
  wire u_router_n_19;
  wire u_router_n_20;
  wire u_router_n_21;
  wire u_router_n_3;
  wire u_router_n_6;
  wire u_router_n_7;
  wire u_router_n_8;

  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \PRDATA_OBUF[0]_inst_i_1 
       (.I0(\cfg_reg_reg[0] ),
        .I1(\PRDATA_OBUF[0]_inst_i_3_n_0 ),
        .I2(\PRDATA_OBUF[0]_inst_i_4_n_0 ),
        .I3(PSEL),
        .O(PRDATA_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFF7FF37FFF7FFF7)) 
    \PRDATA_OBUF[0]_inst_i_3 
       (.I0(tx_run_reg_n_0),
        .I1(PADDR_IBUF[1]),
        .I2(PADDR_IBUF[0]),
        .I3(PADDR_IBUF[2]),
        .I4(\rx_rp[5]_i_3_n_0 ),
        .I5(rxb_reg_0_63_0_2_n_0),
        .O(\PRDATA_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h33E200E200000000)) 
    \PRDATA_OBUF[0]_inst_i_4 
       (.I0(rx_cnt_reg__0[0]),
        .I1(PADDR_IBUF[0]),
        .I2(rxb_reg_0_63_6_8_n_2),
        .I3(PADDR_IBUF[1]),
        .I4(tx_cnt[0]),
        .I5(PADDR_IBUF[2]),
        .O(\PRDATA_OBUF[0]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \PRDATA_OBUF[1]_inst_i_1 
       (.I0(\cfg_reg_reg[1] ),
        .I1(\PRDATA_OBUF[1]_inst_i_3_n_0 ),
        .I2(\PRDATA_OBUF[1]_inst_i_4_n_0 ),
        .I3(PSEL),
        .O(PRDATA_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFF7FF37FFF7FFF7)) 
    \PRDATA_OBUF[1]_inst_i_3 
       (.I0(err_seen),
        .I1(PADDR_IBUF[1]),
        .I2(PADDR_IBUF[0]),
        .I3(PADDR_IBUF[2]),
        .I4(\rx_rp[5]_i_3_n_0 ),
        .I5(rxb_reg_0_63_0_2_n_1),
        .O(\PRDATA_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h33E200E200000000)) 
    \PRDATA_OBUF[1]_inst_i_4 
       (.I0(rx_cnt_reg__0[1]),
        .I1(PADDR_IBUF[0]),
        .I2(rxb_reg_0_63_9_9_n_0),
        .I3(PADDR_IBUF[1]),
        .I4(tx_cnt[1]),
        .I5(PADDR_IBUF[2]),
        .O(\PRDATA_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888888888A8A888A)) 
    \PRDATA_OBUF[3]_inst_i_2 
       (.I0(PSEL),
        .I1(\PRDATA_OBUF[3]_inst_i_3_n_0 ),
        .I2(\rx_rp[5]_i_3_n_0 ),
        .I3(PADDR_IBUF[0]),
        .I4(rxb_reg_0_63_3_5_n_0),
        .I5(\rx_rp[5]_i_4_n_0 ),
        .O(\PRDATA[3] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h080C0800)) 
    \PRDATA_OBUF[3]_inst_i_3 
       (.I0(tx_cnt[3]),
        .I1(PADDR_IBUF[2]),
        .I2(PADDR_IBUF[0]),
        .I3(PADDR_IBUF[1]),
        .I4(rx_cnt_reg__0[3]),
        .O(\PRDATA_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \PRDATA_OBUF[4]_inst_i_3 
       (.I0(PSEL),
        .I1(\PADDR[3] ),
        .I2(tx_cnt[4]),
        .I3(\PADDR[3]_0 ),
        .I4(rx_cnt_reg__0[4]),
        .I5(\PRDATA_OBUF[4]_inst_i_5_n_0 ),
        .O(\PRDATA[4] ));
  LUT6 #(
    .INIT(64'hFFF7FF37FFF7FFF7)) 
    \PRDATA_OBUF[4]_inst_i_5 
       (.I0(u_router_n_3),
        .I1(PADDR_IBUF[1]),
        .I2(PADDR_IBUF[0]),
        .I3(PADDR_IBUF[2]),
        .I4(\rx_rp[5]_i_3_n_0 ),
        .I5(rxb_reg_0_63_3_5_n_1),
        .O(\PRDATA_OBUF[4]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAAAA)) 
    \PRDATA_OBUF[5]_inst_i_1 
       (.I0(\rx_data_reg[5] ),
        .I1(rxb_reg_0_63_3_5_n_2),
        .I2(\PRDATA_OBUF[7]_inst_i_4_n_0 ),
        .I3(\PRDATA_OBUF[5]_inst_i_3_n_0 ),
        .I4(PSEL),
        .O(PRDATA_OBUF[2]));
  LUT5 #(
    .INIT(32'h0C080008)) 
    \PRDATA_OBUF[5]_inst_i_3 
       (.I0(rx_cnt_reg__0[5]),
        .I1(PADDR_IBUF[2]),
        .I2(PADDR_IBUF[0]),
        .I3(PADDR_IBUF[1]),
        .I4(tx_cnt[5]),
        .O(\PRDATA_OBUF[5]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAAAA)) 
    \PRDATA_OBUF[6]_inst_i_1 
       (.I0(\rx_data_reg[6] ),
        .I1(rxb_reg_0_63_6_8_n_0),
        .I2(\PRDATA_OBUF[7]_inst_i_4_n_0 ),
        .I3(\PRDATA_OBUF[6]_inst_i_3_n_0 ),
        .I4(PSEL),
        .O(PRDATA_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h080C0800)) 
    \PRDATA_OBUF[6]_inst_i_3 
       (.I0(tx_cnt[6]),
        .I1(PADDR_IBUF[2]),
        .I2(PADDR_IBUF[0]),
        .I3(PADDR_IBUF[1]),
        .I4(rx_cnt_reg__0[6]),
        .O(\PRDATA_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFAEAEAAAAAAAA)) 
    \PRDATA_OBUF[7]_inst_i_1 
       (.I0(\rx_data_reg[7] ),
        .I1(tx_cnt[7]),
        .I2(\PADDR[3] ),
        .I3(\PRDATA_OBUF[7]_inst_i_4_n_0 ),
        .I4(rxb_reg_0_63_6_8_n_1),
        .I5(PSEL),
        .O(PRDATA_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \PRDATA_OBUF[7]_inst_i_4 
       (.I0(\rx_rp[5]_i_3_n_0 ),
        .I1(PADDR_IBUF[2]),
        .I2(PADDR_IBUF[1]),
        .I3(PADDR_IBUF[0]),
        .O(\PRDATA_OBUF[7]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF10FFFFFFFFFF10)) 
    PSLVERR_OBUF_inst_i_10
       (.I0(tx_cnt[7]),
        .I1(\txb[8][7]_i_2_n_0 ),
        .I2(\txb[32][7]_i_2_n_0 ),
        .I3(PSLVERR_OBUF_inst_i_12_n_0),
        .I4(PSLVERR_OBUF_inst_i_13_n_0),
        .I5(tx_cnt[3]),
        .O(PSLVERR_OBUF_inst_i_10_n_0));
  LUT5 #(
    .INIT(32'hAABEEBFF)) 
    PSLVERR_OBUF_inst_i_11
       (.I0(PSLVERR_OBUF_inst_i_14_n_0),
        .I1(p_0_in_16[2]),
        .I2(tx_cnt[2]),
        .I3(p_0_in_16[1]),
        .I4(tx_cnt[1]),
        .O(PSLVERR_OBUF_inst_i_11_n_0));
  LUT6 #(
    .INIT(64'hFEEEFFFFFFFFFEEE)) 
    PSLVERR_OBUF_inst_i_12
       (.I0(tx_run_reg_n_0),
        .I1(tx_cnt[7]),
        .I2(tx_cnt[1]),
        .I3(p_0_in_16[1]),
        .I4(p_0_in_16[0]),
        .I5(tx_cnt[0]),
        .O(PSLVERR_OBUF_inst_i_12_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    PSLVERR_OBUF_inst_i_13
       (.I0(p_0_in_16[3]),
        .I1(p_0_in_16[2]),
        .I2(p_0_in_16[1]),
        .O(PSLVERR_OBUF_inst_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    PSLVERR_OBUF_inst_i_14
       (.I0(PADDR_IBUF[1]),
        .I1(PADDR_IBUF[0]),
        .I2(PADDR_IBUF[2]),
        .I3(PWDATA_IBUF[0]),
        .O(PSLVERR_OBUF_inst_i_14_n_0));
  LUT6 #(
    .INIT(64'h000000000000BFB0)) 
    PSLVERR_OBUF_inst_i_3
       (.I0(PSLVERR_OBUF_inst_i_6_n_0),
        .I1(PWDATA_IBUF[0]),
        .I2(PADDR_IBUF[0]),
        .I3(PSLVERR_OBUF_inst_i_7_n_0),
        .I4(PADDR_IBUF[1]),
        .I5(PADDR_IBUF[2]),
        .O(PSLVERR));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    PSLVERR_OBUF_inst_i_4
       (.I0(PWRITE_IBUF),
        .I1(PENABLE_IBUF),
        .I2(PADDR_IBUF[3]),
        .I3(PADDR_IBUF[4]),
        .I4(PADDR_IBUF[5]),
        .I5(PSEL_IBUF),
        .O(err_seen_reg_0));
  LUT6 #(
    .INIT(64'h0000000022228028)) 
    PSLVERR_OBUF_inst_i_6
       (.I0(PSLVERR_OBUF_inst_i_8_n_0),
        .I1(tx_cnt[5]),
        .I2(u_router_n_7),
        .I3(p_0_in_16[5]),
        .I4(tx_cnt[6]),
        .I5(PSLVERR_OBUF_inst_i_10_n_0),
        .O(PSLVERR_OBUF_inst_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    PSLVERR_OBUF_inst_i_7
       (.I0(tx_run_reg_n_0),
        .I1(tx_cnt[7]),
        .O(PSLVERR_OBUF_inst_i_7_n_0));
  LUT6 #(
    .INIT(64'h0110011050011001)) 
    PSLVERR_OBUF_inst_i_8
       (.I0(PSLVERR_OBUF_inst_i_11_n_0),
        .I1(tx_cnt[6]),
        .I2(p_0_in_16[4]),
        .I3(u_router_n_8),
        .I4(p_0_in_16[5]),
        .I5(tx_cnt[4]),
        .O(PSLVERR_OBUF_inst_i_8_n_0));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    err_seen_i_2
       (.I0(PADDR_IBUF[1]),
        .I1(PADDR_IBUF[0]),
        .O(err_seen_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    err_seen_reg
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(u_router_n_19),
        .Q(err_seen),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hit_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rb0),
        .Q(\hit_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hit_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rb1),
        .Q(\hit_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hit_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rb2),
        .Q(\hit_reg_n_0_[2] ),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 rx_cnt0_carry
       (.CI(\<const0> ),
        .CO({rx_cnt0_carry_n_0,rx_cnt0_carry_n_1,rx_cnt0_carry_n_2,rx_cnt0_carry_n_3}),
        .CYINIT(rx_cnt_reg__0[0]),
        .DI({rx_cnt_reg__0[3:1],rx_cnt0_carry_i_1_n_0}),
        .O(rx_cnt[4:1]),
        .S({rx_cnt0_carry_i_2_n_0,rx_cnt0_carry_i_3_n_0,rx_cnt0_carry_i_4_n_0,rx_cnt0_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 rx_cnt0_carry__0
       (.CI(rx_cnt0_carry_n_0),
        .CO(rx_cnt0_carry__0_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,rx_cnt_reg__0[4]}),
        .O(rx_cnt[6:5]),
        .S({\<const0> ,\<const0> ,rx_cnt0_carry__0_i_1_n_0,rx_cnt0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rx_cnt0_carry__0_i_1
       (.I0(rx_cnt_reg__0[5]),
        .I1(rx_cnt_reg__0[6]),
        .O(rx_cnt0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rx_cnt0_carry__0_i_2
       (.I0(rx_cnt_reg__0[4]),
        .I1(rx_cnt_reg__0[5]),
        .O(rx_cnt0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    rx_cnt0_carry_i_1
       (.I0(\hit_reg_n_0_[2] ),
        .I1(\hit_reg_n_0_[1] ),
        .I2(\hit_reg_n_0_[0] ),
        .O(rx_cnt0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rx_cnt0_carry_i_2
       (.I0(rx_cnt_reg__0[3]),
        .I1(rx_cnt_reg__0[4]),
        .O(rx_cnt0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rx_cnt0_carry_i_3
       (.I0(rx_cnt_reg__0[2]),
        .I1(rx_cnt_reg__0[3]),
        .O(rx_cnt0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rx_cnt0_carry_i_4
       (.I0(rx_cnt_reg__0[1]),
        .I1(rx_cnt_reg__0[2]),
        .O(rx_cnt0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hAAA9)) 
    rx_cnt0_carry_i_5
       (.I0(rx_cnt_reg__0[1]),
        .I1(\hit_reg_n_0_[0] ),
        .I2(\hit_reg_n_0_[1] ),
        .I3(\hit_reg_n_0_[2] ),
        .O(rx_cnt0_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rx_cnt[0]_i_1 
       (.I0(rx_cnt_reg__0[0]),
        .O(rx_cnt[0]));
  LUT4 #(
    .INIT(16'h01FE)) 
    \rx_cnt[6]_i_1 
       (.I0(\hit_reg_n_0_[0] ),
        .I1(\hit_reg_n_0_[1] ),
        .I2(\hit_reg_n_0_[2] ),
        .I3(pop),
        .O(\rx_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\rx_cnt[6]_i_1_n_0 ),
        .D(rx_cnt[0]),
        .Q(rx_cnt_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\rx_cnt[6]_i_1_n_0 ),
        .D(rx_cnt[1]),
        .Q(rx_cnt_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\rx_cnt[6]_i_1_n_0 ),
        .D(rx_cnt[2]),
        .Q(rx_cnt_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\rx_cnt[6]_i_1_n_0 ),
        .D(rx_cnt[3]),
        .Q(rx_cnt_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\rx_cnt[6]_i_1_n_0 ),
        .D(rx_cnt[4]),
        .Q(rx_cnt_reg__0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\rx_cnt[6]_i_1_n_0 ),
        .D(rx_cnt[5]),
        .Q(rx_cnt_reg__0[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\rx_cnt[6]_i_1_n_0 ),
        .D(rx_cnt[6]),
        .Q(rx_cnt_reg__0[6]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_rp[0]_i_1 
       (.I0(rx_rp[0]),
        .O(\rx_rp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rx_rp[1]_i_1 
       (.I0(rx_rp[0]),
        .I1(rx_rp[1]),
        .O(\rx_rp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rx_rp[2]_i_1 
       (.I0(rx_rp[2]),
        .I1(rx_rp[1]),
        .I2(rx_rp[0]),
        .O(\rx_rp[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rx_rp[3]_i_1 
       (.I0(rx_rp[3]),
        .I1(rx_rp[0]),
        .I2(rx_rp[1]),
        .I3(rx_rp[2]),
        .O(\rx_rp[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rx_rp[4]_i_1 
       (.I0(rx_rp[4]),
        .I1(rx_rp[2]),
        .I2(rx_rp[1]),
        .I3(rx_rp[0]),
        .I4(rx_rp[3]),
        .O(\rx_rp[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \rx_rp[5]_i_1 
       (.I0(\rx_rp[5]_i_3_n_0 ),
        .I1(\rx_rp[5]_i_4_n_0 ),
        .I2(PADDR_IBUF[0]),
        .I3(PWRITE_IBUF),
        .I4(PENABLE_IBUF),
        .I5(\rx_rp[5]_i_5_n_0 ),
        .O(pop));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rx_rp[5]_i_2 
       (.I0(rx_rp[5]),
        .I1(rx_rp[3]),
        .I2(rx_rp[0]),
        .I3(rx_rp[1]),
        .I4(rx_rp[2]),
        .I5(rx_rp[4]),
        .O(\rx_rp[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_rp[5]_i_3 
       (.I0(rx_cnt_reg__0[1]),
        .I1(rx_cnt_reg__0[4]),
        .I2(rx_cnt_reg__0[3]),
        .I3(\rx_rp[5]_i_6_n_0 ),
        .O(\rx_rp[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rx_rp[5]_i_4 
       (.I0(PADDR_IBUF[2]),
        .I1(PADDR_IBUF[1]),
        .O(\rx_rp[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \rx_rp[5]_i_5 
       (.I0(PSEL_IBUF),
        .I1(PADDR_IBUF[5]),
        .I2(PADDR_IBUF[4]),
        .I3(PADDR_IBUF[3]),
        .O(\rx_rp[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_rp[5]_i_6 
       (.I0(rx_cnt_reg__0[6]),
        .I1(rx_cnt_reg__0[5]),
        .I2(rx_cnt_reg__0[0]),
        .I3(rx_cnt_reg__0[2]),
        .O(\rx_rp[5]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_rp_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(pop),
        .D(\rx_rp[0]_i_1_n_0 ),
        .Q(rx_rp[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_rp_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(pop),
        .D(\rx_rp[1]_i_1_n_0 ),
        .Q(rx_rp[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_rp_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(pop),
        .D(\rx_rp[2]_i_1_n_0 ),
        .Q(rx_rp[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_rp_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(pop),
        .D(\rx_rp[3]_i_1_n_0 ),
        .Q(rx_rp[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_rp_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(pop),
        .D(\rx_rp[4]_i_1_n_0 ),
        .Q(rx_rp[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_rp_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(pop),
        .D(\rx_rp[5]_i_2_n_0 ),
        .Q(rx_rp[5]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_wp[0]_i_1 
       (.I0(rx_wp_reg__0[0]),
        .O(p_0_in__5[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rx_wp[1]_i_1 
       (.I0(rx_wp_reg__0[0]),
        .I1(rx_wp_reg__0[1]),
        .O(p_0_in__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rx_wp[2]_i_1 
       (.I0(rx_wp_reg__0[2]),
        .I1(rx_wp_reg__0[1]),
        .I2(rx_wp_reg__0[0]),
        .O(p_0_in__5[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rx_wp[3]_i_1 
       (.I0(rx_wp_reg__0[3]),
        .I1(rx_wp_reg__0[0]),
        .I2(rx_wp_reg__0[1]),
        .I3(rx_wp_reg__0[2]),
        .O(p_0_in__5[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rx_wp[4]_i_1 
       (.I0(rx_wp_reg__0[4]),
        .I1(rx_wp_reg__0[2]),
        .I2(rx_wp_reg__0[1]),
        .I3(rx_wp_reg__0[0]),
        .I4(rx_wp_reg__0[3]),
        .O(p_0_in__5[4]));
  LUT3 #(
    .INIT(8'hFE)) 
    \rx_wp[5]_i_1 
       (.I0(\hit_reg_n_0_[2] ),
        .I1(\hit_reg_n_0_[1] ),
        .I2(\hit_reg_n_0_[0] ),
        .O(any_hit));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rx_wp[5]_i_2 
       (.I0(rx_wp_reg__0[5]),
        .I1(rx_wp_reg__0[3]),
        .I2(rx_wp_reg__0[0]),
        .I3(rx_wp_reg__0[1]),
        .I4(rx_wp_reg__0[2]),
        .I5(rx_wp_reg__0[4]),
        .O(p_0_in__5[5]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_wp_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(any_hit),
        .D(p_0_in__5[0]),
        .Q(rx_wp_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_wp_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(any_hit),
        .D(p_0_in__5[1]),
        .Q(rx_wp_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_wp_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(any_hit),
        .D(p_0_in__5[2]),
        .Q(rx_wp_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_wp_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(any_hit),
        .D(p_0_in__5[3]),
        .Q(rx_wp_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_wp_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(any_hit),
        .D(p_0_in__5[4]),
        .Q(rx_wp_reg__0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_wp_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(any_hit),
        .D(p_0_in__5[5]),
        .Q(rx_wp_reg__0[5]),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rxb_reg_0_63_0_2
       (.ADDRA(rx_rp),
        .ADDRB(rx_rp),
        .ADDRC(rx_rp),
        .ADDRD(rx_wp_reg__0),
        .DIA(p_1_in[0]),
        .DIB(p_1_in[1]),
        .DIC(p_1_in[2]),
        .DID(\<const0> ),
        .DOA(rxb_reg_0_63_0_2_n_0),
        .DOB(rxb_reg_0_63_0_2_n_1),
        .DOC(rxb_reg_0_63_0_2_n_2),
        .WCLK(PCLK_IBUF_BUFG),
        .WE(rxb_reg_0_63_0_2_i_4_n_0));
  LUT4 #(
    .INIT(16'hFE00)) 
    rxb_reg_0_63_0_2_i_4
       (.I0(\hit_reg_n_0_[0] ),
        .I1(\hit_reg_n_0_[1] ),
        .I2(\hit_reg_n_0_[2] ),
        .I3(PRESETn_IBUF),
        .O(rxb_reg_0_63_0_2_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rxb_reg_0_63_3_5
       (.ADDRA(rx_rp),
        .ADDRB(rx_rp),
        .ADDRC(rx_rp),
        .ADDRD(rx_wp_reg__0),
        .DIA(p_1_in[3]),
        .DIB(p_1_in[4]),
        .DIC(p_1_in[5]),
        .DID(\<const0> ),
        .DOA(rxb_reg_0_63_3_5_n_0),
        .DOB(rxb_reg_0_63_3_5_n_1),
        .DOC(rxb_reg_0_63_3_5_n_2),
        .WCLK(PCLK_IBUF_BUFG),
        .WE(rxb_reg_0_63_0_2_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rxb_reg_0_63_6_8
       (.ADDRA(rx_rp),
        .ADDRB(rx_rp),
        .ADDRC(rx_rp),
        .ADDRD(rx_wp_reg__0),
        .DIA(p_1_in[6]),
        .DIB(p_1_in[7]),
        .DIC(p_1_in[8]),
        .DID(\<const0> ),
        .DOA(rxb_reg_0_63_6_8_n_0),
        .DOB(rxb_reg_0_63_6_8_n_1),
        .DOC(rxb_reg_0_63_6_8_n_2),
        .WCLK(PCLK_IBUF_BUFG),
        .WE(rxb_reg_0_63_0_2_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    rxb_reg_0_63_6_8_i_3
       (.I0(\hit_reg_n_0_[1] ),
        .I1(\hit_reg_n_0_[0] ),
        .O(p_1_in[8]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rxb_reg_0_63_9_9
       (.ADDRA(rx_rp),
        .ADDRB(rx_rp),
        .ADDRC(rx_rp),
        .ADDRD(rx_wp_reg__0),
        .DIA(p_1_in[9]),
        .DIB(\<const0> ),
        .DIC(\<const0> ),
        .DID(\<const0> ),
        .DOA(rxb_reg_0_63_9_9_n_0),
        .WCLK(PCLK_IBUF_BUFG),
        .WE(rxb_reg_0_63_0_2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rxb_reg_0_63_9_9_i_1
       (.I0(\hit_reg_n_0_[0] ),
        .I1(\hit_reg_n_0_[1] ),
        .O(p_1_in[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \tx_cnt[0]_i_1 
       (.I0(tx_cnt[0]),
        .O(\tx_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tx_cnt[1]_i_1 
       (.I0(tx_cnt[0]),
        .I1(tx_cnt[1]),
        .O(\tx_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \tx_cnt[2]_i_1 
       (.I0(tx_cnt[2]),
        .I1(tx_cnt[1]),
        .I2(tx_cnt[0]),
        .O(\tx_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_cnt[3]_i_2 
       (.I0(tx_cnt[0]),
        .I1(tx_cnt[1]),
        .O(\tx_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \tx_cnt[4]_i_1 
       (.I0(tx_cnt[4]),
        .I1(tx_cnt[2]),
        .I2(tx_cnt[3]),
        .I3(tx_cnt[0]),
        .I4(tx_cnt[1]),
        .O(\tx_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \tx_cnt[5]_i_1 
       (.I0(tx_cnt[5]),
        .I1(tx_cnt[3]),
        .I2(tx_cnt[1]),
        .I3(tx_cnt[4]),
        .I4(tx_cnt[0]),
        .I5(tx_cnt[2]),
        .O(\tx_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \tx_cnt[6]_i_1 
       (.I0(tx_cnt[6]),
        .I1(\tx_cnt[6]_i_2_n_0 ),
        .I2(tx_cnt[4]),
        .I3(tx_cnt[0]),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[5]),
        .O(\tx_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tx_cnt[6]_i_2 
       (.I0(tx_cnt[2]),
        .I1(tx_cnt[3]),
        .O(\tx_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \tx_cnt[7]_i_2 
       (.I0(err_seen_reg_0),
        .I1(PADDR_IBUF[0]),
        .I2(PADDR_IBUF[2]),
        .I3(PADDR_IBUF[1]),
        .I4(tx_run_reg_n_0),
        .I5(tx_cnt[7]),
        .O(\tx_cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA6AAA)) 
    \tx_cnt[7]_i_3 
       (.I0(tx_cnt[7]),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[5]),
        .I3(tx_cnt[2]),
        .I4(\tx_cnt[7]_i_5_n_0 ),
        .I5(\tx_cnt[7]_i_6_n_0 ),
        .O(\tx_cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tx_cnt[7]_i_5 
       (.I0(tx_cnt[0]),
        .I1(tx_cnt[4]),
        .O(\tx_cnt[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tx_cnt[7]_i_6 
       (.I0(tx_cnt[1]),
        .I1(tx_cnt[3]),
        .O(\tx_cnt[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1010021001011001)) 
    \tx_cnt[7]_i_7 
       (.I0(tx_idx_reg__0[6]),
        .I1(u_router_n_6),
        .I2(tx_idx_reg__0[5]),
        .I3(p_0_in_16[0]),
        .I4(u_router_n_7),
        .I5(p_0_in_16[5]),
        .O(\tx_cnt[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_cnt_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\tx_cnt[7]_i_2_n_0 ),
        .D(\tx_cnt[0]_i_1_n_0 ),
        .Q(tx_cnt[0]),
        .R(u_router_n_20));
  FDRE #(
    .INIT(1'b0)) 
    \tx_cnt_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\tx_cnt[7]_i_2_n_0 ),
        .D(\tx_cnt[1]_i_1_n_0 ),
        .Q(tx_cnt[1]),
        .R(u_router_n_20));
  FDRE #(
    .INIT(1'b0)) 
    \tx_cnt_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\tx_cnt[7]_i_2_n_0 ),
        .D(\tx_cnt[2]_i_1_n_0 ),
        .Q(tx_cnt[2]),
        .R(u_router_n_20));
  FDRE #(
    .INIT(1'b0)) 
    \tx_cnt_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(u_router_n_21),
        .Q(tx_cnt[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_cnt_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\tx_cnt[7]_i_2_n_0 ),
        .D(\tx_cnt[4]_i_1_n_0 ),
        .Q(tx_cnt[4]),
        .R(u_router_n_20));
  FDRE #(
    .INIT(1'b0)) 
    \tx_cnt_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\tx_cnt[7]_i_2_n_0 ),
        .D(\tx_cnt[5]_i_1_n_0 ),
        .Q(tx_cnt[5]),
        .R(u_router_n_20));
  FDRE #(
    .INIT(1'b0)) 
    \tx_cnt_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\tx_cnt[7]_i_2_n_0 ),
        .D(\tx_cnt[6]_i_1_n_0 ),
        .Q(tx_cnt[6]),
        .R(u_router_n_20));
  FDRE #(
    .INIT(1'b0)) 
    \tx_cnt_reg[7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\tx_cnt[7]_i_2_n_0 ),
        .D(\tx_cnt[7]_i_3_n_0 ),
        .Q(tx_cnt[7]),
        .R(u_router_n_20));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tx_idx[0]_i_1 
       (.I0(tx_idx_reg__0[0]),
        .O(p_0_in__6[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tx_idx[1]_i_1 
       (.I0(tx_idx_reg__0[0]),
        .I1(tx_idx_reg__0[1]),
        .O(p_0_in__6[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \tx_idx[1]_rep__0_i_1 
       (.I0(tx_idx_reg__0[0]),
        .I1(tx_idx_reg__0[1]),
        .O(\tx_idx[1]_rep__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tx_idx[1]_rep__1_i_1 
       (.I0(tx_idx_reg__0[0]),
        .I1(tx_idx_reg__0[1]),
        .O(\tx_idx[1]_rep__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tx_idx[1]_rep_i_1 
       (.I0(tx_idx_reg__0[0]),
        .I1(tx_idx_reg__0[1]),
        .O(\tx_idx[1]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \tx_idx[2]_i_1 
       (.I0(tx_idx_reg__0[2]),
        .I1(tx_idx_reg__0[1]),
        .I2(tx_idx_reg__0[0]),
        .O(\tx_idx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \tx_idx[3]_i_1 
       (.I0(tx_idx_reg__0[3]),
        .I1(tx_idx_reg__0[0]),
        .I2(tx_idx_reg__0[1]),
        .I3(tx_idx_reg__0[2]),
        .O(p_0_in__6[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \tx_idx[4]_i_1 
       (.I0(tx_idx_reg__0[4]),
        .I1(tx_idx_reg__0[3]),
        .I2(tx_idx_reg__0[2]),
        .I3(\tx_idx_reg[1]_rep_n_0 ),
        .I4(tx_idx_reg__0[0]),
        .O(p_0_in__6[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \tx_idx[5]_i_1 
       (.I0(tx_idx_reg__0[5]),
        .I1(tx_idx_reg__0[4]),
        .I2(tx_idx_reg__0[0]),
        .I3(\tx_idx_reg[1]_rep_n_0 ),
        .I4(tx_idx_reg__0[2]),
        .I5(tx_idx_reg__0[3]),
        .O(p_0_in__6[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \tx_idx[6]_i_3 
       (.I0(tx_idx_reg__0[6]),
        .I1(tx_idx_reg__0[5]),
        .I2(\tx_idx[6]_i_5_n_0 ),
        .O(p_0_in__6[6]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \tx_idx[6]_i_5 
       (.I0(tx_idx_reg__0[3]),
        .I1(tx_idx_reg__0[2]),
        .I2(tx_idx_reg__0[1]),
        .I3(tx_idx_reg__0[0]),
        .I4(tx_idx_reg__0[4]),
        .O(\tx_idx[6]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_idx_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_idx),
        .D(p_0_in__6[0]),
        .Q(tx_idx_reg__0[0]),
        .R(u_router_n_18));
  (* ORIG_CELL_NAME = "tx_idx_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_idx_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_idx),
        .D(p_0_in__6[1]),
        .Q(tx_idx_reg__0[1]),
        .R(u_router_n_18));
  (* ORIG_CELL_NAME = "tx_idx_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_idx_reg[1]_rep 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_idx),
        .D(\tx_idx[1]_rep_i_1_n_0 ),
        .Q(\tx_idx_reg[1]_rep_n_0 ),
        .R(u_router_n_18));
  (* ORIG_CELL_NAME = "tx_idx_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_idx_reg[1]_rep__0 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_idx),
        .D(\tx_idx[1]_rep__0_i_1_n_0 ),
        .Q(\tx_idx_reg[1]_rep__0_n_0 ),
        .R(u_router_n_18));
  (* ORIG_CELL_NAME = "tx_idx_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_idx_reg[1]_rep__1 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_idx),
        .D(\tx_idx[1]_rep__1_i_1_n_0 ),
        .Q(\tx_idx_reg[1]_rep__1_n_0 ),
        .R(u_router_n_18));
  FDRE #(
    .INIT(1'b0)) 
    \tx_idx_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_idx),
        .D(\tx_idx[2]_i_1_n_0 ),
        .Q(tx_idx_reg__0[2]),
        .R(u_router_n_18));
  FDRE #(
    .INIT(1'b0)) 
    \tx_idx_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_idx),
        .D(p_0_in__6[3]),
        .Q(tx_idx_reg__0[3]),
        .R(u_router_n_18));
  FDRE #(
    .INIT(1'b0)) 
    \tx_idx_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_idx),
        .D(p_0_in__6[4]),
        .Q(tx_idx_reg__0[4]),
        .R(u_router_n_18));
  FDRE #(
    .INIT(1'b0)) 
    \tx_idx_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_idx),
        .D(p_0_in__6[5]),
        .Q(tx_idx_reg__0[5]),
        .R(u_router_n_18));
  FDRE #(
    .INIT(1'b0)) 
    \tx_idx_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(tx_idx),
        .D(p_0_in__6[6]),
        .Q(tx_idx_reg__0[6]),
        .R(u_router_n_18));
  FDRE #(
    .INIT(1'b0)) 
    tx_run_reg
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(u_router_n_17),
        .Q(tx_run_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000002)) 
    \txb[0][7]_i_1 
       (.I0(\txb[0][7]_i_2_n_0 ),
        .I1(tx_cnt[4]),
        .I2(tx_cnt[2]),
        .I3(tx_cnt[3]),
        .I4(tx_cnt[6]),
        .O(\txb[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \txb[0][7]_i_2 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[1]),
        .I2(PRESETn_IBUF),
        .I3(tx_cnt[0]),
        .I4(tx_cnt[5]),
        .O(\txb[0][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \txb[100][7]_i_1 
       (.I0(\txb[37][7]_i_2_n_0 ),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[1]),
        .I3(tx_cnt[0]),
        .I4(PRESETn_IBUF),
        .I5(tx_cnt[6]),
        .O(\txb[100][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \txb[101][7]_i_1 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(PRESETn_IBUF),
        .I2(tx_cnt[6]),
        .I3(\txb[37][7]_i_2_n_0 ),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[0]),
        .O(\txb[101][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \txb[102][7]_i_1 
       (.I0(\txb[102][7]_i_2_n_0 ),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[1]),
        .I3(tx_cnt[3]),
        .I4(tx_cnt[4]),
        .I5(tx_cnt[0]),
        .O(\txb[102][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \txb[102][7]_i_2 
       (.I0(tx_cnt[2]),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[5]),
        .I3(PRESETn_IBUF),
        .O(\txb[102][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \txb[103][7]_i_1 
       (.I0(\txb[5][7]_i_2_n_0 ),
        .I1(tx_cnt[2]),
        .I2(\txb[6][7]_i_3_n_0 ),
        .I3(\tx_cnt[3]_i_2_n_0 ),
        .I4(tx_cnt[5]),
        .I5(tx_cnt[6]),
        .O(\txb[103][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \txb[104][7]_i_1 
       (.I0(tx_cnt[4]),
        .I1(tx_cnt[1]),
        .I2(tx_cnt[3]),
        .I3(\tx_cnt[7]_i_2_n_0 ),
        .I4(tx_cnt[5]),
        .I5(\txb[72][7]_i_2_n_0 ),
        .O(\txb[104][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \txb[105][7]_i_1 
       (.I0(\txb[41][7]_i_2_n_0 ),
        .I1(PRESETn_IBUF),
        .I2(tx_cnt[2]),
        .I3(tx_cnt[0]),
        .I4(tx_cnt[6]),
        .O(\txb[105][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \txb[106][7]_i_1 
       (.I0(\txb[9][7]_i_2_n_0 ),
        .I1(tx_cnt[5]),
        .I2(tx_cnt[4]),
        .I3(tx_cnt[0]),
        .I4(tx_cnt[6]),
        .I5(tx_cnt[1]),
        .O(\txb[106][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \txb[107][7]_i_1 
       (.I0(\txb[52][7]_i_2_n_0 ),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[0]),
        .I3(\tx_cnt[7]_i_6_n_0 ),
        .I4(tx_cnt[2]),
        .I5(tx_cnt[4]),
        .O(\txb[107][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \txb[108][7]_i_1 
       (.I0(\txb[88][7]_i_2_n_0 ),
        .I1(tx_cnt[5]),
        .I2(tx_cnt[2]),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[4]),
        .I5(tx_cnt[0]),
        .O(\txb[108][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \txb[109][7]_i_1 
       (.I0(\txb[52][7]_i_2_n_0 ),
        .I1(\tx_cnt[6]_i_2_n_0 ),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[0]),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[4]),
        .O(\txb[109][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \txb[10][7]_i_1 
       (.I0(tx_cnt[0]),
        .I1(tx_cnt[4]),
        .I2(\txb[9][7]_i_2_n_0 ),
        .I3(tx_cnt[6]),
        .I4(tx_cnt[5]),
        .I5(tx_cnt[1]),
        .O(\txb[10][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \txb[110][7]_i_1 
       (.I0(\txb[52][7]_i_2_n_0 ),
        .I1(\txb[74][7]_i_2_n_0 ),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[2]),
        .I5(tx_cnt[3]),
        .O(\txb[110][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \txb[111][7]_i_1 
       (.I0(tx_cnt[4]),
        .I1(\txb[31][7]_i_2_n_0 ),
        .I2(PRESETn_IBUF),
        .I3(tx_cnt[6]),
        .I4(\tx_cnt[7]_i_2_n_0 ),
        .I5(tx_cnt[5]),
        .O(\txb[111][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \txb[112][7]_i_1 
       (.I0(tx_cnt[1]),
        .I1(tx_cnt[4]),
        .I2(tx_cnt[5]),
        .I3(\tx_cnt[7]_i_2_n_0 ),
        .I4(tx_cnt[3]),
        .I5(\txb[72][7]_i_2_n_0 ),
        .O(\txb[112][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \txb[113][7]_i_1 
       (.I0(\txb[49][7]_i_2_n_0 ),
        .I1(PRESETn_IBUF),
        .I2(tx_cnt[2]),
        .I3(tx_cnt[0]),
        .I4(tx_cnt[6]),
        .O(\txb[113][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \txb[114][7]_i_1 
       (.I0(tx_cnt[5]),
        .I1(tx_cnt[4]),
        .I2(\tx_cnt[7]_i_2_n_0 ),
        .I3(tx_cnt[3]),
        .I4(tx_cnt[1]),
        .I5(\txb[72][7]_i_2_n_0 ),
        .O(\txb[114][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \txb[115][7]_i_1 
       (.I0(\txb[52][7]_i_2_n_0 ),
        .I1(\tx_cnt[3]_i_2_n_0 ),
        .I2(tx_cnt[3]),
        .I3(tx_cnt[2]),
        .I4(tx_cnt[4]),
        .I5(tx_cnt[6]),
        .O(\txb[115][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \txb[116][7]_i_1 
       (.I0(\txb[76][7]_i_2_n_0 ),
        .I1(\txb[40][7]_i_2_n_0 ),
        .I2(tx_cnt[1]),
        .I3(tx_cnt[4]),
        .I4(tx_cnt[2]),
        .I5(\txb[18][7]_i_3_n_0 ),
        .O(\txb[116][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \txb[117][7]_i_1 
       (.I0(\txb[52][7]_i_2_n_0 ),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[2]),
        .I3(tx_cnt[3]),
        .I4(tx_cnt[1]),
        .I5(\tx_cnt[7]_i_5_n_0 ),
        .O(\txb[117][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \txb[118][7]_i_1 
       (.I0(\txb[52][7]_i_2_n_0 ),
        .I1(\txb[18][7]_i_3_n_0 ),
        .I2(tx_cnt[2]),
        .I3(tx_cnt[6]),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[4]),
        .O(\txb[118][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \txb[119][7]_i_1 
       (.I0(\txb[76][7]_i_2_n_0 ),
        .I1(\txb[6][7]_i_2_n_0 ),
        .I2(\tx_cnt[3]_i_2_n_0 ),
        .I3(tx_cnt[3]),
        .I4(tx_cnt[4]),
        .I5(tx_cnt[5]),
        .O(\txb[119][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \txb[11][7]_i_1 
       (.I0(tx_cnt[1]),
        .I1(\txb[5][7]_i_2_n_0 ),
        .I2(tx_cnt[3]),
        .I3(tx_cnt[2]),
        .I4(tx_cnt[4]),
        .I5(\txb[5][7]_i_3_n_0 ),
        .O(\txb[11][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \txb[120][7]_i_1 
       (.I0(\txb[9][7]_i_2_n_0 ),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[4]),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[0]),
        .I5(tx_cnt[5]),
        .O(\txb[120][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \txb[121][7]_i_1 
       (.I0(\txb[57][7]_i_2_n_0 ),
        .I1(tx_cnt[1]),
        .I2(tx_cnt[4]),
        .I3(tx_cnt[0]),
        .I4(tx_cnt[6]),
        .I5(tx_cnt[3]),
        .O(\txb[121][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \txb[122][7]_i_1 
       (.I0(\txb[57][7]_i_2_n_0 ),
        .I1(tx_cnt[0]),
        .I2(tx_cnt[3]),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[6]),
        .I5(tx_cnt[4]),
        .O(\txb[122][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \txb[123][7]_i_1 
       (.I0(\txb[52][7]_i_2_n_0 ),
        .I1(tx_cnt[4]),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[0]),
        .I4(\tx_cnt[7]_i_6_n_0 ),
        .I5(tx_cnt[2]),
        .O(\txb[123][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \txb[124][7]_i_1 
       (.I0(\txb[8][7]_i_3_n_0 ),
        .I1(\tx_cnt[6]_i_2_n_0 ),
        .I2(tx_cnt[4]),
        .I3(tx_cnt[6]),
        .I4(PRESETn_IBUF),
        .I5(tx_cnt[5]),
        .O(\txb[124][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \txb[125][7]_i_1 
       (.I0(PRESETn_IBUF),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(\txb[125][7]_i_2_n_0 ),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[4]),
        .I5(tx_cnt[5]),
        .O(\txb[125][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \txb[125][7]_i_2 
       (.I0(tx_cnt[3]),
        .I1(tx_cnt[2]),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[0]),
        .O(\txb[125][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \txb[126][7]_i_1 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(\txb[4][7]_i_2_n_0 ),
        .I2(\txb[50][7]_i_2_n_0 ),
        .I3(\tx_cnt[6]_i_2_n_0 ),
        .I4(tx_cnt[5]),
        .I5(tx_cnt[6]),
        .O(\txb[126][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \txb[127][7]_i_1 
       (.I0(\txb[5][7]_i_2_n_0 ),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[5]),
        .I3(tx_cnt[2]),
        .I4(\tx_cnt[7]_i_5_n_0 ),
        .I5(\tx_cnt[7]_i_6_n_0 ),
        .O(\txb[127][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \txb[12][7]_i_1 
       (.I0(tx_cnt[3]),
        .I1(\txb[5][7]_i_2_n_0 ),
        .I2(tx_cnt[1]),
        .I3(tx_cnt[4]),
        .I4(tx_cnt[0]),
        .I5(\txb[4][7]_i_3_n_0 ),
        .O(\txb[12][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \txb[13][7]_i_1 
       (.I0(tx_cnt[2]),
        .I1(\txb[5][7]_i_3_n_0 ),
        .I2(tx_cnt[4]),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[3]),
        .I5(\txb[5][7]_i_2_n_0 ),
        .O(\txb[13][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \txb[14][7]_i_1 
       (.I0(tx_cnt[1]),
        .I1(\txb[5][7]_i_2_n_0 ),
        .I2(tx_cnt[3]),
        .I3(tx_cnt[0]),
        .I4(tx_cnt[4]),
        .I5(\txb[4][7]_i_3_n_0 ),
        .O(\txb[14][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \txb[15][7]_i_1 
       (.I0(\txb[15][7]_i_2_n_0 ),
        .I1(\tx_cnt[3]_i_2_n_0 ),
        .I2(tx_cnt[3]),
        .I3(tx_cnt[2]),
        .I4(tx_cnt[6]),
        .I5(tx_cnt[4]),
        .O(\txb[15][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \txb[15][7]_i_2 
       (.I0(PRESETn_IBUF),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[5]),
        .O(\txb[15][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \txb[16][7]_i_1 
       (.I0(\txb[8][7]_i_2_n_0 ),
        .I1(tx_cnt[4]),
        .I2(\tx_cnt[7]_i_2_n_0 ),
        .I3(\txb[16][7]_i_2_n_0 ),
        .I4(tx_cnt[2]),
        .I5(tx_cnt[3]),
        .O(\txb[16][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \txb[16][7]_i_2 
       (.I0(tx_cnt[1]),
        .I1(PRESETn_IBUF),
        .I2(tx_cnt[0]),
        .O(\txb[16][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \txb[17][7]_i_1 
       (.I0(tx_cnt[1]),
        .I1(\txb[17][7]_i_2_n_0 ),
        .I2(tx_cnt[4]),
        .I3(tx_cnt[2]),
        .I4(PRESETn_IBUF),
        .I5(\txb[5][7]_i_3_n_0 ),
        .O(\txb[17][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \txb[17][7]_i_2 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[3]),
        .O(\txb[17][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \txb[18][7]_i_1 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(\txb[18][7]_i_2_n_0 ),
        .I2(PRESETn_IBUF),
        .I3(tx_cnt[2]),
        .I4(tx_cnt[4]),
        .I5(\txb[18][7]_i_3_n_0 ),
        .O(\txb[18][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \txb[18][7]_i_2 
       (.I0(tx_cnt[1]),
        .I1(tx_cnt[5]),
        .I2(tx_cnt[6]),
        .O(\txb[18][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \txb[18][7]_i_3 
       (.I0(tx_cnt[0]),
        .I1(tx_cnt[3]),
        .O(\txb[18][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \txb[19][7]_i_1 
       (.I0(tx_cnt[1]),
        .I1(tx_cnt[4]),
        .I2(\txb[5][7]_i_2_n_0 ),
        .I3(tx_cnt[2]),
        .I4(tx_cnt[3]),
        .I5(\txb[5][7]_i_3_n_0 ),
        .O(\txb[19][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \txb[1][7]_i_1 
       (.I0(tx_cnt[2]),
        .I1(tx_cnt[4]),
        .I2(tx_cnt[3]),
        .I3(\tx_cnt[7]_i_2_n_0 ),
        .I4(tx_cnt[1]),
        .I5(\txb[1][7]_i_2_n_0 ),
        .O(\txb[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \txb[1][7]_i_2 
       (.I0(PRESETn_IBUF),
        .I1(tx_cnt[0]),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[5]),
        .O(\txb[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \txb[20][7]_i_1 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[1]),
        .I2(\txb[4][7]_i_2_n_0 ),
        .I3(\txb[4][7]_i_3_n_0 ),
        .I4(tx_cnt[4]),
        .I5(tx_cnt[3]),
        .O(\txb[20][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \txb[21][7]_i_1 
       (.I0(tx_cnt[4]),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[2]),
        .I3(\txb[1][7]_i_2_n_0 ),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[3]),
        .O(\txb[21][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \txb[22][7]_i_1 
       (.I0(tx_cnt[1]),
        .I1(tx_cnt[4]),
        .I2(\txb[5][7]_i_2_n_0 ),
        .I3(tx_cnt[0]),
        .I4(tx_cnt[3]),
        .I5(\txb[4][7]_i_3_n_0 ),
        .O(\txb[22][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \txb[23][7]_i_1 
       (.I0(tx_cnt[5]),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[4]),
        .I3(\tx_cnt[7]_i_2_n_0 ),
        .I4(\txb[23][7]_i_2_n_0 ),
        .I5(tx_cnt[3]),
        .O(\txb[23][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \txb[23][7]_i_2 
       (.I0(tx_cnt[2]),
        .I1(PRESETn_IBUF),
        .I2(tx_cnt[1]),
        .I3(tx_cnt[0]),
        .O(\txb[23][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \txb[24][7]_i_1 
       (.I0(\txb[8][7]_i_3_n_0 ),
        .I1(\txb[8][7]_i_2_n_0 ),
        .I2(tx_cnt[3]),
        .I3(PRESETn_IBUF),
        .I4(tx_cnt[2]),
        .I5(tx_cnt[4]),
        .O(\txb[24][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \txb[25][7]_i_1 
       (.I0(\txb[25][7]_i_2_n_0 ),
        .I1(\txb[8][7]_i_2_n_0 ),
        .I2(tx_cnt[4]),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[2]),
        .I5(tx_cnt[0]),
        .O(\txb[25][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \txb[25][7]_i_2 
       (.I0(PRESETn_IBUF),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[3]),
        .O(\txb[25][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \txb[26][7]_i_1 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[2]),
        .I2(tx_cnt[0]),
        .I3(\txb[26][7]_i_2_n_0 ),
        .I4(\txb[8][7]_i_2_n_0 ),
        .I5(tx_cnt[3]),
        .O(\txb[26][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \txb[26][7]_i_2 
       (.I0(tx_cnt[4]),
        .I1(tx_cnt[1]),
        .I2(PRESETn_IBUF),
        .O(\txb[26][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \txb[27][7]_i_1 
       (.I0(\txb[15][7]_i_2_n_0 ),
        .I1(tx_cnt[3]),
        .I2(tx_cnt[1]),
        .I3(\tx_cnt[7]_i_5_n_0 ),
        .I4(tx_cnt[6]),
        .I5(tx_cnt[2]),
        .O(\txb[27][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \txb[28][7]_i_1 
       (.I0(tx_cnt[3]),
        .I1(\txb[8][7]_i_2_n_0 ),
        .I2(\txb[8][7]_i_3_n_0 ),
        .I3(PRESETn_IBUF),
        .I4(tx_cnt[4]),
        .I5(tx_cnt[2]),
        .O(\txb[28][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \txb[29][7]_i_1 
       (.I0(tx_cnt[4]),
        .I1(tx_cnt[0]),
        .I2(\txb[29][7]_i_2_n_0 ),
        .I3(\txb[6][7]_i_2_n_0 ),
        .I4(PRESETn_IBUF),
        .I5(tx_cnt[5]),
        .O(\txb[29][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \txb[29][7]_i_2 
       (.I0(tx_cnt[6]),
        .I1(tx_cnt[1]),
        .I2(tx_cnt[3]),
        .O(\txb[29][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \txb[2][7]_i_1 
       (.I0(\txb[2][7]_i_2_n_0 ),
        .I1(tx_cnt[0]),
        .I2(PRESETn_IBUF),
        .I3(tx_cnt[6]),
        .I4(tx_cnt[5]),
        .O(\txb[2][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \txb[2][7]_i_2 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[4]),
        .I2(tx_cnt[2]),
        .I3(tx_cnt[3]),
        .I4(tx_cnt[1]),
        .O(\txb[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \txb[30][7]_i_1 
       (.I0(tx_cnt[4]),
        .I1(\txb[6][7]_i_2_n_0 ),
        .I2(tx_cnt[1]),
        .I3(tx_cnt[3]),
        .I4(\txb[8][7]_i_2_n_0 ),
        .I5(\txb[4][7]_i_2_n_0 ),
        .O(\txb[30][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \txb[31][7]_i_1 
       (.I0(PRESETn_IBUF),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(\txb[31][7]_i_2_n_0 ),
        .I3(tx_cnt[5]),
        .I4(tx_cnt[6]),
        .I5(tx_cnt[4]),
        .O(\txb[31][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \txb[31][7]_i_2 
       (.I0(tx_cnt[1]),
        .I1(tx_cnt[0]),
        .I2(tx_cnt[3]),
        .I3(tx_cnt[2]),
        .O(\txb[31][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \txb[32][7]_i_1 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[0]),
        .I3(tx_cnt[5]),
        .I4(PRESETn_IBUF),
        .I5(\txb[32][7]_i_2_n_0 ),
        .O(\txb[32][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \txb[32][7]_i_2 
       (.I0(tx_cnt[4]),
        .I1(tx_cnt[2]),
        .I2(tx_cnt[3]),
        .I3(tx_cnt[1]),
        .O(\txb[32][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \txb[33][7]_i_1 
       (.I0(tx_cnt[5]),
        .I1(\txb[33][7]_i_2_n_0 ),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[0]),
        .I4(\txb[5][7]_i_2_n_0 ),
        .I5(tx_cnt[1]),
        .O(\txb[33][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \txb[33][7]_i_2 
       (.I0(tx_cnt[4]),
        .I1(tx_cnt[2]),
        .I2(tx_cnt[3]),
        .O(\txb[33][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \txb[34][7]_i_1 
       (.I0(tx_cnt[5]),
        .I1(\txb[33][7]_i_2_n_0 ),
        .I2(\txb[5][7]_i_2_n_0 ),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[0]),
        .I5(tx_cnt[6]),
        .O(\txb[34][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \txb[35][7]_i_1 
       (.I0(tx_cnt[1]),
        .I1(tx_cnt[2]),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[0]),
        .I4(PRESETn_IBUF),
        .I5(\txb[35][7]_i_2_n_0 ),
        .O(\txb[35][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \txb[35][7]_i_2 
       (.I0(tx_cnt[5]),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[3]),
        .I3(tx_cnt[4]),
        .O(\txb[35][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \txb[36][7]_i_1 
       (.I0(\txb[35][7]_i_2_n_0 ),
        .I1(PRESETn_IBUF),
        .I2(tx_cnt[0]),
        .I3(tx_cnt[2]),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[6]),
        .O(\txb[36][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \txb[37][7]_i_1 
       (.I0(tx_cnt[6]),
        .I1(tx_cnt[0]),
        .I2(PRESETn_IBUF),
        .I3(\tx_cnt[7]_i_2_n_0 ),
        .I4(tx_cnt[1]),
        .I5(\txb[37][7]_i_2_n_0 ),
        .O(\txb[37][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \txb[37][7]_i_2 
       (.I0(tx_cnt[3]),
        .I1(tx_cnt[4]),
        .I2(tx_cnt[2]),
        .I3(tx_cnt[5]),
        .O(\txb[37][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \txb[38][7]_i_1 
       (.I0(PRESETn_IBUF),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[1]),
        .I3(tx_cnt[0]),
        .I4(tx_cnt[6]),
        .I5(\txb[37][7]_i_2_n_0 ),
        .O(\txb[38][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \txb[39][7]_i_1 
       (.I0(tx_cnt[6]),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[5]),
        .I3(tx_cnt[4]),
        .I4(tx_cnt[3]),
        .I5(\txb[23][7]_i_2_n_0 ),
        .O(\txb[39][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \txb[3][7]_i_1 
       (.I0(tx_cnt[1]),
        .I1(tx_cnt[3]),
        .I2(tx_cnt[2]),
        .I3(tx_cnt[4]),
        .I4(\tx_cnt[7]_i_2_n_0 ),
        .I5(\txb[1][7]_i_2_n_0 ),
        .O(\txb[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \txb[40][7]_i_1 
       (.I0(\txb[40][7]_i_2_n_0 ),
        .I1(\txb[4][7]_i_2_n_0 ),
        .I2(\txb[40][7]_i_3_n_0 ),
        .I3(tx_cnt[6]),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[3]),
        .O(\txb[40][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \txb[40][7]_i_2 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[5]),
        .O(\txb[40][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \txb[40][7]_i_3 
       (.I0(tx_cnt[2]),
        .I1(tx_cnt[4]),
        .O(\txb[40][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \txb[41][7]_i_1 
       (.I0(PRESETn_IBUF),
        .I1(tx_cnt[0]),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[2]),
        .I4(\txb[41][7]_i_2_n_0 ),
        .O(\txb[41][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \txb[41][7]_i_2 
       (.I0(tx_cnt[5]),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[3]),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[4]),
        .O(\txb[41][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \txb[42][7]_i_1 
       (.I0(tx_cnt[0]),
        .I1(tx_cnt[4]),
        .I2(\txb[9][7]_i_2_n_0 ),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[5]),
        .I5(tx_cnt[6]),
        .O(\txb[42][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \txb[43][7]_i_1 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[0]),
        .I2(tx_cnt[2]),
        .I3(tx_cnt[5]),
        .I4(tx_cnt[1]),
        .I5(\txb[43][7]_i_2_n_0 ),
        .O(\txb[43][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \txb[43][7]_i_2 
       (.I0(tx_cnt[4]),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[3]),
        .I3(PRESETn_IBUF),
        .O(\txb[43][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \txb[44][7]_i_1 
       (.I0(PRESETn_IBUF),
        .I1(tx_cnt[5]),
        .I2(\txb[6][7]_i_2_n_0 ),
        .I3(\txb[29][7]_i_2_n_0 ),
        .I4(tx_cnt[0]),
        .I5(tx_cnt[4]),
        .O(\txb[44][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \txb[45][7]_i_1 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[2]),
        .I2(tx_cnt[5]),
        .I3(tx_cnt[0]),
        .I4(tx_cnt[1]),
        .I5(\txb[43][7]_i_2_n_0 ),
        .O(\txb[45][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \txb[46][7]_i_1 
       (.I0(tx_cnt[2]),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[4]),
        .I3(tx_cnt[0]),
        .I4(tx_cnt[3]),
        .I5(\txb[46][7]_i_2_n_0 ),
        .O(\txb[46][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \txb[46][7]_i_2 
       (.I0(tx_cnt[1]),
        .I1(tx_cnt[5]),
        .I2(tx_cnt[6]),
        .I3(PRESETn_IBUF),
        .O(\txb[46][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \txb[47][7]_i_1 
       (.I0(PRESETn_IBUF),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(\txb[31][7]_i_2_n_0 ),
        .I3(tx_cnt[4]),
        .I4(tx_cnt[5]),
        .I5(tx_cnt[6]),
        .O(\txb[47][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \txb[48][7]_i_1 
       (.I0(\txb[40][7]_i_2_n_0 ),
        .I1(\txb[4][7]_i_2_n_0 ),
        .I2(\txb[48][7]_i_2_n_0 ),
        .I3(tx_cnt[6]),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[4]),
        .O(\txb[48][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \txb[48][7]_i_2 
       (.I0(tx_cnt[2]),
        .I1(tx_cnt[3]),
        .O(\txb[48][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \txb[49][7]_i_1 
       (.I0(PRESETn_IBUF),
        .I1(tx_cnt[0]),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[2]),
        .I4(\txb[49][7]_i_2_n_0 ),
        .O(\txb[49][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \txb[49][7]_i_2 
       (.I0(tx_cnt[3]),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[5]),
        .I3(tx_cnt[4]),
        .I4(tx_cnt[1]),
        .O(\txb[49][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \txb[4][7]_i_1 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[1]),
        .I2(\txb[4][7]_i_2_n_0 ),
        .I3(\txb[4][7]_i_3_n_0 ),
        .I4(tx_cnt[3]),
        .I5(tx_cnt[4]),
        .O(\txb[4][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \txb[4][7]_i_2 
       (.I0(tx_cnt[0]),
        .I1(PRESETn_IBUF),
        .O(\txb[4][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \txb[4][7]_i_3 
       (.I0(tx_cnt[5]),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[2]),
        .O(\txb[4][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \txb[50][7]_i_1 
       (.I0(\txb[40][7]_i_2_n_0 ),
        .I1(\txb[18][7]_i_3_n_0 ),
        .I2(tx_cnt[2]),
        .I3(tx_cnt[6]),
        .I4(\txb[50][7]_i_2_n_0 ),
        .I5(PRESETn_IBUF),
        .O(\txb[50][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \txb[50][7]_i_2 
       (.I0(tx_cnt[1]),
        .I1(tx_cnt[4]),
        .O(\txb[50][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \txb[51][7]_i_1 
       (.I0(tx_cnt[1]),
        .I1(\txb[51][7]_i_2_n_0 ),
        .I2(tx_cnt[5]),
        .I3(tx_cnt[4]),
        .I4(\tx_cnt[7]_i_2_n_0 ),
        .I5(tx_cnt[3]),
        .O(\txb[51][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \txb[51][7]_i_2 
       (.I0(tx_cnt[2]),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[0]),
        .I3(PRESETn_IBUF),
        .O(\txb[51][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \txb[52][7]_i_1 
       (.I0(\txb[52][7]_i_2_n_0 ),
        .I1(\txb[18][7]_i_3_n_0 ),
        .I2(tx_cnt[2]),
        .I3(tx_cnt[6]),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[4]),
        .O(\txb[52][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \txb[52][7]_i_2 
       (.I0(PRESETn_IBUF),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[5]),
        .O(\txb[52][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \txb[53][7]_i_1 
       (.I0(\txb[53][7]_i_2_n_0 ),
        .I1(tx_cnt[3]),
        .I2(tx_cnt[1]),
        .I3(\tx_cnt[7]_i_5_n_0 ),
        .I4(PRESETn_IBUF),
        .I5(tx_cnt[2]),
        .O(\txb[53][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \txb[53][7]_i_2 
       (.I0(tx_cnt[5]),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[6]),
        .O(\txb[53][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \txb[54][7]_i_1 
       (.I0(\txb[54][7]_i_2_n_0 ),
        .I1(tx_cnt[1]),
        .I2(tx_cnt[5]),
        .I3(tx_cnt[6]),
        .I4(PRESETn_IBUF),
        .I5(\txb[18][7]_i_3_n_0 ),
        .O(\txb[54][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \txb[54][7]_i_2 
       (.I0(tx_cnt[2]),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[4]),
        .O(\txb[54][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \txb[55][7]_i_1 
       (.I0(tx_cnt[6]),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[5]),
        .I3(tx_cnt[4]),
        .I4(tx_cnt[3]),
        .I5(\txb[23][7]_i_2_n_0 ),
        .O(\txb[55][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \txb[56][7]_i_1 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[3]),
        .I2(PRESETn_IBUF),
        .I3(tx_cnt[4]),
        .I4(\txb[56][7]_i_2_n_0 ),
        .I5(\txb[56][7]_i_3_n_0 ),
        .O(\txb[56][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \txb[56][7]_i_2 
       (.I0(tx_cnt[6]),
        .I1(tx_cnt[2]),
        .O(\txb[56][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \txb[56][7]_i_3 
       (.I0(tx_cnt[1]),
        .I1(tx_cnt[0]),
        .I2(tx_cnt[5]),
        .O(\txb[56][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \txb[57][7]_i_1 
       (.I0(\txb[57][7]_i_2_n_0 ),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[1]),
        .I3(tx_cnt[3]),
        .I4(tx_cnt[0]),
        .I5(tx_cnt[4]),
        .O(\txb[57][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \txb[57][7]_i_2 
       (.I0(tx_cnt[5]),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[2]),
        .I3(PRESETn_IBUF),
        .O(\txb[57][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \txb[58][7]_i_1 
       (.I0(\txb[9][7]_i_2_n_0 ),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[0]),
        .I3(tx_cnt[5]),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[4]),
        .O(\txb[58][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \txb[59][7]_i_1 
       (.I0(tx_cnt[3]),
        .I1(tx_cnt[1]),
        .I2(\tx_cnt[7]_i_5_n_0 ),
        .I3(tx_cnt[6]),
        .I4(tx_cnt[2]),
        .I5(\txb[52][7]_i_2_n_0 ),
        .O(\txb[59][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \txb[5][7]_i_1 
       (.I0(\txb[5][7]_i_2_n_0 ),
        .I1(tx_cnt[1]),
        .I2(tx_cnt[4]),
        .I3(\txb[5][7]_i_3_n_0 ),
        .I4(tx_cnt[2]),
        .I5(tx_cnt[3]),
        .O(\txb[5][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \txb[5][7]_i_2 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(PRESETn_IBUF),
        .O(\txb[5][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \txb[5][7]_i_3 
       (.I0(tx_cnt[5]),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[0]),
        .O(\txb[5][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \txb[60][7]_i_1 
       (.I0(\txb[5][7]_i_2_n_0 ),
        .I1(tx_cnt[3]),
        .I2(\txb[60][7]_i_2_n_0 ),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[4]),
        .I5(tx_cnt[2]),
        .O(\txb[60][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \txb[60][7]_i_2 
       (.I0(tx_cnt[6]),
        .I1(tx_cnt[0]),
        .I2(tx_cnt[5]),
        .O(\txb[60][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \txb[61][7]_i_1 
       (.I0(tx_cnt[4]),
        .I1(tx_cnt[0]),
        .I2(\txb[29][7]_i_2_n_0 ),
        .I3(\txb[6][7]_i_2_n_0 ),
        .I4(tx_cnt[5]),
        .I5(PRESETn_IBUF),
        .O(\txb[61][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \txb[62][7]_i_1 
       (.I0(\txb[60][7]_i_2_n_0 ),
        .I1(tx_cnt[3]),
        .I2(tx_cnt[1]),
        .I3(tx_cnt[4]),
        .I4(tx_cnt[2]),
        .I5(\txb[5][7]_i_2_n_0 ),
        .O(\txb[62][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \txb[63][7]_i_1 
       (.I0(\txb[5][7]_i_2_n_0 ),
        .I1(tx_cnt[5]),
        .I2(tx_cnt[1]),
        .I3(\tx_cnt[7]_i_5_n_0 ),
        .I4(\tx_cnt[6]_i_2_n_0 ),
        .I5(tx_cnt[6]),
        .O(\txb[63][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \txb[64][7]_i_1 
       (.I0(\txb[64][7]_i_2_n_0 ),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[5]),
        .I3(tx_cnt[0]),
        .I4(PRESETn_IBUF),
        .O(\txb[64][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \txb[64][7]_i_2 
       (.I0(tx_cnt[1]),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[3]),
        .I3(tx_cnt[4]),
        .I4(tx_cnt[2]),
        .O(\txb[64][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \txb[65][7]_i_1 
       (.I0(tx_cnt[3]),
        .I1(tx_cnt[2]),
        .I2(tx_cnt[4]),
        .I3(\txb[65][7]_i_2_n_0 ),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[0]),
        .O(\txb[65][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \txb[65][7]_i_2 
       (.I0(tx_cnt[5]),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(PRESETn_IBUF),
        .I3(tx_cnt[6]),
        .O(\txb[65][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \txb[66][7]_i_1 
       (.I0(\txb[5][7]_i_2_n_0 ),
        .I1(tx_cnt[1]),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[5]),
        .I4(tx_cnt[0]),
        .I5(\txb[33][7]_i_2_n_0 ),
        .O(\txb[66][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \txb[67][7]_i_1 
       (.I0(tx_cnt[0]),
        .I1(\txb[15][7]_i_2_n_0 ),
        .I2(tx_cnt[2]),
        .I3(\txb[6][7]_i_3_n_0 ),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[6]),
        .O(\txb[67][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \txb[68][7]_i_1 
       (.I0(\txb[0][7]_i_2_n_0 ),
        .I1(tx_cnt[4]),
        .I2(tx_cnt[3]),
        .I3(tx_cnt[6]),
        .I4(tx_cnt[2]),
        .O(\txb[68][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \txb[69][7]_i_1 
       (.I0(tx_cnt[2]),
        .I1(tx_cnt[4]),
        .I2(tx_cnt[3]),
        .I3(\txb[65][7]_i_2_n_0 ),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[0]),
        .O(\txb[69][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \txb[6][7]_i_1 
       (.I0(\txb[6][7]_i_2_n_0 ),
        .I1(\txb[6][7]_i_3_n_0 ),
        .I2(\txb[4][7]_i_2_n_0 ),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[5]),
        .I5(tx_cnt[6]),
        .O(\txb[6][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \txb[6][7]_i_2 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[2]),
        .O(\txb[6][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \txb[6][7]_i_3 
       (.I0(tx_cnt[4]),
        .I1(tx_cnt[3]),
        .O(\txb[6][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \txb[70][7]_i_1 
       (.I0(tx_cnt[0]),
        .I1(tx_cnt[5]),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[1]),
        .I4(\txb[70][7]_i_2_n_0 ),
        .I5(\txb[5][7]_i_2_n_0 ),
        .O(\txb[70][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \txb[70][7]_i_2 
       (.I0(tx_cnt[3]),
        .I1(tx_cnt[4]),
        .I2(tx_cnt[2]),
        .O(\txb[70][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \txb[71][7]_i_1 
       (.I0(\txb[5][7]_i_2_n_0 ),
        .I1(tx_cnt[2]),
        .I2(\txb[6][7]_i_3_n_0 ),
        .I3(\tx_cnt[3]_i_2_n_0 ),
        .I4(tx_cnt[5]),
        .I5(tx_cnt[6]),
        .O(\txb[71][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \txb[72][7]_i_1 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[4]),
        .I2(tx_cnt[3]),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[5]),
        .I5(\txb[72][7]_i_2_n_0 ),
        .O(\txb[72][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \txb[72][7]_i_2 
       (.I0(tx_cnt[2]),
        .I1(tx_cnt[0]),
        .I2(tx_cnt[6]),
        .I3(PRESETn_IBUF),
        .O(\txb[72][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \txb[73][7]_i_1 
       (.I0(tx_cnt[0]),
        .I1(\txb[73][7]_i_2_n_0 ),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[3]),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[4]),
        .O(\txb[73][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \txb[73][7]_i_2 
       (.I0(tx_cnt[5]),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(PRESETn_IBUF),
        .I3(tx_cnt[2]),
        .O(\txb[73][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \txb[74][7]_i_1 
       (.I0(tx_cnt[2]),
        .I1(\txb[15][7]_i_2_n_0 ),
        .I2(tx_cnt[3]),
        .I3(\txb[74][7]_i_2_n_0 ),
        .I4(tx_cnt[6]),
        .I5(tx_cnt[1]),
        .O(\txb[74][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \txb[74][7]_i_2 
       (.I0(tx_cnt[0]),
        .I1(tx_cnt[4]),
        .O(\txb[74][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \txb[75][7]_i_1 
       (.I0(\txb[15][7]_i_2_n_0 ),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[0]),
        .I3(\tx_cnt[7]_i_6_n_0 ),
        .I4(tx_cnt[2]),
        .I5(tx_cnt[4]),
        .O(\txb[75][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \txb[76][7]_i_1 
       (.I0(\txb[76][7]_i_2_n_0 ),
        .I1(\txb[6][7]_i_2_n_0 ),
        .I2(tx_cnt[5]),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[3]),
        .I5(\txb[74][7]_i_2_n_0 ),
        .O(\txb[76][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \txb[76][7]_i_2 
       (.I0(PRESETn_IBUF),
        .I1(tx_cnt[6]),
        .O(\txb[76][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \txb[77][7]_i_1 
       (.I0(\txb[15][7]_i_2_n_0 ),
        .I1(\tx_cnt[6]_i_2_n_0 ),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[0]),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[4]),
        .O(\txb[77][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \txb[78][7]_i_1 
       (.I0(\txb[15][7]_i_2_n_0 ),
        .I1(\txb[74][7]_i_2_n_0 ),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[2]),
        .I5(tx_cnt[3]),
        .O(\txb[78][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \txb[79][7]_i_1 
       (.I0(tx_cnt[4]),
        .I1(\txb[31][7]_i_2_n_0 ),
        .I2(tx_cnt[6]),
        .I3(PRESETn_IBUF),
        .I4(\tx_cnt[7]_i_2_n_0 ),
        .I5(tx_cnt[5]),
        .O(\txb[79][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \txb[7][7]_i_1 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[2]),
        .I2(tx_cnt[4]),
        .I3(tx_cnt[3]),
        .I4(tx_cnt[1]),
        .I5(\txb[1][7]_i_2_n_0 ),
        .O(\txb[7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \txb[80][7]_i_1 
       (.I0(tx_cnt[3]),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[5]),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[4]),
        .I5(\txb[72][7]_i_2_n_0 ),
        .O(\txb[80][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \txb[81][7]_i_1 
       (.I0(tx_cnt[0]),
        .I1(\txb[73][7]_i_2_n_0 ),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[4]),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[3]),
        .O(\txb[81][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \txb[82][7]_i_1 
       (.I0(\txb[82][7]_i_2_n_0 ),
        .I1(\txb[18][7]_i_3_n_0 ),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[5]),
        .I4(tx_cnt[4]),
        .I5(tx_cnt[2]),
        .O(\txb[82][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \txb[82][7]_i_2 
       (.I0(PRESETn_IBUF),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[1]),
        .O(\txb[82][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \txb[83][7]_i_1 
       (.I0(\txb[15][7]_i_2_n_0 ),
        .I1(\tx_cnt[3]_i_2_n_0 ),
        .I2(tx_cnt[3]),
        .I3(tx_cnt[2]),
        .I4(tx_cnt[4]),
        .I5(tx_cnt[6]),
        .O(\txb[83][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \txb[84][7]_i_1 
       (.I0(\txb[5][7]_i_2_n_0 ),
        .I1(\txb[18][7]_i_3_n_0 ),
        .I2(\txb[84][7]_i_2_n_0 ),
        .I3(tx_cnt[5]),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[4]),
        .O(\txb[84][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \txb[84][7]_i_2 
       (.I0(tx_cnt[6]),
        .I1(tx_cnt[2]),
        .O(\txb[84][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \txb[85][7]_i_1 
       (.I0(\txb[15][7]_i_2_n_0 ),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[2]),
        .I3(tx_cnt[3]),
        .I4(tx_cnt[1]),
        .I5(\tx_cnt[7]_i_5_n_0 ),
        .O(\txb[85][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \txb[86][7]_i_1 
       (.I0(\txb[15][7]_i_2_n_0 ),
        .I1(\txb[18][7]_i_3_n_0 ),
        .I2(tx_cnt[2]),
        .I3(tx_cnt[6]),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[4]),
        .O(\txb[86][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \txb[87][7]_i_1 
       (.I0(\txb[65][7]_i_2_n_0 ),
        .I1(tx_cnt[3]),
        .I2(tx_cnt[4]),
        .I3(tx_cnt[2]),
        .I4(tx_cnt[1]),
        .I5(tx_cnt[0]),
        .O(\txb[87][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \txb[88][7]_i_1 
       (.I0(\txb[88][7]_i_2_n_0 ),
        .I1(tx_cnt[5]),
        .I2(tx_cnt[4]),
        .I3(tx_cnt[2]),
        .I4(tx_cnt[0]),
        .I5(tx_cnt[1]),
        .O(\txb[88][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \txb[88][7]_i_2 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[3]),
        .I2(tx_cnt[6]),
        .I3(PRESETn_IBUF),
        .O(\txb[88][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \txb[89][7]_i_1 
       (.I0(\txb[73][7]_i_2_n_0 ),
        .I1(tx_cnt[1]),
        .I2(tx_cnt[4]),
        .I3(tx_cnt[0]),
        .I4(tx_cnt[6]),
        .I5(tx_cnt[3]),
        .O(\txb[89][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \txb[8][7]_i_1 
       (.I0(tx_cnt[3]),
        .I1(\txb[8][7]_i_2_n_0 ),
        .I2(\txb[8][7]_i_3_n_0 ),
        .I3(PRESETn_IBUF),
        .I4(tx_cnt[4]),
        .I5(tx_cnt[2]),
        .O(\txb[8][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \txb[8][7]_i_2 
       (.I0(tx_cnt[6]),
        .I1(tx_cnt[5]),
        .O(\txb[8][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \txb[8][7]_i_3 
       (.I0(\tx_cnt[7]_i_2_n_0 ),
        .I1(tx_cnt[1]),
        .I2(tx_cnt[0]),
        .O(\txb[8][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \txb[90][7]_i_1 
       (.I0(\txb[73][7]_i_2_n_0 ),
        .I1(tx_cnt[0]),
        .I2(tx_cnt[3]),
        .I3(tx_cnt[1]),
        .I4(tx_cnt[6]),
        .I5(tx_cnt[4]),
        .O(\txb[90][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \txb[91][7]_i_1 
       (.I0(\txb[15][7]_i_2_n_0 ),
        .I1(tx_cnt[4]),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[0]),
        .I4(\tx_cnt[7]_i_6_n_0 ),
        .I5(tx_cnt[2]),
        .O(\txb[91][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \txb[92][7]_i_1 
       (.I0(\txb[0][7]_i_2_n_0 ),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[4]),
        .I3(tx_cnt[2]),
        .I4(tx_cnt[3]),
        .O(\txb[92][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \txb[93][7]_i_1 
       (.I0(tx_cnt[1]),
        .I1(\txb[5][7]_i_2_n_0 ),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[5]),
        .I4(\tx_cnt[6]_i_2_n_0 ),
        .I5(\tx_cnt[7]_i_5_n_0 ),
        .O(\txb[93][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \txb[94][7]_i_1 
       (.I0(\tx_cnt[7]_i_6_n_0 ),
        .I1(tx_cnt[4]),
        .I2(tx_cnt[2]),
        .I3(\txb[5][7]_i_2_n_0 ),
        .I4(\txb[94][7]_i_2_n_0 ),
        .I5(tx_cnt[0]),
        .O(\txb[94][7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \txb[94][7]_i_2 
       (.I0(tx_cnt[6]),
        .I1(tx_cnt[5]),
        .O(\txb[94][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \txb[95][7]_i_1 
       (.I0(tx_cnt[1]),
        .I1(\txb[5][7]_i_2_n_0 ),
        .I2(tx_cnt[6]),
        .I3(tx_cnt[5]),
        .I4(\tx_cnt[6]_i_2_n_0 ),
        .I5(\tx_cnt[7]_i_5_n_0 ),
        .O(\txb[95][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \txb[96][7]_i_1 
       (.I0(\txb[96][7]_i_2_n_0 ),
        .I1(\tx_cnt[7]_i_2_n_0 ),
        .I2(tx_cnt[1]),
        .I3(tx_cnt[0]),
        .I4(PRESETn_IBUF),
        .I5(tx_cnt[6]),
        .O(\txb[96][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \txb[96][7]_i_2 
       (.I0(tx_cnt[3]),
        .I1(tx_cnt[2]),
        .I2(tx_cnt[4]),
        .I3(tx_cnt[5]),
        .O(\txb[96][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \txb[97][7]_i_1 
       (.I0(\txb[64][7]_i_2_n_0 ),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[5]),
        .I3(PRESETn_IBUF),
        .I4(tx_cnt[0]),
        .O(\txb[97][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \txb[98][7]_i_1 
       (.I0(tx_cnt[4]),
        .I1(tx_cnt[3]),
        .I2(\tx_cnt[7]_i_2_n_0 ),
        .I3(tx_cnt[5]),
        .I4(tx_cnt[1]),
        .I5(\txb[72][7]_i_2_n_0 ),
        .O(\txb[98][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \txb[99][7]_i_1 
       (.I0(\txb[2][7]_i_2_n_0 ),
        .I1(tx_cnt[6]),
        .I2(tx_cnt[5]),
        .I3(PRESETn_IBUF),
        .I4(tx_cnt[0]),
        .O(\txb[99][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \txb[9][7]_i_1 
       (.I0(tx_cnt[1]),
        .I1(tx_cnt[4]),
        .I2(tx_cnt[5]),
        .I3(tx_cnt[6]),
        .I4(tx_cnt[0]),
        .I5(\txb[9][7]_i_2_n_0 ),
        .O(\txb[9][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \txb[9][7]_i_2 
       (.I0(tx_cnt[2]),
        .I1(PRESETn_IBUF),
        .I2(\tx_cnt[7]_i_2_n_0 ),
        .I3(tx_cnt[3]),
        .O(\txb[9][7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[0][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[0][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[0][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[0][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[0][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[0][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[0][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[0][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(p_0_in_16[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[0][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[0][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(p_0_in_16[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[0][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[0][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(p_0_in_16[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[0][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[0][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(p_0_in_16[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[0][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[0][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(p_0_in_16[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[0][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[0][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(p_0_in_16[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[100][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[100][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[100][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[100][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[100][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[100][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[100][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[100][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[100][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[100][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[100][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[100][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[100][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[100][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[100][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[100][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[100][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[100][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[100][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[100][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[100][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[100][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[100][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[100][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[101][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[101][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[101][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[101][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[101][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[101][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[101][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[101][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[101][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[101][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[101][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[101][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[101][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[101][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[101][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[101][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[101][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[101][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[101][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[101][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[101][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[101][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[101][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[101][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[102][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[102][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[102][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[102][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[102][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[102][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[102][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[102][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[102][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[102][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[102][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[102][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[102][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[102][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[102][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[102][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[102][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[102][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[102][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[102][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[102][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[102][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[102][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[102][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[103][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[103][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[103][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[103][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[103][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[103][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[103][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[103][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[103][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[103][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[103][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[103][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[103][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[103][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[103][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[103][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[103][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[103][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[103][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[103][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[103][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[103][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[103][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[103][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[104][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[104][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[104][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[104][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[104][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[104][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[104][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[104][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[104][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[104][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[104][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[104][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[104][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[104][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[104][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[104][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[104][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[104][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[104][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[104][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[104][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[104][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[104][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[104][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[105][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[105][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[105][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[105][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[105][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[105][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[105][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[105][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[105][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[105][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[105][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[105][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[105][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[105][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[105][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[105][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[105][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[105][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[105][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[105][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[105][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[105][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[105][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[105][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[106][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[106][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[106][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[106][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[106][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[106][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[106][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[106][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[106][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[106][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[106][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[106][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[106][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[106][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[106][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[106][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[106][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[106][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[106][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[106][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[106][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[106][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[106][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[106][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[107][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[107][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[107][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[107][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[107][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[107][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[107][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[107][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[107][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[107][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[107][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[107][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[107][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[107][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[107][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[107][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[107][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[107][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[107][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[107][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[107][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[107][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[107][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[107][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[108][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[108][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[108][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[108][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[108][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[108][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[108][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[108][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[108][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[108][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[108][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[108][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[108][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[108][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[108][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[108][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[108][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[108][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[108][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[108][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[108][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[108][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[108][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[108][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[109][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[109][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[109][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[109][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[109][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[109][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[109][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[109][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[109][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[109][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[109][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[109][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[109][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[109][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[109][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[109][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[109][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[109][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[109][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[109][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[109][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[109][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[109][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[109][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[10][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[10][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[10][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[10][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[10][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[10][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[10][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[10][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[10][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[10][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[10][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[10][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[10][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[10][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[10][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[10][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[10][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[10][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[10][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[10][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[10][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[10][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[10][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[10][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[110][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[110][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[110][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[110][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[110][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[110][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[110][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[110][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[110][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[110][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[110][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[110][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[110][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[110][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[110][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[110][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[110][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[110][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[110][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[110][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[110][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[110][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[110][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[110][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[111][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[111][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[111][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[111][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[111][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[111][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[111][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[111][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[111][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[111][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[111][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[111][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[111][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[111][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[111][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[111][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[111][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[111][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[111][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[111][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[111][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[111][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[111][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[111][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[112][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[112][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[112][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[112][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[112][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[112][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[112][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[112][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[112][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[112][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[112][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[112][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[112][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[112][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[112][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[112][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[112][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[112][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[112][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[112][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[112][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[112][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[112][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[112][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[113][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[113][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[113][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[113][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[113][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[113][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[113][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[113][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[113][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[113][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[113][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[113][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[113][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[113][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[113][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[113][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[113][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[113][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[113][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[113][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[113][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[113][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[113][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[113][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[114][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[114][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[114][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[114][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[114][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[114][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[114][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[114][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[114][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[114][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[114][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[114][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[114][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[114][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[114][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[114][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[114][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[114][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[114][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[114][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[114][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[114][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[114][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[114][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[115][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[115][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[115][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[115][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[115][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[115][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[115][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[115][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[115][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[115][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[115][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[115][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[115][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[115][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[115][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[115][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[115][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[115][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[115][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[115][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[115][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[115][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[115][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[115][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[116][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[116][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[116][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[116][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[116][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[116][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[116][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[116][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[116][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[116][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[116][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[116][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[116][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[116][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[116][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[116][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[116][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[116][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[116][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[116][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[116][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[116][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[116][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[116][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[117][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[117][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[117][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[117][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[117][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[117][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[117][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[117][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[117][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[117][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[117][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[117][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[117][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[117][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[117][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[117][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[117][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[117][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[117][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[117][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[117][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[117][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[117][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[117][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[118][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[118][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[118][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[118][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[118][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[118][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[118][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[118][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[118][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[118][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[118][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[118][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[118][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[118][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[118][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[118][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[118][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[118][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[118][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[118][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[118][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[118][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[118][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[118][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[119][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[119][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[119][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[119][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[119][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[119][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[119][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[119][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[119][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[119][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[119][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[119][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[119][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[119][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[119][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[119][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[119][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[119][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[119][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[119][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[119][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[119][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[119][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[119][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[11][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[11][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[11][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[11][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[11][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[11][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[11][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[11][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[11][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[11][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[11][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[11][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[11][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[11][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[11][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[11][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[11][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[11][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[11][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[11][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[11][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[11][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[11][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[11][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[120][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[120][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[120][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[120][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[120][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[120][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[120][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[120][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[120][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[120][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[120][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[120][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[120][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[120][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[120][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[120][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[120][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[120][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[120][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[120][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[120][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[120][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[120][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[120][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[121][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[121][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[121][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[121][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[121][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[121][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[121][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[121][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[121][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[121][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[121][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[121][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[121][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[121][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[121][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[121][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[121][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[121][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[121][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[121][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[121][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[121][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[121][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[121][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[122][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[122][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[122][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[122][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[122][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[122][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[122][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[122][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[122][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[122][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[122][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[122][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[122][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[122][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[122][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[122][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[122][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[122][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[122][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[122][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[122][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[122][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[122][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[122][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[123][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[123][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[123][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[123][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[123][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[123][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[123][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[123][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[123][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[123][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[123][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[123][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[123][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[123][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[123][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[123][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[123][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[123][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[123][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[123][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[123][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[123][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[123][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[123][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[124][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[124][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[124][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[124][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[124][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[124][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[124][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[124][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[124][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[124][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[124][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[124][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[124][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[124][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[124][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[124][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[124][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[124][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[124][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[124][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[124][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[124][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[124][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[124][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[125][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[125][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[125][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[125][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[125][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[125][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[125][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[125][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[125][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[125][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[125][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[125][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[125][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[125][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[125][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[125][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[125][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[125][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[125][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[125][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[125][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[125][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[125][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[125][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[126][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[126][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[126][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[126][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[126][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[126][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[126][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[126][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[126][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[126][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[126][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[126][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[126][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[126][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[126][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[126][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[126][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[126][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[126][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[126][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[126][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[126][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[126][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[126][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[127][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[127][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[127][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[127][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[127][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[127][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[127][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[127][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[127][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[127][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[127][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[127][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[127][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[127][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[127][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[127][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[127][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[127][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[127][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[127][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[127][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[127][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[127][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[127][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[12][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[12][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[12][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[12][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[12][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[12][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[12][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[12][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[12][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[12][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[12][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[12][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[12][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[12][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[12][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[12][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[12][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[12][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[12][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[12][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[12][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[12][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[12][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[12][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[13][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[13][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[13][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[13][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[13][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[13][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[13][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[13][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[13][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[13][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[13][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[13][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[13][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[13][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[13][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[13][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[13][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[13][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[13][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[13][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[13][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[13][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[13][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[13][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[14][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[14][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[14][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[14][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[14][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[14][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[14][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[14][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[14][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[14][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[14][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[14][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[14][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[14][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[14][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[14][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[14][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[14][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[14][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[14][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[14][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[14][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[14][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[14][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[15][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[15][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[15][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[15][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[15][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[15][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[15][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[15][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[15][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[15][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[15][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[15][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[15][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[15][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[15][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[15][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[15][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[15][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[15][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[15][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[15][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[15][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[15][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[15][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[16][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[16][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[16][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[16][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[16][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[16][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[16][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[16][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[16][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[16][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[16][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[16][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[16][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[16][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[16][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[16][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[16][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[16][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[16][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[16][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[16][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[16][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[16][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[16][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[17][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[17][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[17][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[17][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[17][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[17][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[17][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[17][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[17][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[17][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[17][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[17][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[17][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[17][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[17][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[17][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[17][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[17][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[17][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[17][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[17][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[17][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[17][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[17][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[18][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[18][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[18][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[18][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[18][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[18][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[18][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[18][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[18][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[18][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[18][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[18][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[18][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[18][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[18][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[18][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[18][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[18][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[18][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[18][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[18][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[18][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[18][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[18][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[19][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[19][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[19][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[19][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[19][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[19][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[19][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[19][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[19][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[19][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[19][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[19][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[19][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[19][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[19][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[19][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[19][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[19][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[19][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[19][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[19][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[19][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[19][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[19][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[1][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[1][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[1][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[1][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[1][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[1][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[1][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[1][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[1][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[1][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[1][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[1][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[1][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[1][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[1][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[1][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[1][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[1][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[1][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[1][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[1][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[1][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[1][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[1][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[20][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[20][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[20][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[20][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[20][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[20][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[20][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[20][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[20][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[20][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[20][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[20][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[20][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[20][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[20][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[20][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[20][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[20][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[20][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[20][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[20][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[20][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[20][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[20][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[21][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[21][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[21][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[21][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[21][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[21][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[21][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[21][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[21][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[21][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[21][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[21][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[21][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[21][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[21][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[21][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[21][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[21][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[21][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[21][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[21][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[21][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[21][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[21][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[22][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[22][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[22][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[22][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[22][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[22][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[22][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[22][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[22][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[22][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[22][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[22][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[22][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[22][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[22][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[22][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[22][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[22][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[22][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[22][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[22][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[22][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[22][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[22][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[23][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[23][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[23][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[23][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[23][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[23][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[23][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[23][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[23][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[23][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[23][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[23][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[23][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[23][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[23][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[23][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[23][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[23][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[23][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[23][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[23][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[23][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[23][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[23][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[24][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[24][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[24][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[24][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[24][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[24][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[24][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[24][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[24][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[24][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[24][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[24][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[24][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[24][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[24][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[24][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[24][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[24][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[24][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[24][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[24][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[24][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[24][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[24][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[25][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[25][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[25][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[25][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[25][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[25][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[25][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[25][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[25][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[25][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[25][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[25][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[25][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[25][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[25][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[25][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[25][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[25][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[25][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[25][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[25][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[25][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[25][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[25][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[26][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[26][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[26][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[26][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[26][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[26][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[26][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[26][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[26][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[26][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[26][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[26][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[26][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[26][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[26][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[26][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[26][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[26][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[26][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[26][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[26][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[26][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[26][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[26][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[27][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[27][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[27][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[27][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[27][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[27][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[27][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[27][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[27][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[27][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[27][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[27][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[27][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[27][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[27][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[27][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[27][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[27][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[27][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[27][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[27][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[27][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[27][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[27][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[28][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[28][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[28][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[28][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[28][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[28][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[28][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[28][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[28][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[28][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[28][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[28][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[28][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[28][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[28][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[28][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[28][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[28][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[28][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[28][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[28][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[28][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[28][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[28][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[29][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[29][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[29][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[29][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[29][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[29][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[29][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[29][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[29][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[29][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[29][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[29][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[29][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[29][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[29][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[29][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[29][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[29][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[29][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[29][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[29][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[29][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[29][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[29][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[2][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[2][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[2][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[2][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[2][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[2][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[2][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[2][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[2][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[2][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[2][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[2][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[2][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[2][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[2][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[2][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[2][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[2][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[2][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[2][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[2][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[2][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[2][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[2][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[30][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[30][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[30][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[30][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[30][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[30][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[30][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[30][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[30][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[30][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[30][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[30][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[30][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[30][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[30][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[30][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[30][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[30][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[30][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[30][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[30][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[30][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[30][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[30][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[31][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[31][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[31][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[31][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[31][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[31][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[31][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[31][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[31][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[31][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[31][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[31][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[31][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[31][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[31][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[31][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[31][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[31][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[31][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[31][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[31][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[31][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[31][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[31][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[32][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[32][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[32][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[32][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[32][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[32][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[32][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[32][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[32][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[32][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[32][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[32][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[32][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[32][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[32][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[32][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[32][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[32][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[32][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[32][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[32][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[32][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[32][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[32][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[33][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[33][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[33][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[33][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[33][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[33][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[33][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[33][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[33][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[33][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[33][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[33][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[33][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[33][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[33][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[33][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[33][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[33][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[33][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[33][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[33][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[33][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[33][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[33][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[34][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[34][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[34][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[34][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[34][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[34][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[34][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[34][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[34][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[34][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[34][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[34][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[34][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[34][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[34][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[34][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[34][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[34][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[34][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[34][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[34][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[34][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[34][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[34][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[35][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[35][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[35][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[35][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[35][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[35][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[35][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[35][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[35][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[35][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[35][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[35][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[35][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[35][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[35][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[35][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[35][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[35][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[35][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[35][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[35][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[35][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[35][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[35][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[36][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[36][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[36][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[36][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[36][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[36][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[36][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[36][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[36][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[36][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[36][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[36][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[36][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[36][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[36][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[36][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[36][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[36][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[36][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[36][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[36][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[36][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[36][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[36][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[37][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[37][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[37][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[37][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[37][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[37][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[37][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[37][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[37][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[37][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[37][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[37][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[37][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[37][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[37][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[37][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[37][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[37][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[37][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[37][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[37][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[37][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[37][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[37][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[38][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[38][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[38][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[38][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[38][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[38][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[38][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[38][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[38][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[38][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[38][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[38][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[38][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[38][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[38][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[38][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[38][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[38][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[38][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[38][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[38][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[38][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[38][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[38][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[39][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[39][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[39][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[39][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[39][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[39][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[39][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[39][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[39][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[39][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[39][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[39][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[39][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[39][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[39][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[39][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[39][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[39][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[39][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[39][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[39][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[39][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[39][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[39][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[3][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[3][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[3][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[3][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[3][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[3][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[3][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[3][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[3][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[3][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[3][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[3][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[3][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[3][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[3][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[3][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[3][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[3][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[3][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[3][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[3][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[3][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[3][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[3][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[40][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[40][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[40][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[40][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[40][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[40][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[40][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[40][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[40][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[40][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[40][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[40][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[40][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[40][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[40][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[40][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[40][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[40][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[40][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[40][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[40][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[40][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[40][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[40][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[41][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[41][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[41][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[41][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[41][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[41][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[41][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[41][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[41][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[41][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[41][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[41][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[41][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[41][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[41][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[41][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[41][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[41][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[41][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[41][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[41][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[41][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[41][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[41][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[42][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[42][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[42][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[42][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[42][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[42][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[42][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[42][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[42][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[42][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[42][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[42][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[42][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[42][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[42][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[42][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[42][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[42][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[42][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[42][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[42][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[42][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[42][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[42][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[43][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[43][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[43][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[43][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[43][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[43][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[43][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[43][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[43][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[43][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[43][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[43][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[43][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[43][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[43][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[43][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[43][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[43][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[43][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[43][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[43][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[43][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[43][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[43][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[44][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[44][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[44][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[44][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[44][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[44][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[44][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[44][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[44][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[44][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[44][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[44][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[44][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[44][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[44][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[44][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[44][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[44][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[44][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[44][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[44][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[44][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[44][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[44][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[45][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[45][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[45][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[45][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[45][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[45][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[45][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[45][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[45][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[45][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[45][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[45][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[45][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[45][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[45][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[45][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[45][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[45][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[45][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[45][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[45][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[45][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[45][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[45][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[46][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[46][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[46][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[46][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[46][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[46][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[46][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[46][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[46][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[46][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[46][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[46][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[46][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[46][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[46][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[46][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[46][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[46][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[46][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[46][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[46][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[46][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[46][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[46][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[47][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[47][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[47][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[47][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[47][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[47][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[47][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[47][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[47][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[47][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[47][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[47][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[47][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[47][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[47][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[47][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[47][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[47][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[47][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[47][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[47][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[47][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[47][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[47][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[48][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[48][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[48][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[48][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[48][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[48][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[48][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[48][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[48][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[48][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[48][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[48][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[48][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[48][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[48][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[48][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[48][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[48][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[48][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[48][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[48][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[48][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[48][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[48][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[49][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[49][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[49][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[49][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[49][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[49][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[49][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[49][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[49][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[49][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[49][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[49][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[49][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[49][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[49][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[49][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[49][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[49][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[49][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[49][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[49][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[49][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[49][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[49][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[4][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[4][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[4][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[4][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[4][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[4][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[4][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[4][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[4][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[4][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[4][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[4][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[4][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[4][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[4][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[4][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[4][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[4][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[4][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[4][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[4][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[4][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[4][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[4][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[50][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[50][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[50][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[50][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[50][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[50][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[50][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[50][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[50][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[50][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[50][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[50][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[50][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[50][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[50][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[50][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[50][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[50][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[50][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[50][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[50][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[50][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[50][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[50][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[51][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[51][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[51][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[51][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[51][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[51][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[51][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[51][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[51][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[51][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[51][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[51][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[51][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[51][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[51][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[51][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[51][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[51][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[51][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[51][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[51][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[51][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[51][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[51][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[52][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[52][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[52][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[52][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[52][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[52][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[52][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[52][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[52][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[52][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[52][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[52][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[52][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[52][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[52][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[52][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[52][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[52][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[52][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[52][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[52][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[52][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[52][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[52][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[53][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[53][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[53][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[53][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[53][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[53][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[53][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[53][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[53][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[53][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[53][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[53][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[53][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[53][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[53][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[53][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[53][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[53][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[53][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[53][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[53][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[53][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[53][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[53][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[54][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[54][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[54][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[54][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[54][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[54][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[54][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[54][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[54][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[54][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[54][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[54][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[54][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[54][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[54][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[54][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[54][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[54][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[54][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[54][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[54][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[54][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[54][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[54][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[55][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[55][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[55][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[55][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[55][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[55][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[55][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[55][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[55][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[55][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[55][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[55][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[55][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[55][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[55][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[55][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[55][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[55][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[55][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[55][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[55][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[55][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[55][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[55][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[56][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[56][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[56][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[56][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[56][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[56][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[56][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[56][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[56][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[56][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[56][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[56][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[56][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[56][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[56][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[56][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[56][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[56][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[56][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[56][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[56][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[56][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[56][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[56][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[57][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[57][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[57][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[57][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[57][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[57][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[57][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[57][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[57][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[57][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[57][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[57][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[57][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[57][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[57][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[57][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[57][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[57][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[57][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[57][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[57][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[57][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[57][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[57][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[58][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[58][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[58][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[58][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[58][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[58][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[58][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[58][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[58][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[58][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[58][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[58][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[58][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[58][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[58][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[58][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[58][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[58][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[58][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[58][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[58][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[58][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[58][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[58][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[59][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[59][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[59][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[59][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[59][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[59][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[59][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[59][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[59][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[59][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[59][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[59][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[59][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[59][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[59][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[59][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[59][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[59][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[59][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[59][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[59][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[59][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[59][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[59][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[5][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[5][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[5][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[5][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[5][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[5][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[5][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[5][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[5][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[5][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[5][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[5][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[5][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[5][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[5][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[5][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[5][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[5][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[5][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[5][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[5][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[5][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[5][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[5][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[60][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[60][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[60][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[60][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[60][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[60][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[60][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[60][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[60][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[60][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[60][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[60][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[60][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[60][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[60][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[60][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[60][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[60][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[60][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[60][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[60][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[60][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[60][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[60][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[61][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[61][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[61][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[61][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[61][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[61][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[61][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[61][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[61][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[61][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[61][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[61][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[61][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[61][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[61][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[61][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[61][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[61][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[61][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[61][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[61][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[61][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[61][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[61][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[62][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[62][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[62][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[62][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[62][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[62][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[62][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[62][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[62][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[62][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[62][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[62][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[62][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[62][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[62][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[62][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[62][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[62][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[62][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[62][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[62][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[62][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[62][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[62][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[63][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[63][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[63][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[63][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[63][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[63][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[63][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[63][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[63][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[63][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[63][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[63][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[63][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[63][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[63][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[63][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[63][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[63][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[63][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[63][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[63][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[63][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[63][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[63][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[64][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[64][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[64][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[64][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[64][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[64][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[64][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[64][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[64][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[64][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[64][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[64][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[64][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[64][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[64][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[64][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[64][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[64][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[64][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[64][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[64][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[64][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[64][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[64][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[65][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[65][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[65][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[65][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[65][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[65][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[65][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[65][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[65][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[65][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[65][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[65][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[65][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[65][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[65][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[65][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[65][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[65][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[65][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[65][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[65][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[65][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[65][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[65][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[66][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[66][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[66][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[66][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[66][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[66][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[66][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[66][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[66][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[66][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[66][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[66][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[66][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[66][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[66][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[66][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[66][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[66][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[66][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[66][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[66][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[66][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[66][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[66][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[67][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[67][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[67][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[67][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[67][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[67][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[67][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[67][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[67][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[67][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[67][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[67][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[67][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[67][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[67][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[67][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[67][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[67][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[67][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[67][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[67][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[67][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[67][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[67][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[68][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[68][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[68][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[68][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[68][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[68][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[68][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[68][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[68][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[68][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[68][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[68][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[68][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[68][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[68][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[68][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[68][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[68][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[68][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[68][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[68][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[68][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[68][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[68][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[69][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[69][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[69][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[69][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[69][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[69][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[69][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[69][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[69][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[69][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[69][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[69][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[69][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[69][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[69][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[69][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[69][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[69][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[69][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[69][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[69][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[69][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[69][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[69][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[6][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[6][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[6][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[6][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[6][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[6][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[6][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[6][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[6][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[6][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[6][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[6][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[6][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[6][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[6][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[6][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[6][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[6][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[6][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[6][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[6][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[6][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[6][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[6][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[70][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[70][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[70][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[70][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[70][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[70][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[70][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[70][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[70][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[70][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[70][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[70][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[70][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[70][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[70][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[70][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[70][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[70][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[70][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[70][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[70][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[70][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[70][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[70][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[71][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[71][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[71][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[71][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[71][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[71][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[71][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[71][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[71][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[71][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[71][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[71][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[71][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[71][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[71][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[71][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[71][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[71][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[71][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[71][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[71][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[71][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[71][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[71][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[72][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[72][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[72][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[72][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[72][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[72][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[72][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[72][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[72][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[72][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[72][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[72][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[72][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[72][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[72][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[72][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[72][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[72][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[72][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[72][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[72][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[72][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[72][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[72][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[73][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[73][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[73][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[73][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[73][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[73][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[73][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[73][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[73][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[73][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[73][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[73][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[73][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[73][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[73][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[73][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[73][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[73][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[73][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[73][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[73][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[73][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[73][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[73][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[74][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[74][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[74][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[74][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[74][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[74][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[74][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[74][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[74][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[74][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[74][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[74][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[74][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[74][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[74][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[74][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[74][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[74][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[74][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[74][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[74][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[74][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[74][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[74][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[75][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[75][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[75][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[75][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[75][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[75][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[75][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[75][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[75][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[75][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[75][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[75][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[75][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[75][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[75][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[75][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[75][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[75][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[75][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[75][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[75][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[75][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[75][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[75][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[76][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[76][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[76][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[76][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[76][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[76][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[76][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[76][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[76][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[76][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[76][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[76][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[76][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[76][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[76][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[76][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[76][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[76][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[76][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[76][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[76][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[76][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[76][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[76][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[77][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[77][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[77][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[77][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[77][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[77][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[77][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[77][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[77][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[77][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[77][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[77][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[77][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[77][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[77][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[77][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[77][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[77][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[77][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[77][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[77][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[77][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[77][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[77][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[78][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[78][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[78][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[78][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[78][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[78][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[78][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[78][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[78][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[78][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[78][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[78][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[78][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[78][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[78][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[78][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[78][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[78][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[78][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[78][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[78][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[78][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[78][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[78][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[79][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[79][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[79][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[79][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[79][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[79][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[79][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[79][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[79][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[79][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[79][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[79][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[79][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[79][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[79][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[79][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[79][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[79][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[79][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[79][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[79][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[79][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[79][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[79][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[7][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[7][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[7][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[7][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[7][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[7][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[7][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[7][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[7][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[7][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[7][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[7][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[7][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[7][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[7][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[7][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[7][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[7][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[7][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[7][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[7][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[7][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[7][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[7][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[80][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[80][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[80][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[80][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[80][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[80][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[80][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[80][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[80][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[80][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[80][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[80][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[80][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[80][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[80][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[80][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[80][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[80][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[80][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[80][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[80][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[80][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[80][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[80][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[81][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[81][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[81][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[81][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[81][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[81][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[81][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[81][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[81][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[81][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[81][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[81][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[81][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[81][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[81][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[81][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[81][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[81][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[81][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[81][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[81][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[81][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[81][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[81][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[82][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[82][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[82][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[82][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[82][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[82][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[82][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[82][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[82][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[82][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[82][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[82][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[82][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[82][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[82][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[82][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[82][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[82][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[82][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[82][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[82][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[82][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[82][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[82][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[83][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[83][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[83][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[83][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[83][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[83][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[83][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[83][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[83][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[83][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[83][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[83][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[83][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[83][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[83][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[83][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[83][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[83][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[83][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[83][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[83][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[83][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[83][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[83][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[84][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[84][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[84][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[84][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[84][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[84][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[84][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[84][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[84][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[84][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[84][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[84][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[84][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[84][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[84][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[84][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[84][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[84][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[84][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[84][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[84][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[84][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[84][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[84][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[85][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[85][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[85][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[85][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[85][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[85][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[85][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[85][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[85][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[85][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[85][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[85][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[85][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[85][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[85][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[85][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[85][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[85][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[85][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[85][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[85][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[85][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[85][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[85][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[86][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[86][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[86][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[86][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[86][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[86][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[86][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[86][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[86][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[86][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[86][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[86][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[86][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[86][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[86][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[86][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[86][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[86][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[86][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[86][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[86][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[86][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[86][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[86][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[87][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[87][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[87][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[87][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[87][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[87][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[87][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[87][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[87][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[87][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[87][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[87][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[87][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[87][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[87][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[87][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[87][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[87][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[87][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[87][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[87][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[87][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[87][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[87][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[88][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[88][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[88][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[88][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[88][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[88][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[88][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[88][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[88][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[88][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[88][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[88][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[88][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[88][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[88][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[88][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[88][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[88][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[88][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[88][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[88][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[88][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[88][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[88][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[89][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[89][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[89][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[89][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[89][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[89][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[89][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[89][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[89][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[89][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[89][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[89][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[89][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[89][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[89][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[89][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[89][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[89][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[89][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[89][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[89][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[89][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[89][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[89][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[8][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[8][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[8][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[8][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[8][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[8][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[8][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[8][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[8][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[8][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[8][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[8][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[8][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[8][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[8][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[8][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[8][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[8][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[8][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[8][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[8][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[8][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[8][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[8][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[90][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[90][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[90][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[90][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[90][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[90][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[90][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[90][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[90][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[90][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[90][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[90][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[90][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[90][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[90][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[90][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[90][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[90][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[90][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[90][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[90][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[90][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[90][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[90][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[91][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[91][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[91][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[91][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[91][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[91][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[91][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[91][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[91][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[91][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[91][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[91][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[91][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[91][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[91][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[91][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[91][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[91][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[91][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[91][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[91][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[91][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[91][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[91][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[92][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[92][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[92][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[92][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[92][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[92][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[92][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[92][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[92][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[92][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[92][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[92][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[92][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[92][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[92][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[92][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[92][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[92][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[92][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[92][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[92][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[92][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[92][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[92][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[93][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[93][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[93][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[93][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[93][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[93][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[93][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[93][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[93][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[93][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[93][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[93][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[93][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[93][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[93][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[93][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[93][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[93][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[93][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[93][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[93][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[93][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[93][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[93][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[94][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[94][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[94][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[94][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[94][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[94][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[94][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[94][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[94][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[94][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[94][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[94][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[94][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[94][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[94][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[94][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[94][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[94][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[94][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[94][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[94][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[94][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[94][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[94][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[95][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[95][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[95][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[95][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[95][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[95][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[95][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[95][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[95][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[95][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[95][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[95][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[95][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[95][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[95][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[95][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[95][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[95][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[95][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[95][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[95][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[95][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[95][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[95][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[96][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[96][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[96][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[96][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[96][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[96][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[96][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[96][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[96][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[96][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[96][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[96][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[96][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[96][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[96][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[96][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[96][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[96][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[96][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[96][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[96][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[96][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[96][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[96][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[97][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[97][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[97][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[97][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[97][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[97][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[97][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[97][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[97][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[97][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[97][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[97][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[97][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[97][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[97][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[97][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[97][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[97][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[97][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[97][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[97][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[97][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[97][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[97][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[98][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[98][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[98][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[98][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[98][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[98][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[98][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[98][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[98][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[98][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[98][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[98][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[98][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[98][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[98][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[98][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[98][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[98][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[98][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[98][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[98][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[98][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[98][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[98][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[99][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[99][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[99][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[99][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[99][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[99][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[99][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[99][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[99][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[99][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[99][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[99][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[99][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[99][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[99][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[99][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[99][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[99][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[99][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[99][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[99][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[99][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[99][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[99][7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[9][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[9][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[0]),
        .Q(\txb_reg_n_0_[9][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[9][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[9][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[1]),
        .Q(\txb_reg_n_0_[9][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[9][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[9][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[2]),
        .Q(\txb_reg_n_0_[9][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[9][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[9][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[3]),
        .Q(\txb_reg_n_0_[9][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[9][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[9][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[4]),
        .Q(\txb_reg_n_0_[9][4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[9][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[9][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[5]),
        .Q(\txb_reg_n_0_[9][5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[9][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[9][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[6]),
        .Q(\txb_reg_n_0_[9][6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \txb_reg[9][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\txb[9][7]_i_1_n_0 ),
        .D(PWDATA_IBUF[7]),
        .Q(\txb_reg_n_0_[9][7] ),
        .R(\<const0> ));
  router_top u_router
       (.E(rb0),
        .\PADDR[2] (err_seen_i_2_n_0),
        .\PADDR[3] (\PADDR[3] ),
        .\PADDR[3]_0 (\PADDR[3]_0 ),
        .PADDR_IBUF(PADDR_IBUF[2:0]),
        .PCLK_IBUF_BUFG(PCLK_IBUF_BUFG),
        .PRDATA1(rxb_reg_0_63_0_2_n_2),
        .\PRDATA[2] (\PRDATA[2] ),
        .PRESETn_IBUF(PRESETn_IBUF),
        .PSEL(PSEL),
        .PSEL_0(err_seen_reg_0),
        .PWDATA_IBUF(PWDATA_IBUF[1]),
        .Q(rx_cnt_reg__0[6:2]),
        .SR(SR),
        .\count0_reg[4] (u_router_n_3),
        .\data_out_reg[7] (rb1),
        .\data_out_reg[7]_0 (rb2),
        .err_seen(err_seen),
        .err_seen_reg(u_router_n_19),
        .\ext_parity_reg[7] (u_router_n_6),
        .\ext_parity_reg[7]_0 (u_router_n_7),
        .\ext_parity_reg[7]_1 (u_router_n_8),
        .\hit_reg[1] ({\hit_reg_n_0_[1] ,\hit_reg_n_0_[0] }),
        .p_1_in(p_1_in[7:0]),
        .\rx_cnt_reg[1] (\rx_rp[5]_i_3_n_0 ),
        .tx_cnt(tx_cnt[3:2]),
        .\tx_cnt_reg[0] (\tx_cnt[3]_i_2_n_0 ),
        .\tx_cnt_reg[3] (u_router_n_21),
        .\tx_cnt_reg[5] (PSLVERR_OBUF_inst_i_6_n_0),
        .\tx_cnt_reg[7] (u_router_n_20),
        .tx_idx(tx_idx),
        .\tx_idx_reg[1]_rep (\tx_idx_reg[1]_rep_n_0 ),
        .\tx_idx_reg[1]_rep__0 (\tx_idx_reg[1]_rep__0_n_0 ),
        .\tx_idx_reg[1]_rep__1 (u_router_n_18),
        .\tx_idx_reg[1]_rep__1_0 (\tx_idx_reg[1]_rep__1_n_0 ),
        .\tx_idx_reg[6] (\tx_cnt[7]_i_7_n_0 ),
        .\tx_idx_reg[6]_0 (tx_idx_reg__0),
        .tx_run_reg(u_router_n_17),
        .tx_run_reg_0(tx_run_reg_n_0),
        .tx_run_reg_1(\tx_cnt[7]_i_2_n_0 ),
        .\txb_reg[0][7] ({p_0_in_16,\txb_reg_n_0_[0][1] ,\txb_reg_n_0_[0][0] }),
        .\txb_reg[100][7] ({\txb_reg_n_0_[100][7] ,\txb_reg_n_0_[100][6] ,\txb_reg_n_0_[100][5] ,\txb_reg_n_0_[100][4] ,\txb_reg_n_0_[100][3] ,\txb_reg_n_0_[100][2] ,\txb_reg_n_0_[100][1] ,\txb_reg_n_0_[100][0] }),
        .\txb_reg[101][7] ({\txb_reg_n_0_[101][7] ,\txb_reg_n_0_[101][6] ,\txb_reg_n_0_[101][5] ,\txb_reg_n_0_[101][4] ,\txb_reg_n_0_[101][3] ,\txb_reg_n_0_[101][2] ,\txb_reg_n_0_[101][1] ,\txb_reg_n_0_[101][0] }),
        .\txb_reg[102][7] ({\txb_reg_n_0_[102][7] ,\txb_reg_n_0_[102][6] ,\txb_reg_n_0_[102][5] ,\txb_reg_n_0_[102][4] ,\txb_reg_n_0_[102][3] ,\txb_reg_n_0_[102][2] ,\txb_reg_n_0_[102][1] ,\txb_reg_n_0_[102][0] }),
        .\txb_reg[103][7] ({\txb_reg_n_0_[103][7] ,\txb_reg_n_0_[103][6] ,\txb_reg_n_0_[103][5] ,\txb_reg_n_0_[103][4] ,\txb_reg_n_0_[103][3] ,\txb_reg_n_0_[103][2] ,\txb_reg_n_0_[103][1] ,\txb_reg_n_0_[103][0] }),
        .\txb_reg[104][7] ({\txb_reg_n_0_[104][7] ,\txb_reg_n_0_[104][6] ,\txb_reg_n_0_[104][5] ,\txb_reg_n_0_[104][4] ,\txb_reg_n_0_[104][3] ,\txb_reg_n_0_[104][2] ,\txb_reg_n_0_[104][1] ,\txb_reg_n_0_[104][0] }),
        .\txb_reg[105][7] ({\txb_reg_n_0_[105][7] ,\txb_reg_n_0_[105][6] ,\txb_reg_n_0_[105][5] ,\txb_reg_n_0_[105][4] ,\txb_reg_n_0_[105][3] ,\txb_reg_n_0_[105][2] ,\txb_reg_n_0_[105][1] ,\txb_reg_n_0_[105][0] }),
        .\txb_reg[106][7] ({\txb_reg_n_0_[106][7] ,\txb_reg_n_0_[106][6] ,\txb_reg_n_0_[106][5] ,\txb_reg_n_0_[106][4] ,\txb_reg_n_0_[106][3] ,\txb_reg_n_0_[106][2] ,\txb_reg_n_0_[106][1] ,\txb_reg_n_0_[106][0] }),
        .\txb_reg[107][7] ({\txb_reg_n_0_[107][7] ,\txb_reg_n_0_[107][6] ,\txb_reg_n_0_[107][5] ,\txb_reg_n_0_[107][4] ,\txb_reg_n_0_[107][3] ,\txb_reg_n_0_[107][2] ,\txb_reg_n_0_[107][1] ,\txb_reg_n_0_[107][0] }),
        .\txb_reg[108][7] ({\txb_reg_n_0_[108][7] ,\txb_reg_n_0_[108][6] ,\txb_reg_n_0_[108][5] ,\txb_reg_n_0_[108][4] ,\txb_reg_n_0_[108][3] ,\txb_reg_n_0_[108][2] ,\txb_reg_n_0_[108][1] ,\txb_reg_n_0_[108][0] }),
        .\txb_reg[109][7] ({\txb_reg_n_0_[109][7] ,\txb_reg_n_0_[109][6] ,\txb_reg_n_0_[109][5] ,\txb_reg_n_0_[109][4] ,\txb_reg_n_0_[109][3] ,\txb_reg_n_0_[109][2] ,\txb_reg_n_0_[109][1] ,\txb_reg_n_0_[109][0] }),
        .\txb_reg[10][7] ({\txb_reg_n_0_[10][7] ,\txb_reg_n_0_[10][6] ,\txb_reg_n_0_[10][5] ,\txb_reg_n_0_[10][4] ,\txb_reg_n_0_[10][3] ,\txb_reg_n_0_[10][2] ,\txb_reg_n_0_[10][1] ,\txb_reg_n_0_[10][0] }),
        .\txb_reg[110][7] ({\txb_reg_n_0_[110][7] ,\txb_reg_n_0_[110][6] ,\txb_reg_n_0_[110][5] ,\txb_reg_n_0_[110][4] ,\txb_reg_n_0_[110][3] ,\txb_reg_n_0_[110][2] ,\txb_reg_n_0_[110][1] ,\txb_reg_n_0_[110][0] }),
        .\txb_reg[111][7] ({\txb_reg_n_0_[111][7] ,\txb_reg_n_0_[111][6] ,\txb_reg_n_0_[111][5] ,\txb_reg_n_0_[111][4] ,\txb_reg_n_0_[111][3] ,\txb_reg_n_0_[111][2] ,\txb_reg_n_0_[111][1] ,\txb_reg_n_0_[111][0] }),
        .\txb_reg[112][7] ({\txb_reg_n_0_[112][7] ,\txb_reg_n_0_[112][6] ,\txb_reg_n_0_[112][5] ,\txb_reg_n_0_[112][4] ,\txb_reg_n_0_[112][3] ,\txb_reg_n_0_[112][2] ,\txb_reg_n_0_[112][1] ,\txb_reg_n_0_[112][0] }),
        .\txb_reg[113][7] ({\txb_reg_n_0_[113][7] ,\txb_reg_n_0_[113][6] ,\txb_reg_n_0_[113][5] ,\txb_reg_n_0_[113][4] ,\txb_reg_n_0_[113][3] ,\txb_reg_n_0_[113][2] ,\txb_reg_n_0_[113][1] ,\txb_reg_n_0_[113][0] }),
        .\txb_reg[114][7] ({\txb_reg_n_0_[114][7] ,\txb_reg_n_0_[114][6] ,\txb_reg_n_0_[114][5] ,\txb_reg_n_0_[114][4] ,\txb_reg_n_0_[114][3] ,\txb_reg_n_0_[114][2] ,\txb_reg_n_0_[114][1] ,\txb_reg_n_0_[114][0] }),
        .\txb_reg[115][7] ({\txb_reg_n_0_[115][7] ,\txb_reg_n_0_[115][6] ,\txb_reg_n_0_[115][5] ,\txb_reg_n_0_[115][4] ,\txb_reg_n_0_[115][3] ,\txb_reg_n_0_[115][2] ,\txb_reg_n_0_[115][1] ,\txb_reg_n_0_[115][0] }),
        .\txb_reg[116][7] ({\txb_reg_n_0_[116][7] ,\txb_reg_n_0_[116][6] ,\txb_reg_n_0_[116][5] ,\txb_reg_n_0_[116][4] ,\txb_reg_n_0_[116][3] ,\txb_reg_n_0_[116][2] ,\txb_reg_n_0_[116][1] ,\txb_reg_n_0_[116][0] }),
        .\txb_reg[117][7] ({\txb_reg_n_0_[117][7] ,\txb_reg_n_0_[117][6] ,\txb_reg_n_0_[117][5] ,\txb_reg_n_0_[117][4] ,\txb_reg_n_0_[117][3] ,\txb_reg_n_0_[117][2] ,\txb_reg_n_0_[117][1] ,\txb_reg_n_0_[117][0] }),
        .\txb_reg[118][7] ({\txb_reg_n_0_[118][7] ,\txb_reg_n_0_[118][6] ,\txb_reg_n_0_[118][5] ,\txb_reg_n_0_[118][4] ,\txb_reg_n_0_[118][3] ,\txb_reg_n_0_[118][2] ,\txb_reg_n_0_[118][1] ,\txb_reg_n_0_[118][0] }),
        .\txb_reg[119][7] ({\txb_reg_n_0_[119][7] ,\txb_reg_n_0_[119][6] ,\txb_reg_n_0_[119][5] ,\txb_reg_n_0_[119][4] ,\txb_reg_n_0_[119][3] ,\txb_reg_n_0_[119][2] ,\txb_reg_n_0_[119][1] ,\txb_reg_n_0_[119][0] }),
        .\txb_reg[11][7] ({\txb_reg_n_0_[11][7] ,\txb_reg_n_0_[11][6] ,\txb_reg_n_0_[11][5] ,\txb_reg_n_0_[11][4] ,\txb_reg_n_0_[11][3] ,\txb_reg_n_0_[11][2] ,\txb_reg_n_0_[11][1] ,\txb_reg_n_0_[11][0] }),
        .\txb_reg[120][7] ({\txb_reg_n_0_[120][7] ,\txb_reg_n_0_[120][6] ,\txb_reg_n_0_[120][5] ,\txb_reg_n_0_[120][4] ,\txb_reg_n_0_[120][3] ,\txb_reg_n_0_[120][2] ,\txb_reg_n_0_[120][1] ,\txb_reg_n_0_[120][0] }),
        .\txb_reg[121][7] ({\txb_reg_n_0_[121][7] ,\txb_reg_n_0_[121][6] ,\txb_reg_n_0_[121][5] ,\txb_reg_n_0_[121][4] ,\txb_reg_n_0_[121][3] ,\txb_reg_n_0_[121][2] ,\txb_reg_n_0_[121][1] ,\txb_reg_n_0_[121][0] }),
        .\txb_reg[122][7] ({\txb_reg_n_0_[122][7] ,\txb_reg_n_0_[122][6] ,\txb_reg_n_0_[122][5] ,\txb_reg_n_0_[122][4] ,\txb_reg_n_0_[122][3] ,\txb_reg_n_0_[122][2] ,\txb_reg_n_0_[122][1] ,\txb_reg_n_0_[122][0] }),
        .\txb_reg[123][7] ({\txb_reg_n_0_[123][7] ,\txb_reg_n_0_[123][6] ,\txb_reg_n_0_[123][5] ,\txb_reg_n_0_[123][4] ,\txb_reg_n_0_[123][3] ,\txb_reg_n_0_[123][2] ,\txb_reg_n_0_[123][1] ,\txb_reg_n_0_[123][0] }),
        .\txb_reg[124][7] ({\txb_reg_n_0_[124][7] ,\txb_reg_n_0_[124][6] ,\txb_reg_n_0_[124][5] ,\txb_reg_n_0_[124][4] ,\txb_reg_n_0_[124][3] ,\txb_reg_n_0_[124][2] ,\txb_reg_n_0_[124][1] ,\txb_reg_n_0_[124][0] }),
        .\txb_reg[125][7] ({\txb_reg_n_0_[125][7] ,\txb_reg_n_0_[125][6] ,\txb_reg_n_0_[125][5] ,\txb_reg_n_0_[125][4] ,\txb_reg_n_0_[125][3] ,\txb_reg_n_0_[125][2] ,\txb_reg_n_0_[125][1] ,\txb_reg_n_0_[125][0] }),
        .\txb_reg[126][7] ({\txb_reg_n_0_[126][7] ,\txb_reg_n_0_[126][6] ,\txb_reg_n_0_[126][5] ,\txb_reg_n_0_[126][4] ,\txb_reg_n_0_[126][3] ,\txb_reg_n_0_[126][2] ,\txb_reg_n_0_[126][1] ,\txb_reg_n_0_[126][0] }),
        .\txb_reg[127][7] ({\txb_reg_n_0_[127][7] ,\txb_reg_n_0_[127][6] ,\txb_reg_n_0_[127][5] ,\txb_reg_n_0_[127][4] ,\txb_reg_n_0_[127][3] ,\txb_reg_n_0_[127][2] ,\txb_reg_n_0_[127][1] ,\txb_reg_n_0_[127][0] }),
        .\txb_reg[12][7] ({\txb_reg_n_0_[12][7] ,\txb_reg_n_0_[12][6] ,\txb_reg_n_0_[12][5] ,\txb_reg_n_0_[12][4] ,\txb_reg_n_0_[12][3] ,\txb_reg_n_0_[12][2] ,\txb_reg_n_0_[12][1] ,\txb_reg_n_0_[12][0] }),
        .\txb_reg[13][7] ({\txb_reg_n_0_[13][7] ,\txb_reg_n_0_[13][6] ,\txb_reg_n_0_[13][5] ,\txb_reg_n_0_[13][4] ,\txb_reg_n_0_[13][3] ,\txb_reg_n_0_[13][2] ,\txb_reg_n_0_[13][1] ,\txb_reg_n_0_[13][0] }),
        .\txb_reg[14][7] ({\txb_reg_n_0_[14][7] ,\txb_reg_n_0_[14][6] ,\txb_reg_n_0_[14][5] ,\txb_reg_n_0_[14][4] ,\txb_reg_n_0_[14][3] ,\txb_reg_n_0_[14][2] ,\txb_reg_n_0_[14][1] ,\txb_reg_n_0_[14][0] }),
        .\txb_reg[15][7] ({\txb_reg_n_0_[15][7] ,\txb_reg_n_0_[15][6] ,\txb_reg_n_0_[15][5] ,\txb_reg_n_0_[15][4] ,\txb_reg_n_0_[15][3] ,\txb_reg_n_0_[15][2] ,\txb_reg_n_0_[15][1] ,\txb_reg_n_0_[15][0] }),
        .\txb_reg[16][7] ({\txb_reg_n_0_[16][7] ,\txb_reg_n_0_[16][6] ,\txb_reg_n_0_[16][5] ,\txb_reg_n_0_[16][4] ,\txb_reg_n_0_[16][3] ,\txb_reg_n_0_[16][2] ,\txb_reg_n_0_[16][1] ,\txb_reg_n_0_[16][0] }),
        .\txb_reg[17][7] ({\txb_reg_n_0_[17][7] ,\txb_reg_n_0_[17][6] ,\txb_reg_n_0_[17][5] ,\txb_reg_n_0_[17][4] ,\txb_reg_n_0_[17][3] ,\txb_reg_n_0_[17][2] ,\txb_reg_n_0_[17][1] ,\txb_reg_n_0_[17][0] }),
        .\txb_reg[18][7] ({\txb_reg_n_0_[18][7] ,\txb_reg_n_0_[18][6] ,\txb_reg_n_0_[18][5] ,\txb_reg_n_0_[18][4] ,\txb_reg_n_0_[18][3] ,\txb_reg_n_0_[18][2] ,\txb_reg_n_0_[18][1] ,\txb_reg_n_0_[18][0] }),
        .\txb_reg[19][7] ({\txb_reg_n_0_[19][7] ,\txb_reg_n_0_[19][6] ,\txb_reg_n_0_[19][5] ,\txb_reg_n_0_[19][4] ,\txb_reg_n_0_[19][3] ,\txb_reg_n_0_[19][2] ,\txb_reg_n_0_[19][1] ,\txb_reg_n_0_[19][0] }),
        .\txb_reg[1][7] ({\txb_reg_n_0_[1][7] ,\txb_reg_n_0_[1][6] ,\txb_reg_n_0_[1][5] ,\txb_reg_n_0_[1][4] ,\txb_reg_n_0_[1][3] ,\txb_reg_n_0_[1][2] ,\txb_reg_n_0_[1][1] ,\txb_reg_n_0_[1][0] }),
        .\txb_reg[20][7] ({\txb_reg_n_0_[20][7] ,\txb_reg_n_0_[20][6] ,\txb_reg_n_0_[20][5] ,\txb_reg_n_0_[20][4] ,\txb_reg_n_0_[20][3] ,\txb_reg_n_0_[20][2] ,\txb_reg_n_0_[20][1] ,\txb_reg_n_0_[20][0] }),
        .\txb_reg[21][7] ({\txb_reg_n_0_[21][7] ,\txb_reg_n_0_[21][6] ,\txb_reg_n_0_[21][5] ,\txb_reg_n_0_[21][4] ,\txb_reg_n_0_[21][3] ,\txb_reg_n_0_[21][2] ,\txb_reg_n_0_[21][1] ,\txb_reg_n_0_[21][0] }),
        .\txb_reg[22][7] ({\txb_reg_n_0_[22][7] ,\txb_reg_n_0_[22][6] ,\txb_reg_n_0_[22][5] ,\txb_reg_n_0_[22][4] ,\txb_reg_n_0_[22][3] ,\txb_reg_n_0_[22][2] ,\txb_reg_n_0_[22][1] ,\txb_reg_n_0_[22][0] }),
        .\txb_reg[23][7] ({\txb_reg_n_0_[23][7] ,\txb_reg_n_0_[23][6] ,\txb_reg_n_0_[23][5] ,\txb_reg_n_0_[23][4] ,\txb_reg_n_0_[23][3] ,\txb_reg_n_0_[23][2] ,\txb_reg_n_0_[23][1] ,\txb_reg_n_0_[23][0] }),
        .\txb_reg[24][7] ({\txb_reg_n_0_[24][7] ,\txb_reg_n_0_[24][6] ,\txb_reg_n_0_[24][5] ,\txb_reg_n_0_[24][4] ,\txb_reg_n_0_[24][3] ,\txb_reg_n_0_[24][2] ,\txb_reg_n_0_[24][1] ,\txb_reg_n_0_[24][0] }),
        .\txb_reg[25][7] ({\txb_reg_n_0_[25][7] ,\txb_reg_n_0_[25][6] ,\txb_reg_n_0_[25][5] ,\txb_reg_n_0_[25][4] ,\txb_reg_n_0_[25][3] ,\txb_reg_n_0_[25][2] ,\txb_reg_n_0_[25][1] ,\txb_reg_n_0_[25][0] }),
        .\txb_reg[26][7] ({\txb_reg_n_0_[26][7] ,\txb_reg_n_0_[26][6] ,\txb_reg_n_0_[26][5] ,\txb_reg_n_0_[26][4] ,\txb_reg_n_0_[26][3] ,\txb_reg_n_0_[26][2] ,\txb_reg_n_0_[26][1] ,\txb_reg_n_0_[26][0] }),
        .\txb_reg[27][7] ({\txb_reg_n_0_[27][7] ,\txb_reg_n_0_[27][6] ,\txb_reg_n_0_[27][5] ,\txb_reg_n_0_[27][4] ,\txb_reg_n_0_[27][3] ,\txb_reg_n_0_[27][2] ,\txb_reg_n_0_[27][1] ,\txb_reg_n_0_[27][0] }),
        .\txb_reg[28][7] ({\txb_reg_n_0_[28][7] ,\txb_reg_n_0_[28][6] ,\txb_reg_n_0_[28][5] ,\txb_reg_n_0_[28][4] ,\txb_reg_n_0_[28][3] ,\txb_reg_n_0_[28][2] ,\txb_reg_n_0_[28][1] ,\txb_reg_n_0_[28][0] }),
        .\txb_reg[29][7] ({\txb_reg_n_0_[29][7] ,\txb_reg_n_0_[29][6] ,\txb_reg_n_0_[29][5] ,\txb_reg_n_0_[29][4] ,\txb_reg_n_0_[29][3] ,\txb_reg_n_0_[29][2] ,\txb_reg_n_0_[29][1] ,\txb_reg_n_0_[29][0] }),
        .\txb_reg[2][7] ({\txb_reg_n_0_[2][7] ,\txb_reg_n_0_[2][6] ,\txb_reg_n_0_[2][5] ,\txb_reg_n_0_[2][4] ,\txb_reg_n_0_[2][3] ,\txb_reg_n_0_[2][2] ,\txb_reg_n_0_[2][1] ,\txb_reg_n_0_[2][0] }),
        .\txb_reg[30][7] ({\txb_reg_n_0_[30][7] ,\txb_reg_n_0_[30][6] ,\txb_reg_n_0_[30][5] ,\txb_reg_n_0_[30][4] ,\txb_reg_n_0_[30][3] ,\txb_reg_n_0_[30][2] ,\txb_reg_n_0_[30][1] ,\txb_reg_n_0_[30][0] }),
        .\txb_reg[31][7] ({\txb_reg_n_0_[31][7] ,\txb_reg_n_0_[31][6] ,\txb_reg_n_0_[31][5] ,\txb_reg_n_0_[31][4] ,\txb_reg_n_0_[31][3] ,\txb_reg_n_0_[31][2] ,\txb_reg_n_0_[31][1] ,\txb_reg_n_0_[31][0] }),
        .\txb_reg[32][7] ({\txb_reg_n_0_[32][7] ,\txb_reg_n_0_[32][6] ,\txb_reg_n_0_[32][5] ,\txb_reg_n_0_[32][4] ,\txb_reg_n_0_[32][3] ,\txb_reg_n_0_[32][2] ,\txb_reg_n_0_[32][1] ,\txb_reg_n_0_[32][0] }),
        .\txb_reg[33][7] ({\txb_reg_n_0_[33][7] ,\txb_reg_n_0_[33][6] ,\txb_reg_n_0_[33][5] ,\txb_reg_n_0_[33][4] ,\txb_reg_n_0_[33][3] ,\txb_reg_n_0_[33][2] ,\txb_reg_n_0_[33][1] ,\txb_reg_n_0_[33][0] }),
        .\txb_reg[34][7] ({\txb_reg_n_0_[34][7] ,\txb_reg_n_0_[34][6] ,\txb_reg_n_0_[34][5] ,\txb_reg_n_0_[34][4] ,\txb_reg_n_0_[34][3] ,\txb_reg_n_0_[34][2] ,\txb_reg_n_0_[34][1] ,\txb_reg_n_0_[34][0] }),
        .\txb_reg[35][7] ({\txb_reg_n_0_[35][7] ,\txb_reg_n_0_[35][6] ,\txb_reg_n_0_[35][5] ,\txb_reg_n_0_[35][4] ,\txb_reg_n_0_[35][3] ,\txb_reg_n_0_[35][2] ,\txb_reg_n_0_[35][1] ,\txb_reg_n_0_[35][0] }),
        .\txb_reg[36][7] ({\txb_reg_n_0_[36][7] ,\txb_reg_n_0_[36][6] ,\txb_reg_n_0_[36][5] ,\txb_reg_n_0_[36][4] ,\txb_reg_n_0_[36][3] ,\txb_reg_n_0_[36][2] ,\txb_reg_n_0_[36][1] ,\txb_reg_n_0_[36][0] }),
        .\txb_reg[37][7] ({\txb_reg_n_0_[37][7] ,\txb_reg_n_0_[37][6] ,\txb_reg_n_0_[37][5] ,\txb_reg_n_0_[37][4] ,\txb_reg_n_0_[37][3] ,\txb_reg_n_0_[37][2] ,\txb_reg_n_0_[37][1] ,\txb_reg_n_0_[37][0] }),
        .\txb_reg[38][7] ({\txb_reg_n_0_[38][7] ,\txb_reg_n_0_[38][6] ,\txb_reg_n_0_[38][5] ,\txb_reg_n_0_[38][4] ,\txb_reg_n_0_[38][3] ,\txb_reg_n_0_[38][2] ,\txb_reg_n_0_[38][1] ,\txb_reg_n_0_[38][0] }),
        .\txb_reg[39][7] ({\txb_reg_n_0_[39][7] ,\txb_reg_n_0_[39][6] ,\txb_reg_n_0_[39][5] ,\txb_reg_n_0_[39][4] ,\txb_reg_n_0_[39][3] ,\txb_reg_n_0_[39][2] ,\txb_reg_n_0_[39][1] ,\txb_reg_n_0_[39][0] }),
        .\txb_reg[3][7] ({\txb_reg_n_0_[3][7] ,\txb_reg_n_0_[3][6] ,\txb_reg_n_0_[3][5] ,\txb_reg_n_0_[3][4] ,\txb_reg_n_0_[3][3] ,\txb_reg_n_0_[3][2] ,\txb_reg_n_0_[3][1] ,\txb_reg_n_0_[3][0] }),
        .\txb_reg[40][7] ({\txb_reg_n_0_[40][7] ,\txb_reg_n_0_[40][6] ,\txb_reg_n_0_[40][5] ,\txb_reg_n_0_[40][4] ,\txb_reg_n_0_[40][3] ,\txb_reg_n_0_[40][2] ,\txb_reg_n_0_[40][1] ,\txb_reg_n_0_[40][0] }),
        .\txb_reg[41][7] ({\txb_reg_n_0_[41][7] ,\txb_reg_n_0_[41][6] ,\txb_reg_n_0_[41][5] ,\txb_reg_n_0_[41][4] ,\txb_reg_n_0_[41][3] ,\txb_reg_n_0_[41][2] ,\txb_reg_n_0_[41][1] ,\txb_reg_n_0_[41][0] }),
        .\txb_reg[42][7] ({\txb_reg_n_0_[42][7] ,\txb_reg_n_0_[42][6] ,\txb_reg_n_0_[42][5] ,\txb_reg_n_0_[42][4] ,\txb_reg_n_0_[42][3] ,\txb_reg_n_0_[42][2] ,\txb_reg_n_0_[42][1] ,\txb_reg_n_0_[42][0] }),
        .\txb_reg[43][7] ({\txb_reg_n_0_[43][7] ,\txb_reg_n_0_[43][6] ,\txb_reg_n_0_[43][5] ,\txb_reg_n_0_[43][4] ,\txb_reg_n_0_[43][3] ,\txb_reg_n_0_[43][2] ,\txb_reg_n_0_[43][1] ,\txb_reg_n_0_[43][0] }),
        .\txb_reg[44][7] ({\txb_reg_n_0_[44][7] ,\txb_reg_n_0_[44][6] ,\txb_reg_n_0_[44][5] ,\txb_reg_n_0_[44][4] ,\txb_reg_n_0_[44][3] ,\txb_reg_n_0_[44][2] ,\txb_reg_n_0_[44][1] ,\txb_reg_n_0_[44][0] }),
        .\txb_reg[45][7] ({\txb_reg_n_0_[45][7] ,\txb_reg_n_0_[45][6] ,\txb_reg_n_0_[45][5] ,\txb_reg_n_0_[45][4] ,\txb_reg_n_0_[45][3] ,\txb_reg_n_0_[45][2] ,\txb_reg_n_0_[45][1] ,\txb_reg_n_0_[45][0] }),
        .\txb_reg[46][7] ({\txb_reg_n_0_[46][7] ,\txb_reg_n_0_[46][6] ,\txb_reg_n_0_[46][5] ,\txb_reg_n_0_[46][4] ,\txb_reg_n_0_[46][3] ,\txb_reg_n_0_[46][2] ,\txb_reg_n_0_[46][1] ,\txb_reg_n_0_[46][0] }),
        .\txb_reg[47][7] ({\txb_reg_n_0_[47][7] ,\txb_reg_n_0_[47][6] ,\txb_reg_n_0_[47][5] ,\txb_reg_n_0_[47][4] ,\txb_reg_n_0_[47][3] ,\txb_reg_n_0_[47][2] ,\txb_reg_n_0_[47][1] ,\txb_reg_n_0_[47][0] }),
        .\txb_reg[48][7] ({\txb_reg_n_0_[48][7] ,\txb_reg_n_0_[48][6] ,\txb_reg_n_0_[48][5] ,\txb_reg_n_0_[48][4] ,\txb_reg_n_0_[48][3] ,\txb_reg_n_0_[48][2] ,\txb_reg_n_0_[48][1] ,\txb_reg_n_0_[48][0] }),
        .\txb_reg[49][7] ({\txb_reg_n_0_[49][7] ,\txb_reg_n_0_[49][6] ,\txb_reg_n_0_[49][5] ,\txb_reg_n_0_[49][4] ,\txb_reg_n_0_[49][3] ,\txb_reg_n_0_[49][2] ,\txb_reg_n_0_[49][1] ,\txb_reg_n_0_[49][0] }),
        .\txb_reg[4][7] ({\txb_reg_n_0_[4][7] ,\txb_reg_n_0_[4][6] ,\txb_reg_n_0_[4][5] ,\txb_reg_n_0_[4][4] ,\txb_reg_n_0_[4][3] ,\txb_reg_n_0_[4][2] ,\txb_reg_n_0_[4][1] ,\txb_reg_n_0_[4][0] }),
        .\txb_reg[50][7] ({\txb_reg_n_0_[50][7] ,\txb_reg_n_0_[50][6] ,\txb_reg_n_0_[50][5] ,\txb_reg_n_0_[50][4] ,\txb_reg_n_0_[50][3] ,\txb_reg_n_0_[50][2] ,\txb_reg_n_0_[50][1] ,\txb_reg_n_0_[50][0] }),
        .\txb_reg[51][7] ({\txb_reg_n_0_[51][7] ,\txb_reg_n_0_[51][6] ,\txb_reg_n_0_[51][5] ,\txb_reg_n_0_[51][4] ,\txb_reg_n_0_[51][3] ,\txb_reg_n_0_[51][2] ,\txb_reg_n_0_[51][1] ,\txb_reg_n_0_[51][0] }),
        .\txb_reg[52][7] ({\txb_reg_n_0_[52][7] ,\txb_reg_n_0_[52][6] ,\txb_reg_n_0_[52][5] ,\txb_reg_n_0_[52][4] ,\txb_reg_n_0_[52][3] ,\txb_reg_n_0_[52][2] ,\txb_reg_n_0_[52][1] ,\txb_reg_n_0_[52][0] }),
        .\txb_reg[53][7] ({\txb_reg_n_0_[53][7] ,\txb_reg_n_0_[53][6] ,\txb_reg_n_0_[53][5] ,\txb_reg_n_0_[53][4] ,\txb_reg_n_0_[53][3] ,\txb_reg_n_0_[53][2] ,\txb_reg_n_0_[53][1] ,\txb_reg_n_0_[53][0] }),
        .\txb_reg[54][7] ({\txb_reg_n_0_[54][7] ,\txb_reg_n_0_[54][6] ,\txb_reg_n_0_[54][5] ,\txb_reg_n_0_[54][4] ,\txb_reg_n_0_[54][3] ,\txb_reg_n_0_[54][2] ,\txb_reg_n_0_[54][1] ,\txb_reg_n_0_[54][0] }),
        .\txb_reg[55][7] ({\txb_reg_n_0_[55][7] ,\txb_reg_n_0_[55][6] ,\txb_reg_n_0_[55][5] ,\txb_reg_n_0_[55][4] ,\txb_reg_n_0_[55][3] ,\txb_reg_n_0_[55][2] ,\txb_reg_n_0_[55][1] ,\txb_reg_n_0_[55][0] }),
        .\txb_reg[56][7] ({\txb_reg_n_0_[56][7] ,\txb_reg_n_0_[56][6] ,\txb_reg_n_0_[56][5] ,\txb_reg_n_0_[56][4] ,\txb_reg_n_0_[56][3] ,\txb_reg_n_0_[56][2] ,\txb_reg_n_0_[56][1] ,\txb_reg_n_0_[56][0] }),
        .\txb_reg[57][7] ({\txb_reg_n_0_[57][7] ,\txb_reg_n_0_[57][6] ,\txb_reg_n_0_[57][5] ,\txb_reg_n_0_[57][4] ,\txb_reg_n_0_[57][3] ,\txb_reg_n_0_[57][2] ,\txb_reg_n_0_[57][1] ,\txb_reg_n_0_[57][0] }),
        .\txb_reg[58][7] ({\txb_reg_n_0_[58][7] ,\txb_reg_n_0_[58][6] ,\txb_reg_n_0_[58][5] ,\txb_reg_n_0_[58][4] ,\txb_reg_n_0_[58][3] ,\txb_reg_n_0_[58][2] ,\txb_reg_n_0_[58][1] ,\txb_reg_n_0_[58][0] }),
        .\txb_reg[59][7] ({\txb_reg_n_0_[59][7] ,\txb_reg_n_0_[59][6] ,\txb_reg_n_0_[59][5] ,\txb_reg_n_0_[59][4] ,\txb_reg_n_0_[59][3] ,\txb_reg_n_0_[59][2] ,\txb_reg_n_0_[59][1] ,\txb_reg_n_0_[59][0] }),
        .\txb_reg[5][7] ({\txb_reg_n_0_[5][7] ,\txb_reg_n_0_[5][6] ,\txb_reg_n_0_[5][5] ,\txb_reg_n_0_[5][4] ,\txb_reg_n_0_[5][3] ,\txb_reg_n_0_[5][2] ,\txb_reg_n_0_[5][1] ,\txb_reg_n_0_[5][0] }),
        .\txb_reg[60][7] ({\txb_reg_n_0_[60][7] ,\txb_reg_n_0_[60][6] ,\txb_reg_n_0_[60][5] ,\txb_reg_n_0_[60][4] ,\txb_reg_n_0_[60][3] ,\txb_reg_n_0_[60][2] ,\txb_reg_n_0_[60][1] ,\txb_reg_n_0_[60][0] }),
        .\txb_reg[61][7] ({\txb_reg_n_0_[61][7] ,\txb_reg_n_0_[61][6] ,\txb_reg_n_0_[61][5] ,\txb_reg_n_0_[61][4] ,\txb_reg_n_0_[61][3] ,\txb_reg_n_0_[61][2] ,\txb_reg_n_0_[61][1] ,\txb_reg_n_0_[61][0] }),
        .\txb_reg[62][7] ({\txb_reg_n_0_[62][7] ,\txb_reg_n_0_[62][6] ,\txb_reg_n_0_[62][5] ,\txb_reg_n_0_[62][4] ,\txb_reg_n_0_[62][3] ,\txb_reg_n_0_[62][2] ,\txb_reg_n_0_[62][1] ,\txb_reg_n_0_[62][0] }),
        .\txb_reg[63][7] ({\txb_reg_n_0_[63][7] ,\txb_reg_n_0_[63][6] ,\txb_reg_n_0_[63][5] ,\txb_reg_n_0_[63][4] ,\txb_reg_n_0_[63][3] ,\txb_reg_n_0_[63][2] ,\txb_reg_n_0_[63][1] ,\txb_reg_n_0_[63][0] }),
        .\txb_reg[64][7] ({\txb_reg_n_0_[64][7] ,\txb_reg_n_0_[64][6] ,\txb_reg_n_0_[64][5] ,\txb_reg_n_0_[64][4] ,\txb_reg_n_0_[64][3] ,\txb_reg_n_0_[64][2] ,\txb_reg_n_0_[64][1] ,\txb_reg_n_0_[64][0] }),
        .\txb_reg[65][7] ({\txb_reg_n_0_[65][7] ,\txb_reg_n_0_[65][6] ,\txb_reg_n_0_[65][5] ,\txb_reg_n_0_[65][4] ,\txb_reg_n_0_[65][3] ,\txb_reg_n_0_[65][2] ,\txb_reg_n_0_[65][1] ,\txb_reg_n_0_[65][0] }),
        .\txb_reg[66][7] ({\txb_reg_n_0_[66][7] ,\txb_reg_n_0_[66][6] ,\txb_reg_n_0_[66][5] ,\txb_reg_n_0_[66][4] ,\txb_reg_n_0_[66][3] ,\txb_reg_n_0_[66][2] ,\txb_reg_n_0_[66][1] ,\txb_reg_n_0_[66][0] }),
        .\txb_reg[67][7] ({\txb_reg_n_0_[67][7] ,\txb_reg_n_0_[67][6] ,\txb_reg_n_0_[67][5] ,\txb_reg_n_0_[67][4] ,\txb_reg_n_0_[67][3] ,\txb_reg_n_0_[67][2] ,\txb_reg_n_0_[67][1] ,\txb_reg_n_0_[67][0] }),
        .\txb_reg[68][7] ({\txb_reg_n_0_[68][7] ,\txb_reg_n_0_[68][6] ,\txb_reg_n_0_[68][5] ,\txb_reg_n_0_[68][4] ,\txb_reg_n_0_[68][3] ,\txb_reg_n_0_[68][2] ,\txb_reg_n_0_[68][1] ,\txb_reg_n_0_[68][0] }),
        .\txb_reg[69][7] ({\txb_reg_n_0_[69][7] ,\txb_reg_n_0_[69][6] ,\txb_reg_n_0_[69][5] ,\txb_reg_n_0_[69][4] ,\txb_reg_n_0_[69][3] ,\txb_reg_n_0_[69][2] ,\txb_reg_n_0_[69][1] ,\txb_reg_n_0_[69][0] }),
        .\txb_reg[6][7] ({\txb_reg_n_0_[6][7] ,\txb_reg_n_0_[6][6] ,\txb_reg_n_0_[6][5] ,\txb_reg_n_0_[6][4] ,\txb_reg_n_0_[6][3] ,\txb_reg_n_0_[6][2] ,\txb_reg_n_0_[6][1] ,\txb_reg_n_0_[6][0] }),
        .\txb_reg[70][7] ({\txb_reg_n_0_[70][7] ,\txb_reg_n_0_[70][6] ,\txb_reg_n_0_[70][5] ,\txb_reg_n_0_[70][4] ,\txb_reg_n_0_[70][3] ,\txb_reg_n_0_[70][2] ,\txb_reg_n_0_[70][1] ,\txb_reg_n_0_[70][0] }),
        .\txb_reg[71][7] ({\txb_reg_n_0_[71][7] ,\txb_reg_n_0_[71][6] ,\txb_reg_n_0_[71][5] ,\txb_reg_n_0_[71][4] ,\txb_reg_n_0_[71][3] ,\txb_reg_n_0_[71][2] ,\txb_reg_n_0_[71][1] ,\txb_reg_n_0_[71][0] }),
        .\txb_reg[72][7] ({\txb_reg_n_0_[72][7] ,\txb_reg_n_0_[72][6] ,\txb_reg_n_0_[72][5] ,\txb_reg_n_0_[72][4] ,\txb_reg_n_0_[72][3] ,\txb_reg_n_0_[72][2] ,\txb_reg_n_0_[72][1] ,\txb_reg_n_0_[72][0] }),
        .\txb_reg[73][7] ({\txb_reg_n_0_[73][7] ,\txb_reg_n_0_[73][6] ,\txb_reg_n_0_[73][5] ,\txb_reg_n_0_[73][4] ,\txb_reg_n_0_[73][3] ,\txb_reg_n_0_[73][2] ,\txb_reg_n_0_[73][1] ,\txb_reg_n_0_[73][0] }),
        .\txb_reg[74][7] ({\txb_reg_n_0_[74][7] ,\txb_reg_n_0_[74][6] ,\txb_reg_n_0_[74][5] ,\txb_reg_n_0_[74][4] ,\txb_reg_n_0_[74][3] ,\txb_reg_n_0_[74][2] ,\txb_reg_n_0_[74][1] ,\txb_reg_n_0_[74][0] }),
        .\txb_reg[75][7] ({\txb_reg_n_0_[75][7] ,\txb_reg_n_0_[75][6] ,\txb_reg_n_0_[75][5] ,\txb_reg_n_0_[75][4] ,\txb_reg_n_0_[75][3] ,\txb_reg_n_0_[75][2] ,\txb_reg_n_0_[75][1] ,\txb_reg_n_0_[75][0] }),
        .\txb_reg[76][7] ({\txb_reg_n_0_[76][7] ,\txb_reg_n_0_[76][6] ,\txb_reg_n_0_[76][5] ,\txb_reg_n_0_[76][4] ,\txb_reg_n_0_[76][3] ,\txb_reg_n_0_[76][2] ,\txb_reg_n_0_[76][1] ,\txb_reg_n_0_[76][0] }),
        .\txb_reg[77][7] ({\txb_reg_n_0_[77][7] ,\txb_reg_n_0_[77][6] ,\txb_reg_n_0_[77][5] ,\txb_reg_n_0_[77][4] ,\txb_reg_n_0_[77][3] ,\txb_reg_n_0_[77][2] ,\txb_reg_n_0_[77][1] ,\txb_reg_n_0_[77][0] }),
        .\txb_reg[78][7] ({\txb_reg_n_0_[78][7] ,\txb_reg_n_0_[78][6] ,\txb_reg_n_0_[78][5] ,\txb_reg_n_0_[78][4] ,\txb_reg_n_0_[78][3] ,\txb_reg_n_0_[78][2] ,\txb_reg_n_0_[78][1] ,\txb_reg_n_0_[78][0] }),
        .\txb_reg[79][7] ({\txb_reg_n_0_[79][7] ,\txb_reg_n_0_[79][6] ,\txb_reg_n_0_[79][5] ,\txb_reg_n_0_[79][4] ,\txb_reg_n_0_[79][3] ,\txb_reg_n_0_[79][2] ,\txb_reg_n_0_[79][1] ,\txb_reg_n_0_[79][0] }),
        .\txb_reg[7][7] ({\txb_reg_n_0_[7][7] ,\txb_reg_n_0_[7][6] ,\txb_reg_n_0_[7][5] ,\txb_reg_n_0_[7][4] ,\txb_reg_n_0_[7][3] ,\txb_reg_n_0_[7][2] ,\txb_reg_n_0_[7][1] ,\txb_reg_n_0_[7][0] }),
        .\txb_reg[80][7] ({\txb_reg_n_0_[80][7] ,\txb_reg_n_0_[80][6] ,\txb_reg_n_0_[80][5] ,\txb_reg_n_0_[80][4] ,\txb_reg_n_0_[80][3] ,\txb_reg_n_0_[80][2] ,\txb_reg_n_0_[80][1] ,\txb_reg_n_0_[80][0] }),
        .\txb_reg[81][7] ({\txb_reg_n_0_[81][7] ,\txb_reg_n_0_[81][6] ,\txb_reg_n_0_[81][5] ,\txb_reg_n_0_[81][4] ,\txb_reg_n_0_[81][3] ,\txb_reg_n_0_[81][2] ,\txb_reg_n_0_[81][1] ,\txb_reg_n_0_[81][0] }),
        .\txb_reg[82][7] ({\txb_reg_n_0_[82][7] ,\txb_reg_n_0_[82][6] ,\txb_reg_n_0_[82][5] ,\txb_reg_n_0_[82][4] ,\txb_reg_n_0_[82][3] ,\txb_reg_n_0_[82][2] ,\txb_reg_n_0_[82][1] ,\txb_reg_n_0_[82][0] }),
        .\txb_reg[83][7] ({\txb_reg_n_0_[83][7] ,\txb_reg_n_0_[83][6] ,\txb_reg_n_0_[83][5] ,\txb_reg_n_0_[83][4] ,\txb_reg_n_0_[83][3] ,\txb_reg_n_0_[83][2] ,\txb_reg_n_0_[83][1] ,\txb_reg_n_0_[83][0] }),
        .\txb_reg[84][7] ({\txb_reg_n_0_[84][7] ,\txb_reg_n_0_[84][6] ,\txb_reg_n_0_[84][5] ,\txb_reg_n_0_[84][4] ,\txb_reg_n_0_[84][3] ,\txb_reg_n_0_[84][2] ,\txb_reg_n_0_[84][1] ,\txb_reg_n_0_[84][0] }),
        .\txb_reg[85][7] ({\txb_reg_n_0_[85][7] ,\txb_reg_n_0_[85][6] ,\txb_reg_n_0_[85][5] ,\txb_reg_n_0_[85][4] ,\txb_reg_n_0_[85][3] ,\txb_reg_n_0_[85][2] ,\txb_reg_n_0_[85][1] ,\txb_reg_n_0_[85][0] }),
        .\txb_reg[86][7] ({\txb_reg_n_0_[86][7] ,\txb_reg_n_0_[86][6] ,\txb_reg_n_0_[86][5] ,\txb_reg_n_0_[86][4] ,\txb_reg_n_0_[86][3] ,\txb_reg_n_0_[86][2] ,\txb_reg_n_0_[86][1] ,\txb_reg_n_0_[86][0] }),
        .\txb_reg[87][7] ({\txb_reg_n_0_[87][7] ,\txb_reg_n_0_[87][6] ,\txb_reg_n_0_[87][5] ,\txb_reg_n_0_[87][4] ,\txb_reg_n_0_[87][3] ,\txb_reg_n_0_[87][2] ,\txb_reg_n_0_[87][1] ,\txb_reg_n_0_[87][0] }),
        .\txb_reg[88][7] ({\txb_reg_n_0_[88][7] ,\txb_reg_n_0_[88][6] ,\txb_reg_n_0_[88][5] ,\txb_reg_n_0_[88][4] ,\txb_reg_n_0_[88][3] ,\txb_reg_n_0_[88][2] ,\txb_reg_n_0_[88][1] ,\txb_reg_n_0_[88][0] }),
        .\txb_reg[89][7] ({\txb_reg_n_0_[89][7] ,\txb_reg_n_0_[89][6] ,\txb_reg_n_0_[89][5] ,\txb_reg_n_0_[89][4] ,\txb_reg_n_0_[89][3] ,\txb_reg_n_0_[89][2] ,\txb_reg_n_0_[89][1] ,\txb_reg_n_0_[89][0] }),
        .\txb_reg[8][7] ({\txb_reg_n_0_[8][7] ,\txb_reg_n_0_[8][6] ,\txb_reg_n_0_[8][5] ,\txb_reg_n_0_[8][4] ,\txb_reg_n_0_[8][3] ,\txb_reg_n_0_[8][2] ,\txb_reg_n_0_[8][1] ,\txb_reg_n_0_[8][0] }),
        .\txb_reg[90][7] ({\txb_reg_n_0_[90][7] ,\txb_reg_n_0_[90][6] ,\txb_reg_n_0_[90][5] ,\txb_reg_n_0_[90][4] ,\txb_reg_n_0_[90][3] ,\txb_reg_n_0_[90][2] ,\txb_reg_n_0_[90][1] ,\txb_reg_n_0_[90][0] }),
        .\txb_reg[91][7] ({\txb_reg_n_0_[91][7] ,\txb_reg_n_0_[91][6] ,\txb_reg_n_0_[91][5] ,\txb_reg_n_0_[91][4] ,\txb_reg_n_0_[91][3] ,\txb_reg_n_0_[91][2] ,\txb_reg_n_0_[91][1] ,\txb_reg_n_0_[91][0] }),
        .\txb_reg[92][7] ({\txb_reg_n_0_[92][7] ,\txb_reg_n_0_[92][6] ,\txb_reg_n_0_[92][5] ,\txb_reg_n_0_[92][4] ,\txb_reg_n_0_[92][3] ,\txb_reg_n_0_[92][2] ,\txb_reg_n_0_[92][1] ,\txb_reg_n_0_[92][0] }),
        .\txb_reg[93][7] ({\txb_reg_n_0_[93][7] ,\txb_reg_n_0_[93][6] ,\txb_reg_n_0_[93][5] ,\txb_reg_n_0_[93][4] ,\txb_reg_n_0_[93][3] ,\txb_reg_n_0_[93][2] ,\txb_reg_n_0_[93][1] ,\txb_reg_n_0_[93][0] }),
        .\txb_reg[94][7] ({\txb_reg_n_0_[94][7] ,\txb_reg_n_0_[94][6] ,\txb_reg_n_0_[94][5] ,\txb_reg_n_0_[94][4] ,\txb_reg_n_0_[94][3] ,\txb_reg_n_0_[94][2] ,\txb_reg_n_0_[94][1] ,\txb_reg_n_0_[94][0] }),
        .\txb_reg[95][7] ({\txb_reg_n_0_[95][7] ,\txb_reg_n_0_[95][6] ,\txb_reg_n_0_[95][5] ,\txb_reg_n_0_[95][4] ,\txb_reg_n_0_[95][3] ,\txb_reg_n_0_[95][2] ,\txb_reg_n_0_[95][1] ,\txb_reg_n_0_[95][0] }),
        .\txb_reg[96][7] ({\txb_reg_n_0_[96][7] ,\txb_reg_n_0_[96][6] ,\txb_reg_n_0_[96][5] ,\txb_reg_n_0_[96][4] ,\txb_reg_n_0_[96][3] ,\txb_reg_n_0_[96][2] ,\txb_reg_n_0_[96][1] ,\txb_reg_n_0_[96][0] }),
        .\txb_reg[97][7] ({\txb_reg_n_0_[97][7] ,\txb_reg_n_0_[97][6] ,\txb_reg_n_0_[97][5] ,\txb_reg_n_0_[97][4] ,\txb_reg_n_0_[97][3] ,\txb_reg_n_0_[97][2] ,\txb_reg_n_0_[97][1] ,\txb_reg_n_0_[97][0] }),
        .\txb_reg[98][7] ({\txb_reg_n_0_[98][7] ,\txb_reg_n_0_[98][6] ,\txb_reg_n_0_[98][5] ,\txb_reg_n_0_[98][4] ,\txb_reg_n_0_[98][3] ,\txb_reg_n_0_[98][2] ,\txb_reg_n_0_[98][1] ,\txb_reg_n_0_[98][0] }),
        .\txb_reg[99][7] ({\txb_reg_n_0_[99][7] ,\txb_reg_n_0_[99][6] ,\txb_reg_n_0_[99][5] ,\txb_reg_n_0_[99][4] ,\txb_reg_n_0_[99][3] ,\txb_reg_n_0_[99][2] ,\txb_reg_n_0_[99][1] ,\txb_reg_n_0_[99][0] }),
        .\txb_reg[9][7] ({\txb_reg_n_0_[9][7] ,\txb_reg_n_0_[9][6] ,\txb_reg_n_0_[9][5] ,\txb_reg_n_0_[9][4] ,\txb_reg_n_0_[9][3] ,\txb_reg_n_0_[9][2] ,\txb_reg_n_0_[9][1] ,\txb_reg_n_0_[9][0] }));
endmodule

module router_fifo
   (D,
    E,
    \data_out_reg[7]_0 ,
    \count0_reg[4] ,
    soft_reset_0_reg,
    \count1_reg[4] ,
    \count1_reg[4]_0 ,
    \data_out_reg[7]_1 ,
    \wr_pointer_reg[4]_0 ,
    A,
    DI,
    p_1_in,
    \count_reg[6]_0 ,
    \FSM_sequential_PS_reg[1] ,
    S,
    \count_reg[6]_1 ,
    SR,
    lfd_state,
    PCLK_IBUF_BUFG,
    wr_pointer0,
    Q,
    PRESETn_IBUF,
    \rx_cnt_reg[6] ,
    \rd_pointer_reg[0]_0 ,
    \rd_pointer_reg[0]_1 ,
    \hit_reg[1] ,
    \data_out_reg[7]_2 ,
    \data_out_reg[7]_3 ,
    pkt_valid_w,
    txb,
    soft_reset_0_reg_0,
    \dout_reg[7] ,
    \count_reg[4]_0 );
  output [0:0]D;
  output [0:0]E;
  output \data_out_reg[7]_0 ;
  output [0:0]\count0_reg[4] ;
  output soft_reset_0_reg;
  output [0:0]\count1_reg[4] ;
  output \count1_reg[4]_0 ;
  output [0:0]\data_out_reg[7]_1 ;
  output \wr_pointer_reg[4]_0 ;
  output [0:0]A;
  output [3:0]DI;
  output [7:0]p_1_in;
  output [0:0]\count_reg[6]_0 ;
  output \FSM_sequential_PS_reg[1] ;
  output [3:0]S;
  output [1:0]\count_reg[6]_1 ;
  input [0:0]SR;
  input lfd_state;
  input PCLK_IBUF_BUFG;
  input wr_pointer0;
  input [4:0]Q;
  input PRESETn_IBUF;
  input \rx_cnt_reg[6] ;
  input \rd_pointer_reg[0]_0 ;
  input \rd_pointer_reg[0]_1 ;
  input [1:0]\hit_reg[1] ;
  input [7:0]\data_out_reg[7]_2 ;
  input [7:0]\data_out_reg[7]_3 ;
  input pkt_valid_w;
  input [1:0]txb;
  input [0:0]soft_reset_0_reg_0;
  input [7:0]\dout_reg[7] ;
  input [5:0]\count_reg[4]_0 ;

  wire \<const1> ;
  wire [0:0]A;
  wire [0:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire \FSM_sequential_PS_reg[1] ;
  wire PCLK_IBUF_BUFG;
  wire PRESETn_IBUF;
  wire [4:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire count;
  wire [0:0]\count0_reg[4] ;
  wire [0:0]\count1_reg[4] ;
  wire \count1_reg[4]_0 ;
  wire \count[0]_i_1_n_0 ;
  wire \count[6]_i_2_n_0 ;
  wire \count[6]_i_3_n_0 ;
  wire \count[6]_i_4_n_0 ;
  wire \count[6]_i_5_n_0 ;
  wire \count[6]_i_6_n_0 ;
  wire [5:0]\count_reg[4]_0 ;
  wire [0:0]\count_reg[6]_0 ;
  wire [1:0]\count_reg[6]_1 ;
  wire [6:0]count_reg__0;
  wire [7:0]d0;
  wire [5:0]data;
  wire \data_out[0]_i_4_n_0 ;
  wire \data_out[0]_i_5_n_0 ;
  wire \data_out[0]_i_6_n_0 ;
  wire \data_out[0]_i_7_n_0 ;
  wire \data_out[1]_i_4_n_0 ;
  wire \data_out[1]_i_5_n_0 ;
  wire \data_out[1]_i_6_n_0 ;
  wire \data_out[1]_i_7_n_0 ;
  wire \data_out[2]_i_2_n_0 ;
  wire \data_out[2]_i_3_n_0 ;
  wire \data_out[2]_i_4_n_0 ;
  wire \data_out[2]_i_5_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire \data_out[3]_i_3_n_0 ;
  wire \data_out[3]_i_4_n_0 ;
  wire \data_out[3]_i_5_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[4]_i_2_n_0 ;
  wire \data_out[4]_i_3_n_0 ;
  wire \data_out[4]_i_4_n_0 ;
  wire \data_out[4]_i_5_n_0 ;
  wire \data_out[5]_i_2_n_0 ;
  wire \data_out[5]_i_3_n_0 ;
  wire \data_out[5]_i_4_n_0 ;
  wire \data_out[5]_i_5_n_0 ;
  wire \data_out[6]_i_2_n_0 ;
  wire \data_out[6]_i_3_n_0 ;
  wire \data_out[6]_i_4_n_0 ;
  wire \data_out[6]_i_5_n_0 ;
  wire \data_out[7]_i_10_n_0 ;
  wire \data_out[7]_i_11_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire \data_out[7]_i_4_n_0 ;
  wire \data_out[7]_i_6__0_n_0 ;
  wire \data_out[7]_i_7_n_0 ;
  wire \data_out[7]_i_8_n_0 ;
  wire \data_out[7]_i_9_n_0 ;
  wire \data_out_reg[0]_i_1_n_0 ;
  wire \data_out_reg[0]_i_2_n_0 ;
  wire \data_out_reg[0]_i_3_n_0 ;
  wire \data_out_reg[1]_i_1_n_0 ;
  wire \data_out_reg[1]_i_2_n_0 ;
  wire \data_out_reg[1]_i_3_n_0 ;
  wire \data_out_reg[7]_0 ;
  wire [0:0]\data_out_reg[7]_1 ;
  wire [7:0]\data_out_reg[7]_2 ;
  wire [7:0]\data_out_reg[7]_3 ;
  wire [7:0]\dout_reg[7] ;
  wire [1:0]\hit_reg[1] ;
  wire lfd_state;
  wire \mem[0][8]_i_1__1_n_0 ;
  wire \mem[10][8]_i_1__1_n_0 ;
  wire \mem[11][8]_i_1__1_n_0 ;
  wire \mem[12][8]_i_1__1_n_0 ;
  wire \mem[13][8]_i_1__1_n_0 ;
  wire \mem[14][8]_i_1__1_n_0 ;
  wire \mem[15][8]_i_2__1_n_0 ;
  wire \mem[1][8]_i_1__1_n_0 ;
  wire \mem[2][8]_i_1__1_n_0 ;
  wire \mem[3][8]_i_1__1_n_0 ;
  wire \mem[4][8]_i_1__1_n_0 ;
  wire \mem[5][8]_i_1__1_n_0 ;
  wire \mem[6][8]_i_1__1_n_0 ;
  wire \mem[7][8]_i_1__1_n_0 ;
  wire \mem[8][8]_i_1__1_n_0 ;
  wire \mem[9][8]_i_1__1_n_0 ;
  wire [8:0]\mem_reg[0]_15 ;
  wire [8:0]\mem_reg[10]_5 ;
  wire [8:0]\mem_reg[11]_4 ;
  wire [8:0]\mem_reg[12]_3 ;
  wire [8:0]\mem_reg[13]_2 ;
  wire [8:0]\mem_reg[14]_1 ;
  wire [8:0]\mem_reg[15]_0 ;
  wire [8:0]\mem_reg[1]_14 ;
  wire [8:0]\mem_reg[2]_13 ;
  wire [8:0]\mem_reg[3]_12 ;
  wire [8:0]\mem_reg[4]_11 ;
  wire [8:0]\mem_reg[5]_10 ;
  wire [8:0]\mem_reg[6]_9 ;
  wire [8:0]\mem_reg[7]_8 ;
  wire [8:0]\mem_reg[8]_7 ;
  wire [8:0]\mem_reg[9]_6 ;
  wire [4:0]p_0_in;
  wire [4:0]p_0_in__0;
  wire [7:0]p_1_in;
  wire pkt_valid_w;
  wire \rd_pointer_reg[0]_0 ;
  wire \rd_pointer_reg[0]_1 ;
  wire [4:0]rd_pointer_reg__0;
  wire \rx_cnt_reg[6] ;
  wire soft_reset_0_reg;
  wire [0:0]soft_reset_0_reg_0;
  wire [1:0]txb;
  wire wr_pointer0;
  wire \wr_pointer_reg[4]_0 ;
  wire [3:0]wr_pointer_reg__0;
  wire [4:4]wr_pointer_reg__0__0;

  LUT6 #(
    .INIT(64'h00C80CC800080C08)) 
    \FSM_sequential_PS[1]_i_4 
       (.I0(\data_out_reg[7]_0 ),
        .I1(pkt_valid_w),
        .I2(txb[0]),
        .I3(txb[1]),
        .I4(\rd_pointer_reg[0]_1 ),
        .I5(\rd_pointer_reg[0]_0 ),
        .O(\FSM_sequential_PS_reg[1] ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h7F)) 
    \count0[4]_i_1 
       (.I0(PRESETn_IBUF),
        .I1(\rx_cnt_reg[6] ),
        .I2(\data_out_reg[7]_0 ),
        .O(\count0_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \count1[4]_i_1 
       (.I0(PRESETn_IBUF),
        .I1(\count1_reg[4]_0 ),
        .I2(\rd_pointer_reg[0]_0 ),
        .O(\count1_reg[4] ));
  LUT3 #(
    .INIT(8'h47)) 
    \count[0]_i_1 
       (.I0(count_reg__0[0]),
        .I1(\count[6]_i_2_n_0 ),
        .I2(data[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \count[6]_i_1__1 
       (.I0(count_reg__0[5]),
        .I1(count_reg__0[3]),
        .I2(count_reg__0[4]),
        .I3(\data_out[7]_i_4_n_0 ),
        .I4(\count[6]_i_2_n_0 ),
        .I5(E),
        .O(count));
  LUT6 #(
    .INIT(64'hA0AFC0C0A0AFCFCF)) 
    \count[6]_i_2 
       (.I0(\count[6]_i_3_n_0 ),
        .I1(\count[6]_i_4_n_0 ),
        .I2(rd_pointer_reg__0[3]),
        .I3(\count[6]_i_5_n_0 ),
        .I4(rd_pointer_reg__0[2]),
        .I5(\count[6]_i_6_n_0 ),
        .O(\count[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \count[6]_i_3 
       (.I0(\mem_reg[13]_2 [8]),
        .I1(\mem_reg[12]_3 [8]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[15]_0 [8]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[14]_1 [8]),
        .O(\count[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \count[6]_i_4 
       (.I0(\mem_reg[9]_6 [8]),
        .I1(\mem_reg[8]_7 [8]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[11]_4 [8]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[10]_5 [8]),
        .O(\count[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[6]_i_5 
       (.I0(\mem_reg[7]_8 [8]),
        .I1(\mem_reg[6]_9 [8]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[5]_10 [8]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[4]_11 [8]),
        .O(\count[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[6]_i_6 
       (.I0(\mem_reg[3]_12 [8]),
        .I1(\mem_reg[2]_13 [8]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[1]_14 [8]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[0]_15 [8]),
        .O(\count[6]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg__0[0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_0 [0]),
        .Q(count_reg__0[1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_0 [1]),
        .Q(count_reg__0[2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_0 [2]),
        .Q(count_reg__0[3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_0 [3]),
        .Q(count_reg__0[4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_0 [4]),
        .Q(count_reg__0[5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_0 [5]),
        .Q(count_reg__0[6]),
        .R(soft_reset_0_reg_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_4 
       (.I0(\mem_reg[3]_12 [0]),
        .I1(\mem_reg[2]_13 [0]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[1]_14 [0]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[0]_15 [0]),
        .O(\data_out[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_5 
       (.I0(\mem_reg[7]_8 [0]),
        .I1(\mem_reg[6]_9 [0]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[5]_10 [0]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[4]_11 [0]),
        .O(\data_out[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_6 
       (.I0(\mem_reg[11]_4 [0]),
        .I1(\mem_reg[10]_5 [0]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[9]_6 [0]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[8]_7 [0]),
        .O(\data_out[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_7 
       (.I0(\mem_reg[15]_0 [0]),
        .I1(\mem_reg[14]_1 [0]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[13]_2 [0]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[12]_3 [0]),
        .O(\data_out[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_4 
       (.I0(\mem_reg[3]_12 [1]),
        .I1(\mem_reg[2]_13 [1]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[1]_14 [1]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[0]_15 [1]),
        .O(\data_out[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_5 
       (.I0(\mem_reg[7]_8 [1]),
        .I1(\mem_reg[6]_9 [1]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[5]_10 [1]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[4]_11 [1]),
        .O(\data_out[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_6 
       (.I0(\mem_reg[11]_4 [1]),
        .I1(\mem_reg[10]_5 [1]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[9]_6 [1]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[8]_7 [1]),
        .O(\data_out[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_7 
       (.I0(\mem_reg[15]_0 [1]),
        .I1(\mem_reg[14]_1 [1]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[13]_2 [1]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[12]_3 [1]),
        .O(\data_out[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCFFF000F0)) 
    \data_out[2]_i_1 
       (.I0(\data_out[2]_i_2_n_0 ),
        .I1(\data_out[2]_i_3_n_0 ),
        .I2(\data_out[2]_i_4_n_0 ),
        .I3(rd_pointer_reg__0[2]),
        .I4(\data_out[2]_i_5_n_0 ),
        .I5(rd_pointer_reg__0[3]),
        .O(data[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_2 
       (.I0(\mem_reg[15]_0 [2]),
        .I1(\mem_reg[14]_1 [2]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[13]_2 [2]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[12]_3 [2]),
        .O(\data_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_3 
       (.I0(\mem_reg[11]_4 [2]),
        .I1(\mem_reg[10]_5 [2]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[9]_6 [2]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[8]_7 [2]),
        .O(\data_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_4 
       (.I0(\mem_reg[3]_12 [2]),
        .I1(\mem_reg[2]_13 [2]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[1]_14 [2]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[0]_15 [2]),
        .O(\data_out[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_5 
       (.I0(\mem_reg[7]_8 [2]),
        .I1(\mem_reg[6]_9 [2]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[5]_10 [2]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[4]_11 [2]),
        .O(\data_out[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \data_out[3]_i_1 
       (.I0(\data_out[3]_i_2_n_0 ),
        .I1(\data_out[3]_i_3_n_0 ),
        .I2(rd_pointer_reg__0[3]),
        .I3(\data_out[3]_i_4_n_0 ),
        .I4(rd_pointer_reg__0[2]),
        .I5(\data_out[3]_i_5_n_0 ),
        .O(\data_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[3]_i_2 
       (.I0(\mem_reg[13]_2 [3]),
        .I1(\mem_reg[12]_3 [3]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[15]_0 [3]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[14]_1 [3]),
        .O(\data_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[3]_i_3 
       (.I0(\mem_reg[9]_6 [3]),
        .I1(\mem_reg[8]_7 [3]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[11]_4 [3]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[10]_5 [3]),
        .O(\data_out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_4 
       (.I0(\mem_reg[7]_8 [3]),
        .I1(\mem_reg[6]_9 [3]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[5]_10 [3]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[4]_11 [3]),
        .O(\data_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_5 
       (.I0(\mem_reg[3]_12 [3]),
        .I1(\mem_reg[2]_13 [3]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[1]_14 [3]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[0]_15 [3]),
        .O(\data_out[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \data_out[4]_i_1 
       (.I0(\data_out[4]_i_2_n_0 ),
        .I1(\data_out[4]_i_3_n_0 ),
        .I2(rd_pointer_reg__0[3]),
        .I3(\data_out[4]_i_4_n_0 ),
        .I4(rd_pointer_reg__0[2]),
        .I5(\data_out[4]_i_5_n_0 ),
        .O(\data_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[4]_i_2 
       (.I0(\mem_reg[13]_2 [4]),
        .I1(\mem_reg[12]_3 [4]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[15]_0 [4]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[14]_1 [4]),
        .O(\data_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[4]_i_3 
       (.I0(\mem_reg[9]_6 [4]),
        .I1(\mem_reg[8]_7 [4]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[11]_4 [4]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[10]_5 [4]),
        .O(\data_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_4 
       (.I0(\mem_reg[7]_8 [4]),
        .I1(\mem_reg[6]_9 [4]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[5]_10 [4]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[4]_11 [4]),
        .O(\data_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_5 
       (.I0(\mem_reg[3]_12 [4]),
        .I1(\mem_reg[2]_13 [4]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[1]_14 [4]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[0]_15 [4]),
        .O(\data_out[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h001D331DCC1DFF1D)) 
    \data_out[5]_i_1 
       (.I0(\data_out[5]_i_2_n_0 ),
        .I1(rd_pointer_reg__0[2]),
        .I2(\data_out[5]_i_3_n_0 ),
        .I3(rd_pointer_reg__0[3]),
        .I4(\data_out[5]_i_4_n_0 ),
        .I5(\data_out[5]_i_5_n_0 ),
        .O(data[3]));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[5]_i_2 
       (.I0(\mem_reg[1]_14 [5]),
        .I1(\mem_reg[0]_15 [5]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[3]_12 [5]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[2]_13 [5]),
        .O(\data_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[5]_i_3 
       (.I0(\mem_reg[5]_10 [5]),
        .I1(\mem_reg[4]_11 [5]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[7]_8 [5]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[6]_9 [5]),
        .O(\data_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[5]_i_4 
       (.I0(\mem_reg[9]_6 [5]),
        .I1(\mem_reg[8]_7 [5]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[11]_4 [5]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[10]_5 [5]),
        .O(\data_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[5]_i_5 
       (.I0(\mem_reg[13]_2 [5]),
        .I1(\mem_reg[12]_3 [5]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[15]_0 [5]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[14]_1 [5]),
        .O(\data_out[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF1DCC1D331D001D)) 
    \data_out[6]_i_1 
       (.I0(\data_out[6]_i_2_n_0 ),
        .I1(rd_pointer_reg__0[2]),
        .I2(\data_out[6]_i_3_n_0 ),
        .I3(rd_pointer_reg__0[3]),
        .I4(\data_out[6]_i_4_n_0 ),
        .I5(\data_out[6]_i_5_n_0 ),
        .O(data[4]));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[6]_i_2 
       (.I0(\mem_reg[1]_14 [6]),
        .I1(\mem_reg[0]_15 [6]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[3]_12 [6]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[2]_13 [6]),
        .O(\data_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[6]_i_3 
       (.I0(\mem_reg[5]_10 [6]),
        .I1(\mem_reg[4]_11 [6]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[7]_8 [6]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[6]_9 [6]),
        .O(\data_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_4 
       (.I0(\mem_reg[11]_4 [6]),
        .I1(\mem_reg[10]_5 [6]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[9]_6 [6]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[8]_7 [6]),
        .O(\data_out[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_5 
       (.I0(\mem_reg[15]_0 [6]),
        .I1(\mem_reg[14]_1 [6]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[13]_2 [6]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[12]_3 [6]),
        .O(\data_out[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \data_out[7]_i_1 
       (.I0(count_reg__0[5]),
        .I1(count_reg__0[3]),
        .I2(count_reg__0[4]),
        .I3(\data_out[7]_i_4_n_0 ),
        .I4(E),
        .I5(soft_reset_0_reg_0),
        .O(\data_out[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_out[7]_i_10 
       (.I0(wr_pointer_reg__0__0),
        .I1(rd_pointer_reg__0[4]),
        .O(\data_out[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \data_out[7]_i_11 
       (.I0(rd_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[3]),
        .I2(rd_pointer_reg__0[2]),
        .I3(wr_pointer_reg__0[2]),
        .O(\data_out[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000002AAAAAAA)) 
    \data_out[7]_i_2 
       (.I0(\data_out_reg[7]_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \data_out[7]_i_2__1 
       (.I0(\count1_reg[4]_0 ),
        .I1(\rd_pointer_reg[0]_0 ),
        .I2(\rd_pointer_reg[0]_1 ),
        .O(\data_out_reg[7]_1 ));
  LUT6 #(
    .INIT(64'hAACCAACCFFF000F0)) 
    \data_out[7]_i_3 
       (.I0(\data_out[7]_i_6__0_n_0 ),
        .I1(\data_out[7]_i_7_n_0 ),
        .I2(\data_out[7]_i_8_n_0 ),
        .I3(rd_pointer_reg__0[2]),
        .I4(\data_out[7]_i_9_n_0 ),
        .I5(rd_pointer_reg__0[3]),
        .O(data[5]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[7]_i_4 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[6]),
        .I3(count_reg__0[1]),
        .O(\data_out[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    \data_out[7]_i_5 
       (.I0(\data_out_reg[7]_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(\count1_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFFEFFE)) 
    \data_out[7]_i_5__0 
       (.I0(\data_out[7]_i_10_n_0 ),
        .I1(\data_out[7]_i_11_n_0 ),
        .I2(rd_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[0]),
        .I4(rd_pointer_reg__0[1]),
        .I5(wr_pointer_reg__0[1]),
        .O(\data_out_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_6__0 
       (.I0(\mem_reg[15]_0 [7]),
        .I1(\mem_reg[14]_1 [7]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[13]_2 [7]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[12]_3 [7]),
        .O(\data_out[7]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_7 
       (.I0(\mem_reg[11]_4 [7]),
        .I1(\mem_reg[10]_5 [7]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[9]_6 [7]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[8]_7 [7]),
        .O(\data_out[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_8 
       (.I0(\mem_reg[3]_12 [7]),
        .I1(\mem_reg[2]_13 [7]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[1]_14 [7]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[0]_15 [7]),
        .O(\data_out[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_9 
       (.I0(\mem_reg[7]_8 [7]),
        .I1(\mem_reg[6]_9 [7]),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg[5]_10 [7]),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg[4]_11 [7]),
        .O(\data_out[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(\data_out_reg[0]_i_1_n_0 ),
        .Q(d0[0]),
        .R(\data_out[7]_i_1_n_0 ));
  MUXF8 \data_out_reg[0]_i_1 
       (.I0(\data_out_reg[0]_i_2_n_0 ),
        .I1(\data_out_reg[0]_i_3_n_0 ),
        .O(\data_out_reg[0]_i_1_n_0 ),
        .S(rd_pointer_reg__0[3]));
  MUXF7 \data_out_reg[0]_i_2 
       (.I0(\data_out[0]_i_4_n_0 ),
        .I1(\data_out[0]_i_5_n_0 ),
        .O(\data_out_reg[0]_i_2_n_0 ),
        .S(rd_pointer_reg__0[2]));
  MUXF7 \data_out_reg[0]_i_3 
       (.I0(\data_out[0]_i_6_n_0 ),
        .I1(\data_out[0]_i_7_n_0 ),
        .O(\data_out_reg[0]_i_3_n_0 ),
        .S(rd_pointer_reg__0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(\data_out_reg[1]_i_1_n_0 ),
        .Q(d0[1]),
        .R(\data_out[7]_i_1_n_0 ));
  MUXF8 \data_out_reg[1]_i_1 
       (.I0(\data_out_reg[1]_i_2_n_0 ),
        .I1(\data_out_reg[1]_i_3_n_0 ),
        .O(\data_out_reg[1]_i_1_n_0 ),
        .S(rd_pointer_reg__0[3]));
  MUXF7 \data_out_reg[1]_i_2 
       (.I0(\data_out[1]_i_4_n_0 ),
        .I1(\data_out[1]_i_5_n_0 ),
        .O(\data_out_reg[1]_i_2_n_0 ),
        .S(rd_pointer_reg__0[2]));
  MUXF7 \data_out_reg[1]_i_3 
       (.I0(\data_out[1]_i_6_n_0 ),
        .I1(\data_out[1]_i_7_n_0 ),
        .O(\data_out_reg[1]_i_3_n_0 ),
        .S(rd_pointer_reg__0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(data[0]),
        .Q(d0[2]),
        .R(\data_out[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(d0[3]),
        .R(\data_out[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(d0[4]),
        .R(\data_out[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(data[3]),
        .Q(d0[5]),
        .R(\data_out[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(data[4]),
        .Q(d0[6]),
        .R(\data_out[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(data[5]),
        .Q(d0[7]),
        .R(\data_out[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    lfd_state_t_reg
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(lfd_state),
        .Q(D),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000010)) 
    \mem[0][8]_i_1__1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[0][8]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[10][8]_i_1__1 
       (.I0(wr_pointer_reg__0[0]),
        .I1(wr_pointer_reg__0[1]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[10][8]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \mem[11][8]_i_1__1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[11][8]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem[12][8]_i_1__1 
       (.I0(wr_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[2]),
        .I2(wr_pointer_reg__0[1]),
        .I3(wr_pointer_reg__0[0]),
        .I4(wr_pointer0),
        .O(\mem[12][8]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem[13][8]_i_1__1 
       (.I0(wr_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[2]),
        .I2(wr_pointer_reg__0[1]),
        .I3(wr_pointer_reg__0[0]),
        .I4(wr_pointer0),
        .O(\mem[13][8]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem[14][8]_i_1__1 
       (.I0(wr_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[2]),
        .I2(wr_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[1]),
        .I4(wr_pointer0),
        .O(\mem[14][8]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \mem[15][8]_i_2__1 
       (.I0(wr_pointer0),
        .I1(wr_pointer_reg__0[2]),
        .I2(wr_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[1]),
        .I4(wr_pointer_reg__0[3]),
        .O(\mem[15][8]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem[1][8]_i_1__1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[1][8]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem[2][8]_i_1__1 
       (.I0(wr_pointer_reg__0[0]),
        .I1(wr_pointer_reg__0[1]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[2][8]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[3][8]_i_1__1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[3][8]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \mem[4][8]_i_1__1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[2]),
        .I4(wr_pointer_reg__0[3]),
        .O(\mem[4][8]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[5][8]_i_1__1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[2]),
        .I4(wr_pointer_reg__0[3]),
        .O(\mem[5][8]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[6][8]_i_1__1 
       (.I0(wr_pointer_reg__0[0]),
        .I1(wr_pointer_reg__0[1]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[2]),
        .I4(wr_pointer_reg__0[3]),
        .O(\mem[6][8]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \mem[7][8]_i_1__1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[2]),
        .I4(wr_pointer_reg__0[3]),
        .O(\mem[7][8]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \mem[8][8]_i_1__1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[8][8]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[9][8]_i_1__1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[9][8]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[0]_15 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[0]_15 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[0]_15 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[0]_15 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[0]_15 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[0]_15 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[0]_15 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[0]_15 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__1_n_0 ),
        .D(D),
        .Q(\mem_reg[0]_15 [8]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[10]_5 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[10]_5 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[10]_5 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[10]_5 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[10]_5 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[10]_5 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[10]_5 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[10]_5 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__1_n_0 ),
        .D(D),
        .Q(\mem_reg[10]_5 [8]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[11]_4 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[11]_4 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[11]_4 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[11]_4 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[11]_4 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[11]_4 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[11]_4 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[11]_4 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__1_n_0 ),
        .D(D),
        .Q(\mem_reg[11]_4 [8]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[12]_3 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[12]_3 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[12]_3 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[12]_3 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[12]_3 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[12]_3 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[12]_3 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[12]_3 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__1_n_0 ),
        .D(D),
        .Q(\mem_reg[12]_3 [8]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[13]_2 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[13]_2 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[13]_2 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[13]_2 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[13]_2 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[13]_2 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[13]_2 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[13]_2 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__1_n_0 ),
        .D(D),
        .Q(\mem_reg[13]_2 [8]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[14]_1 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[14]_1 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[14]_1 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[14]_1 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[14]_1 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[14]_1 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[14]_1 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[14]_1 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__1_n_0 ),
        .D(D),
        .Q(\mem_reg[14]_1 [8]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[15]_0 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[15]_0 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[15]_0 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[15]_0 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[15]_0 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[15]_0 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[15]_0 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[15]_0 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__1_n_0 ),
        .D(D),
        .Q(\mem_reg[15]_0 [8]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[1]_14 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[1]_14 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[1]_14 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[1]_14 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[1]_14 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[1]_14 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[1]_14 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[1]_14 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__1_n_0 ),
        .D(D),
        .Q(\mem_reg[1]_14 [8]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[2]_13 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[2]_13 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[2]_13 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[2]_13 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[2]_13 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[2]_13 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[2]_13 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[2]_13 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__1_n_0 ),
        .D(D),
        .Q(\mem_reg[2]_13 [8]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[3]_12 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[3]_12 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[3]_12 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[3]_12 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[3]_12 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[3]_12 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[3]_12 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[3]_12 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__1_n_0 ),
        .D(D),
        .Q(\mem_reg[3]_12 [8]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[4]_11 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[4]_11 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[4]_11 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[4]_11 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[4]_11 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[4]_11 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[4]_11 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[4]_11 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__1_n_0 ),
        .D(D),
        .Q(\mem_reg[4]_11 [8]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[5]_10 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[5]_10 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[5]_10 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[5]_10 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[5]_10 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[5]_10 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[5]_10 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[5]_10 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__1_n_0 ),
        .D(D),
        .Q(\mem_reg[5]_10 [8]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[6]_9 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[6]_9 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[6]_9 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[6]_9 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[6]_9 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[6]_9 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[6]_9 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[6]_9 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__1_n_0 ),
        .D(D),
        .Q(\mem_reg[6]_9 [8]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[7]_8 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[7]_8 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[7]_8 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[7]_8 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[7]_8 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[7]_8 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[7]_8 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[7]_8 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__1_n_0 ),
        .D(D),
        .Q(\mem_reg[7]_8 [8]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[8]_7 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[8]_7 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[8]_7 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[8]_7 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[8]_7 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[8]_7 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[8]_7 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[8]_7 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__1_n_0 ),
        .D(D),
        .Q(\mem_reg[8]_7 [8]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [0]),
        .Q(\mem_reg[9]_6 [0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [1]),
        .Q(\mem_reg[9]_6 [1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [2]),
        .Q(\mem_reg[9]_6 [2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [3]),
        .Q(\mem_reg[9]_6 [3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [4]),
        .Q(\mem_reg[9]_6 [4]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [5]),
        .Q(\mem_reg[9]_6 [5]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [6]),
        .Q(\mem_reg[9]_6 [6]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__1_n_0 ),
        .D(\dout_reg[7] [7]),
        .Q(\mem_reg[9]_6 [7]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__1_n_0 ),
        .D(D),
        .Q(\mem_reg[9]_6 [8]),
        .R(soft_reset_0_reg_0));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out_carry__0_i_1
       (.I0(count_reg__0[4]),
        .I1(\count[6]_i_2_n_0 ),
        .I2(data[4]),
        .O(\count_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hC535)) 
    p_0_out_carry__0_i_2
       (.I0(data[5]),
        .I1(count_reg__0[5]),
        .I2(\count[6]_i_2_n_0 ),
        .I3(count_reg__0[6]),
        .O(\count_reg[6]_1 [1]));
  LUT5 #(
    .INIT(32'hB88B7447)) 
    p_0_out_carry__0_i_3
       (.I0(count_reg__0[4]),
        .I1(\count[6]_i_2_n_0 ),
        .I2(data[4]),
        .I3(data[5]),
        .I4(count_reg__0[5]),
        .O(\count_reg[6]_1 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out_carry_i_1
       (.I0(count_reg__0[0]),
        .I1(\count[6]_i_2_n_0 ),
        .I2(data[0]),
        .O(A));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out_carry_i_2
       (.I0(count_reg__0[3]),
        .I1(\count[6]_i_2_n_0 ),
        .I2(data[3]),
        .O(DI[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out_carry_i_3
       (.I0(count_reg__0[2]),
        .I1(\count[6]_i_2_n_0 ),
        .I2(\data_out[4]_i_1_n_0 ),
        .O(DI[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out_carry_i_4
       (.I0(count_reg__0[1]),
        .I1(\count[6]_i_2_n_0 ),
        .I2(\data_out[3]_i_1_n_0 ),
        .O(DI[1]));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out_carry_i_5
       (.I0(\count[6]_i_2_n_0 ),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'hB8748B47)) 
    p_0_out_carry_i_6
       (.I0(count_reg__0[4]),
        .I1(\count[6]_i_2_n_0 ),
        .I2(data[4]),
        .I3(count_reg__0[3]),
        .I4(data[3]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'hB8748B47)) 
    p_0_out_carry_i_7
       (.I0(count_reg__0[3]),
        .I1(\count[6]_i_2_n_0 ),
        .I2(data[3]),
        .I3(count_reg__0[2]),
        .I4(\data_out[4]_i_1_n_0 ),
        .O(S[2]));
  LUT5 #(
    .INIT(32'hB8748B47)) 
    p_0_out_carry_i_8
       (.I0(count_reg__0[2]),
        .I1(\count[6]_i_2_n_0 ),
        .I2(\data_out[4]_i_1_n_0 ),
        .I3(count_reg__0[1]),
        .I4(\data_out[3]_i_1_n_0 ),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h74)) 
    p_0_out_carry_i_9
       (.I0(count_reg__0[1]),
        .I1(\count[6]_i_2_n_0 ),
        .I2(\data_out[3]_i_1_n_0 ),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_pointer[0]_i_1 
       (.I0(rd_pointer_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pointer[1]_i_1 
       (.I0(rd_pointer_reg__0[0]),
        .I1(rd_pointer_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_pointer[2]_i_1 
       (.I0(rd_pointer_reg__0[2]),
        .I1(rd_pointer_reg__0[1]),
        .I2(rd_pointer_reg__0[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_pointer[3]_i_1 
       (.I0(rd_pointer_reg__0[3]),
        .I1(rd_pointer_reg__0[2]),
        .I2(rd_pointer_reg__0[0]),
        .I3(rd_pointer_reg__0[1]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rd_pointer[4]_i_1 
       (.I0(rd_pointer_reg__0[4]),
        .I1(rd_pointer_reg__0[3]),
        .I2(rd_pointer_reg__0[1]),
        .I3(rd_pointer_reg__0[0]),
        .I4(rd_pointer_reg__0[2]),
        .O(p_0_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__0[0]),
        .Q(rd_pointer_reg__0[0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__0[1]),
        .Q(rd_pointer_reg__0[1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(rd_pointer_reg__0[2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(rd_pointer_reg__0[3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__0[4]),
        .Q(rd_pointer_reg__0[4]),
        .R(soft_reset_0_reg_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    rxb_reg_0_63_0_2_i_1
       (.I0(d0[0]),
        .I1(\hit_reg[1] [0]),
        .I2(\data_out_reg[7]_2 [0]),
        .I3(\hit_reg[1] [1]),
        .I4(\data_out_reg[7]_3 [0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    rxb_reg_0_63_0_2_i_2
       (.I0(d0[1]),
        .I1(\hit_reg[1] [0]),
        .I2(\data_out_reg[7]_2 [1]),
        .I3(\hit_reg[1] [1]),
        .I4(\data_out_reg[7]_3 [1]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    rxb_reg_0_63_0_2_i_3
       (.I0(d0[2]),
        .I1(\hit_reg[1] [0]),
        .I2(\data_out_reg[7]_2 [2]),
        .I3(\hit_reg[1] [1]),
        .I4(\data_out_reg[7]_3 [2]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    rxb_reg_0_63_3_5_i_1
       (.I0(d0[3]),
        .I1(\hit_reg[1] [0]),
        .I2(\data_out_reg[7]_2 [3]),
        .I3(\hit_reg[1] [1]),
        .I4(\data_out_reg[7]_3 [3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    rxb_reg_0_63_3_5_i_2
       (.I0(d0[4]),
        .I1(\hit_reg[1] [0]),
        .I2(\data_out_reg[7]_2 [4]),
        .I3(\hit_reg[1] [1]),
        .I4(\data_out_reg[7]_3 [4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    rxb_reg_0_63_3_5_i_3
       (.I0(d0[5]),
        .I1(\hit_reg[1] [0]),
        .I2(\data_out_reg[7]_2 [5]),
        .I3(\hit_reg[1] [1]),
        .I4(\data_out_reg[7]_3 [5]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    rxb_reg_0_63_6_8_i_1
       (.I0(d0[6]),
        .I1(\hit_reg[1] [0]),
        .I2(\data_out_reg[7]_2 [6]),
        .I3(\hit_reg[1] [1]),
        .I4(\data_out_reg[7]_3 [6]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    rxb_reg_0_63_6_8_i_2
       (.I0(d0[7]),
        .I1(\hit_reg[1] [0]),
        .I2(\data_out_reg[7]_2 [7]),
        .I3(\hit_reg[1] [1]),
        .I4(\data_out_reg[7]_3 [7]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAA80000000)) 
    soft_reset_0_i_2
       (.I0(\data_out_reg[7]_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(soft_reset_0_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_pointer[0]_i_1 
       (.I0(wr_pointer_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pointer[1]_i_1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_pointer[2]_i_1 
       (.I0(wr_pointer_reg__0[2]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_pointer[3]_i_1 
       (.I0(wr_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[1]),
        .I2(wr_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wr_pointer[4]_i_2 
       (.I0(wr_pointer_reg__0__0),
        .I1(wr_pointer_reg__0[2]),
        .I2(wr_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[1]),
        .I4(wr_pointer_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h2002000000002002)) 
    \wr_pointer[4]_i_3 
       (.I0(\data_out[7]_i_10_n_0 ),
        .I1(\data_out[7]_i_11_n_0 ),
        .I2(rd_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[0]),
        .I4(rd_pointer_reg__0[1]),
        .I5(wr_pointer_reg__0[1]),
        .O(\wr_pointer_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(wr_pointer0),
        .D(p_0_in[0]),
        .Q(wr_pointer_reg__0[0]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(wr_pointer0),
        .D(p_0_in[1]),
        .Q(wr_pointer_reg__0[1]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(wr_pointer0),
        .D(p_0_in[2]),
        .Q(wr_pointer_reg__0[2]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(wr_pointer0),
        .D(p_0_in[3]),
        .Q(wr_pointer_reg__0[3]),
        .R(soft_reset_0_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(wr_pointer0),
        .D(p_0_in[4]),
        .Q(wr_pointer_reg__0__0),
        .R(soft_reset_0_reg_0));
endmodule

(* ORIG_REF_NAME = "router_fifo" *) 
module router_fifo_0
   (NS1,
    \data_out_reg[7]_0 ,
    E,
    soft_reset_1_reg,
    \wr_pointer_reg[4]_0 ,
    A__0,
    DI,
    \count_reg[6]_0 ,
    S,
    \count_reg[4]_0 ,
    Q,
    wr_pointer0,
    \rd_pointer_reg[0]_0 ,
    txb,
    pkt_valid_w,
    \rd_pointer_reg[0]_1 ,
    \rx_cnt_reg[4] ,
    soft_reset_1,
    PRESETn_IBUF,
    SR,
    D,
    PCLK_IBUF_BUFG,
    \count_reg[4]_1 );
  output NS1;
  output \data_out_reg[7]_0 ;
  output [0:0]E;
  output soft_reset_1_reg;
  output \wr_pointer_reg[4]_0 ;
  output [0:0]A__0;
  output [3:0]DI;
  output [0:0]\count_reg[6]_0 ;
  output [1:0]S;
  output [3:0]\count_reg[4]_0 ;
  output [7:0]Q;
  input wr_pointer0;
  input \rd_pointer_reg[0]_0 ;
  input [1:0]txb;
  input pkt_valid_w;
  input \rd_pointer_reg[0]_1 ;
  input \rx_cnt_reg[4] ;
  input soft_reset_1;
  input PRESETn_IBUF;
  input [0:0]SR;
  input [8:0]D;
  input PCLK_IBUF_BUFG;
  input [5:0]\count_reg[4]_1 ;

  wire [0:0]A__0;
  wire [8:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire NS1;
  wire PCLK_IBUF_BUFG;
  wire PRESETn_IBUF;
  wire [7:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire count;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[6]_i_2__0_n_0 ;
  wire \count[6]_i_3__0_n_0 ;
  wire \count[6]_i_4__0_n_0 ;
  wire \count[6]_i_5__0_n_0 ;
  wire \count[6]_i_6__0_n_0 ;
  wire [3:0]\count_reg[4]_0 ;
  wire [5:0]\count_reg[4]_1 ;
  wire [0:0]\count_reg[6]_0 ;
  wire [6:0]count_reg__0;
  wire \data_out[0]_i_4__0_n_0 ;
  wire \data_out[0]_i_5__0_n_0 ;
  wire \data_out[0]_i_6__0_n_0 ;
  wire \data_out[0]_i_7__0_n_0 ;
  wire \data_out[1]_i_4__0_n_0 ;
  wire \data_out[1]_i_5__0_n_0 ;
  wire \data_out[1]_i_6__0_n_0 ;
  wire \data_out[1]_i_7__0_n_0 ;
  wire \data_out[2]_i_2__0_n_0 ;
  wire \data_out[2]_i_3__0_n_0 ;
  wire \data_out[2]_i_4__0_n_0 ;
  wire \data_out[2]_i_5__0_n_0 ;
  wire \data_out[3]_i_1__0_n_0 ;
  wire \data_out[3]_i_2__0_n_0 ;
  wire \data_out[3]_i_3__0_n_0 ;
  wire \data_out[3]_i_4__0_n_0 ;
  wire \data_out[3]_i_5__0_n_0 ;
  wire \data_out[4]_i_1__0_n_0 ;
  wire \data_out[4]_i_2__0_n_0 ;
  wire \data_out[4]_i_3__0_n_0 ;
  wire \data_out[4]_i_4__0_n_0 ;
  wire \data_out[4]_i_5__0_n_0 ;
  wire \data_out[5]_i_1__1_n_0 ;
  wire \data_out[5]_i_2__0_n_0 ;
  wire \data_out[5]_i_3__0_n_0 ;
  wire \data_out[5]_i_4__0_n_0 ;
  wire \data_out[5]_i_5__0_n_0 ;
  wire \data_out[6]_i_1__1_n_0 ;
  wire \data_out[6]_i_2__0_n_0 ;
  wire \data_out[6]_i_3__0_n_0 ;
  wire \data_out[6]_i_4__0_n_0 ;
  wire \data_out[6]_i_5__0_n_0 ;
  wire \data_out[7]_i_10__1_n_0 ;
  wire \data_out[7]_i_11__0_n_0 ;
  wire \data_out[7]_i_12_n_0 ;
  wire \data_out[7]_i_13_n_0 ;
  wire \data_out[7]_i_1__0_n_0 ;
  wire \data_out[7]_i_3__1_n_0 ;
  wire \data_out[7]_i_6_n_0 ;
  wire \data_out[7]_i_7__0_n_0 ;
  wire \data_out[7]_i_8__0_n_0 ;
  wire \data_out[7]_i_9__0_n_0 ;
  wire \data_out_reg[0]_i_2__0_n_0 ;
  wire \data_out_reg[0]_i_3__0_n_0 ;
  wire \data_out_reg[1]_i_2__0_n_0 ;
  wire \data_out_reg[1]_i_3__0_n_0 ;
  wire \data_out_reg[7]_0 ;
  wire [2:0]mem;
  wire \mem[0][8]_i_1__0_n_0 ;
  wire \mem[10][8]_i_1__0_n_0 ;
  wire \mem[11][8]_i_1__0_n_0 ;
  wire \mem[12][8]_i_1__0_n_0 ;
  wire \mem[13][8]_i_1__0_n_0 ;
  wire \mem[14][8]_i_1__0_n_0 ;
  wire \mem[15][8]_i_2__0_n_0 ;
  wire \mem[1][8]_i_1__0_n_0 ;
  wire \mem[2][8]_i_1__0_n_0 ;
  wire \mem[3][8]_i_1__0_n_0 ;
  wire \mem[4][8]_i_1__0_n_0 ;
  wire \mem[5][8]_i_1__0_n_0 ;
  wire \mem[6][8]_i_1__0_n_0 ;
  wire \mem[7][8]_i_1__0_n_0 ;
  wire \mem[8][8]_i_1__0_n_0 ;
  wire \mem[9][8]_i_1__0_n_0 ;
  wire \mem_reg_n_0_[0][0] ;
  wire \mem_reg_n_0_[0][1] ;
  wire \mem_reg_n_0_[0][2] ;
  wire \mem_reg_n_0_[0][3] ;
  wire \mem_reg_n_0_[0][4] ;
  wire \mem_reg_n_0_[0][5] ;
  wire \mem_reg_n_0_[0][6] ;
  wire \mem_reg_n_0_[0][7] ;
  wire \mem_reg_n_0_[0][8] ;
  wire \mem_reg_n_0_[10][0] ;
  wire \mem_reg_n_0_[10][1] ;
  wire \mem_reg_n_0_[10][2] ;
  wire \mem_reg_n_0_[10][3] ;
  wire \mem_reg_n_0_[10][4] ;
  wire \mem_reg_n_0_[10][5] ;
  wire \mem_reg_n_0_[10][6] ;
  wire \mem_reg_n_0_[10][7] ;
  wire \mem_reg_n_0_[10][8] ;
  wire \mem_reg_n_0_[11][0] ;
  wire \mem_reg_n_0_[11][1] ;
  wire \mem_reg_n_0_[11][2] ;
  wire \mem_reg_n_0_[11][3] ;
  wire \mem_reg_n_0_[11][4] ;
  wire \mem_reg_n_0_[11][5] ;
  wire \mem_reg_n_0_[11][6] ;
  wire \mem_reg_n_0_[11][7] ;
  wire \mem_reg_n_0_[11][8] ;
  wire \mem_reg_n_0_[12][0] ;
  wire \mem_reg_n_0_[12][1] ;
  wire \mem_reg_n_0_[12][2] ;
  wire \mem_reg_n_0_[12][3] ;
  wire \mem_reg_n_0_[12][4] ;
  wire \mem_reg_n_0_[12][5] ;
  wire \mem_reg_n_0_[12][6] ;
  wire \mem_reg_n_0_[12][7] ;
  wire \mem_reg_n_0_[12][8] ;
  wire \mem_reg_n_0_[13][0] ;
  wire \mem_reg_n_0_[13][1] ;
  wire \mem_reg_n_0_[13][2] ;
  wire \mem_reg_n_0_[13][3] ;
  wire \mem_reg_n_0_[13][4] ;
  wire \mem_reg_n_0_[13][5] ;
  wire \mem_reg_n_0_[13][6] ;
  wire \mem_reg_n_0_[13][7] ;
  wire \mem_reg_n_0_[13][8] ;
  wire \mem_reg_n_0_[14][0] ;
  wire \mem_reg_n_0_[14][1] ;
  wire \mem_reg_n_0_[14][2] ;
  wire \mem_reg_n_0_[14][3] ;
  wire \mem_reg_n_0_[14][4] ;
  wire \mem_reg_n_0_[14][5] ;
  wire \mem_reg_n_0_[14][6] ;
  wire \mem_reg_n_0_[14][7] ;
  wire \mem_reg_n_0_[14][8] ;
  wire \mem_reg_n_0_[15][0] ;
  wire \mem_reg_n_0_[15][1] ;
  wire \mem_reg_n_0_[15][2] ;
  wire \mem_reg_n_0_[15][3] ;
  wire \mem_reg_n_0_[15][4] ;
  wire \mem_reg_n_0_[15][5] ;
  wire \mem_reg_n_0_[15][6] ;
  wire \mem_reg_n_0_[15][7] ;
  wire \mem_reg_n_0_[15][8] ;
  wire \mem_reg_n_0_[1][0] ;
  wire \mem_reg_n_0_[1][1] ;
  wire \mem_reg_n_0_[1][2] ;
  wire \mem_reg_n_0_[1][3] ;
  wire \mem_reg_n_0_[1][4] ;
  wire \mem_reg_n_0_[1][5] ;
  wire \mem_reg_n_0_[1][6] ;
  wire \mem_reg_n_0_[1][7] ;
  wire \mem_reg_n_0_[1][8] ;
  wire \mem_reg_n_0_[2][0] ;
  wire \mem_reg_n_0_[2][1] ;
  wire \mem_reg_n_0_[2][2] ;
  wire \mem_reg_n_0_[2][3] ;
  wire \mem_reg_n_0_[2][4] ;
  wire \mem_reg_n_0_[2][5] ;
  wire \mem_reg_n_0_[2][6] ;
  wire \mem_reg_n_0_[2][7] ;
  wire \mem_reg_n_0_[2][8] ;
  wire \mem_reg_n_0_[3][0] ;
  wire \mem_reg_n_0_[3][1] ;
  wire \mem_reg_n_0_[3][2] ;
  wire \mem_reg_n_0_[3][3] ;
  wire \mem_reg_n_0_[3][4] ;
  wire \mem_reg_n_0_[3][5] ;
  wire \mem_reg_n_0_[3][6] ;
  wire \mem_reg_n_0_[3][7] ;
  wire \mem_reg_n_0_[3][8] ;
  wire \mem_reg_n_0_[4][0] ;
  wire \mem_reg_n_0_[4][1] ;
  wire \mem_reg_n_0_[4][2] ;
  wire \mem_reg_n_0_[4][3] ;
  wire \mem_reg_n_0_[4][4] ;
  wire \mem_reg_n_0_[4][5] ;
  wire \mem_reg_n_0_[4][6] ;
  wire \mem_reg_n_0_[4][7] ;
  wire \mem_reg_n_0_[4][8] ;
  wire \mem_reg_n_0_[5][0] ;
  wire \mem_reg_n_0_[5][1] ;
  wire \mem_reg_n_0_[5][2] ;
  wire \mem_reg_n_0_[5][3] ;
  wire \mem_reg_n_0_[5][4] ;
  wire \mem_reg_n_0_[5][5] ;
  wire \mem_reg_n_0_[5][6] ;
  wire \mem_reg_n_0_[5][7] ;
  wire \mem_reg_n_0_[5][8] ;
  wire \mem_reg_n_0_[6][0] ;
  wire \mem_reg_n_0_[6][1] ;
  wire \mem_reg_n_0_[6][2] ;
  wire \mem_reg_n_0_[6][3] ;
  wire \mem_reg_n_0_[6][4] ;
  wire \mem_reg_n_0_[6][5] ;
  wire \mem_reg_n_0_[6][6] ;
  wire \mem_reg_n_0_[6][7] ;
  wire \mem_reg_n_0_[6][8] ;
  wire \mem_reg_n_0_[7][0] ;
  wire \mem_reg_n_0_[7][1] ;
  wire \mem_reg_n_0_[7][2] ;
  wire \mem_reg_n_0_[7][3] ;
  wire \mem_reg_n_0_[7][4] ;
  wire \mem_reg_n_0_[7][5] ;
  wire \mem_reg_n_0_[7][6] ;
  wire \mem_reg_n_0_[7][7] ;
  wire \mem_reg_n_0_[7][8] ;
  wire \mem_reg_n_0_[8][0] ;
  wire \mem_reg_n_0_[8][1] ;
  wire \mem_reg_n_0_[8][2] ;
  wire \mem_reg_n_0_[8][3] ;
  wire \mem_reg_n_0_[8][4] ;
  wire \mem_reg_n_0_[8][5] ;
  wire \mem_reg_n_0_[8][6] ;
  wire \mem_reg_n_0_[8][7] ;
  wire \mem_reg_n_0_[8][8] ;
  wire \mem_reg_n_0_[9][0] ;
  wire \mem_reg_n_0_[9][1] ;
  wire \mem_reg_n_0_[9][2] ;
  wire \mem_reg_n_0_[9][3] ;
  wire \mem_reg_n_0_[9][4] ;
  wire \mem_reg_n_0_[9][5] ;
  wire \mem_reg_n_0_[9][6] ;
  wire \mem_reg_n_0_[9][7] ;
  wire \mem_reg_n_0_[9][8] ;
  wire [4:0]p_0_in__1;
  wire [4:0]p_0_in__2;
  wire pkt_valid_w;
  wire \rd_pointer_reg[0]_0 ;
  wire \rd_pointer_reg[0]_1 ;
  wire [4:0]rd_pointer_reg__0;
  wire \rx_cnt_reg[4] ;
  wire soft_reset_1;
  wire soft_reset_1_reg;
  wire [1:0]txb;
  wire wr_pointer0;
  wire \wr_pointer_reg[4]_0 ;
  wire [3:0]wr_pointer_reg__0;
  wire [4:4]wr_pointer_reg__0__0;

  LUT6 #(
    .INIT(64'h05C0000005CF0000)) 
    \FSM_sequential_PS[0]_i_4 
       (.I0(\data_out_reg[7]_0 ),
        .I1(\rd_pointer_reg[0]_0 ),
        .I2(txb[1]),
        .I3(txb[0]),
        .I4(pkt_valid_w),
        .I5(\rd_pointer_reg[0]_1 ),
        .O(NS1));
  LUT3 #(
    .INIT(8'h47)) 
    \count[0]_i_1__0 
       (.I0(count_reg__0[0]),
        .I1(\count[6]_i_2__0_n_0 ),
        .I2(mem[2]),
        .O(\count[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0222)) 
    \count[6]_i_1 
       (.I0(\data_out_reg[7]_0 ),
        .I1(\rx_cnt_reg[4] ),
        .I2(\data_out[7]_i_6_n_0 ),
        .I3(\count[6]_i_2__0_n_0 ),
        .O(count));
  LUT6 #(
    .INIT(64'h3F305F5F3F305050)) 
    \count[6]_i_2__0 
       (.I0(\count[6]_i_3__0_n_0 ),
        .I1(\count[6]_i_4__0_n_0 ),
        .I2(rd_pointer_reg__0[3]),
        .I3(\count[6]_i_5__0_n_0 ),
        .I4(rd_pointer_reg__0[2]),
        .I5(\count[6]_i_6__0_n_0 ),
        .O(\count[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[6]_i_3__0 
       (.I0(\mem_reg_n_0_[11][8] ),
        .I1(\mem_reg_n_0_[10][8] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[9][8] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[8][8] ),
        .O(\count[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[6]_i_4__0 
       (.I0(\mem_reg_n_0_[15][8] ),
        .I1(\mem_reg_n_0_[14][8] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[13][8] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[12][8] ),
        .O(\count[6]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \count[6]_i_5__0 
       (.I0(\mem_reg_n_0_[5][8] ),
        .I1(\mem_reg_n_0_[4][8] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[7][8] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[6][8] ),
        .O(\count[6]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \count[6]_i_6__0 
       (.I0(\mem_reg_n_0_[1][8] ),
        .I1(\mem_reg_n_0_[0][8] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[3][8] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[2][8] ),
        .O(\count[6]_i_6__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(count_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_1 [0]),
        .Q(count_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_1 [1]),
        .Q(count_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_1 [2]),
        .Q(count_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_1 [3]),
        .Q(count_reg__0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_1 [4]),
        .Q(count_reg__0[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_1 [5]),
        .Q(count_reg__0[6]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_4__0 
       (.I0(\mem_reg_n_0_[3][0] ),
        .I1(\mem_reg_n_0_[2][0] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[1][0] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[0][0] ),
        .O(\data_out[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_5__0 
       (.I0(\mem_reg_n_0_[7][0] ),
        .I1(\mem_reg_n_0_[6][0] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[5][0] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[4][0] ),
        .O(\data_out[0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_6__0 
       (.I0(\mem_reg_n_0_[11][0] ),
        .I1(\mem_reg_n_0_[10][0] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[9][0] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[8][0] ),
        .O(\data_out[0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_7__0 
       (.I0(\mem_reg_n_0_[15][0] ),
        .I1(\mem_reg_n_0_[14][0] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[13][0] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[12][0] ),
        .O(\data_out[0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_4__0 
       (.I0(\mem_reg_n_0_[3][1] ),
        .I1(\mem_reg_n_0_[2][1] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[1][1] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[0][1] ),
        .O(\data_out[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_5__0 
       (.I0(\mem_reg_n_0_[7][1] ),
        .I1(\mem_reg_n_0_[6][1] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[5][1] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[4][1] ),
        .O(\data_out[1]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_6__0 
       (.I0(\mem_reg_n_0_[11][1] ),
        .I1(\mem_reg_n_0_[10][1] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[9][1] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[8][1] ),
        .O(\data_out[1]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_7__0 
       (.I0(\mem_reg_n_0_[15][1] ),
        .I1(\mem_reg_n_0_[14][1] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[13][1] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[12][1] ),
        .O(\data_out[1]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h001D331DCC1DFF1D)) 
    \data_out[2]_i_1__0 
       (.I0(\data_out[2]_i_2__0_n_0 ),
        .I1(rd_pointer_reg__0[2]),
        .I2(\data_out[2]_i_3__0_n_0 ),
        .I3(rd_pointer_reg__0[3]),
        .I4(\data_out[2]_i_4__0_n_0 ),
        .I5(\data_out[2]_i_5__0_n_0 ),
        .O(mem[2]));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[2]_i_2__0 
       (.I0(\mem_reg_n_0_[1][2] ),
        .I1(\mem_reg_n_0_[0][2] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[3][2] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[2][2] ),
        .O(\data_out[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[2]_i_3__0 
       (.I0(\mem_reg_n_0_[5][2] ),
        .I1(\mem_reg_n_0_[4][2] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[7][2] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[6][2] ),
        .O(\data_out[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[2]_i_4__0 
       (.I0(\mem_reg_n_0_[9][2] ),
        .I1(\mem_reg_n_0_[8][2] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[11][2] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[10][2] ),
        .O(\data_out[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[2]_i_5__0 
       (.I0(\mem_reg_n_0_[13][2] ),
        .I1(\mem_reg_n_0_[12][2] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[15][2] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[14][2] ),
        .O(\data_out[2]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \data_out[3]_i_1__0 
       (.I0(\data_out[3]_i_2__0_n_0 ),
        .I1(\data_out[3]_i_3__0_n_0 ),
        .I2(rd_pointer_reg__0[3]),
        .I3(\data_out[3]_i_4__0_n_0 ),
        .I4(rd_pointer_reg__0[2]),
        .I5(\data_out[3]_i_5__0_n_0 ),
        .O(\data_out[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[3]_i_2__0 
       (.I0(\mem_reg_n_0_[13][3] ),
        .I1(\mem_reg_n_0_[12][3] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[15][3] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[14][3] ),
        .O(\data_out[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[3]_i_3__0 
       (.I0(\mem_reg_n_0_[9][3] ),
        .I1(\mem_reg_n_0_[8][3] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[11][3] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[10][3] ),
        .O(\data_out[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_4__0 
       (.I0(\mem_reg_n_0_[7][3] ),
        .I1(\mem_reg_n_0_[6][3] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[5][3] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[4][3] ),
        .O(\data_out[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_5__0 
       (.I0(\mem_reg_n_0_[3][3] ),
        .I1(\mem_reg_n_0_[2][3] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[1][3] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[0][3] ),
        .O(\data_out[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \data_out[4]_i_1__0 
       (.I0(\data_out[4]_i_2__0_n_0 ),
        .I1(\data_out[4]_i_3__0_n_0 ),
        .I2(rd_pointer_reg__0[3]),
        .I3(\data_out[4]_i_4__0_n_0 ),
        .I4(rd_pointer_reg__0[2]),
        .I5(\data_out[4]_i_5__0_n_0 ),
        .O(\data_out[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[4]_i_2__0 
       (.I0(\mem_reg_n_0_[13][4] ),
        .I1(\mem_reg_n_0_[12][4] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[15][4] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[14][4] ),
        .O(\data_out[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[4]_i_3__0 
       (.I0(\mem_reg_n_0_[9][4] ),
        .I1(\mem_reg_n_0_[8][4] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[11][4] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[10][4] ),
        .O(\data_out[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_4__0 
       (.I0(\mem_reg_n_0_[7][4] ),
        .I1(\mem_reg_n_0_[6][4] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[5][4] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[4][4] ),
        .O(\data_out[4]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_5__0 
       (.I0(\mem_reg_n_0_[3][4] ),
        .I1(\mem_reg_n_0_[2][4] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[1][4] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[0][4] ),
        .O(\data_out[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \data_out[5]_i_1__1 
       (.I0(\data_out[5]_i_2__0_n_0 ),
        .I1(\data_out[5]_i_3__0_n_0 ),
        .I2(rd_pointer_reg__0[3]),
        .I3(\data_out[5]_i_4__0_n_0 ),
        .I4(rd_pointer_reg__0[2]),
        .I5(\data_out[5]_i_5__0_n_0 ),
        .O(\data_out[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[5]_i_2__0 
       (.I0(\mem_reg_n_0_[13][5] ),
        .I1(\mem_reg_n_0_[12][5] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[15][5] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[14][5] ),
        .O(\data_out[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[5]_i_3__0 
       (.I0(\mem_reg_n_0_[9][5] ),
        .I1(\mem_reg_n_0_[8][5] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[11][5] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[10][5] ),
        .O(\data_out[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_4__0 
       (.I0(\mem_reg_n_0_[7][5] ),
        .I1(\mem_reg_n_0_[6][5] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[5][5] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[4][5] ),
        .O(\data_out[5]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_5__0 
       (.I0(\mem_reg_n_0_[3][5] ),
        .I1(\mem_reg_n_0_[2][5] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[1][5] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[0][5] ),
        .O(\data_out[5]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \data_out[6]_i_1__1 
       (.I0(\data_out[6]_i_2__0_n_0 ),
        .I1(\data_out[6]_i_3__0_n_0 ),
        .I2(rd_pointer_reg__0[3]),
        .I3(\data_out[6]_i_4__0_n_0 ),
        .I4(rd_pointer_reg__0[2]),
        .I5(\data_out[6]_i_5__0_n_0 ),
        .O(\data_out[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[6]_i_2__0 
       (.I0(\mem_reg_n_0_[13][6] ),
        .I1(\mem_reg_n_0_[12][6] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[15][6] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[14][6] ),
        .O(\data_out[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[6]_i_3__0 
       (.I0(\mem_reg_n_0_[9][6] ),
        .I1(\mem_reg_n_0_[8][6] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[11][6] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[10][6] ),
        .O(\data_out[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_4__0 
       (.I0(\mem_reg_n_0_[7][6] ),
        .I1(\mem_reg_n_0_[6][6] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[5][6] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[4][6] ),
        .O(\data_out[6]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_5__0 
       (.I0(\mem_reg_n_0_[3][6] ),
        .I1(\mem_reg_n_0_[2][6] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[1][6] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[0][6] ),
        .O(\data_out[6]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_10__1 
       (.I0(\mem_reg_n_0_[3][7] ),
        .I1(\mem_reg_n_0_[2][7] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[1][7] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[0][7] ),
        .O(\data_out[7]_i_10__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_out[7]_i_11__0 
       (.I0(wr_pointer_reg__0__0),
        .I1(rd_pointer_reg__0[4]),
        .O(\data_out[7]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \data_out[7]_i_12 
       (.I0(rd_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[3]),
        .I2(rd_pointer_reg__0[1]),
        .I3(wr_pointer_reg__0[1]),
        .O(\data_out[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[7]_i_13 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[6]),
        .I3(count_reg__0[1]),
        .O(\data_out[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFBBBB)) 
    \data_out[7]_i_1__0 
       (.I0(soft_reset_1),
        .I1(PRESETn_IBUF),
        .I2(\data_out_reg[7]_0 ),
        .I3(\rx_cnt_reg[4] ),
        .I4(\data_out[7]_i_6_n_0 ),
        .O(\data_out[7]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_out[7]_i_2__0 
       (.I0(\data_out_reg[7]_0 ),
        .I1(\rx_cnt_reg[4] ),
        .O(E));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \data_out[7]_i_3__1 
       (.I0(\data_out[7]_i_7__0_n_0 ),
        .I1(\data_out[7]_i_8__0_n_0 ),
        .I2(rd_pointer_reg__0[3]),
        .I3(\data_out[7]_i_9__0_n_0 ),
        .I4(rd_pointer_reg__0[2]),
        .I5(\data_out[7]_i_10__1_n_0 ),
        .O(\data_out[7]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFFEFFE)) 
    \data_out[7]_i_4__0 
       (.I0(\data_out[7]_i_11__0_n_0 ),
        .I1(\data_out[7]_i_12_n_0 ),
        .I2(rd_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[0]),
        .I4(rd_pointer_reg__0[2]),
        .I5(wr_pointer_reg__0[2]),
        .O(\data_out_reg[7]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \data_out[7]_i_6 
       (.I0(count_reg__0[5]),
        .I1(count_reg__0[3]),
        .I2(count_reg__0[4]),
        .I3(\data_out[7]_i_13_n_0 ),
        .O(\data_out[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[7]_i_7__0 
       (.I0(\mem_reg_n_0_[13][7] ),
        .I1(\mem_reg_n_0_[12][7] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[15][7] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[14][7] ),
        .O(\data_out[7]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[7]_i_8__0 
       (.I0(\mem_reg_n_0_[9][7] ),
        .I1(\mem_reg_n_0_[8][7] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[11][7] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[10][7] ),
        .O(\data_out[7]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_9__0 
       (.I0(\mem_reg_n_0_[7][7] ),
        .I1(\mem_reg_n_0_[6][7] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[5][7] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[4][7] ),
        .O(\data_out[7]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(mem[0]),
        .Q(Q[0]),
        .R(\data_out[7]_i_1__0_n_0 ));
  MUXF8 \data_out_reg[0]_i_1__0 
       (.I0(\data_out_reg[0]_i_2__0_n_0 ),
        .I1(\data_out_reg[0]_i_3__0_n_0 ),
        .O(mem[0]),
        .S(rd_pointer_reg__0[3]));
  MUXF7 \data_out_reg[0]_i_2__0 
       (.I0(\data_out[0]_i_4__0_n_0 ),
        .I1(\data_out[0]_i_5__0_n_0 ),
        .O(\data_out_reg[0]_i_2__0_n_0 ),
        .S(rd_pointer_reg__0[2]));
  MUXF7 \data_out_reg[0]_i_3__0 
       (.I0(\data_out[0]_i_6__0_n_0 ),
        .I1(\data_out[0]_i_7__0_n_0 ),
        .O(\data_out_reg[0]_i_3__0_n_0 ),
        .S(rd_pointer_reg__0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(mem[1]),
        .Q(Q[1]),
        .R(\data_out[7]_i_1__0_n_0 ));
  MUXF8 \data_out_reg[1]_i_1__0 
       (.I0(\data_out_reg[1]_i_2__0_n_0 ),
        .I1(\data_out_reg[1]_i_3__0_n_0 ),
        .O(mem[1]),
        .S(rd_pointer_reg__0[3]));
  MUXF7 \data_out_reg[1]_i_2__0 
       (.I0(\data_out[1]_i_4__0_n_0 ),
        .I1(\data_out[1]_i_5__0_n_0 ),
        .O(\data_out_reg[1]_i_2__0_n_0 ),
        .S(rd_pointer_reg__0[2]));
  MUXF7 \data_out_reg[1]_i_3__0 
       (.I0(\data_out[1]_i_6__0_n_0 ),
        .I1(\data_out[1]_i_7__0_n_0 ),
        .O(\data_out_reg[1]_i_3__0_n_0 ),
        .S(rd_pointer_reg__0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(mem[2]),
        .Q(Q[2]),
        .R(\data_out[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(\data_out[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\data_out[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(\data_out[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\data_out[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(\data_out[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\data_out[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(\data_out[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\data_out[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(\data_out[7]_i_3__1_n_0 ),
        .Q(Q[7]),
        .R(\data_out[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \mem[0][8]_i_1__0 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[0][8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[10][8]_i_1__0 
       (.I0(wr_pointer_reg__0[0]),
        .I1(wr_pointer_reg__0[1]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[10][8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \mem[11][8]_i_1__0 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[11][8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem[12][8]_i_1__0 
       (.I0(wr_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[2]),
        .I2(wr_pointer_reg__0[1]),
        .I3(wr_pointer_reg__0[0]),
        .I4(wr_pointer0),
        .O(\mem[12][8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem[13][8]_i_1__0 
       (.I0(wr_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[2]),
        .I2(wr_pointer_reg__0[1]),
        .I3(wr_pointer_reg__0[0]),
        .I4(wr_pointer0),
        .O(\mem[13][8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem[14][8]_i_1__0 
       (.I0(wr_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[2]),
        .I2(wr_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[1]),
        .I4(wr_pointer0),
        .O(\mem[14][8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \mem[15][8]_i_2__0 
       (.I0(wr_pointer0),
        .I1(wr_pointer_reg__0[2]),
        .I2(wr_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[1]),
        .I4(wr_pointer_reg__0[3]),
        .O(\mem[15][8]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem[1][8]_i_1__0 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[1][8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem[2][8]_i_1__0 
       (.I0(wr_pointer_reg__0[0]),
        .I1(wr_pointer_reg__0[1]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[2][8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[3][8]_i_1__0 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[3][8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \mem[4][8]_i_1__0 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[2]),
        .I4(wr_pointer_reg__0[3]),
        .O(\mem[4][8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[5][8]_i_1__0 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[2]),
        .I4(wr_pointer_reg__0[3]),
        .O(\mem[5][8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[6][8]_i_1__0 
       (.I0(wr_pointer_reg__0[0]),
        .I1(wr_pointer_reg__0[1]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[2]),
        .I4(wr_pointer_reg__0[3]),
        .O(\mem[6][8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \mem[7][8]_i_1__0 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[2]),
        .I4(wr_pointer_reg__0[3]),
        .O(\mem[7][8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \mem[8][8]_i_1__0 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[8][8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[9][8]_i_1__0 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[9][8]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[0][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[0][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[0][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[0][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[0][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[0][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[0][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[0][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[0][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[10][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[10][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[10][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[10][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[10][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[10][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[10][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[10][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[10][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[11][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[11][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[11][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[11][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[11][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[11][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[11][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[11][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[11][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[12][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[12][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[12][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[12][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[12][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[12][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[12][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[12][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[12][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[13][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[13][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[13][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[13][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[13][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[13][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[13][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[13][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[13][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[14][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[14][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[14][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[14][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[14][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[14][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[14][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[14][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[14][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[15][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[15][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[15][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[15][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[15][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[15][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[15][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[15][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[15][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[1][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[1][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[1][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[1][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[1][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[1][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[1][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[1][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[1][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[2][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[2][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[2][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[2][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[2][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[2][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[2][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[2][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[2][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[3][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[3][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[3][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[3][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[3][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[3][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[3][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[3][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[3][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[4][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[4][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[4][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[4][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[4][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[4][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[4][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[4][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[4][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[5][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[5][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[5][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[5][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[5][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[5][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[5][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[5][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[5][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[6][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[6][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[6][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[6][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[6][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[6][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[6][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[6][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[6][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[7][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[7][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[7][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[7][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[7][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[7][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[7][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[7][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[7][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[8][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[8][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[8][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[8][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[8][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[8][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[8][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[8][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[8][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[9][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[9][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[9][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[9][3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[9][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[9][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[9][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[9][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[9][8] ),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out__15_carry__0_i_1
       (.I0(count_reg__0[4]),
        .I1(\count[6]_i_2__0_n_0 ),
        .I2(\data_out[6]_i_1__1_n_0 ),
        .O(\count_reg[6]_0 ));
  LUT4 #(
    .INIT(16'h8B47)) 
    p_0_out__15_carry__0_i_2
       (.I0(count_reg__0[5]),
        .I1(\count[6]_i_2__0_n_0 ),
        .I2(\data_out[7]_i_3__1_n_0 ),
        .I3(count_reg__0[6]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'hB8748B47)) 
    p_0_out__15_carry__0_i_3
       (.I0(count_reg__0[4]),
        .I1(\count[6]_i_2__0_n_0 ),
        .I2(\data_out[6]_i_1__1_n_0 ),
        .I3(count_reg__0[5]),
        .I4(\data_out[7]_i_3__1_n_0 ),
        .O(S[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out__15_carry_i_1
       (.I0(count_reg__0[0]),
        .I1(\count[6]_i_2__0_n_0 ),
        .I2(mem[2]),
        .O(A__0));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out__15_carry_i_2
       (.I0(count_reg__0[3]),
        .I1(\count[6]_i_2__0_n_0 ),
        .I2(\data_out[5]_i_1__1_n_0 ),
        .O(DI[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out__15_carry_i_3
       (.I0(count_reg__0[2]),
        .I1(\count[6]_i_2__0_n_0 ),
        .I2(\data_out[4]_i_1__0_n_0 ),
        .O(DI[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out__15_carry_i_4
       (.I0(count_reg__0[1]),
        .I1(\count[6]_i_2__0_n_0 ),
        .I2(\data_out[3]_i_1__0_n_0 ),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'h47)) 
    p_0_out__15_carry_i_5
       (.I0(count_reg__0[1]),
        .I1(\count[6]_i_2__0_n_0 ),
        .I2(\data_out[3]_i_1__0_n_0 ),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'hB8748B47)) 
    p_0_out__15_carry_i_6
       (.I0(count_reg__0[4]),
        .I1(\count[6]_i_2__0_n_0 ),
        .I2(\data_out[6]_i_1__1_n_0 ),
        .I3(count_reg__0[3]),
        .I4(\data_out[5]_i_1__1_n_0 ),
        .O(\count_reg[4]_0 [3]));
  LUT5 #(
    .INIT(32'hB8748B47)) 
    p_0_out__15_carry_i_7
       (.I0(count_reg__0[3]),
        .I1(\count[6]_i_2__0_n_0 ),
        .I2(\data_out[5]_i_1__1_n_0 ),
        .I3(count_reg__0[2]),
        .I4(\data_out[4]_i_1__0_n_0 ),
        .O(\count_reg[4]_0 [2]));
  LUT5 #(
    .INIT(32'hB8748B47)) 
    p_0_out__15_carry_i_8
       (.I0(count_reg__0[2]),
        .I1(\count[6]_i_2__0_n_0 ),
        .I2(\data_out[4]_i_1__0_n_0 ),
        .I3(count_reg__0[1]),
        .I4(\data_out[3]_i_1__0_n_0 ),
        .O(\count_reg[4]_0 [1]));
  LUT3 #(
    .INIT(8'h74)) 
    p_0_out__15_carry_i_9
       (.I0(count_reg__0[1]),
        .I1(\count[6]_i_2__0_n_0 ),
        .I2(\data_out[3]_i_1__0_n_0 ),
        .O(\count_reg[4]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_pointer[0]_i_1__0 
       (.I0(rd_pointer_reg__0[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pointer[1]_i_1__0 
       (.I0(rd_pointer_reg__0[0]),
        .I1(rd_pointer_reg__0[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_pointer[2]_i_1__0 
       (.I0(rd_pointer_reg__0[2]),
        .I1(rd_pointer_reg__0[1]),
        .I2(rd_pointer_reg__0[0]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_pointer[3]_i_1__0 
       (.I0(rd_pointer_reg__0[3]),
        .I1(rd_pointer_reg__0[2]),
        .I2(rd_pointer_reg__0[0]),
        .I3(rd_pointer_reg__0[1]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rd_pointer[4]_i_1__0 
       (.I0(rd_pointer_reg__0[4]),
        .I1(rd_pointer_reg__0[3]),
        .I2(rd_pointer_reg__0[1]),
        .I3(rd_pointer_reg__0[0]),
        .I4(rd_pointer_reg__0[2]),
        .O(p_0_in__2[4]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__2[0]),
        .Q(rd_pointer_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__2[1]),
        .Q(rd_pointer_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__2[2]),
        .Q(rd_pointer_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__2[3]),
        .Q(rd_pointer_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__2[4]),
        .Q(rd_pointer_reg__0[4]),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    soft_reset_1_i_2
       (.I0(\data_out_reg[7]_0 ),
        .I1(\rx_cnt_reg[4] ),
        .O(soft_reset_1_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_pointer[0]_i_1__0 
       (.I0(wr_pointer_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pointer[1]_i_1__0 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_pointer[2]_i_1__0 
       (.I0(wr_pointer_reg__0[2]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer_reg__0[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_pointer[3]_i_1__0 
       (.I0(wr_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[1]),
        .I2(wr_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wr_pointer[4]_i_2__0 
       (.I0(wr_pointer_reg__0__0),
        .I1(wr_pointer_reg__0[2]),
        .I2(wr_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[1]),
        .I4(wr_pointer_reg__0[3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h2002000000002002)) 
    \wr_pointer[4]_i_3__0 
       (.I0(\data_out[7]_i_11__0_n_0 ),
        .I1(\data_out[7]_i_12_n_0 ),
        .I2(rd_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[0]),
        .I4(rd_pointer_reg__0[2]),
        .I5(wr_pointer_reg__0[2]),
        .O(\wr_pointer_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(wr_pointer0),
        .D(p_0_in__1[0]),
        .Q(wr_pointer_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(wr_pointer0),
        .D(p_0_in__1[1]),
        .Q(wr_pointer_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(wr_pointer0),
        .D(p_0_in__1[2]),
        .Q(wr_pointer_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(wr_pointer0),
        .D(p_0_in__1[3]),
        .Q(wr_pointer_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(wr_pointer0),
        .D(p_0_in__1[4]),
        .Q(wr_pointer_reg__0__0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "router_fifo" *) 
module router_fifo_1
   (SR,
    \count2_reg[4] ,
    \count_reg[0]_0 ,
    \wr_pointer_reg[4]_0 ,
    A__1,
    DI,
    \count_reg[6]_0 ,
    S,
    \count_reg[6]_1 ,
    Q,
    wr_pointer0,
    PRESETn_IBUF,
    \rx_cnt_reg[4] ,
    \rd_pointer_reg[0]_0 ,
    soft_reset_2,
    soft_reset_2_reg,
    D,
    PCLK_IBUF_BUFG,
    E,
    \count_reg[4]_0 );
  output [0:0]SR;
  output \count2_reg[4] ;
  output \count_reg[0]_0 ;
  output \wr_pointer_reg[4]_0 ;
  output [0:0]A__1;
  output [3:0]DI;
  output [0:0]\count_reg[6]_0 ;
  output [3:0]S;
  output [1:0]\count_reg[6]_1 ;
  output [7:0]Q;
  input wr_pointer0;
  input PRESETn_IBUF;
  input \rx_cnt_reg[4] ;
  input \rd_pointer_reg[0]_0 ;
  input soft_reset_2;
  input [0:0]soft_reset_2_reg;
  input [8:0]D;
  input PCLK_IBUF_BUFG;
  input [0:0]E;
  input [5:0]\count_reg[4]_0 ;

  wire [0:0]A__1;
  wire [8:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire PCLK_IBUF_BUFG;
  wire PRESETn_IBUF;
  wire [7:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire count;
  wire \count2_reg[4] ;
  wire \count[0]_i_1__1_n_0 ;
  wire \count[6]_i_2__1_n_0 ;
  wire \count[6]_i_3__1_n_0 ;
  wire \count[6]_i_4__1_n_0 ;
  wire \count[6]_i_5__1_n_0 ;
  wire \count[6]_i_6__1_n_0 ;
  wire \count_reg[0]_0 ;
  wire [5:0]\count_reg[4]_0 ;
  wire [0:0]\count_reg[6]_0 ;
  wire [1:0]\count_reg[6]_1 ;
  wire [6:0]count_reg__0;
  wire \data_out[0]_i_4__1_n_0 ;
  wire \data_out[0]_i_5__1_n_0 ;
  wire \data_out[0]_i_6__1_n_0 ;
  wire \data_out[0]_i_7__1_n_0 ;
  wire \data_out[1]_i_4__1_n_0 ;
  wire \data_out[1]_i_5__1_n_0 ;
  wire \data_out[1]_i_6__1_n_0 ;
  wire \data_out[1]_i_7__1_n_0 ;
  wire \data_out[2]_i_2__1_n_0 ;
  wire \data_out[2]_i_3__1_n_0 ;
  wire \data_out[2]_i_4__1_n_0 ;
  wire \data_out[2]_i_5__1_n_0 ;
  wire \data_out[3]_i_1__1_n_0 ;
  wire \data_out[3]_i_2__1_n_0 ;
  wire \data_out[3]_i_3__1_n_0 ;
  wire \data_out[3]_i_4__1_n_0 ;
  wire \data_out[3]_i_5__1_n_0 ;
  wire \data_out[4]_i_1__1_n_0 ;
  wire \data_out[4]_i_2__1_n_0 ;
  wire \data_out[4]_i_3__1_n_0 ;
  wire \data_out[4]_i_4__1_n_0 ;
  wire \data_out[4]_i_5__1_n_0 ;
  wire \data_out[5]_i_2__1_n_0 ;
  wire \data_out[5]_i_3__1_n_0 ;
  wire \data_out[5]_i_4__1_n_0 ;
  wire \data_out[5]_i_5__1_n_0 ;
  wire \data_out[6]_i_2__1_n_0 ;
  wire \data_out[6]_i_3__1_n_0 ;
  wire \data_out[6]_i_4__1_n_0 ;
  wire \data_out[6]_i_5__1_n_0 ;
  wire \data_out[7]_i_10__0_n_0 ;
  wire \data_out[7]_i_11__1_n_0 ;
  wire \data_out[7]_i_12__0_n_0 ;
  wire \data_out[7]_i_1__1_n_0 ;
  wire \data_out[7]_i_5__1_n_0 ;
  wire \data_out[7]_i_6__1_n_0 ;
  wire \data_out[7]_i_7__1_n_0 ;
  wire \data_out[7]_i_8__1_n_0 ;
  wire \data_out[7]_i_9__1_n_0 ;
  wire \data_out_reg[0]_i_2__1_n_0 ;
  wire \data_out_reg[0]_i_3__1_n_0 ;
  wire \data_out_reg[1]_i_2__1_n_0 ;
  wire \data_out_reg[1]_i_3__1_n_0 ;
  wire [7:0]mem;
  wire \mem[0][8]_i_1_n_0 ;
  wire \mem[10][8]_i_1_n_0 ;
  wire \mem[11][8]_i_1_n_0 ;
  wire \mem[12][8]_i_1_n_0 ;
  wire \mem[13][8]_i_1_n_0 ;
  wire \mem[14][8]_i_1_n_0 ;
  wire \mem[15][8]_i_2_n_0 ;
  wire \mem[1][8]_i_1_n_0 ;
  wire \mem[2][8]_i_1_n_0 ;
  wire \mem[3][8]_i_1_n_0 ;
  wire \mem[4][8]_i_1_n_0 ;
  wire \mem[5][8]_i_1_n_0 ;
  wire \mem[6][8]_i_1_n_0 ;
  wire \mem[7][8]_i_1_n_0 ;
  wire \mem[8][8]_i_1_n_0 ;
  wire \mem[9][8]_i_1_n_0 ;
  wire \mem_reg_n_0_[0][0] ;
  wire \mem_reg_n_0_[0][1] ;
  wire \mem_reg_n_0_[0][2] ;
  wire \mem_reg_n_0_[0][3] ;
  wire \mem_reg_n_0_[0][4] ;
  wire \mem_reg_n_0_[0][5] ;
  wire \mem_reg_n_0_[0][6] ;
  wire \mem_reg_n_0_[0][7] ;
  wire \mem_reg_n_0_[0][8] ;
  wire \mem_reg_n_0_[10][0] ;
  wire \mem_reg_n_0_[10][1] ;
  wire \mem_reg_n_0_[10][2] ;
  wire \mem_reg_n_0_[10][3] ;
  wire \mem_reg_n_0_[10][4] ;
  wire \mem_reg_n_0_[10][5] ;
  wire \mem_reg_n_0_[10][6] ;
  wire \mem_reg_n_0_[10][7] ;
  wire \mem_reg_n_0_[10][8] ;
  wire \mem_reg_n_0_[11][0] ;
  wire \mem_reg_n_0_[11][1] ;
  wire \mem_reg_n_0_[11][2] ;
  wire \mem_reg_n_0_[11][3] ;
  wire \mem_reg_n_0_[11][4] ;
  wire \mem_reg_n_0_[11][5] ;
  wire \mem_reg_n_0_[11][6] ;
  wire \mem_reg_n_0_[11][7] ;
  wire \mem_reg_n_0_[11][8] ;
  wire \mem_reg_n_0_[12][0] ;
  wire \mem_reg_n_0_[12][1] ;
  wire \mem_reg_n_0_[12][2] ;
  wire \mem_reg_n_0_[12][3] ;
  wire \mem_reg_n_0_[12][4] ;
  wire \mem_reg_n_0_[12][5] ;
  wire \mem_reg_n_0_[12][6] ;
  wire \mem_reg_n_0_[12][7] ;
  wire \mem_reg_n_0_[12][8] ;
  wire \mem_reg_n_0_[13][0] ;
  wire \mem_reg_n_0_[13][1] ;
  wire \mem_reg_n_0_[13][2] ;
  wire \mem_reg_n_0_[13][3] ;
  wire \mem_reg_n_0_[13][4] ;
  wire \mem_reg_n_0_[13][5] ;
  wire \mem_reg_n_0_[13][6] ;
  wire \mem_reg_n_0_[13][7] ;
  wire \mem_reg_n_0_[13][8] ;
  wire \mem_reg_n_0_[14][0] ;
  wire \mem_reg_n_0_[14][1] ;
  wire \mem_reg_n_0_[14][2] ;
  wire \mem_reg_n_0_[14][3] ;
  wire \mem_reg_n_0_[14][4] ;
  wire \mem_reg_n_0_[14][5] ;
  wire \mem_reg_n_0_[14][6] ;
  wire \mem_reg_n_0_[14][7] ;
  wire \mem_reg_n_0_[14][8] ;
  wire \mem_reg_n_0_[15][0] ;
  wire \mem_reg_n_0_[15][1] ;
  wire \mem_reg_n_0_[15][2] ;
  wire \mem_reg_n_0_[15][3] ;
  wire \mem_reg_n_0_[15][4] ;
  wire \mem_reg_n_0_[15][5] ;
  wire \mem_reg_n_0_[15][6] ;
  wire \mem_reg_n_0_[15][7] ;
  wire \mem_reg_n_0_[15][8] ;
  wire \mem_reg_n_0_[1][0] ;
  wire \mem_reg_n_0_[1][1] ;
  wire \mem_reg_n_0_[1][2] ;
  wire \mem_reg_n_0_[1][3] ;
  wire \mem_reg_n_0_[1][4] ;
  wire \mem_reg_n_0_[1][5] ;
  wire \mem_reg_n_0_[1][6] ;
  wire \mem_reg_n_0_[1][7] ;
  wire \mem_reg_n_0_[1][8] ;
  wire \mem_reg_n_0_[2][0] ;
  wire \mem_reg_n_0_[2][1] ;
  wire \mem_reg_n_0_[2][2] ;
  wire \mem_reg_n_0_[2][3] ;
  wire \mem_reg_n_0_[2][4] ;
  wire \mem_reg_n_0_[2][5] ;
  wire \mem_reg_n_0_[2][6] ;
  wire \mem_reg_n_0_[2][7] ;
  wire \mem_reg_n_0_[2][8] ;
  wire \mem_reg_n_0_[3][0] ;
  wire \mem_reg_n_0_[3][1] ;
  wire \mem_reg_n_0_[3][2] ;
  wire \mem_reg_n_0_[3][3] ;
  wire \mem_reg_n_0_[3][4] ;
  wire \mem_reg_n_0_[3][5] ;
  wire \mem_reg_n_0_[3][6] ;
  wire \mem_reg_n_0_[3][7] ;
  wire \mem_reg_n_0_[3][8] ;
  wire \mem_reg_n_0_[4][0] ;
  wire \mem_reg_n_0_[4][1] ;
  wire \mem_reg_n_0_[4][2] ;
  wire \mem_reg_n_0_[4][3] ;
  wire \mem_reg_n_0_[4][4] ;
  wire \mem_reg_n_0_[4][5] ;
  wire \mem_reg_n_0_[4][6] ;
  wire \mem_reg_n_0_[4][7] ;
  wire \mem_reg_n_0_[4][8] ;
  wire \mem_reg_n_0_[5][0] ;
  wire \mem_reg_n_0_[5][1] ;
  wire \mem_reg_n_0_[5][2] ;
  wire \mem_reg_n_0_[5][3] ;
  wire \mem_reg_n_0_[5][4] ;
  wire \mem_reg_n_0_[5][5] ;
  wire \mem_reg_n_0_[5][6] ;
  wire \mem_reg_n_0_[5][7] ;
  wire \mem_reg_n_0_[5][8] ;
  wire \mem_reg_n_0_[6][0] ;
  wire \mem_reg_n_0_[6][1] ;
  wire \mem_reg_n_0_[6][2] ;
  wire \mem_reg_n_0_[6][3] ;
  wire \mem_reg_n_0_[6][4] ;
  wire \mem_reg_n_0_[6][5] ;
  wire \mem_reg_n_0_[6][6] ;
  wire \mem_reg_n_0_[6][7] ;
  wire \mem_reg_n_0_[6][8] ;
  wire \mem_reg_n_0_[7][0] ;
  wire \mem_reg_n_0_[7][1] ;
  wire \mem_reg_n_0_[7][2] ;
  wire \mem_reg_n_0_[7][3] ;
  wire \mem_reg_n_0_[7][4] ;
  wire \mem_reg_n_0_[7][5] ;
  wire \mem_reg_n_0_[7][6] ;
  wire \mem_reg_n_0_[7][7] ;
  wire \mem_reg_n_0_[7][8] ;
  wire \mem_reg_n_0_[8][0] ;
  wire \mem_reg_n_0_[8][1] ;
  wire \mem_reg_n_0_[8][2] ;
  wire \mem_reg_n_0_[8][3] ;
  wire \mem_reg_n_0_[8][4] ;
  wire \mem_reg_n_0_[8][5] ;
  wire \mem_reg_n_0_[8][6] ;
  wire \mem_reg_n_0_[8][7] ;
  wire \mem_reg_n_0_[8][8] ;
  wire \mem_reg_n_0_[9][0] ;
  wire \mem_reg_n_0_[9][1] ;
  wire \mem_reg_n_0_[9][2] ;
  wire \mem_reg_n_0_[9][3] ;
  wire \mem_reg_n_0_[9][4] ;
  wire \mem_reg_n_0_[9][5] ;
  wire \mem_reg_n_0_[9][6] ;
  wire \mem_reg_n_0_[9][7] ;
  wire \mem_reg_n_0_[9][8] ;
  wire [4:0]p_0_in__3;
  wire [4:0]p_0_in__4;
  wire \rd_pointer_reg[0]_0 ;
  wire [4:0]rd_pointer_reg__0;
  wire \rx_cnt_reg[4] ;
  wire soft_reset_2;
  wire [0:0]soft_reset_2_reg;
  wire wr_pointer0;
  wire \wr_pointer_reg[4]_0 ;
  wire [3:0]wr_pointer_reg__0;
  wire [4:4]wr_pointer_reg__0__0;

  LUT2 #(
    .INIT(4'h7)) 
    \count2[4]_i_1 
       (.I0(PRESETn_IBUF),
        .I1(\count2_reg[4] ),
        .O(SR));
  LUT3 #(
    .INIT(8'h54)) 
    \count2[4]_i_3 
       (.I0(\count_reg[0]_0 ),
        .I1(\rx_cnt_reg[4] ),
        .I2(\rd_pointer_reg[0]_0 ),
        .O(\count2_reg[4] ));
  LUT3 #(
    .INIT(8'h47)) 
    \count[0]_i_1__1 
       (.I0(count_reg__0[0]),
        .I1(\count[6]_i_2__1_n_0 ),
        .I2(mem[2]),
        .O(\count[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00010101)) 
    \count[6]_i_1__0 
       (.I0(\rx_cnt_reg[4] ),
        .I1(\rd_pointer_reg[0]_0 ),
        .I2(\count_reg[0]_0 ),
        .I3(\data_out[7]_i_5__1_n_0 ),
        .I4(\count[6]_i_2__1_n_0 ),
        .O(count));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \count[6]_i_2__1 
       (.I0(\count[6]_i_3__1_n_0 ),
        .I1(\count[6]_i_4__1_n_0 ),
        .I2(\count[6]_i_5__1_n_0 ),
        .I3(rd_pointer_reg__0[2]),
        .I4(\count[6]_i_6__1_n_0 ),
        .I5(rd_pointer_reg__0[3]),
        .O(\count[6]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \count[6]_i_3__1 
       (.I0(\mem_reg_n_0_[13][8] ),
        .I1(\mem_reg_n_0_[12][8] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[15][8] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[14][8] ),
        .O(\count[6]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \count[6]_i_4__1 
       (.I0(\mem_reg_n_0_[9][8] ),
        .I1(\mem_reg_n_0_[8][8] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[11][8] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[10][8] ),
        .O(\count[6]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \count[6]_i_5__1 
       (.I0(\mem_reg_n_0_[5][8] ),
        .I1(\mem_reg_n_0_[4][8] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[7][8] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[6][8] ),
        .O(\count[6]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \count[6]_i_6__1 
       (.I0(\mem_reg_n_0_[1][8] ),
        .I1(\mem_reg_n_0_[0][8] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[3][8] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[2][8] ),
        .O(\count[6]_i_6__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count[0]_i_1__1_n_0 ),
        .Q(count_reg__0[0]),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_0 [0]),
        .Q(count_reg__0[1]),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_0 [1]),
        .Q(count_reg__0[2]),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_0 [2]),
        .Q(count_reg__0[3]),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_0 [3]),
        .Q(count_reg__0[4]),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_0 [4]),
        .Q(count_reg__0[5]),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_0 [5]),
        .Q(count_reg__0[6]),
        .R(soft_reset_2_reg));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_4__1 
       (.I0(\mem_reg_n_0_[3][0] ),
        .I1(\mem_reg_n_0_[2][0] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[1][0] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[0][0] ),
        .O(\data_out[0]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_5__1 
       (.I0(\mem_reg_n_0_[7][0] ),
        .I1(\mem_reg_n_0_[6][0] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[5][0] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[4][0] ),
        .O(\data_out[0]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_6__1 
       (.I0(\mem_reg_n_0_[11][0] ),
        .I1(\mem_reg_n_0_[10][0] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[9][0] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[8][0] ),
        .O(\data_out[0]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_7__1 
       (.I0(\mem_reg_n_0_[15][0] ),
        .I1(\mem_reg_n_0_[14][0] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[13][0] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[12][0] ),
        .O(\data_out[0]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_4__1 
       (.I0(\mem_reg_n_0_[3][1] ),
        .I1(\mem_reg_n_0_[2][1] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[1][1] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[0][1] ),
        .O(\data_out[1]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_5__1 
       (.I0(\mem_reg_n_0_[7][1] ),
        .I1(\mem_reg_n_0_[6][1] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[5][1] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[4][1] ),
        .O(\data_out[1]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_6__1 
       (.I0(\mem_reg_n_0_[11][1] ),
        .I1(\mem_reg_n_0_[10][1] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[9][1] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[8][1] ),
        .O(\data_out[1]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_7__1 
       (.I0(\mem_reg_n_0_[15][1] ),
        .I1(\mem_reg_n_0_[14][1] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[13][1] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[12][1] ),
        .O(\data_out[1]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF1DCC1D331D001D)) 
    \data_out[2]_i_1__1 
       (.I0(\data_out[2]_i_2__1_n_0 ),
        .I1(rd_pointer_reg__0[2]),
        .I2(\data_out[2]_i_3__1_n_0 ),
        .I3(rd_pointer_reg__0[3]),
        .I4(\data_out[2]_i_4__1_n_0 ),
        .I5(\data_out[2]_i_5__1_n_0 ),
        .O(mem[2]));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[2]_i_2__1 
       (.I0(\mem_reg_n_0_[1][2] ),
        .I1(\mem_reg_n_0_[0][2] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[3][2] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[2][2] ),
        .O(\data_out[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[2]_i_3__1 
       (.I0(\mem_reg_n_0_[5][2] ),
        .I1(\mem_reg_n_0_[4][2] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[7][2] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[6][2] ),
        .O(\data_out[2]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_4__1 
       (.I0(\mem_reg_n_0_[11][2] ),
        .I1(\mem_reg_n_0_[10][2] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[9][2] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[8][2] ),
        .O(\data_out[2]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_5__1 
       (.I0(\mem_reg_n_0_[15][2] ),
        .I1(\mem_reg_n_0_[14][2] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[13][2] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[12][2] ),
        .O(\data_out[2]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \data_out[3]_i_1__1 
       (.I0(\data_out[3]_i_2__1_n_0 ),
        .I1(\data_out[3]_i_3__1_n_0 ),
        .I2(rd_pointer_reg__0[3]),
        .I3(\data_out[3]_i_4__1_n_0 ),
        .I4(rd_pointer_reg__0[2]),
        .I5(\data_out[3]_i_5__1_n_0 ),
        .O(\data_out[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[3]_i_2__1 
       (.I0(\mem_reg_n_0_[13][3] ),
        .I1(\mem_reg_n_0_[12][3] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[15][3] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[14][3] ),
        .O(\data_out[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[3]_i_3__1 
       (.I0(\mem_reg_n_0_[9][3] ),
        .I1(\mem_reg_n_0_[8][3] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[11][3] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[10][3] ),
        .O(\data_out[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_4__1 
       (.I0(\mem_reg_n_0_[7][3] ),
        .I1(\mem_reg_n_0_[6][3] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[5][3] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[4][3] ),
        .O(\data_out[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_5__1 
       (.I0(\mem_reg_n_0_[3][3] ),
        .I1(\mem_reg_n_0_[2][3] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[1][3] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[0][3] ),
        .O(\data_out[3]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \data_out[4]_i_1__1 
       (.I0(\data_out[4]_i_2__1_n_0 ),
        .I1(\data_out[4]_i_3__1_n_0 ),
        .I2(rd_pointer_reg__0[3]),
        .I3(\data_out[4]_i_4__1_n_0 ),
        .I4(rd_pointer_reg__0[2]),
        .I5(\data_out[4]_i_5__1_n_0 ),
        .O(\data_out[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[4]_i_2__1 
       (.I0(\mem_reg_n_0_[13][4] ),
        .I1(\mem_reg_n_0_[12][4] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[15][4] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[14][4] ),
        .O(\data_out[4]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[4]_i_3__1 
       (.I0(\mem_reg_n_0_[9][4] ),
        .I1(\mem_reg_n_0_[8][4] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[11][4] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[10][4] ),
        .O(\data_out[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_4__1 
       (.I0(\mem_reg_n_0_[7][4] ),
        .I1(\mem_reg_n_0_[6][4] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[5][4] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[4][4] ),
        .O(\data_out[4]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_5__1 
       (.I0(\mem_reg_n_0_[3][4] ),
        .I1(\mem_reg_n_0_[2][4] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[1][4] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[0][4] ),
        .O(\data_out[4]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h001D331DCC1DFF1D)) 
    \data_out[5]_i_1__0 
       (.I0(\data_out[5]_i_2__1_n_0 ),
        .I1(rd_pointer_reg__0[2]),
        .I2(\data_out[5]_i_3__1_n_0 ),
        .I3(rd_pointer_reg__0[3]),
        .I4(\data_out[5]_i_4__1_n_0 ),
        .I5(\data_out[5]_i_5__1_n_0 ),
        .O(mem[5]));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[5]_i_2__1 
       (.I0(\mem_reg_n_0_[1][5] ),
        .I1(\mem_reg_n_0_[0][5] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[3][5] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[2][5] ),
        .O(\data_out[5]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[5]_i_3__1 
       (.I0(\mem_reg_n_0_[5][5] ),
        .I1(\mem_reg_n_0_[4][5] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[7][5] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[6][5] ),
        .O(\data_out[5]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[5]_i_4__1 
       (.I0(\mem_reg_n_0_[9][5] ),
        .I1(\mem_reg_n_0_[8][5] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[11][5] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[10][5] ),
        .O(\data_out[5]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[5]_i_5__1 
       (.I0(\mem_reg_n_0_[13][5] ),
        .I1(\mem_reg_n_0_[12][5] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[15][5] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[14][5] ),
        .O(\data_out[5]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF1D331DCC1D001D)) 
    \data_out[6]_i_1__0 
       (.I0(\data_out[6]_i_2__1_n_0 ),
        .I1(rd_pointer_reg__0[2]),
        .I2(\data_out[6]_i_3__1_n_0 ),
        .I3(rd_pointer_reg__0[3]),
        .I4(\data_out[6]_i_4__1_n_0 ),
        .I5(\data_out[6]_i_5__1_n_0 ),
        .O(mem[6]));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[6]_i_2__1 
       (.I0(\mem_reg_n_0_[1][6] ),
        .I1(\mem_reg_n_0_[0][6] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[3][6] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[2][6] ),
        .O(\data_out[6]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \data_out[6]_i_3__1 
       (.I0(\mem_reg_n_0_[5][6] ),
        .I1(\mem_reg_n_0_[4][6] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[7][6] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[6][6] ),
        .O(\data_out[6]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_4__1 
       (.I0(\mem_reg_n_0_[15][6] ),
        .I1(\mem_reg_n_0_[14][6] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[13][6] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[12][6] ),
        .O(\data_out[6]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_5__1 
       (.I0(\mem_reg_n_0_[11][6] ),
        .I1(\mem_reg_n_0_[10][6] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[9][6] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[8][6] ),
        .O(\data_out[6]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_out[7]_i_10__0 
       (.I0(wr_pointer_reg__0__0),
        .I1(rd_pointer_reg__0[4]),
        .O(\data_out[7]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \data_out[7]_i_11__1 
       (.I0(rd_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[3]),
        .I2(rd_pointer_reg__0[1]),
        .I3(wr_pointer_reg__0[1]),
        .O(\data_out[7]_i_11__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[7]_i_12__0 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[6]),
        .I3(count_reg__0[1]),
        .O(\data_out[7]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBBBBBBBBB)) 
    \data_out[7]_i_1__1 
       (.I0(soft_reset_2),
        .I1(PRESETn_IBUF),
        .I2(\rx_cnt_reg[4] ),
        .I3(\rd_pointer_reg[0]_0 ),
        .I4(\count_reg[0]_0 ),
        .I5(\data_out[7]_i_5__1_n_0 ),
        .O(\data_out[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCFFF000F0)) 
    \data_out[7]_i_3__0 
       (.I0(\data_out[7]_i_6__1_n_0 ),
        .I1(\data_out[7]_i_7__1_n_0 ),
        .I2(\data_out[7]_i_8__1_n_0 ),
        .I3(rd_pointer_reg__0[2]),
        .I4(\data_out[7]_i_9__1_n_0 ),
        .I5(rd_pointer_reg__0[3]),
        .O(mem[7]));
  LUT6 #(
    .INIT(64'h1001000000001001)) 
    \data_out[7]_i_4__1 
       (.I0(\data_out[7]_i_10__0_n_0 ),
        .I1(\data_out[7]_i_11__1_n_0 ),
        .I2(rd_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[0]),
        .I4(rd_pointer_reg__0[2]),
        .I5(wr_pointer_reg__0[2]),
        .O(\count_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \data_out[7]_i_5__1 
       (.I0(count_reg__0[5]),
        .I1(count_reg__0[3]),
        .I2(count_reg__0[4]),
        .I3(\data_out[7]_i_12__0_n_0 ),
        .O(\data_out[7]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_6__1 
       (.I0(\mem_reg_n_0_[15][7] ),
        .I1(\mem_reg_n_0_[14][7] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[13][7] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[12][7] ),
        .O(\data_out[7]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_7__1 
       (.I0(\mem_reg_n_0_[11][7] ),
        .I1(\mem_reg_n_0_[10][7] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[9][7] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[8][7] ),
        .O(\data_out[7]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_8__1 
       (.I0(\mem_reg_n_0_[3][7] ),
        .I1(\mem_reg_n_0_[2][7] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[1][7] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[0][7] ),
        .O(\data_out[7]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_9__1 
       (.I0(\mem_reg_n_0_[7][7] ),
        .I1(\mem_reg_n_0_[6][7] ),
        .I2(rd_pointer_reg__0[1]),
        .I3(\mem_reg_n_0_[5][7] ),
        .I4(rd_pointer_reg__0[0]),
        .I5(\mem_reg_n_0_[4][7] ),
        .O(\data_out[7]_i_9__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(mem[0]),
        .Q(Q[0]),
        .R(\data_out[7]_i_1__1_n_0 ));
  MUXF8 \data_out_reg[0]_i_1__1 
       (.I0(\data_out_reg[0]_i_2__1_n_0 ),
        .I1(\data_out_reg[0]_i_3__1_n_0 ),
        .O(mem[0]),
        .S(rd_pointer_reg__0[3]));
  MUXF7 \data_out_reg[0]_i_2__1 
       (.I0(\data_out[0]_i_4__1_n_0 ),
        .I1(\data_out[0]_i_5__1_n_0 ),
        .O(\data_out_reg[0]_i_2__1_n_0 ),
        .S(rd_pointer_reg__0[2]));
  MUXF7 \data_out_reg[0]_i_3__1 
       (.I0(\data_out[0]_i_6__1_n_0 ),
        .I1(\data_out[0]_i_7__1_n_0 ),
        .O(\data_out_reg[0]_i_3__1_n_0 ),
        .S(rd_pointer_reg__0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(mem[1]),
        .Q(Q[1]),
        .R(\data_out[7]_i_1__1_n_0 ));
  MUXF8 \data_out_reg[1]_i_1__1 
       (.I0(\data_out_reg[1]_i_2__1_n_0 ),
        .I1(\data_out_reg[1]_i_3__1_n_0 ),
        .O(mem[1]),
        .S(rd_pointer_reg__0[3]));
  MUXF7 \data_out_reg[1]_i_2__1 
       (.I0(\data_out[1]_i_4__1_n_0 ),
        .I1(\data_out[1]_i_5__1_n_0 ),
        .O(\data_out_reg[1]_i_2__1_n_0 ),
        .S(rd_pointer_reg__0[2]));
  MUXF7 \data_out_reg[1]_i_3__1 
       (.I0(\data_out[1]_i_6__1_n_0 ),
        .I1(\data_out[1]_i_7__1_n_0 ),
        .O(\data_out_reg[1]_i_3__1_n_0 ),
        .S(rd_pointer_reg__0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(mem[2]),
        .Q(Q[2]),
        .R(\data_out[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(\data_out[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\data_out[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(\data_out[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\data_out[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(mem[5]),
        .Q(Q[5]),
        .R(\data_out[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(mem[6]),
        .Q(Q[6]),
        .R(\data_out[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(mem[7]),
        .Q(Q[7]),
        .R(\data_out[7]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \mem[0][8]_i_1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[0][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[10][8]_i_1 
       (.I0(wr_pointer_reg__0[0]),
        .I1(wr_pointer_reg__0[1]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[10][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \mem[11][8]_i_1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[11][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem[12][8]_i_1 
       (.I0(wr_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[2]),
        .I2(wr_pointer_reg__0[1]),
        .I3(wr_pointer_reg__0[0]),
        .I4(wr_pointer0),
        .O(\mem[12][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem[13][8]_i_1 
       (.I0(wr_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[2]),
        .I2(wr_pointer_reg__0[1]),
        .I3(wr_pointer_reg__0[0]),
        .I4(wr_pointer0),
        .O(\mem[13][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem[14][8]_i_1 
       (.I0(wr_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[2]),
        .I2(wr_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[1]),
        .I4(wr_pointer0),
        .O(\mem[14][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \mem[15][8]_i_2 
       (.I0(wr_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[2]),
        .I2(wr_pointer_reg__0[1]),
        .I3(wr_pointer_reg__0[0]),
        .I4(wr_pointer0),
        .O(\mem[15][8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem[1][8]_i_1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[1][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem[2][8]_i_1 
       (.I0(wr_pointer_reg__0[0]),
        .I1(wr_pointer_reg__0[1]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[2][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[3][8]_i_1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[3][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \mem[4][8]_i_1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[2]),
        .I4(wr_pointer_reg__0[3]),
        .O(\mem[4][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[5][8]_i_1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[2]),
        .I4(wr_pointer_reg__0[3]),
        .O(\mem[5][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[6][8]_i_1 
       (.I0(wr_pointer_reg__0[0]),
        .I1(wr_pointer_reg__0[1]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[2]),
        .I4(wr_pointer_reg__0[3]),
        .O(\mem[6][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \mem[7][8]_i_1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[2]),
        .I4(wr_pointer_reg__0[3]),
        .O(\mem[7][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \mem[8][8]_i_1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[8][8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[9][8]_i_1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer0),
        .I3(wr_pointer_reg__0[3]),
        .I4(wr_pointer_reg__0[2]),
        .O(\mem[9][8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[0][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[0][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[0][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[0][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[0][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[0][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[0][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[0][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[0][8]_i_1_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[0][8] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[10][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[10][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[10][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[10][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[10][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[10][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[10][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[10][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[10][8]_i_1_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[10][8] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[11][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[11][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[11][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[11][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[11][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[11][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[11][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[11][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[11][8]_i_1_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[11][8] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[12][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[12][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[12][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[12][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[12][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[12][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[12][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[12][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[12][8]_i_1_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[12][8] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[13][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[13][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[13][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[13][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[13][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[13][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[13][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[13][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[13][8]_i_1_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[13][8] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[14][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[14][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[14][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[14][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[14][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[14][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[14][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[14][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[14][8]_i_1_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[14][8] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[15][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[15][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[15][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[15][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[15][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[15][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[15][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[15][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[15][8]_i_2_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[15][8] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[1][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[1][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[1][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[1][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[1][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[1][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[1][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[1][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[1][8]_i_1_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[1][8] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[2][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[2][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[2][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[2][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[2][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[2][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[2][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[2][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[2][8]_i_1_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[2][8] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[3][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[3][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[3][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[3][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[3][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[3][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[3][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[3][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[3][8]_i_1_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[3][8] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[4][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[4][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[4][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[4][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[4][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[4][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[4][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[4][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[4][8]_i_1_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[4][8] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[5][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[5][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[5][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[5][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[5][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[5][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[5][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[5][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[5][8]_i_1_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[5][8] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[6][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[6][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[6][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[6][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[6][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[6][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[6][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[6][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[6][8]_i_1_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[6][8] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[7][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[7][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[7][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[7][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[7][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[7][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[7][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[7][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[7][8]_i_1_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[7][8] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[8][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[8][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[8][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[8][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[8][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[8][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[8][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[8][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[8][8]_i_1_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[8][8] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1_n_0 ),
        .D(D[0]),
        .Q(\mem_reg_n_0_[9][0] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\mem_reg_n_0_[9][1] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\mem_reg_n_0_[9][2] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1_n_0 ),
        .D(D[3]),
        .Q(\mem_reg_n_0_[9][3] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1_n_0 ),
        .D(D[4]),
        .Q(\mem_reg_n_0_[9][4] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1_n_0 ),
        .D(D[5]),
        .Q(\mem_reg_n_0_[9][5] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1_n_0 ),
        .D(D[6]),
        .Q(\mem_reg_n_0_[9][6] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1_n_0 ),
        .D(D[7]),
        .Q(\mem_reg_n_0_[9][7] ),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][8] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\mem[9][8]_i_1_n_0 ),
        .D(D[8]),
        .Q(\mem_reg_n_0_[9][8] ),
        .R(soft_reset_2_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out__31_carry__0_i_1
       (.I0(count_reg__0[4]),
        .I1(\count[6]_i_2__1_n_0 ),
        .I2(mem[6]),
        .O(\count_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hC535)) 
    p_0_out__31_carry__0_i_2
       (.I0(mem[7]),
        .I1(count_reg__0[5]),
        .I2(\count[6]_i_2__1_n_0 ),
        .I3(count_reg__0[6]),
        .O(\count_reg[6]_1 [1]));
  LUT5 #(
    .INIT(32'hB88B7447)) 
    p_0_out__31_carry__0_i_3
       (.I0(count_reg__0[4]),
        .I1(\count[6]_i_2__1_n_0 ),
        .I2(mem[6]),
        .I3(mem[7]),
        .I4(count_reg__0[5]),
        .O(\count_reg[6]_1 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out__31_carry_i_1
       (.I0(count_reg__0[0]),
        .I1(\count[6]_i_2__1_n_0 ),
        .I2(mem[2]),
        .O(A__1));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out__31_carry_i_2
       (.I0(count_reg__0[3]),
        .I1(\count[6]_i_2__1_n_0 ),
        .I2(mem[5]),
        .O(DI[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out__31_carry_i_3
       (.I0(count_reg__0[2]),
        .I1(\count[6]_i_2__1_n_0 ),
        .I2(\data_out[4]_i_1__1_n_0 ),
        .O(DI[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_0_out__31_carry_i_4
       (.I0(count_reg__0[1]),
        .I1(\count[6]_i_2__1_n_0 ),
        .I2(\data_out[3]_i_1__1_n_0 ),
        .O(DI[1]));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out__31_carry_i_5
       (.I0(\count[6]_i_2__1_n_0 ),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'hB8748B47)) 
    p_0_out__31_carry_i_6
       (.I0(count_reg__0[4]),
        .I1(\count[6]_i_2__1_n_0 ),
        .I2(mem[6]),
        .I3(count_reg__0[3]),
        .I4(mem[5]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'hB8748B47)) 
    p_0_out__31_carry_i_7
       (.I0(count_reg__0[3]),
        .I1(\count[6]_i_2__1_n_0 ),
        .I2(mem[5]),
        .I3(count_reg__0[2]),
        .I4(\data_out[4]_i_1__1_n_0 ),
        .O(S[2]));
  LUT5 #(
    .INIT(32'hB8748B47)) 
    p_0_out__31_carry_i_8
       (.I0(count_reg__0[2]),
        .I1(\count[6]_i_2__1_n_0 ),
        .I2(\data_out[4]_i_1__1_n_0 ),
        .I3(count_reg__0[1]),
        .I4(\data_out[3]_i_1__1_n_0 ),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h74)) 
    p_0_out__31_carry_i_9
       (.I0(count_reg__0[1]),
        .I1(\count[6]_i_2__1_n_0 ),
        .I2(\data_out[3]_i_1__1_n_0 ),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_pointer[0]_i_1__1 
       (.I0(rd_pointer_reg__0[0]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_pointer[1]_i_1__1 
       (.I0(rd_pointer_reg__0[0]),
        .I1(rd_pointer_reg__0[1]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_pointer[2]_i_1__1 
       (.I0(rd_pointer_reg__0[2]),
        .I1(rd_pointer_reg__0[1]),
        .I2(rd_pointer_reg__0[0]),
        .O(p_0_in__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_pointer[3]_i_1__1 
       (.I0(rd_pointer_reg__0[3]),
        .I1(rd_pointer_reg__0[2]),
        .I2(rd_pointer_reg__0[0]),
        .I3(rd_pointer_reg__0[1]),
        .O(p_0_in__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rd_pointer[4]_i_1__1 
       (.I0(rd_pointer_reg__0[4]),
        .I1(rd_pointer_reg__0[3]),
        .I2(rd_pointer_reg__0[1]),
        .I3(rd_pointer_reg__0[0]),
        .I4(rd_pointer_reg__0[2]),
        .O(p_0_in__4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__4[0]),
        .Q(rd_pointer_reg__0[0]),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__4[1]),
        .Q(rd_pointer_reg__0[1]),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__4[2]),
        .Q(rd_pointer_reg__0[2]),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__4[3]),
        .Q(rd_pointer_reg__0[3]),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_pointer_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__4[4]),
        .Q(rd_pointer_reg__0[4]),
        .R(soft_reset_2_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_pointer[0]_i_1__1 
       (.I0(wr_pointer_reg__0[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_pointer[1]_i_1__1 
       (.I0(wr_pointer_reg__0[1]),
        .I1(wr_pointer_reg__0[0]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_pointer[2]_i_1__1 
       (.I0(wr_pointer_reg__0[2]),
        .I1(wr_pointer_reg__0[0]),
        .I2(wr_pointer_reg__0[1]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_pointer[3]_i_1__1 
       (.I0(wr_pointer_reg__0[3]),
        .I1(wr_pointer_reg__0[1]),
        .I2(wr_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[2]),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wr_pointer[4]_i_2__1 
       (.I0(wr_pointer_reg__0__0),
        .I1(wr_pointer_reg__0[2]),
        .I2(wr_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[1]),
        .I4(wr_pointer_reg__0[3]),
        .O(p_0_in__3[4]));
  LUT6 #(
    .INIT(64'h2002000000002002)) 
    \wr_pointer[4]_i_3__1 
       (.I0(\data_out[7]_i_10__0_n_0 ),
        .I1(\data_out[7]_i_11__1_n_0 ),
        .I2(rd_pointer_reg__0[0]),
        .I3(wr_pointer_reg__0[0]),
        .I4(rd_pointer_reg__0[2]),
        .I5(wr_pointer_reg__0[2]),
        .O(\wr_pointer_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(wr_pointer0),
        .D(p_0_in__3[0]),
        .Q(wr_pointer_reg__0[0]),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(wr_pointer0),
        .D(p_0_in__3[1]),
        .Q(wr_pointer_reg__0[1]),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(wr_pointer0),
        .D(p_0_in__3[2]),
        .Q(wr_pointer_reg__0[2]),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(wr_pointer0),
        .D(p_0_in__3[3]),
        .Q(wr_pointer_reg__0[3]),
        .R(soft_reset_2_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_pointer_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(wr_pointer0),
        .D(p_0_in__3[4]),
        .Q(wr_pointer_reg__0__0),
        .R(soft_reset_2_reg));
endmodule

module router_fsm
   (out,
    \PRDATA[2] ,
    tx_idx,
    low_packet_valid_reg,
    E,
    \dout_reg[7] ,
    \header_reg[7] ,
    \int_reg_reg[7] ,
    \int_parity_reg[0] ,
    wr_pointer0,
    wr_pointer0_0,
    wr_pointer0_1,
    parity_done_reg,
    SR,
    \int_parity_reg[7] ,
    tx_run_reg,
    \tx_idx_reg[1]_rep__1 ,
    \tx_cnt_reg[7] ,
    \tx_cnt_reg[3] ,
    lfd_state,
    laf_state,
    PSEL,
    \PADDR[3] ,
    tx_cnt,
    \PADDR[3]_0 ,
    Q,
    PADDR_IBUF,
    PRDATA1,
    \rx_cnt_reg[1] ,
    \tx_cnt_reg[5] ,
    PSEL_0,
    tx_run_reg_0,
    \tx_idx_reg[6] ,
    low_packet_valid,
    pkt_valid_w,
    PRESETn_IBUF,
    fifo_full,
    \rd_pointer_reg[0] ,
    addr_t,
    \rd_pointer_reg[0]_0 ,
    \rd_pointer_reg[0]_1 ,
    parity_done,
    low_packet_valid_reg_0,
    txb,
    NS1,
    \FSM_sequential_PS_reg[0]_0 ,
    \rd_pointer_reg[0]_2 ,
    \tx_cnt_reg[0] ,
    tx_run_reg_1,
    low_packet_valid_reg_1,
    soft_reset_1_reg,
    parity_done_reg_0,
    PCLK_IBUF_BUFG);
  output [2:0]out;
  output \PRDATA[2] ;
  output tx_idx;
  output low_packet_valid_reg;
  output [0:0]E;
  output \dout_reg[7] ;
  output [0:0]\header_reg[7] ;
  output [0:0]\int_reg_reg[7] ;
  output \int_parity_reg[0] ;
  output wr_pointer0;
  output wr_pointer0_0;
  output wr_pointer0_1;
  output parity_done_reg;
  output [0:0]SR;
  output [0:0]\int_parity_reg[7] ;
  output tx_run_reg;
  output \tx_idx_reg[1]_rep__1 ;
  output \tx_cnt_reg[7] ;
  output \tx_cnt_reg[3] ;
  output lfd_state;
  output laf_state;
  input PSEL;
  input \PADDR[3] ;
  input [1:0]tx_cnt;
  input \PADDR[3]_0 ;
  input [0:0]Q;
  input [2:0]PADDR_IBUF;
  input [0:0]PRDATA1;
  input \rx_cnt_reg[1] ;
  input \tx_cnt_reg[5] ;
  input PSEL_0;
  input tx_run_reg_0;
  input \tx_idx_reg[6] ;
  input low_packet_valid;
  input pkt_valid_w;
  input PRESETn_IBUF;
  input fifo_full;
  input \rd_pointer_reg[0] ;
  input [1:0]addr_t;
  input \rd_pointer_reg[0]_0 ;
  input \rd_pointer_reg[0]_1 ;
  input parity_done;
  input [0:0]low_packet_valid_reg_0;
  input [1:0]txb;
  input NS1;
  input \FSM_sequential_PS_reg[0]_0 ;
  input \rd_pointer_reg[0]_2 ;
  input \tx_cnt_reg[0] ;
  input tx_run_reg_1;
  input low_packet_valid_reg_1;
  input soft_reset_1_reg;
  input parity_done_reg_0;
  input PCLK_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]E;
  wire \FSM_sequential_PS[0]_i_1_n_0 ;
  wire \FSM_sequential_PS[0]_i_2_n_0 ;
  wire \FSM_sequential_PS[1]_i_1_n_0 ;
  wire \FSM_sequential_PS[1]_i_2_n_0 ;
  wire \FSM_sequential_PS[2]_i_1_n_0 ;
  wire \FSM_sequential_PS_reg[0]_0 ;
  wire NS1;
  wire \PADDR[3] ;
  wire \PADDR[3]_0 ;
  wire [2:0]PADDR_IBUF;
  wire PCLK_IBUF_BUFG;
  wire [0:0]PRDATA1;
  wire \PRDATA[2] ;
  wire \PRDATA_OBUF[2]_inst_i_3_n_0 ;
  wire \PRDATA_OBUF[2]_inst_i_4_n_0 ;
  wire PRESETn_IBUF;
  wire PSEL;
  wire PSEL_0;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [1:0]addr_t;
  wire \dout_reg[7] ;
  wire fifo_full;
  wire [0:0]\header_reg[7] ;
  wire \int_parity_reg[0] ;
  wire [0:0]\int_parity_reg[7] ;
  wire [0:0]\int_reg_reg[7] ;
  wire laf_state;
  wire lfd_state;
  wire low_packet_valid;
  wire low_packet_valid_reg;
  wire [0:0]low_packet_valid_reg_0;
  wire low_packet_valid_reg_1;
  (* RTL_KEEP = "yes" *) wire [2:0]out;
  wire parity_done;
  wire parity_done_reg;
  wire parity_done_reg_0;
  wire pkt_valid_w;
  wire \rd_pointer_reg[0] ;
  wire \rd_pointer_reg[0]_0 ;
  wire \rd_pointer_reg[0]_1 ;
  wire \rd_pointer_reg[0]_2 ;
  wire \rx_cnt_reg[1] ;
  wire soft_reset_1_reg;
  wire [1:0]tx_cnt;
  wire \tx_cnt[7]_i_4_n_0 ;
  wire \tx_cnt_reg[0] ;
  wire \tx_cnt_reg[3] ;
  wire \tx_cnt_reg[5] ;
  wire \tx_cnt_reg[7] ;
  wire tx_idx;
  wire \tx_idx[6]_i_4_n_0 ;
  wire \tx_idx_reg[1]_rep__1 ;
  wire \tx_idx_reg[6] ;
  wire tx_run_reg;
  wire tx_run_reg_0;
  wire tx_run_reg_1;
  wire [1:0]txb;
  wire wr_pointer0;
  wire wr_pointer0_0;
  wire wr_pointer0_1;

  LUT4 #(
    .INIT(16'h00E2)) 
    \FSM_sequential_PS[0]_i_1 
       (.I0(\FSM_sequential_PS[0]_i_2_n_0 ),
        .I1(out[1]),
        .I2(parity_done_reg_0),
        .I3(soft_reset_1_reg),
        .O(\FSM_sequential_PS[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1F1C)) 
    \FSM_sequential_PS[0]_i_2 
       (.I0(fifo_full),
        .I1(out[0]),
        .I2(out[2]),
        .I3(NS1),
        .O(\FSM_sequential_PS[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_PS[1]_i_1 
       (.I0(\FSM_sequential_PS[1]_i_2_n_0 ),
        .I1(soft_reset_1_reg),
        .O(\FSM_sequential_PS[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFCFCFC5C5CFC0)) 
    \FSM_sequential_PS[1]_i_2 
       (.I0(fifo_full),
        .I1(\FSM_sequential_PS_reg[0]_0 ),
        .I2(out[1]),
        .I3(\rd_pointer_reg[0]_2 ),
        .I4(out[2]),
        .I5(out[0]),
        .O(\FSM_sequential_PS[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \FSM_sequential_PS[2]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(low_packet_valid_reg_1),
        .I3(soft_reset_1_reg),
        .O(\FSM_sequential_PS[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "DECODE_ADDRESS:000,LOAD_FIRST_DATA:001,LOAD_DATA:011,WAIT_TILL_EMPTY:010,CHECK_PARITY_ERROR:110,LOAD_PARITY:101,FIFO_FULL_STATE:100,LOAD_AFTER_FULL:111" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_PS_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_PS[0]_i_1_n_0 ),
        .Q(out[0]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "DECODE_ADDRESS:000,LOAD_FIRST_DATA:001,LOAD_DATA:011,WAIT_TILL_EMPTY:010,CHECK_PARITY_ERROR:110,LOAD_PARITY:101,FIFO_FULL_STATE:100,LOAD_AFTER_FULL:111" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_PS_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_PS[1]_i_1_n_0 ),
        .Q(out[1]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "DECODE_ADDRESS:000,LOAD_FIRST_DATA:001,LOAD_DATA:011,WAIT_TILL_EMPTY:010,CHECK_PARITY_ERROR:110,LOAD_PARITY:101,FIFO_FULL_STATE:100,LOAD_AFTER_FULL:111" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_PS_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_PS[2]_i_1_n_0 ),
        .Q(out[2]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \PRDATA_OBUF[2]_inst_i_2 
       (.I0(PSEL),
        .I1(\PADDR[3] ),
        .I2(tx_cnt[0]),
        .I3(\PADDR[3]_0 ),
        .I4(Q),
        .I5(\PRDATA_OBUF[2]_inst_i_3_n_0 ),
        .O(\PRDATA[2] ));
  LUT6 #(
    .INIT(64'hFFFBFFFBFF3BFFFB)) 
    \PRDATA_OBUF[2]_inst_i_3 
       (.I0(\PRDATA_OBUF[2]_inst_i_4_n_0 ),
        .I1(PADDR_IBUF[1]),
        .I2(PADDR_IBUF[0]),
        .I3(PADDR_IBUF[2]),
        .I4(PRDATA1),
        .I5(\rx_cnt_reg[1] ),
        .O(\PRDATA_OBUF[2]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \PRDATA_OBUF[2]_inst_i_4 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .O(\PRDATA_OBUF[2]_inst_i_4_n_0 ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h0000FF84)) 
    \dout[7]_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\dout_reg[7] ),
        .I4(\header_reg[7] ),
        .O(E));
  LUT4 #(
    .INIT(16'h0008)) 
    \dout[7]_i_3 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(fifo_full),
        .O(\dout_reg[7] ));
  LUT3 #(
    .INIT(8'h80)) 
    \ext_parity[7]_i_2 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .O(laf_state));
  LUT6 #(
    .INIT(64'h0000000000000070)) 
    \header[7]_i_1 
       (.I0(txb[0]),
        .I1(txb[1]),
        .I2(pkt_valid_w),
        .I3(out[0]),
        .I4(out[2]),
        .I5(out[1]),
        .O(\header_reg[7] ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \int_parity[7]_i_1 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(PRESETn_IBUF),
        .O(SR));
  LUT3 #(
    .INIT(8'h20)) 
    \int_parity[7]_i_2 
       (.I0(pkt_valid_w),
        .I1(out[2]),
        .I2(out[0]),
        .O(\int_parity_reg[7] ));
  LUT4 #(
    .INIT(16'h0400)) 
    \int_parity[7]_i_4 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(pkt_valid_w),
        .O(\int_parity_reg[0] ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \int_reg[7]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(fifo_full),
        .I4(\header_reg[7] ),
        .O(\int_reg_reg[7] ));
  LUT3 #(
    .INIT(8'h04)) 
    lfd_state_t_i_1
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .O(lfd_state));
  LUT6 #(
    .INIT(64'hA000B0A0A0A0A0A0)) 
    low_packet_valid_i_1
       (.I0(low_packet_valid),
        .I1(pkt_valid_w),
        .I2(PRESETn_IBUF),
        .I3(out[0]),
        .I4(out[2]),
        .I5(out[1]),
        .O(low_packet_valid_reg));
  LUT6 #(
    .INIT(64'hE0E0E0E0E0E0E000)) 
    parity_done_i_1
       (.I0(parity_done),
        .I1(low_packet_valid_reg_0),
        .I2(PRESETn_IBUF),
        .I3(out[0]),
        .I4(out[2]),
        .I5(out[1]),
        .O(parity_done_reg));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \tx_cnt[3]_i_1 
       (.I0(\tx_cnt_reg[0] ),
        .I1(tx_cnt[0]),
        .I2(tx_run_reg_1),
        .I3(\tx_cnt[7]_i_4_n_0 ),
        .I4(PRESETn_IBUF),
        .I5(tx_cnt[1]),
        .O(\tx_cnt_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \tx_cnt[7]_i_1 
       (.I0(PRESETn_IBUF),
        .I1(\tx_cnt[7]_i_4_n_0 ),
        .O(\tx_cnt_reg[7] ));
  LUT5 #(
    .INIT(32'h08020000)) 
    \tx_cnt[7]_i_4 
       (.I0(\tx_idx_reg[6] ),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[0]),
        .I4(tx_run_reg_0),
        .O(\tx_cnt[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tx_idx[6]_i_1 
       (.I0(\tx_idx[6]_i_4_n_0 ),
        .I1(PRESETn_IBUF),
        .O(\tx_idx_reg[1]_rep__1 ));
  LUT4 #(
    .INIT(16'h0802)) 
    \tx_idx[6]_i_2 
       (.I0(tx_run_reg_0),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(tx_idx));
  LUT6 #(
    .INIT(64'h0000080000000008)) 
    \tx_idx[6]_i_4 
       (.I0(\tx_cnt_reg[5] ),
        .I1(PSEL_0),
        .I2(tx_run_reg_0),
        .I3(out[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\tx_idx[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDEFFFFFF0000)) 
    tx_run_i_1
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(\tx_cnt[7]_i_4_n_0 ),
        .I4(\tx_idx[6]_i_4_n_0 ),
        .I5(tx_run_reg_0),
        .O(tx_run_reg));
  LUT6 #(
    .INIT(64'h0400040004000000)) 
    \wr_pointer[4]_i_1 
       (.I0(\rd_pointer_reg[0] ),
        .I1(addr_t[1]),
        .I2(addr_t[0]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(out[1]),
        .O(wr_pointer0));
  LUT6 #(
    .INIT(64'h0400040004000000)) 
    \wr_pointer[4]_i_1__0 
       (.I0(\rd_pointer_reg[0]_0 ),
        .I1(addr_t[0]),
        .I2(addr_t[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(out[1]),
        .O(wr_pointer0_0));
  LUT6 #(
    .INIT(64'h0100010001000000)) 
    \wr_pointer[4]_i_1__1 
       (.I0(\rd_pointer_reg[0]_1 ),
        .I1(addr_t[0]),
        .I2(addr_t[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(out[1]),
        .O(wr_pointer0_1));
endmodule

module router_reg
   (parity_done,
    low_packet_valid,
    \int_reg_reg[1]_0 ,
    E,
    pkt_valid_w,
    \ext_parity_reg[7]_0 ,
    \ext_parity_reg[7]_1 ,
    \ext_parity_reg[7]_2 ,
    \FSM_sequential_PS_reg[1] ,
    err_seen_reg,
    \FSM_sequential_PS_reg[2] ,
    Q,
    parity_done_reg_0,
    PCLK_IBUF_BUFG,
    low_packet_valid_reg_0,
    \FSM_sequential_PS_reg[1]_0 ,
    lfd_state,
    \FSM_sequential_PS_reg[1]_1 ,
    laf_state,
    tx_run_reg,
    \tx_idx_reg[6] ,
    \txb_reg[0][7] ,
    \txb_reg[19][7] ,
    \txb_reg[18][7] ,
    \tx_idx_reg[1]_rep ,
    \txb_reg[17][7] ,
    \txb_reg[16][7] ,
    \txb_reg[23][7] ,
    \txb_reg[22][7] ,
    \txb_reg[21][7] ,
    \txb_reg[20][7] ,
    \txb_reg[31][7] ,
    \txb_reg[30][7] ,
    \txb_reg[29][7] ,
    \txb_reg[28][7] ,
    \txb_reg[27][7] ,
    \txb_reg[26][7] ,
    \txb_reg[25][7] ,
    \txb_reg[24][7] ,
    \txb_reg[7][7] ,
    \txb_reg[6][7] ,
    \txb_reg[5][7] ,
    \txb_reg[4][7] ,
    \txb_reg[3][7] ,
    \txb_reg[2][7] ,
    \txb_reg[1][7] ,
    \txb_reg[11][7] ,
    \txb_reg[10][7] ,
    \txb_reg[9][7] ,
    \txb_reg[8][7] ,
    \txb_reg[15][7] ,
    \txb_reg[14][7] ,
    \txb_reg[13][7] ,
    \txb_reg[12][7] ,
    \txb_reg[55][7] ,
    \txb_reg[54][7] ,
    \txb_reg[53][7] ,
    \txb_reg[52][7] ,
    \txb_reg[51][7] ,
    \txb_reg[50][7] ,
    \txb_reg[49][7] ,
    \txb_reg[48][7] ,
    \txb_reg[59][7] ,
    \txb_reg[58][7] ,
    \txb_reg[57][7] ,
    \txb_reg[56][7] ,
    \txb_reg[63][7] ,
    \txb_reg[62][7] ,
    \txb_reg[61][7] ,
    \txb_reg[60][7] ,
    \txb_reg[39][7] ,
    \txb_reg[38][7] ,
    \txb_reg[37][7] ,
    \txb_reg[36][7] ,
    \txb_reg[35][7] ,
    \txb_reg[34][7] ,
    \txb_reg[33][7] ,
    \txb_reg[32][7] ,
    \txb_reg[43][7] ,
    \txb_reg[42][7] ,
    \txb_reg[41][7] ,
    \txb_reg[40][7] ,
    \txb_reg[47][7] ,
    \txb_reg[46][7] ,
    \txb_reg[45][7] ,
    \txb_reg[44][7] ,
    \txb_reg[87][7] ,
    \txb_reg[86][7] ,
    \txb_reg[85][7] ,
    \txb_reg[84][7] ,
    \txb_reg[83][7] ,
    \txb_reg[82][7] ,
    \txb_reg[81][7] ,
    \txb_reg[80][7] ,
    \txb_reg[91][7] ,
    \txb_reg[90][7] ,
    \txb_reg[89][7] ,
    \txb_reg[88][7] ,
    \txb_reg[95][7] ,
    \txb_reg[94][7] ,
    \txb_reg[93][7] ,
    \txb_reg[92][7] ,
    \txb_reg[71][7] ,
    \txb_reg[70][7] ,
    \txb_reg[69][7] ,
    \txb_reg[68][7] ,
    \txb_reg[67][7] ,
    \txb_reg[66][7] ,
    \txb_reg[65][7] ,
    \txb_reg[64][7] ,
    \txb_reg[79][7] ,
    \txb_reg[78][7] ,
    \txb_reg[77][7] ,
    \txb_reg[76][7] ,
    \txb_reg[75][7] ,
    \txb_reg[74][7] ,
    \txb_reg[73][7] ,
    \txb_reg[72][7] ,
    \txb_reg[119][7] ,
    \txb_reg[118][7] ,
    \txb_reg[117][7] ,
    \txb_reg[116][7] ,
    \txb_reg[115][7] ,
    \txb_reg[114][7] ,
    \txb_reg[113][7] ,
    \txb_reg[112][7] ,
    \txb_reg[127][7] ,
    \txb_reg[126][7] ,
    \txb_reg[125][7] ,
    \txb_reg[124][7] ,
    \txb_reg[123][7] ,
    \txb_reg[122][7] ,
    \txb_reg[121][7] ,
    \txb_reg[120][7] ,
    \txb_reg[103][7] ,
    \txb_reg[102][7] ,
    \txb_reg[101][7] ,
    \txb_reg[100][7] ,
    \txb_reg[99][7] ,
    \txb_reg[98][7] ,
    \txb_reg[97][7] ,
    \txb_reg[96][7] ,
    \txb_reg[111][7] ,
    \txb_reg[110][7] ,
    \txb_reg[109][7] ,
    \txb_reg[108][7] ,
    \txb_reg[107][7] ,
    \txb_reg[106][7] ,
    \txb_reg[105][7] ,
    \txb_reg[104][7] ,
    PRESETn_IBUF,
    \tx_idx_reg[1]_rep__1 ,
    \tx_idx_reg[1]_rep__0 ,
    \PADDR[2] ,
    PADDR_IBUF,
    PWDATA_IBUF,
    PSEL,
    err_seen,
    out,
    fifo_full,
    SR,
    \FSM_sequential_PS_reg[1]_2 ,
    \FSM_sequential_PS_reg[0] ,
    \FSM_sequential_PS_reg[2]_0 ,
    \FSM_sequential_PS_reg[1]_3 ,
    \FSM_sequential_PS_reg[2]_1 );
  output parity_done;
  output low_packet_valid;
  output [1:0]\int_reg_reg[1]_0 ;
  output [0:0]E;
  output pkt_valid_w;
  output \ext_parity_reg[7]_0 ;
  output \ext_parity_reg[7]_1 ;
  output \ext_parity_reg[7]_2 ;
  output \FSM_sequential_PS_reg[1] ;
  output err_seen_reg;
  output \FSM_sequential_PS_reg[2] ;
  output [7:0]Q;
  input parity_done_reg_0;
  input PCLK_IBUF_BUFG;
  input low_packet_valid_reg_0;
  input \FSM_sequential_PS_reg[1]_0 ;
  input lfd_state;
  input \FSM_sequential_PS_reg[1]_1 ;
  input laf_state;
  input tx_run_reg;
  input [6:0]\tx_idx_reg[6] ;
  input [7:0]\txb_reg[0][7] ;
  input [7:0]\txb_reg[19][7] ;
  input [7:0]\txb_reg[18][7] ;
  input \tx_idx_reg[1]_rep ;
  input [7:0]\txb_reg[17][7] ;
  input [7:0]\txb_reg[16][7] ;
  input [7:0]\txb_reg[23][7] ;
  input [7:0]\txb_reg[22][7] ;
  input [7:0]\txb_reg[21][7] ;
  input [7:0]\txb_reg[20][7] ;
  input [7:0]\txb_reg[31][7] ;
  input [7:0]\txb_reg[30][7] ;
  input [7:0]\txb_reg[29][7] ;
  input [7:0]\txb_reg[28][7] ;
  input [7:0]\txb_reg[27][7] ;
  input [7:0]\txb_reg[26][7] ;
  input [7:0]\txb_reg[25][7] ;
  input [7:0]\txb_reg[24][7] ;
  input [7:0]\txb_reg[7][7] ;
  input [7:0]\txb_reg[6][7] ;
  input [7:0]\txb_reg[5][7] ;
  input [7:0]\txb_reg[4][7] ;
  input [7:0]\txb_reg[3][7] ;
  input [7:0]\txb_reg[2][7] ;
  input [7:0]\txb_reg[1][7] ;
  input [7:0]\txb_reg[11][7] ;
  input [7:0]\txb_reg[10][7] ;
  input [7:0]\txb_reg[9][7] ;
  input [7:0]\txb_reg[8][7] ;
  input [7:0]\txb_reg[15][7] ;
  input [7:0]\txb_reg[14][7] ;
  input [7:0]\txb_reg[13][7] ;
  input [7:0]\txb_reg[12][7] ;
  input [7:0]\txb_reg[55][7] ;
  input [7:0]\txb_reg[54][7] ;
  input [7:0]\txb_reg[53][7] ;
  input [7:0]\txb_reg[52][7] ;
  input [7:0]\txb_reg[51][7] ;
  input [7:0]\txb_reg[50][7] ;
  input [7:0]\txb_reg[49][7] ;
  input [7:0]\txb_reg[48][7] ;
  input [7:0]\txb_reg[59][7] ;
  input [7:0]\txb_reg[58][7] ;
  input [7:0]\txb_reg[57][7] ;
  input [7:0]\txb_reg[56][7] ;
  input [7:0]\txb_reg[63][7] ;
  input [7:0]\txb_reg[62][7] ;
  input [7:0]\txb_reg[61][7] ;
  input [7:0]\txb_reg[60][7] ;
  input [7:0]\txb_reg[39][7] ;
  input [7:0]\txb_reg[38][7] ;
  input [7:0]\txb_reg[37][7] ;
  input [7:0]\txb_reg[36][7] ;
  input [7:0]\txb_reg[35][7] ;
  input [7:0]\txb_reg[34][7] ;
  input [7:0]\txb_reg[33][7] ;
  input [7:0]\txb_reg[32][7] ;
  input [7:0]\txb_reg[43][7] ;
  input [7:0]\txb_reg[42][7] ;
  input [7:0]\txb_reg[41][7] ;
  input [7:0]\txb_reg[40][7] ;
  input [7:0]\txb_reg[47][7] ;
  input [7:0]\txb_reg[46][7] ;
  input [7:0]\txb_reg[45][7] ;
  input [7:0]\txb_reg[44][7] ;
  input [7:0]\txb_reg[87][7] ;
  input [7:0]\txb_reg[86][7] ;
  input [7:0]\txb_reg[85][7] ;
  input [7:0]\txb_reg[84][7] ;
  input [7:0]\txb_reg[83][7] ;
  input [7:0]\txb_reg[82][7] ;
  input [7:0]\txb_reg[81][7] ;
  input [7:0]\txb_reg[80][7] ;
  input [7:0]\txb_reg[91][7] ;
  input [7:0]\txb_reg[90][7] ;
  input [7:0]\txb_reg[89][7] ;
  input [7:0]\txb_reg[88][7] ;
  input [7:0]\txb_reg[95][7] ;
  input [7:0]\txb_reg[94][7] ;
  input [7:0]\txb_reg[93][7] ;
  input [7:0]\txb_reg[92][7] ;
  input [7:0]\txb_reg[71][7] ;
  input [7:0]\txb_reg[70][7] ;
  input [7:0]\txb_reg[69][7] ;
  input [7:0]\txb_reg[68][7] ;
  input [7:0]\txb_reg[67][7] ;
  input [7:0]\txb_reg[66][7] ;
  input [7:0]\txb_reg[65][7] ;
  input [7:0]\txb_reg[64][7] ;
  input [7:0]\txb_reg[79][7] ;
  input [7:0]\txb_reg[78][7] ;
  input [7:0]\txb_reg[77][7] ;
  input [7:0]\txb_reg[76][7] ;
  input [7:0]\txb_reg[75][7] ;
  input [7:0]\txb_reg[74][7] ;
  input [7:0]\txb_reg[73][7] ;
  input [7:0]\txb_reg[72][7] ;
  input [7:0]\txb_reg[119][7] ;
  input [7:0]\txb_reg[118][7] ;
  input [7:0]\txb_reg[117][7] ;
  input [7:0]\txb_reg[116][7] ;
  input [7:0]\txb_reg[115][7] ;
  input [7:0]\txb_reg[114][7] ;
  input [7:0]\txb_reg[113][7] ;
  input [7:0]\txb_reg[112][7] ;
  input [7:0]\txb_reg[127][7] ;
  input [7:0]\txb_reg[126][7] ;
  input [7:0]\txb_reg[125][7] ;
  input [7:0]\txb_reg[124][7] ;
  input [7:0]\txb_reg[123][7] ;
  input [7:0]\txb_reg[122][7] ;
  input [7:0]\txb_reg[121][7] ;
  input [7:0]\txb_reg[120][7] ;
  input [7:0]\txb_reg[103][7] ;
  input [7:0]\txb_reg[102][7] ;
  input [7:0]\txb_reg[101][7] ;
  input [7:0]\txb_reg[100][7] ;
  input [7:0]\txb_reg[99][7] ;
  input [7:0]\txb_reg[98][7] ;
  input [7:0]\txb_reg[97][7] ;
  input [7:0]\txb_reg[96][7] ;
  input [7:0]\txb_reg[111][7] ;
  input [7:0]\txb_reg[110][7] ;
  input [7:0]\txb_reg[109][7] ;
  input [7:0]\txb_reg[108][7] ;
  input [7:0]\txb_reg[107][7] ;
  input [7:0]\txb_reg[106][7] ;
  input [7:0]\txb_reg[105][7] ;
  input [7:0]\txb_reg[104][7] ;
  input PRESETn_IBUF;
  input \tx_idx_reg[1]_rep__1 ;
  input \tx_idx_reg[1]_rep__0 ;
  input \PADDR[2] ;
  input [0:0]PADDR_IBUF;
  input [0:0]PWDATA_IBUF;
  input PSEL;
  input err_seen;
  input [1:0]out;
  input fifo_full;
  input [0:0]SR;
  input [0:0]\FSM_sequential_PS_reg[1]_2 ;
  input [0:0]\FSM_sequential_PS_reg[0] ;
  input [0:0]\FSM_sequential_PS_reg[2]_0 ;
  input [0:0]\FSM_sequential_PS_reg[1]_3 ;
  input [0:0]\FSM_sequential_PS_reg[2]_1 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_PS_reg[0] ;
  wire \FSM_sequential_PS_reg[1] ;
  wire \FSM_sequential_PS_reg[1]_0 ;
  wire \FSM_sequential_PS_reg[1]_1 ;
  wire [0:0]\FSM_sequential_PS_reg[1]_2 ;
  wire [0:0]\FSM_sequential_PS_reg[1]_3 ;
  wire \FSM_sequential_PS_reg[2] ;
  wire [0:0]\FSM_sequential_PS_reg[2]_0 ;
  wire [0:0]\FSM_sequential_PS_reg[2]_1 ;
  wire \PADDR[2] ;
  wire [0:0]PADDR_IBUF;
  wire PCLK_IBUF_BUFG;
  wire PRESETn_IBUF;
  wire PSEL;
  wire [0:0]PWDATA_IBUF;
  wire [7:0]Q;
  wire [0:0]SR;
  wire \dout[0]_i_1_n_0 ;
  wire \dout[1]_i_1_n_0 ;
  wire \dout[2]_i_1_n_0 ;
  wire \dout[3]_i_1_n_0 ;
  wire \dout[4]_i_1_n_0 ;
  wire \dout[5]_i_1_n_0 ;
  wire \dout[6]_i_1_n_0 ;
  wire \dout[7]_i_2_n_0 ;
  wire err;
  wire err_i_1_n_0;
  wire err_i_2_n_0;
  wire err_i_3_n_0;
  wire err_i_4_n_0;
  wire err_seen;
  wire err_seen_reg;
  wire [7:0]ext_parity;
  wire \ext_parity_reg[7]_0 ;
  wire \ext_parity_reg[7]_1 ;
  wire \ext_parity_reg[7]_2 ;
  wire fifo_full;
  wire [7:0]header;
  wire \header[7]_i_3_n_0 ;
  wire \header[7]_i_5_n_0 ;
  wire \header[7]_i_7_n_0 ;
  wire \header[7]_i_8_n_0 ;
  wire [7:0]int_parity;
  wire [7:0]int_reg;
  wire \int_reg[0]_i_28_n_0 ;
  wire \int_reg[0]_i_29_n_0 ;
  wire \int_reg[0]_i_2_n_0 ;
  wire \int_reg[0]_i_30_n_0 ;
  wire \int_reg[0]_i_31_n_0 ;
  wire \int_reg[0]_i_32_n_0 ;
  wire \int_reg[0]_i_33_n_0 ;
  wire \int_reg[0]_i_34_n_0 ;
  wire \int_reg[0]_i_35_n_0 ;
  wire \int_reg[0]_i_36_n_0 ;
  wire \int_reg[0]_i_37_n_0 ;
  wire \int_reg[0]_i_38_n_0 ;
  wire \int_reg[0]_i_39_n_0 ;
  wire \int_reg[0]_i_3_n_0 ;
  wire \int_reg[0]_i_40_n_0 ;
  wire \int_reg[0]_i_41_n_0 ;
  wire \int_reg[0]_i_42_n_0 ;
  wire \int_reg[0]_i_43_n_0 ;
  wire \int_reg[0]_i_44_n_0 ;
  wire \int_reg[0]_i_45_n_0 ;
  wire \int_reg[0]_i_46_n_0 ;
  wire \int_reg[0]_i_47_n_0 ;
  wire \int_reg[0]_i_48_n_0 ;
  wire \int_reg[0]_i_49_n_0 ;
  wire \int_reg[0]_i_50_n_0 ;
  wire \int_reg[0]_i_51_n_0 ;
  wire \int_reg[0]_i_52_n_0 ;
  wire \int_reg[0]_i_53_n_0 ;
  wire \int_reg[0]_i_54_n_0 ;
  wire \int_reg[0]_i_55_n_0 ;
  wire \int_reg[0]_i_56_n_0 ;
  wire \int_reg[0]_i_57_n_0 ;
  wire \int_reg[0]_i_58_n_0 ;
  wire \int_reg[0]_i_59_n_0 ;
  wire \int_reg[1]_i_28_n_0 ;
  wire \int_reg[1]_i_29_n_0 ;
  wire \int_reg[1]_i_2_n_0 ;
  wire \int_reg[1]_i_30_n_0 ;
  wire \int_reg[1]_i_31_n_0 ;
  wire \int_reg[1]_i_32_n_0 ;
  wire \int_reg[1]_i_33_n_0 ;
  wire \int_reg[1]_i_34_n_0 ;
  wire \int_reg[1]_i_35_n_0 ;
  wire \int_reg[1]_i_36_n_0 ;
  wire \int_reg[1]_i_37_n_0 ;
  wire \int_reg[1]_i_38_n_0 ;
  wire \int_reg[1]_i_39_n_0 ;
  wire \int_reg[1]_i_3_n_0 ;
  wire \int_reg[1]_i_40_n_0 ;
  wire \int_reg[1]_i_41_n_0 ;
  wire \int_reg[1]_i_42_n_0 ;
  wire \int_reg[1]_i_43_n_0 ;
  wire \int_reg[1]_i_44_n_0 ;
  wire \int_reg[1]_i_45_n_0 ;
  wire \int_reg[1]_i_46_n_0 ;
  wire \int_reg[1]_i_47_n_0 ;
  wire \int_reg[1]_i_48_n_0 ;
  wire \int_reg[1]_i_49_n_0 ;
  wire \int_reg[1]_i_50_n_0 ;
  wire \int_reg[1]_i_51_n_0 ;
  wire \int_reg[1]_i_52_n_0 ;
  wire \int_reg[1]_i_53_n_0 ;
  wire \int_reg[1]_i_54_n_0 ;
  wire \int_reg[1]_i_55_n_0 ;
  wire \int_reg[1]_i_56_n_0 ;
  wire \int_reg[1]_i_57_n_0 ;
  wire \int_reg[1]_i_58_n_0 ;
  wire \int_reg[1]_i_59_n_0 ;
  wire \int_reg[2]_i_28_n_0 ;
  wire \int_reg[2]_i_29_n_0 ;
  wire \int_reg[2]_i_2_n_0 ;
  wire \int_reg[2]_i_30_n_0 ;
  wire \int_reg[2]_i_31_n_0 ;
  wire \int_reg[2]_i_32_n_0 ;
  wire \int_reg[2]_i_33_n_0 ;
  wire \int_reg[2]_i_34_n_0 ;
  wire \int_reg[2]_i_35_n_0 ;
  wire \int_reg[2]_i_36_n_0 ;
  wire \int_reg[2]_i_37_n_0 ;
  wire \int_reg[2]_i_38_n_0 ;
  wire \int_reg[2]_i_39_n_0 ;
  wire \int_reg[2]_i_3_n_0 ;
  wire \int_reg[2]_i_40_n_0 ;
  wire \int_reg[2]_i_41_n_0 ;
  wire \int_reg[2]_i_42_n_0 ;
  wire \int_reg[2]_i_43_n_0 ;
  wire \int_reg[2]_i_44_n_0 ;
  wire \int_reg[2]_i_45_n_0 ;
  wire \int_reg[2]_i_46_n_0 ;
  wire \int_reg[2]_i_47_n_0 ;
  wire \int_reg[2]_i_48_n_0 ;
  wire \int_reg[2]_i_49_n_0 ;
  wire \int_reg[2]_i_50_n_0 ;
  wire \int_reg[2]_i_51_n_0 ;
  wire \int_reg[2]_i_52_n_0 ;
  wire \int_reg[2]_i_53_n_0 ;
  wire \int_reg[2]_i_54_n_0 ;
  wire \int_reg[2]_i_55_n_0 ;
  wire \int_reg[2]_i_56_n_0 ;
  wire \int_reg[2]_i_57_n_0 ;
  wire \int_reg[2]_i_58_n_0 ;
  wire \int_reg[2]_i_59_n_0 ;
  wire \int_reg[3]_i_28_n_0 ;
  wire \int_reg[3]_i_29_n_0 ;
  wire \int_reg[3]_i_2_n_0 ;
  wire \int_reg[3]_i_30_n_0 ;
  wire \int_reg[3]_i_31_n_0 ;
  wire \int_reg[3]_i_32_n_0 ;
  wire \int_reg[3]_i_33_n_0 ;
  wire \int_reg[3]_i_34_n_0 ;
  wire \int_reg[3]_i_35_n_0 ;
  wire \int_reg[3]_i_36_n_0 ;
  wire \int_reg[3]_i_37_n_0 ;
  wire \int_reg[3]_i_38_n_0 ;
  wire \int_reg[3]_i_39_n_0 ;
  wire \int_reg[3]_i_3_n_0 ;
  wire \int_reg[3]_i_40_n_0 ;
  wire \int_reg[3]_i_41_n_0 ;
  wire \int_reg[3]_i_42_n_0 ;
  wire \int_reg[3]_i_43_n_0 ;
  wire \int_reg[3]_i_44_n_0 ;
  wire \int_reg[3]_i_45_n_0 ;
  wire \int_reg[3]_i_46_n_0 ;
  wire \int_reg[3]_i_47_n_0 ;
  wire \int_reg[3]_i_48_n_0 ;
  wire \int_reg[3]_i_49_n_0 ;
  wire \int_reg[3]_i_50_n_0 ;
  wire \int_reg[3]_i_51_n_0 ;
  wire \int_reg[3]_i_52_n_0 ;
  wire \int_reg[3]_i_53_n_0 ;
  wire \int_reg[3]_i_54_n_0 ;
  wire \int_reg[3]_i_55_n_0 ;
  wire \int_reg[3]_i_56_n_0 ;
  wire \int_reg[3]_i_57_n_0 ;
  wire \int_reg[3]_i_58_n_0 ;
  wire \int_reg[3]_i_59_n_0 ;
  wire \int_reg[4]_i_28_n_0 ;
  wire \int_reg[4]_i_29_n_0 ;
  wire \int_reg[4]_i_2_n_0 ;
  wire \int_reg[4]_i_30_n_0 ;
  wire \int_reg[4]_i_31_n_0 ;
  wire \int_reg[4]_i_32_n_0 ;
  wire \int_reg[4]_i_33_n_0 ;
  wire \int_reg[4]_i_34_n_0 ;
  wire \int_reg[4]_i_35_n_0 ;
  wire \int_reg[4]_i_36_n_0 ;
  wire \int_reg[4]_i_37_n_0 ;
  wire \int_reg[4]_i_38_n_0 ;
  wire \int_reg[4]_i_39_n_0 ;
  wire \int_reg[4]_i_3_n_0 ;
  wire \int_reg[4]_i_40_n_0 ;
  wire \int_reg[4]_i_41_n_0 ;
  wire \int_reg[4]_i_42_n_0 ;
  wire \int_reg[4]_i_43_n_0 ;
  wire \int_reg[4]_i_44_n_0 ;
  wire \int_reg[4]_i_45_n_0 ;
  wire \int_reg[4]_i_46_n_0 ;
  wire \int_reg[4]_i_47_n_0 ;
  wire \int_reg[4]_i_48_n_0 ;
  wire \int_reg[4]_i_49_n_0 ;
  wire \int_reg[4]_i_50_n_0 ;
  wire \int_reg[4]_i_51_n_0 ;
  wire \int_reg[4]_i_52_n_0 ;
  wire \int_reg[4]_i_53_n_0 ;
  wire \int_reg[4]_i_54_n_0 ;
  wire \int_reg[4]_i_55_n_0 ;
  wire \int_reg[4]_i_56_n_0 ;
  wire \int_reg[4]_i_57_n_0 ;
  wire \int_reg[4]_i_58_n_0 ;
  wire \int_reg[4]_i_59_n_0 ;
  wire \int_reg[5]_i_1_n_0 ;
  wire \int_reg[5]_i_28_n_0 ;
  wire \int_reg[5]_i_29_n_0 ;
  wire \int_reg[5]_i_2_n_0 ;
  wire \int_reg[5]_i_30_n_0 ;
  wire \int_reg[5]_i_31_n_0 ;
  wire \int_reg[5]_i_32_n_0 ;
  wire \int_reg[5]_i_33_n_0 ;
  wire \int_reg[5]_i_34_n_0 ;
  wire \int_reg[5]_i_35_n_0 ;
  wire \int_reg[5]_i_36_n_0 ;
  wire \int_reg[5]_i_37_n_0 ;
  wire \int_reg[5]_i_38_n_0 ;
  wire \int_reg[5]_i_39_n_0 ;
  wire \int_reg[5]_i_3_n_0 ;
  wire \int_reg[5]_i_40_n_0 ;
  wire \int_reg[5]_i_41_n_0 ;
  wire \int_reg[5]_i_42_n_0 ;
  wire \int_reg[5]_i_43_n_0 ;
  wire \int_reg[5]_i_44_n_0 ;
  wire \int_reg[5]_i_45_n_0 ;
  wire \int_reg[5]_i_46_n_0 ;
  wire \int_reg[5]_i_47_n_0 ;
  wire \int_reg[5]_i_48_n_0 ;
  wire \int_reg[5]_i_49_n_0 ;
  wire \int_reg[5]_i_50_n_0 ;
  wire \int_reg[5]_i_51_n_0 ;
  wire \int_reg[5]_i_52_n_0 ;
  wire \int_reg[5]_i_53_n_0 ;
  wire \int_reg[5]_i_54_n_0 ;
  wire \int_reg[5]_i_55_n_0 ;
  wire \int_reg[5]_i_56_n_0 ;
  wire \int_reg[5]_i_57_n_0 ;
  wire \int_reg[5]_i_58_n_0 ;
  wire \int_reg[5]_i_59_n_0 ;
  wire \int_reg[6]_i_28_n_0 ;
  wire \int_reg[6]_i_29_n_0 ;
  wire \int_reg[6]_i_2_n_0 ;
  wire \int_reg[6]_i_30_n_0 ;
  wire \int_reg[6]_i_31_n_0 ;
  wire \int_reg[6]_i_32_n_0 ;
  wire \int_reg[6]_i_33_n_0 ;
  wire \int_reg[6]_i_34_n_0 ;
  wire \int_reg[6]_i_35_n_0 ;
  wire \int_reg[6]_i_36_n_0 ;
  wire \int_reg[6]_i_37_n_0 ;
  wire \int_reg[6]_i_38_n_0 ;
  wire \int_reg[6]_i_39_n_0 ;
  wire \int_reg[6]_i_3_n_0 ;
  wire \int_reg[6]_i_40_n_0 ;
  wire \int_reg[6]_i_41_n_0 ;
  wire \int_reg[6]_i_42_n_0 ;
  wire \int_reg[6]_i_43_n_0 ;
  wire \int_reg[6]_i_44_n_0 ;
  wire \int_reg[6]_i_45_n_0 ;
  wire \int_reg[6]_i_46_n_0 ;
  wire \int_reg[6]_i_47_n_0 ;
  wire \int_reg[6]_i_48_n_0 ;
  wire \int_reg[6]_i_49_n_0 ;
  wire \int_reg[6]_i_50_n_0 ;
  wire \int_reg[6]_i_51_n_0 ;
  wire \int_reg[6]_i_52_n_0 ;
  wire \int_reg[6]_i_53_n_0 ;
  wire \int_reg[6]_i_54_n_0 ;
  wire \int_reg[6]_i_55_n_0 ;
  wire \int_reg[6]_i_56_n_0 ;
  wire \int_reg[6]_i_57_n_0 ;
  wire \int_reg[6]_i_58_n_0 ;
  wire \int_reg[6]_i_59_n_0 ;
  wire \int_reg[7]_i_30_n_0 ;
  wire \int_reg[7]_i_31_n_0 ;
  wire \int_reg[7]_i_32_n_0 ;
  wire \int_reg[7]_i_33_n_0 ;
  wire \int_reg[7]_i_34_n_0 ;
  wire \int_reg[7]_i_35_n_0 ;
  wire \int_reg[7]_i_36_n_0 ;
  wire \int_reg[7]_i_37_n_0 ;
  wire \int_reg[7]_i_38_n_0 ;
  wire \int_reg[7]_i_39_n_0 ;
  wire \int_reg[7]_i_40_n_0 ;
  wire \int_reg[7]_i_41_n_0 ;
  wire \int_reg[7]_i_42_n_0 ;
  wire \int_reg[7]_i_43_n_0 ;
  wire \int_reg[7]_i_44_n_0 ;
  wire \int_reg[7]_i_45_n_0 ;
  wire \int_reg[7]_i_46_n_0 ;
  wire \int_reg[7]_i_47_n_0 ;
  wire \int_reg[7]_i_48_n_0 ;
  wire \int_reg[7]_i_49_n_0 ;
  wire \int_reg[7]_i_4_n_0 ;
  wire \int_reg[7]_i_50_n_0 ;
  wire \int_reg[7]_i_51_n_0 ;
  wire \int_reg[7]_i_52_n_0 ;
  wire \int_reg[7]_i_53_n_0 ;
  wire \int_reg[7]_i_54_n_0 ;
  wire \int_reg[7]_i_55_n_0 ;
  wire \int_reg[7]_i_56_n_0 ;
  wire \int_reg[7]_i_57_n_0 ;
  wire \int_reg[7]_i_58_n_0 ;
  wire \int_reg[7]_i_59_n_0 ;
  wire \int_reg[7]_i_5_n_0 ;
  wire \int_reg[7]_i_60_n_0 ;
  wire \int_reg[7]_i_61_n_0 ;
  wire \int_reg_reg[0]_i_10_n_0 ;
  wire \int_reg_reg[0]_i_11_n_0 ;
  wire \int_reg_reg[0]_i_12_n_0 ;
  wire \int_reg_reg[0]_i_13_n_0 ;
  wire \int_reg_reg[0]_i_14_n_0 ;
  wire \int_reg_reg[0]_i_15_n_0 ;
  wire \int_reg_reg[0]_i_16_n_0 ;
  wire \int_reg_reg[0]_i_17_n_0 ;
  wire \int_reg_reg[0]_i_18_n_0 ;
  wire \int_reg_reg[0]_i_19_n_0 ;
  wire \int_reg_reg[0]_i_20_n_0 ;
  wire \int_reg_reg[0]_i_21_n_0 ;
  wire \int_reg_reg[0]_i_22_n_0 ;
  wire \int_reg_reg[0]_i_23_n_0 ;
  wire \int_reg_reg[0]_i_24_n_0 ;
  wire \int_reg_reg[0]_i_25_n_0 ;
  wire \int_reg_reg[0]_i_26_n_0 ;
  wire \int_reg_reg[0]_i_27_n_0 ;
  wire \int_reg_reg[0]_i_4_n_0 ;
  wire \int_reg_reg[0]_i_5_n_0 ;
  wire \int_reg_reg[0]_i_6_n_0 ;
  wire \int_reg_reg[0]_i_7_n_0 ;
  wire \int_reg_reg[0]_i_8_n_0 ;
  wire \int_reg_reg[0]_i_9_n_0 ;
  wire [1:0]\int_reg_reg[1]_0 ;
  wire \int_reg_reg[1]_i_10_n_0 ;
  wire \int_reg_reg[1]_i_11_n_0 ;
  wire \int_reg_reg[1]_i_12_n_0 ;
  wire \int_reg_reg[1]_i_13_n_0 ;
  wire \int_reg_reg[1]_i_14_n_0 ;
  wire \int_reg_reg[1]_i_15_n_0 ;
  wire \int_reg_reg[1]_i_16_n_0 ;
  wire \int_reg_reg[1]_i_17_n_0 ;
  wire \int_reg_reg[1]_i_18_n_0 ;
  wire \int_reg_reg[1]_i_19_n_0 ;
  wire \int_reg_reg[1]_i_20_n_0 ;
  wire \int_reg_reg[1]_i_21_n_0 ;
  wire \int_reg_reg[1]_i_22_n_0 ;
  wire \int_reg_reg[1]_i_23_n_0 ;
  wire \int_reg_reg[1]_i_24_n_0 ;
  wire \int_reg_reg[1]_i_25_n_0 ;
  wire \int_reg_reg[1]_i_26_n_0 ;
  wire \int_reg_reg[1]_i_27_n_0 ;
  wire \int_reg_reg[1]_i_4_n_0 ;
  wire \int_reg_reg[1]_i_5_n_0 ;
  wire \int_reg_reg[1]_i_6_n_0 ;
  wire \int_reg_reg[1]_i_7_n_0 ;
  wire \int_reg_reg[1]_i_8_n_0 ;
  wire \int_reg_reg[1]_i_9_n_0 ;
  wire \int_reg_reg[2]_i_10_n_0 ;
  wire \int_reg_reg[2]_i_11_n_0 ;
  wire \int_reg_reg[2]_i_12_n_0 ;
  wire \int_reg_reg[2]_i_13_n_0 ;
  wire \int_reg_reg[2]_i_14_n_0 ;
  wire \int_reg_reg[2]_i_15_n_0 ;
  wire \int_reg_reg[2]_i_16_n_0 ;
  wire \int_reg_reg[2]_i_17_n_0 ;
  wire \int_reg_reg[2]_i_18_n_0 ;
  wire \int_reg_reg[2]_i_19_n_0 ;
  wire \int_reg_reg[2]_i_20_n_0 ;
  wire \int_reg_reg[2]_i_21_n_0 ;
  wire \int_reg_reg[2]_i_22_n_0 ;
  wire \int_reg_reg[2]_i_23_n_0 ;
  wire \int_reg_reg[2]_i_24_n_0 ;
  wire \int_reg_reg[2]_i_25_n_0 ;
  wire \int_reg_reg[2]_i_26_n_0 ;
  wire \int_reg_reg[2]_i_27_n_0 ;
  wire \int_reg_reg[2]_i_4_n_0 ;
  wire \int_reg_reg[2]_i_5_n_0 ;
  wire \int_reg_reg[2]_i_6_n_0 ;
  wire \int_reg_reg[2]_i_7_n_0 ;
  wire \int_reg_reg[2]_i_8_n_0 ;
  wire \int_reg_reg[2]_i_9_n_0 ;
  wire \int_reg_reg[3]_i_10_n_0 ;
  wire \int_reg_reg[3]_i_11_n_0 ;
  wire \int_reg_reg[3]_i_12_n_0 ;
  wire \int_reg_reg[3]_i_13_n_0 ;
  wire \int_reg_reg[3]_i_14_n_0 ;
  wire \int_reg_reg[3]_i_15_n_0 ;
  wire \int_reg_reg[3]_i_16_n_0 ;
  wire \int_reg_reg[3]_i_17_n_0 ;
  wire \int_reg_reg[3]_i_18_n_0 ;
  wire \int_reg_reg[3]_i_19_n_0 ;
  wire \int_reg_reg[3]_i_20_n_0 ;
  wire \int_reg_reg[3]_i_21_n_0 ;
  wire \int_reg_reg[3]_i_22_n_0 ;
  wire \int_reg_reg[3]_i_23_n_0 ;
  wire \int_reg_reg[3]_i_24_n_0 ;
  wire \int_reg_reg[3]_i_25_n_0 ;
  wire \int_reg_reg[3]_i_26_n_0 ;
  wire \int_reg_reg[3]_i_27_n_0 ;
  wire \int_reg_reg[3]_i_4_n_0 ;
  wire \int_reg_reg[3]_i_5_n_0 ;
  wire \int_reg_reg[3]_i_6_n_0 ;
  wire \int_reg_reg[3]_i_7_n_0 ;
  wire \int_reg_reg[3]_i_8_n_0 ;
  wire \int_reg_reg[3]_i_9_n_0 ;
  wire \int_reg_reg[4]_i_10_n_0 ;
  wire \int_reg_reg[4]_i_11_n_0 ;
  wire \int_reg_reg[4]_i_12_n_0 ;
  wire \int_reg_reg[4]_i_13_n_0 ;
  wire \int_reg_reg[4]_i_14_n_0 ;
  wire \int_reg_reg[4]_i_15_n_0 ;
  wire \int_reg_reg[4]_i_16_n_0 ;
  wire \int_reg_reg[4]_i_17_n_0 ;
  wire \int_reg_reg[4]_i_18_n_0 ;
  wire \int_reg_reg[4]_i_19_n_0 ;
  wire \int_reg_reg[4]_i_20_n_0 ;
  wire \int_reg_reg[4]_i_21_n_0 ;
  wire \int_reg_reg[4]_i_22_n_0 ;
  wire \int_reg_reg[4]_i_23_n_0 ;
  wire \int_reg_reg[4]_i_24_n_0 ;
  wire \int_reg_reg[4]_i_25_n_0 ;
  wire \int_reg_reg[4]_i_26_n_0 ;
  wire \int_reg_reg[4]_i_27_n_0 ;
  wire \int_reg_reg[4]_i_4_n_0 ;
  wire \int_reg_reg[4]_i_5_n_0 ;
  wire \int_reg_reg[4]_i_6_n_0 ;
  wire \int_reg_reg[4]_i_7_n_0 ;
  wire \int_reg_reg[4]_i_8_n_0 ;
  wire \int_reg_reg[4]_i_9_n_0 ;
  wire \int_reg_reg[5]_i_10_n_0 ;
  wire \int_reg_reg[5]_i_11_n_0 ;
  wire \int_reg_reg[5]_i_12_n_0 ;
  wire \int_reg_reg[5]_i_13_n_0 ;
  wire \int_reg_reg[5]_i_14_n_0 ;
  wire \int_reg_reg[5]_i_15_n_0 ;
  wire \int_reg_reg[5]_i_16_n_0 ;
  wire \int_reg_reg[5]_i_17_n_0 ;
  wire \int_reg_reg[5]_i_18_n_0 ;
  wire \int_reg_reg[5]_i_19_n_0 ;
  wire \int_reg_reg[5]_i_20_n_0 ;
  wire \int_reg_reg[5]_i_21_n_0 ;
  wire \int_reg_reg[5]_i_22_n_0 ;
  wire \int_reg_reg[5]_i_23_n_0 ;
  wire \int_reg_reg[5]_i_24_n_0 ;
  wire \int_reg_reg[5]_i_25_n_0 ;
  wire \int_reg_reg[5]_i_26_n_0 ;
  wire \int_reg_reg[5]_i_27_n_0 ;
  wire \int_reg_reg[5]_i_4_n_0 ;
  wire \int_reg_reg[5]_i_5_n_0 ;
  wire \int_reg_reg[5]_i_6_n_0 ;
  wire \int_reg_reg[5]_i_7_n_0 ;
  wire \int_reg_reg[5]_i_8_n_0 ;
  wire \int_reg_reg[5]_i_9_n_0 ;
  wire \int_reg_reg[6]_i_10_n_0 ;
  wire \int_reg_reg[6]_i_11_n_0 ;
  wire \int_reg_reg[6]_i_12_n_0 ;
  wire \int_reg_reg[6]_i_13_n_0 ;
  wire \int_reg_reg[6]_i_14_n_0 ;
  wire \int_reg_reg[6]_i_15_n_0 ;
  wire \int_reg_reg[6]_i_16_n_0 ;
  wire \int_reg_reg[6]_i_17_n_0 ;
  wire \int_reg_reg[6]_i_18_n_0 ;
  wire \int_reg_reg[6]_i_19_n_0 ;
  wire \int_reg_reg[6]_i_20_n_0 ;
  wire \int_reg_reg[6]_i_21_n_0 ;
  wire \int_reg_reg[6]_i_22_n_0 ;
  wire \int_reg_reg[6]_i_23_n_0 ;
  wire \int_reg_reg[6]_i_24_n_0 ;
  wire \int_reg_reg[6]_i_25_n_0 ;
  wire \int_reg_reg[6]_i_26_n_0 ;
  wire \int_reg_reg[6]_i_27_n_0 ;
  wire \int_reg_reg[6]_i_4_n_0 ;
  wire \int_reg_reg[6]_i_5_n_0 ;
  wire \int_reg_reg[6]_i_6_n_0 ;
  wire \int_reg_reg[6]_i_7_n_0 ;
  wire \int_reg_reg[6]_i_8_n_0 ;
  wire \int_reg_reg[6]_i_9_n_0 ;
  wire \int_reg_reg[7]_i_10_n_0 ;
  wire \int_reg_reg[7]_i_11_n_0 ;
  wire \int_reg_reg[7]_i_12_n_0 ;
  wire \int_reg_reg[7]_i_13_n_0 ;
  wire \int_reg_reg[7]_i_14_n_0 ;
  wire \int_reg_reg[7]_i_15_n_0 ;
  wire \int_reg_reg[7]_i_16_n_0 ;
  wire \int_reg_reg[7]_i_17_n_0 ;
  wire \int_reg_reg[7]_i_18_n_0 ;
  wire \int_reg_reg[7]_i_19_n_0 ;
  wire \int_reg_reg[7]_i_20_n_0 ;
  wire \int_reg_reg[7]_i_21_n_0 ;
  wire \int_reg_reg[7]_i_22_n_0 ;
  wire \int_reg_reg[7]_i_23_n_0 ;
  wire \int_reg_reg[7]_i_24_n_0 ;
  wire \int_reg_reg[7]_i_25_n_0 ;
  wire \int_reg_reg[7]_i_26_n_0 ;
  wire \int_reg_reg[7]_i_27_n_0 ;
  wire \int_reg_reg[7]_i_28_n_0 ;
  wire \int_reg_reg[7]_i_29_n_0 ;
  wire \int_reg_reg[7]_i_6_n_0 ;
  wire \int_reg_reg[7]_i_7_n_0 ;
  wire \int_reg_reg[7]_i_8_n_0 ;
  wire \int_reg_reg[7]_i_9_n_0 ;
  wire laf_state;
  wire lfd_state;
  wire low_packet_valid;
  wire low_packet_valid_reg_0;
  wire [1:0]out;
  wire [7:0]p_1_in_0;
  wire parity_done;
  wire parity_done_reg_0;
  wire pkt_valid_w;
  wire \tx_idx_reg[1]_rep ;
  wire \tx_idx_reg[1]_rep__0 ;
  wire \tx_idx_reg[1]_rep__1 ;
  wire [6:0]\tx_idx_reg[6] ;
  wire tx_run_reg;
  wire [7:2]txb;
  wire [7:0]\txb_reg[0][7] ;
  wire [7:0]\txb_reg[100][7] ;
  wire [7:0]\txb_reg[101][7] ;
  wire [7:0]\txb_reg[102][7] ;
  wire [7:0]\txb_reg[103][7] ;
  wire [7:0]\txb_reg[104][7] ;
  wire [7:0]\txb_reg[105][7] ;
  wire [7:0]\txb_reg[106][7] ;
  wire [7:0]\txb_reg[107][7] ;
  wire [7:0]\txb_reg[108][7] ;
  wire [7:0]\txb_reg[109][7] ;
  wire [7:0]\txb_reg[10][7] ;
  wire [7:0]\txb_reg[110][7] ;
  wire [7:0]\txb_reg[111][7] ;
  wire [7:0]\txb_reg[112][7] ;
  wire [7:0]\txb_reg[113][7] ;
  wire [7:0]\txb_reg[114][7] ;
  wire [7:0]\txb_reg[115][7] ;
  wire [7:0]\txb_reg[116][7] ;
  wire [7:0]\txb_reg[117][7] ;
  wire [7:0]\txb_reg[118][7] ;
  wire [7:0]\txb_reg[119][7] ;
  wire [7:0]\txb_reg[11][7] ;
  wire [7:0]\txb_reg[120][7] ;
  wire [7:0]\txb_reg[121][7] ;
  wire [7:0]\txb_reg[122][7] ;
  wire [7:0]\txb_reg[123][7] ;
  wire [7:0]\txb_reg[124][7] ;
  wire [7:0]\txb_reg[125][7] ;
  wire [7:0]\txb_reg[126][7] ;
  wire [7:0]\txb_reg[127][7] ;
  wire [7:0]\txb_reg[12][7] ;
  wire [7:0]\txb_reg[13][7] ;
  wire [7:0]\txb_reg[14][7] ;
  wire [7:0]\txb_reg[15][7] ;
  wire [7:0]\txb_reg[16][7] ;
  wire [7:0]\txb_reg[17][7] ;
  wire [7:0]\txb_reg[18][7] ;
  wire [7:0]\txb_reg[19][7] ;
  wire [7:0]\txb_reg[1][7] ;
  wire [7:0]\txb_reg[20][7] ;
  wire [7:0]\txb_reg[21][7] ;
  wire [7:0]\txb_reg[22][7] ;
  wire [7:0]\txb_reg[23][7] ;
  wire [7:0]\txb_reg[24][7] ;
  wire [7:0]\txb_reg[25][7] ;
  wire [7:0]\txb_reg[26][7] ;
  wire [7:0]\txb_reg[27][7] ;
  wire [7:0]\txb_reg[28][7] ;
  wire [7:0]\txb_reg[29][7] ;
  wire [7:0]\txb_reg[2][7] ;
  wire [7:0]\txb_reg[30][7] ;
  wire [7:0]\txb_reg[31][7] ;
  wire [7:0]\txb_reg[32][7] ;
  wire [7:0]\txb_reg[33][7] ;
  wire [7:0]\txb_reg[34][7] ;
  wire [7:0]\txb_reg[35][7] ;
  wire [7:0]\txb_reg[36][7] ;
  wire [7:0]\txb_reg[37][7] ;
  wire [7:0]\txb_reg[38][7] ;
  wire [7:0]\txb_reg[39][7] ;
  wire [7:0]\txb_reg[3][7] ;
  wire [7:0]\txb_reg[40][7] ;
  wire [7:0]\txb_reg[41][7] ;
  wire [7:0]\txb_reg[42][7] ;
  wire [7:0]\txb_reg[43][7] ;
  wire [7:0]\txb_reg[44][7] ;
  wire [7:0]\txb_reg[45][7] ;
  wire [7:0]\txb_reg[46][7] ;
  wire [7:0]\txb_reg[47][7] ;
  wire [7:0]\txb_reg[48][7] ;
  wire [7:0]\txb_reg[49][7] ;
  wire [7:0]\txb_reg[4][7] ;
  wire [7:0]\txb_reg[50][7] ;
  wire [7:0]\txb_reg[51][7] ;
  wire [7:0]\txb_reg[52][7] ;
  wire [7:0]\txb_reg[53][7] ;
  wire [7:0]\txb_reg[54][7] ;
  wire [7:0]\txb_reg[55][7] ;
  wire [7:0]\txb_reg[56][7] ;
  wire [7:0]\txb_reg[57][7] ;
  wire [7:0]\txb_reg[58][7] ;
  wire [7:0]\txb_reg[59][7] ;
  wire [7:0]\txb_reg[5][7] ;
  wire [7:0]\txb_reg[60][7] ;
  wire [7:0]\txb_reg[61][7] ;
  wire [7:0]\txb_reg[62][7] ;
  wire [7:0]\txb_reg[63][7] ;
  wire [7:0]\txb_reg[64][7] ;
  wire [7:0]\txb_reg[65][7] ;
  wire [7:0]\txb_reg[66][7] ;
  wire [7:0]\txb_reg[67][7] ;
  wire [7:0]\txb_reg[68][7] ;
  wire [7:0]\txb_reg[69][7] ;
  wire [7:0]\txb_reg[6][7] ;
  wire [7:0]\txb_reg[70][7] ;
  wire [7:0]\txb_reg[71][7] ;
  wire [7:0]\txb_reg[72][7] ;
  wire [7:0]\txb_reg[73][7] ;
  wire [7:0]\txb_reg[74][7] ;
  wire [7:0]\txb_reg[75][7] ;
  wire [7:0]\txb_reg[76][7] ;
  wire [7:0]\txb_reg[77][7] ;
  wire [7:0]\txb_reg[78][7] ;
  wire [7:0]\txb_reg[79][7] ;
  wire [7:0]\txb_reg[7][7] ;
  wire [7:0]\txb_reg[80][7] ;
  wire [7:0]\txb_reg[81][7] ;
  wire [7:0]\txb_reg[82][7] ;
  wire [7:0]\txb_reg[83][7] ;
  wire [7:0]\txb_reg[84][7] ;
  wire [7:0]\txb_reg[85][7] ;
  wire [7:0]\txb_reg[86][7] ;
  wire [7:0]\txb_reg[87][7] ;
  wire [7:0]\txb_reg[88][7] ;
  wire [7:0]\txb_reg[89][7] ;
  wire [7:0]\txb_reg[8][7] ;
  wire [7:0]\txb_reg[90][7] ;
  wire [7:0]\txb_reg[91][7] ;
  wire [7:0]\txb_reg[92][7] ;
  wire [7:0]\txb_reg[93][7] ;
  wire [7:0]\txb_reg[94][7] ;
  wire [7:0]\txb_reg[95][7] ;
  wire [7:0]\txb_reg[96][7] ;
  wire [7:0]\txb_reg[97][7] ;
  wire [7:0]\txb_reg[98][7] ;
  wire [7:0]\txb_reg[99][7] ;
  wire [7:0]\txb_reg[9][7] ;

  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_PS[1]_i_5 
       (.I0(parity_done),
        .I1(low_packet_valid),
        .O(\FSM_sequential_PS_reg[1] ));
  LUT6 #(
    .INIT(64'h22FF2200FF000F00)) 
    \FSM_sequential_PS[2]_i_2 
       (.I0(low_packet_valid),
        .I1(parity_done),
        .I2(pkt_valid_w),
        .I3(out[0]),
        .I4(fifo_full),
        .I5(out[1]),
        .O(\FSM_sequential_PS_reg[2] ));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    PSLVERR_OBUF_inst_i_9
       (.I0(\txb_reg[0][7] [6]),
        .I1(\txb_reg[0][7] [3]),
        .I2(\txb_reg[0][7] [4]),
        .I3(\txb_reg[0][7] [5]),
        .O(\ext_parity_reg[7]_1 ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dout[0]_i_1 
       (.I0(header[0]),
        .I1(lfd_state),
        .I2(\int_reg_reg[1]_0 [0]),
        .I3(\FSM_sequential_PS_reg[1]_1 ),
        .I4(int_reg[0]),
        .O(\dout[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dout[1]_i_1 
       (.I0(header[1]),
        .I1(lfd_state),
        .I2(\int_reg_reg[1]_0 [1]),
        .I3(\FSM_sequential_PS_reg[1]_1 ),
        .I4(int_reg[1]),
        .O(\dout[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dout[2]_i_1 
       (.I0(header[2]),
        .I1(lfd_state),
        .I2(txb[2]),
        .I3(\FSM_sequential_PS_reg[1]_1 ),
        .I4(int_reg[2]),
        .O(\dout[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dout[3]_i_1 
       (.I0(header[3]),
        .I1(lfd_state),
        .I2(txb[3]),
        .I3(\FSM_sequential_PS_reg[1]_1 ),
        .I4(int_reg[3]),
        .O(\dout[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dout[4]_i_1 
       (.I0(header[4]),
        .I1(lfd_state),
        .I2(txb[4]),
        .I3(\FSM_sequential_PS_reg[1]_1 ),
        .I4(int_reg[4]),
        .O(\dout[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dout[5]_i_1 
       (.I0(header[5]),
        .I1(lfd_state),
        .I2(\int_reg[5]_i_1_n_0 ),
        .I3(\FSM_sequential_PS_reg[1]_1 ),
        .I4(int_reg[5]),
        .O(\dout[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dout[6]_i_1 
       (.I0(header[6]),
        .I1(lfd_state),
        .I2(txb[6]),
        .I3(\FSM_sequential_PS_reg[1]_1 ),
        .I4(int_reg[6]),
        .O(\dout[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dout[7]_i_2 
       (.I0(header[7]),
        .I1(lfd_state),
        .I2(txb[7]),
        .I3(\FSM_sequential_PS_reg[1]_1 ),
        .I4(int_reg[7]),
        .O(\dout[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_0 ),
        .D(\dout[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_0 ),
        .D(\dout[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_0 ),
        .D(\dout[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_0 ),
        .D(\dout[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_0 ),
        .D(\dout[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_0 ),
        .D(\dout[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_0 ),
        .D(\dout[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_0 ),
        .D(\dout[7]_i_2_n_0 ),
        .Q(Q[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFE000000)) 
    err_i_1
       (.I0(err_i_2_n_0),
        .I1(err_i_3_n_0),
        .I2(err_i_4_n_0),
        .I3(parity_done),
        .I4(PRESETn_IBUF),
        .O(err_i_1_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    err_i_2
       (.I0(ext_parity[3]),
        .I1(int_parity[3]),
        .I2(int_parity[4]),
        .I3(ext_parity[4]),
        .I4(int_parity[5]),
        .I5(ext_parity[5]),
        .O(err_i_2_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    err_i_3
       (.I0(ext_parity[0]),
        .I1(int_parity[0]),
        .I2(int_parity[1]),
        .I3(ext_parity[1]),
        .I4(int_parity[2]),
        .I5(ext_parity[2]),
        .O(err_i_3_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    err_i_4
       (.I0(ext_parity[6]),
        .I1(int_parity[6]),
        .I2(ext_parity[7]),
        .I3(int_parity[7]),
        .O(err_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    err_reg
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(err_i_1_n_0),
        .Q(err),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFEFFFFFFAAAAAAAA)) 
    err_seen_i_1
       (.I0(err),
        .I1(\PADDR[2] ),
        .I2(PADDR_IBUF),
        .I3(PWDATA_IBUF),
        .I4(PSEL),
        .I5(err_seen),
        .O(err_seen_reg));
  LUT5 #(
    .INIT(32'h20FF2020)) 
    \ext_parity[7]_i_1 
       (.I0(low_packet_valid),
        .I1(parity_done),
        .I2(laf_state),
        .I3(pkt_valid_w),
        .I4(\FSM_sequential_PS_reg[1]_1 ),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \ext_parity_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(\int_reg_reg[1]_0 [0]),
        .Q(ext_parity[0]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ext_parity_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(\int_reg_reg[1]_0 [1]),
        .Q(ext_parity[1]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ext_parity_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(txb[2]),
        .Q(ext_parity[2]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ext_parity_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(txb[3]),
        .Q(ext_parity[3]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ext_parity_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(txb[4]),
        .Q(ext_parity[4]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ext_parity_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(\int_reg[5]_i_1_n_0 ),
        .Q(ext_parity[5]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ext_parity_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(txb[6]),
        .Q(ext_parity[6]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \ext_parity_reg[7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(E),
        .D(txb[7]),
        .Q(ext_parity[7]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hA8AAAAA8AAA8AAA8)) 
    \header[7]_i_2 
       (.I0(tx_run_reg),
        .I1(\header[7]_i_3_n_0 ),
        .I2(\ext_parity_reg[7]_0 ),
        .I3(\tx_idx_reg[6] [6]),
        .I4(\header[7]_i_5_n_0 ),
        .I5(\txb_reg[0][7] [2]),
        .O(pkt_valid_w));
  LUT4 #(
    .INIT(16'h59A6)) 
    \header[7]_i_3 
       (.I0(\tx_idx_reg[6] [5]),
        .I1(\txb_reg[0][7] [2]),
        .I2(\ext_parity_reg[7]_1 ),
        .I3(\txb_reg[0][7] [7]),
        .O(\header[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF956A)) 
    \header[7]_i_4 
       (.I0(\txb_reg[0][7] [6]),
        .I1(\ext_parity_reg[7]_2 ),
        .I2(\txb_reg[0][7] [2]),
        .I3(\tx_idx_reg[6] [4]),
        .I4(\header[7]_i_7_n_0 ),
        .I5(\header[7]_i_8_n_0 ),
        .O(\ext_parity_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \header[7]_i_5 
       (.I0(\txb_reg[0][7] [7]),
        .I1(\txb_reg[0][7] [5]),
        .I2(\txb_reg[0][7] [4]),
        .I3(\txb_reg[0][7] [3]),
        .I4(\txb_reg[0][7] [6]),
        .O(\header[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \header[7]_i_6 
       (.I0(\txb_reg[0][7] [5]),
        .I1(\txb_reg[0][7] [4]),
        .I2(\txb_reg[0][7] [3]),
        .O(\ext_parity_reg[7]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h95556AAA)) 
    \header[7]_i_7 
       (.I0(\tx_idx_reg[6] [3]),
        .I1(\txb_reg[0][7] [2]),
        .I2(\txb_reg[0][7] [4]),
        .I3(\txb_reg[0][7] [3]),
        .I4(\txb_reg[0][7] [5]),
        .O(\header[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF6FFFF6F9FF6FFF)) 
    \header[7]_i_8 
       (.I0(\txb_reg[0][7] [4]),
        .I1(\tx_idx_reg[6] [2]),
        .I2(\tx_idx_reg[6] [1]),
        .I3(\txb_reg[0][7] [2]),
        .I4(\txb_reg[0][7] [3]),
        .I5(\tx_idx_reg[6] [0]),
        .O(\header[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \header_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[0] ),
        .D(\int_reg_reg[1]_0 [0]),
        .Q(header[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \header_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[0] ),
        .D(\int_reg_reg[1]_0 [1]),
        .Q(header[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \header_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[0] ),
        .D(txb[2]),
        .Q(header[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \header_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[0] ),
        .D(txb[3]),
        .Q(header[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \header_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[0] ),
        .D(txb[4]),
        .Q(header[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \header_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[0] ),
        .D(\int_reg[5]_i_1_n_0 ),
        .Q(header[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \header_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[0] ),
        .D(txb[6]),
        .Q(header[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \header_reg[7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[0] ),
        .D(txb[7]),
        .Q(header[7]),
        .R(SR));
  LUT4 #(
    .INIT(16'h56A6)) 
    \int_parity[0]_i_1 
       (.I0(int_parity[0]),
        .I1(\int_reg_reg[1]_0 [0]),
        .I2(\FSM_sequential_PS_reg[1]_0 ),
        .I3(header[0]),
        .O(p_1_in_0[0]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \int_parity[1]_i_1 
       (.I0(int_parity[1]),
        .I1(\int_reg_reg[1]_0 [1]),
        .I2(\FSM_sequential_PS_reg[1]_0 ),
        .I3(header[1]),
        .O(p_1_in_0[1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \int_parity[2]_i_1 
       (.I0(int_parity[2]),
        .I1(txb[2]),
        .I2(\FSM_sequential_PS_reg[1]_0 ),
        .I3(header[2]),
        .O(p_1_in_0[2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \int_parity[3]_i_1 
       (.I0(int_parity[3]),
        .I1(txb[3]),
        .I2(\FSM_sequential_PS_reg[1]_0 ),
        .I3(header[3]),
        .O(p_1_in_0[3]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \int_parity[4]_i_1 
       (.I0(int_parity[4]),
        .I1(txb[4]),
        .I2(\FSM_sequential_PS_reg[1]_0 ),
        .I3(header[4]),
        .O(p_1_in_0[4]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \int_parity[5]_i_1 
       (.I0(int_parity[5]),
        .I1(\int_reg[5]_i_1_n_0 ),
        .I2(\FSM_sequential_PS_reg[1]_0 ),
        .I3(header[5]),
        .O(p_1_in_0[5]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \int_parity[6]_i_1 
       (.I0(int_parity[6]),
        .I1(txb[6]),
        .I2(\FSM_sequential_PS_reg[1]_0 ),
        .I3(header[6]),
        .O(p_1_in_0[6]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \int_parity[7]_i_3 
       (.I0(int_parity[7]),
        .I1(txb[7]),
        .I2(\FSM_sequential_PS_reg[1]_0 ),
        .I3(header[7]),
        .O(p_1_in_0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \int_parity_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_1 ),
        .D(p_1_in_0[0]),
        .Q(int_parity[0]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_parity_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_1 ),
        .D(p_1_in_0[1]),
        .Q(int_parity[1]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_parity_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_1 ),
        .D(p_1_in_0[2]),
        .Q(int_parity[2]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_parity_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_1 ),
        .D(p_1_in_0[3]),
        .Q(int_parity[3]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_parity_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_1 ),
        .D(p_1_in_0[4]),
        .Q(int_parity[4]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_parity_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_1 ),
        .D(p_1_in_0[5]),
        .Q(int_parity[5]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_parity_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_1 ),
        .D(p_1_in_0[6]),
        .Q(int_parity[6]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_parity_reg[7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[2]_1 ),
        .D(p_1_in_0[7]),
        .Q(int_parity[7]),
        .R(\FSM_sequential_PS_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_2 
       (.I0(\int_reg_reg[0]_i_4_n_0 ),
        .I1(\int_reg_reg[0]_i_5_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[0]_i_6_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[0]_i_7_n_0 ),
        .O(\int_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_28 
       (.I0(\txb_reg[51][7] [0]),
        .I1(\txb_reg[50][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[49][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[48][7] [0]),
        .O(\int_reg[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_29 
       (.I0(\txb_reg[55][7] [0]),
        .I1(\txb_reg[54][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[53][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[52][7] [0]),
        .O(\int_reg[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_3 
       (.I0(\int_reg_reg[0]_i_8_n_0 ),
        .I1(\int_reg_reg[0]_i_9_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[0]_i_10_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[0]_i_11_n_0 ),
        .O(\int_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_30 
       (.I0(\txb_reg[59][7] [0]),
        .I1(\txb_reg[58][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[57][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[56][7] [0]),
        .O(\int_reg[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_31 
       (.I0(\txb_reg[63][7] [0]),
        .I1(\txb_reg[62][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[61][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[60][7] [0]),
        .O(\int_reg[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_32 
       (.I0(\txb_reg[35][7] [0]),
        .I1(\txb_reg[34][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[33][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[32][7] [0]),
        .O(\int_reg[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_33 
       (.I0(\txb_reg[39][7] [0]),
        .I1(\txb_reg[38][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[37][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[36][7] [0]),
        .O(\int_reg[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_34 
       (.I0(\txb_reg[43][7] [0]),
        .I1(\txb_reg[42][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[41][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[40][7] [0]),
        .O(\int_reg[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_35 
       (.I0(\txb_reg[47][7] [0]),
        .I1(\txb_reg[46][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[45][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[44][7] [0]),
        .O(\int_reg[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_36 
       (.I0(\txb_reg[19][7] [0]),
        .I1(\txb_reg[18][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[17][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[16][7] [0]),
        .O(\int_reg[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_37 
       (.I0(\txb_reg[23][7] [0]),
        .I1(\txb_reg[22][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[21][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[20][7] [0]),
        .O(\int_reg[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_38 
       (.I0(\txb_reg[27][7] [0]),
        .I1(\txb_reg[26][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[25][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[24][7] [0]),
        .O(\int_reg[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_39 
       (.I0(\txb_reg[31][7] [0]),
        .I1(\txb_reg[30][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[29][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[28][7] [0]),
        .O(\int_reg[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_40 
       (.I0(\txb_reg[3][7] [0]),
        .I1(\txb_reg[2][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[1][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[0][7] [0]),
        .O(\int_reg[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_41 
       (.I0(\txb_reg[7][7] [0]),
        .I1(\txb_reg[6][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[5][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[4][7] [0]),
        .O(\int_reg[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_42 
       (.I0(\txb_reg[11][7] [0]),
        .I1(\txb_reg[10][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[9][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[8][7] [0]),
        .O(\int_reg[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_43 
       (.I0(\txb_reg[15][7] [0]),
        .I1(\txb_reg[14][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[13][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[12][7] [0]),
        .O(\int_reg[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_44 
       (.I0(\txb_reg[115][7] [0]),
        .I1(\txb_reg[114][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[113][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[112][7] [0]),
        .O(\int_reg[0]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_45 
       (.I0(\txb_reg[119][7] [0]),
        .I1(\txb_reg[118][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[117][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[116][7] [0]),
        .O(\int_reg[0]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_46 
       (.I0(\txb_reg[123][7] [0]),
        .I1(\txb_reg[122][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[121][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[120][7] [0]),
        .O(\int_reg[0]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_47 
       (.I0(\txb_reg[127][7] [0]),
        .I1(\txb_reg[126][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[125][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[124][7] [0]),
        .O(\int_reg[0]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_48 
       (.I0(\txb_reg[99][7] [0]),
        .I1(\txb_reg[98][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[97][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[96][7] [0]),
        .O(\int_reg[0]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_49 
       (.I0(\txb_reg[103][7] [0]),
        .I1(\txb_reg[102][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[101][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[100][7] [0]),
        .O(\int_reg[0]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_50 
       (.I0(\txb_reg[107][7] [0]),
        .I1(\txb_reg[106][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[105][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[104][7] [0]),
        .O(\int_reg[0]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_51 
       (.I0(\txb_reg[111][7] [0]),
        .I1(\txb_reg[110][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[109][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[108][7] [0]),
        .O(\int_reg[0]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_52 
       (.I0(\txb_reg[83][7] [0]),
        .I1(\txb_reg[82][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[81][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[80][7] [0]),
        .O(\int_reg[0]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_53 
       (.I0(\txb_reg[87][7] [0]),
        .I1(\txb_reg[86][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[85][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[84][7] [0]),
        .O(\int_reg[0]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_54 
       (.I0(\txb_reg[91][7] [0]),
        .I1(\txb_reg[90][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[89][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[88][7] [0]),
        .O(\int_reg[0]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_55 
       (.I0(\txb_reg[95][7] [0]),
        .I1(\txb_reg[94][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[93][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[92][7] [0]),
        .O(\int_reg[0]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_56 
       (.I0(\txb_reg[67][7] [0]),
        .I1(\txb_reg[66][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[65][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[64][7] [0]),
        .O(\int_reg[0]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_57 
       (.I0(\txb_reg[71][7] [0]),
        .I1(\txb_reg[70][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[69][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[68][7] [0]),
        .O(\int_reg[0]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_58 
       (.I0(\txb_reg[75][7] [0]),
        .I1(\txb_reg[74][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[73][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[72][7] [0]),
        .O(\int_reg[0]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[0]_i_59 
       (.I0(\txb_reg[79][7] [0]),
        .I1(\txb_reg[78][7] [0]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[77][7] [0]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[76][7] [0]),
        .O(\int_reg[0]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_2 
       (.I0(\int_reg_reg[1]_i_4_n_0 ),
        .I1(\int_reg_reg[1]_i_5_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[1]_i_6_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[1]_i_7_n_0 ),
        .O(\int_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_28 
       (.I0(\txb_reg[51][7] [1]),
        .I1(\txb_reg[50][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[49][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[48][7] [1]),
        .O(\int_reg[1]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_29 
       (.I0(\txb_reg[55][7] [1]),
        .I1(\txb_reg[54][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[53][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[52][7] [1]),
        .O(\int_reg[1]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_3 
       (.I0(\int_reg_reg[1]_i_8_n_0 ),
        .I1(\int_reg_reg[1]_i_9_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[1]_i_10_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[1]_i_11_n_0 ),
        .O(\int_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_30 
       (.I0(\txb_reg[59][7] [1]),
        .I1(\txb_reg[58][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[57][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[56][7] [1]),
        .O(\int_reg[1]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_31 
       (.I0(\txb_reg[63][7] [1]),
        .I1(\txb_reg[62][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[61][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[60][7] [1]),
        .O(\int_reg[1]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_32 
       (.I0(\txb_reg[35][7] [1]),
        .I1(\txb_reg[34][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[33][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[32][7] [1]),
        .O(\int_reg[1]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_33 
       (.I0(\txb_reg[39][7] [1]),
        .I1(\txb_reg[38][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[37][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[36][7] [1]),
        .O(\int_reg[1]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_34 
       (.I0(\txb_reg[43][7] [1]),
        .I1(\txb_reg[42][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[41][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[40][7] [1]),
        .O(\int_reg[1]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_35 
       (.I0(\txb_reg[47][7] [1]),
        .I1(\txb_reg[46][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[45][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[44][7] [1]),
        .O(\int_reg[1]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_36 
       (.I0(\txb_reg[19][7] [1]),
        .I1(\txb_reg[18][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[17][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[16][7] [1]),
        .O(\int_reg[1]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_37 
       (.I0(\txb_reg[23][7] [1]),
        .I1(\txb_reg[22][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[21][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[20][7] [1]),
        .O(\int_reg[1]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_38 
       (.I0(\txb_reg[27][7] [1]),
        .I1(\txb_reg[26][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[25][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[24][7] [1]),
        .O(\int_reg[1]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_39 
       (.I0(\txb_reg[31][7] [1]),
        .I1(\txb_reg[30][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[29][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[28][7] [1]),
        .O(\int_reg[1]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_40 
       (.I0(\txb_reg[3][7] [1]),
        .I1(\txb_reg[2][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[1][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[0][7] [1]),
        .O(\int_reg[1]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_41 
       (.I0(\txb_reg[7][7] [1]),
        .I1(\txb_reg[6][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[5][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[4][7] [1]),
        .O(\int_reg[1]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_42 
       (.I0(\txb_reg[11][7] [1]),
        .I1(\txb_reg[10][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[9][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[8][7] [1]),
        .O(\int_reg[1]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_43 
       (.I0(\txb_reg[15][7] [1]),
        .I1(\txb_reg[14][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[13][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[12][7] [1]),
        .O(\int_reg[1]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_44 
       (.I0(\txb_reg[115][7] [1]),
        .I1(\txb_reg[114][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[113][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[112][7] [1]),
        .O(\int_reg[1]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_45 
       (.I0(\txb_reg[119][7] [1]),
        .I1(\txb_reg[118][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[117][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[116][7] [1]),
        .O(\int_reg[1]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_46 
       (.I0(\txb_reg[123][7] [1]),
        .I1(\txb_reg[122][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[121][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[120][7] [1]),
        .O(\int_reg[1]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_47 
       (.I0(\txb_reg[127][7] [1]),
        .I1(\txb_reg[126][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[125][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[124][7] [1]),
        .O(\int_reg[1]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_48 
       (.I0(\txb_reg[99][7] [1]),
        .I1(\txb_reg[98][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[97][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[96][7] [1]),
        .O(\int_reg[1]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_49 
       (.I0(\txb_reg[103][7] [1]),
        .I1(\txb_reg[102][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[101][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[100][7] [1]),
        .O(\int_reg[1]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_50 
       (.I0(\txb_reg[107][7] [1]),
        .I1(\txb_reg[106][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[105][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[104][7] [1]),
        .O(\int_reg[1]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_51 
       (.I0(\txb_reg[111][7] [1]),
        .I1(\txb_reg[110][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[109][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[108][7] [1]),
        .O(\int_reg[1]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_52 
       (.I0(\txb_reg[83][7] [1]),
        .I1(\txb_reg[82][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[81][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[80][7] [1]),
        .O(\int_reg[1]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_53 
       (.I0(\txb_reg[87][7] [1]),
        .I1(\txb_reg[86][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[85][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[84][7] [1]),
        .O(\int_reg[1]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_54 
       (.I0(\txb_reg[91][7] [1]),
        .I1(\txb_reg[90][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[89][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[88][7] [1]),
        .O(\int_reg[1]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_55 
       (.I0(\txb_reg[95][7] [1]),
        .I1(\txb_reg[94][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[93][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[92][7] [1]),
        .O(\int_reg[1]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_56 
       (.I0(\txb_reg[67][7] [1]),
        .I1(\txb_reg[66][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[65][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[64][7] [1]),
        .O(\int_reg[1]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_57 
       (.I0(\txb_reg[71][7] [1]),
        .I1(\txb_reg[70][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[69][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[68][7] [1]),
        .O(\int_reg[1]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_58 
       (.I0(\txb_reg[75][7] [1]),
        .I1(\txb_reg[74][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[73][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[72][7] [1]),
        .O(\int_reg[1]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[1]_i_59 
       (.I0(\txb_reg[79][7] [1]),
        .I1(\txb_reg[78][7] [1]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[77][7] [1]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[76][7] [1]),
        .O(\int_reg[1]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_2 
       (.I0(\int_reg_reg[2]_i_4_n_0 ),
        .I1(\int_reg_reg[2]_i_5_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[2]_i_6_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[2]_i_7_n_0 ),
        .O(\int_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_28 
       (.I0(\txb_reg[51][7] [2]),
        .I1(\txb_reg[50][7] [2]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[49][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[48][7] [2]),
        .O(\int_reg[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_29 
       (.I0(\txb_reg[55][7] [2]),
        .I1(\txb_reg[54][7] [2]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[53][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[52][7] [2]),
        .O(\int_reg[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_3 
       (.I0(\int_reg_reg[2]_i_8_n_0 ),
        .I1(\int_reg_reg[2]_i_9_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[2]_i_10_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[2]_i_11_n_0 ),
        .O(\int_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_30 
       (.I0(\txb_reg[59][7] [2]),
        .I1(\txb_reg[58][7] [2]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[57][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[56][7] [2]),
        .O(\int_reg[2]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_31 
       (.I0(\txb_reg[63][7] [2]),
        .I1(\txb_reg[62][7] [2]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[61][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[60][7] [2]),
        .O(\int_reg[2]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_32 
       (.I0(\txb_reg[35][7] [2]),
        .I1(\txb_reg[34][7] [2]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[33][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[32][7] [2]),
        .O(\int_reg[2]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_33 
       (.I0(\txb_reg[39][7] [2]),
        .I1(\txb_reg[38][7] [2]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[37][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[36][7] [2]),
        .O(\int_reg[2]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_34 
       (.I0(\txb_reg[43][7] [2]),
        .I1(\txb_reg[42][7] [2]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[41][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[40][7] [2]),
        .O(\int_reg[2]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_35 
       (.I0(\txb_reg[47][7] [2]),
        .I1(\txb_reg[46][7] [2]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[45][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[44][7] [2]),
        .O(\int_reg[2]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_36 
       (.I0(\txb_reg[19][7] [2]),
        .I1(\txb_reg[18][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[17][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[16][7] [2]),
        .O(\int_reg[2]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_37 
       (.I0(\txb_reg[23][7] [2]),
        .I1(\txb_reg[22][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[21][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[20][7] [2]),
        .O(\int_reg[2]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_38 
       (.I0(\txb_reg[27][7] [2]),
        .I1(\txb_reg[26][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[25][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[24][7] [2]),
        .O(\int_reg[2]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_39 
       (.I0(\txb_reg[31][7] [2]),
        .I1(\txb_reg[30][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[29][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[28][7] [2]),
        .O(\int_reg[2]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_40 
       (.I0(\txb_reg[3][7] [2]),
        .I1(\txb_reg[2][7] [2]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[1][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[0][7] [2]),
        .O(\int_reg[2]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_41 
       (.I0(\txb_reg[7][7] [2]),
        .I1(\txb_reg[6][7] [2]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[5][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[4][7] [2]),
        .O(\int_reg[2]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_42 
       (.I0(\txb_reg[11][7] [2]),
        .I1(\txb_reg[10][7] [2]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[9][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[8][7] [2]),
        .O(\int_reg[2]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_43 
       (.I0(\txb_reg[15][7] [2]),
        .I1(\txb_reg[14][7] [2]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[13][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[12][7] [2]),
        .O(\int_reg[2]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_44 
       (.I0(\txb_reg[115][7] [2]),
        .I1(\txb_reg[114][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[113][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[112][7] [2]),
        .O(\int_reg[2]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_45 
       (.I0(\txb_reg[119][7] [2]),
        .I1(\txb_reg[118][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[117][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[116][7] [2]),
        .O(\int_reg[2]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_46 
       (.I0(\txb_reg[123][7] [2]),
        .I1(\txb_reg[122][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[121][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[120][7] [2]),
        .O(\int_reg[2]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_47 
       (.I0(\txb_reg[127][7] [2]),
        .I1(\txb_reg[126][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[125][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[124][7] [2]),
        .O(\int_reg[2]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_48 
       (.I0(\txb_reg[99][7] [2]),
        .I1(\txb_reg[98][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[97][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[96][7] [2]),
        .O(\int_reg[2]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_49 
       (.I0(\txb_reg[103][7] [2]),
        .I1(\txb_reg[102][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[101][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[100][7] [2]),
        .O(\int_reg[2]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_50 
       (.I0(\txb_reg[107][7] [2]),
        .I1(\txb_reg[106][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[105][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[104][7] [2]),
        .O(\int_reg[2]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_51 
       (.I0(\txb_reg[111][7] [2]),
        .I1(\txb_reg[110][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[109][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[108][7] [2]),
        .O(\int_reg[2]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_52 
       (.I0(\txb_reg[83][7] [2]),
        .I1(\txb_reg[82][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[81][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[80][7] [2]),
        .O(\int_reg[2]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_53 
       (.I0(\txb_reg[87][7] [2]),
        .I1(\txb_reg[86][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[85][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[84][7] [2]),
        .O(\int_reg[2]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_54 
       (.I0(\txb_reg[91][7] [2]),
        .I1(\txb_reg[90][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[89][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[88][7] [2]),
        .O(\int_reg[2]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_55 
       (.I0(\txb_reg[95][7] [2]),
        .I1(\txb_reg[94][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[93][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[92][7] [2]),
        .O(\int_reg[2]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_56 
       (.I0(\txb_reg[67][7] [2]),
        .I1(\txb_reg[66][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[65][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[64][7] [2]),
        .O(\int_reg[2]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_57 
       (.I0(\txb_reg[71][7] [2]),
        .I1(\txb_reg[70][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[69][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[68][7] [2]),
        .O(\int_reg[2]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_58 
       (.I0(\txb_reg[75][7] [2]),
        .I1(\txb_reg[74][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[73][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[72][7] [2]),
        .O(\int_reg[2]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[2]_i_59 
       (.I0(\txb_reg[79][7] [2]),
        .I1(\txb_reg[78][7] [2]),
        .I2(\tx_idx_reg[1]_rep ),
        .I3(\txb_reg[77][7] [2]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[76][7] [2]),
        .O(\int_reg[2]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_2 
       (.I0(\int_reg_reg[3]_i_4_n_0 ),
        .I1(\int_reg_reg[3]_i_5_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[3]_i_6_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[3]_i_7_n_0 ),
        .O(\int_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_28 
       (.I0(\txb_reg[51][7] [3]),
        .I1(\txb_reg[50][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[49][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[48][7] [3]),
        .O(\int_reg[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_29 
       (.I0(\txb_reg[55][7] [3]),
        .I1(\txb_reg[54][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[53][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[52][7] [3]),
        .O(\int_reg[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_3 
       (.I0(\int_reg_reg[3]_i_8_n_0 ),
        .I1(\int_reg_reg[3]_i_9_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[3]_i_10_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[3]_i_11_n_0 ),
        .O(\int_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_30 
       (.I0(\txb_reg[59][7] [3]),
        .I1(\txb_reg[58][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[57][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[56][7] [3]),
        .O(\int_reg[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_31 
       (.I0(\txb_reg[63][7] [3]),
        .I1(\txb_reg[62][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[61][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[60][7] [3]),
        .O(\int_reg[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_32 
       (.I0(\txb_reg[35][7] [3]),
        .I1(\txb_reg[34][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[33][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[32][7] [3]),
        .O(\int_reg[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_33 
       (.I0(\txb_reg[39][7] [3]),
        .I1(\txb_reg[38][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[37][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[36][7] [3]),
        .O(\int_reg[3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_34 
       (.I0(\txb_reg[43][7] [3]),
        .I1(\txb_reg[42][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[41][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[40][7] [3]),
        .O(\int_reg[3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_35 
       (.I0(\txb_reg[47][7] [3]),
        .I1(\txb_reg[46][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[45][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[44][7] [3]),
        .O(\int_reg[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_36 
       (.I0(\txb_reg[19][7] [3]),
        .I1(\txb_reg[18][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[17][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[16][7] [3]),
        .O(\int_reg[3]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_37 
       (.I0(\txb_reg[23][7] [3]),
        .I1(\txb_reg[22][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[21][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[20][7] [3]),
        .O(\int_reg[3]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_38 
       (.I0(\txb_reg[27][7] [3]),
        .I1(\txb_reg[26][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[25][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[24][7] [3]),
        .O(\int_reg[3]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_39 
       (.I0(\txb_reg[31][7] [3]),
        .I1(\txb_reg[30][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[29][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[28][7] [3]),
        .O(\int_reg[3]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_40 
       (.I0(\txb_reg[3][7] [3]),
        .I1(\txb_reg[2][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[1][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[0][7] [3]),
        .O(\int_reg[3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_41 
       (.I0(\txb_reg[7][7] [3]),
        .I1(\txb_reg[6][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[5][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[4][7] [3]),
        .O(\int_reg[3]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_42 
       (.I0(\txb_reg[11][7] [3]),
        .I1(\txb_reg[10][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[9][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[8][7] [3]),
        .O(\int_reg[3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_43 
       (.I0(\txb_reg[15][7] [3]),
        .I1(\txb_reg[14][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[13][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[12][7] [3]),
        .O(\int_reg[3]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_44 
       (.I0(\txb_reg[115][7] [3]),
        .I1(\txb_reg[114][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[113][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[112][7] [3]),
        .O(\int_reg[3]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_45 
       (.I0(\txb_reg[119][7] [3]),
        .I1(\txb_reg[118][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[117][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[116][7] [3]),
        .O(\int_reg[3]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_46 
       (.I0(\txb_reg[123][7] [3]),
        .I1(\txb_reg[122][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[121][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[120][7] [3]),
        .O(\int_reg[3]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_47 
       (.I0(\txb_reg[127][7] [3]),
        .I1(\txb_reg[126][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[125][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[124][7] [3]),
        .O(\int_reg[3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_48 
       (.I0(\txb_reg[99][7] [3]),
        .I1(\txb_reg[98][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[97][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[96][7] [3]),
        .O(\int_reg[3]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_49 
       (.I0(\txb_reg[103][7] [3]),
        .I1(\txb_reg[102][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[101][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[100][7] [3]),
        .O(\int_reg[3]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_50 
       (.I0(\txb_reg[107][7] [3]),
        .I1(\txb_reg[106][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[105][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[104][7] [3]),
        .O(\int_reg[3]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_51 
       (.I0(\txb_reg[111][7] [3]),
        .I1(\txb_reg[110][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[109][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[108][7] [3]),
        .O(\int_reg[3]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_52 
       (.I0(\txb_reg[83][7] [3]),
        .I1(\txb_reg[82][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[81][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[80][7] [3]),
        .O(\int_reg[3]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_53 
       (.I0(\txb_reg[87][7] [3]),
        .I1(\txb_reg[86][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[85][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[84][7] [3]),
        .O(\int_reg[3]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_54 
       (.I0(\txb_reg[91][7] [3]),
        .I1(\txb_reg[90][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[89][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[88][7] [3]),
        .O(\int_reg[3]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_55 
       (.I0(\txb_reg[95][7] [3]),
        .I1(\txb_reg[94][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[93][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[92][7] [3]),
        .O(\int_reg[3]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_56 
       (.I0(\txb_reg[67][7] [3]),
        .I1(\txb_reg[66][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[65][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[64][7] [3]),
        .O(\int_reg[3]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_57 
       (.I0(\txb_reg[71][7] [3]),
        .I1(\txb_reg[70][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[69][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[68][7] [3]),
        .O(\int_reg[3]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_58 
       (.I0(\txb_reg[75][7] [3]),
        .I1(\txb_reg[74][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[73][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[72][7] [3]),
        .O(\int_reg[3]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[3]_i_59 
       (.I0(\txb_reg[79][7] [3]),
        .I1(\txb_reg[78][7] [3]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[77][7] [3]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[76][7] [3]),
        .O(\int_reg[3]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_2 
       (.I0(\int_reg_reg[4]_i_4_n_0 ),
        .I1(\int_reg_reg[4]_i_5_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[4]_i_6_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[4]_i_7_n_0 ),
        .O(\int_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_28 
       (.I0(\txb_reg[51][7] [4]),
        .I1(\txb_reg[50][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[49][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[48][7] [4]),
        .O(\int_reg[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_29 
       (.I0(\txb_reg[55][7] [4]),
        .I1(\txb_reg[54][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[53][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[52][7] [4]),
        .O(\int_reg[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_3 
       (.I0(\int_reg_reg[4]_i_8_n_0 ),
        .I1(\int_reg_reg[4]_i_9_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[4]_i_10_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[4]_i_11_n_0 ),
        .O(\int_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_30 
       (.I0(\txb_reg[59][7] [4]),
        .I1(\txb_reg[58][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[57][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[56][7] [4]),
        .O(\int_reg[4]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_31 
       (.I0(\txb_reg[63][7] [4]),
        .I1(\txb_reg[62][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[61][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[60][7] [4]),
        .O(\int_reg[4]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_32 
       (.I0(\txb_reg[35][7] [4]),
        .I1(\txb_reg[34][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[33][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[32][7] [4]),
        .O(\int_reg[4]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_33 
       (.I0(\txb_reg[39][7] [4]),
        .I1(\txb_reg[38][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[37][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[36][7] [4]),
        .O(\int_reg[4]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_34 
       (.I0(\txb_reg[43][7] [4]),
        .I1(\txb_reg[42][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[41][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[40][7] [4]),
        .O(\int_reg[4]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_35 
       (.I0(\txb_reg[47][7] [4]),
        .I1(\txb_reg[46][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[45][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[44][7] [4]),
        .O(\int_reg[4]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_36 
       (.I0(\txb_reg[19][7] [4]),
        .I1(\txb_reg[18][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[17][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[16][7] [4]),
        .O(\int_reg[4]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_37 
       (.I0(\txb_reg[23][7] [4]),
        .I1(\txb_reg[22][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[21][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[20][7] [4]),
        .O(\int_reg[4]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_38 
       (.I0(\txb_reg[27][7] [4]),
        .I1(\txb_reg[26][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[25][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[24][7] [4]),
        .O(\int_reg[4]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_39 
       (.I0(\txb_reg[31][7] [4]),
        .I1(\txb_reg[30][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[29][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[28][7] [4]),
        .O(\int_reg[4]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_40 
       (.I0(\txb_reg[3][7] [4]),
        .I1(\txb_reg[2][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[1][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[0][7] [4]),
        .O(\int_reg[4]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_41 
       (.I0(\txb_reg[7][7] [4]),
        .I1(\txb_reg[6][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[5][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[4][7] [4]),
        .O(\int_reg[4]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_42 
       (.I0(\txb_reg[11][7] [4]),
        .I1(\txb_reg[10][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[9][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[8][7] [4]),
        .O(\int_reg[4]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_43 
       (.I0(\txb_reg[15][7] [4]),
        .I1(\txb_reg[14][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[13][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[12][7] [4]),
        .O(\int_reg[4]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_44 
       (.I0(\txb_reg[115][7] [4]),
        .I1(\txb_reg[114][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[113][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[112][7] [4]),
        .O(\int_reg[4]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_45 
       (.I0(\txb_reg[119][7] [4]),
        .I1(\txb_reg[118][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[117][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[116][7] [4]),
        .O(\int_reg[4]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_46 
       (.I0(\txb_reg[123][7] [4]),
        .I1(\txb_reg[122][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[121][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[120][7] [4]),
        .O(\int_reg[4]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_47 
       (.I0(\txb_reg[127][7] [4]),
        .I1(\txb_reg[126][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[125][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[124][7] [4]),
        .O(\int_reg[4]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_48 
       (.I0(\txb_reg[99][7] [4]),
        .I1(\txb_reg[98][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[97][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[96][7] [4]),
        .O(\int_reg[4]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_49 
       (.I0(\txb_reg[103][7] [4]),
        .I1(\txb_reg[102][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[101][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[100][7] [4]),
        .O(\int_reg[4]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_50 
       (.I0(\txb_reg[107][7] [4]),
        .I1(\txb_reg[106][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[105][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[104][7] [4]),
        .O(\int_reg[4]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_51 
       (.I0(\txb_reg[111][7] [4]),
        .I1(\txb_reg[110][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[109][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[108][7] [4]),
        .O(\int_reg[4]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_52 
       (.I0(\txb_reg[83][7] [4]),
        .I1(\txb_reg[82][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[81][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[80][7] [4]),
        .O(\int_reg[4]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_53 
       (.I0(\txb_reg[87][7] [4]),
        .I1(\txb_reg[86][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[85][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[84][7] [4]),
        .O(\int_reg[4]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_54 
       (.I0(\txb_reg[91][7] [4]),
        .I1(\txb_reg[90][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[89][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[88][7] [4]),
        .O(\int_reg[4]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_55 
       (.I0(\txb_reg[95][7] [4]),
        .I1(\txb_reg[94][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[93][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[92][7] [4]),
        .O(\int_reg[4]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_56 
       (.I0(\txb_reg[67][7] [4]),
        .I1(\txb_reg[66][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[65][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[64][7] [4]),
        .O(\int_reg[4]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_57 
       (.I0(\txb_reg[71][7] [4]),
        .I1(\txb_reg[70][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[69][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[68][7] [4]),
        .O(\int_reg[4]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_58 
       (.I0(\txb_reg[75][7] [4]),
        .I1(\txb_reg[74][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[73][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[72][7] [4]),
        .O(\int_reg[4]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[4]_i_59 
       (.I0(\txb_reg[79][7] [4]),
        .I1(\txb_reg[78][7] [4]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[77][7] [4]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[76][7] [4]),
        .O(\int_reg[4]_i_59_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \int_reg[5]_i_1 
       (.I0(\int_reg[5]_i_2_n_0 ),
        .I1(\tx_idx_reg[6] [6]),
        .I2(\int_reg[5]_i_3_n_0 ),
        .O(\int_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \int_reg[5]_i_2 
       (.I0(\int_reg_reg[5]_i_4_n_0 ),
        .I1(\int_reg_reg[5]_i_5_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[5]_i_6_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[5]_i_7_n_0 ),
        .O(\int_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_28 
       (.I0(\txb_reg[115][7] [5]),
        .I1(\txb_reg[114][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[113][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[112][7] [5]),
        .O(\int_reg[5]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_29 
       (.I0(\txb_reg[119][7] [5]),
        .I1(\txb_reg[118][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[117][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[116][7] [5]),
        .O(\int_reg[5]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \int_reg[5]_i_3 
       (.I0(\int_reg_reg[5]_i_8_n_0 ),
        .I1(\int_reg_reg[5]_i_9_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[5]_i_10_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[5]_i_11_n_0 ),
        .O(\int_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_30 
       (.I0(\txb_reg[123][7] [5]),
        .I1(\txb_reg[122][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[121][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[120][7] [5]),
        .O(\int_reg[5]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_31 
       (.I0(\txb_reg[127][7] [5]),
        .I1(\txb_reg[126][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[125][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[124][7] [5]),
        .O(\int_reg[5]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_32 
       (.I0(\txb_reg[99][7] [5]),
        .I1(\txb_reg[98][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[97][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[96][7] [5]),
        .O(\int_reg[5]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_33 
       (.I0(\txb_reg[103][7] [5]),
        .I1(\txb_reg[102][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[101][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[100][7] [5]),
        .O(\int_reg[5]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_34 
       (.I0(\txb_reg[107][7] [5]),
        .I1(\txb_reg[106][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[105][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[104][7] [5]),
        .O(\int_reg[5]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_35 
       (.I0(\txb_reg[111][7] [5]),
        .I1(\txb_reg[110][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[109][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[108][7] [5]),
        .O(\int_reg[5]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_36 
       (.I0(\txb_reg[83][7] [5]),
        .I1(\txb_reg[82][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[81][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[80][7] [5]),
        .O(\int_reg[5]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_37 
       (.I0(\txb_reg[87][7] [5]),
        .I1(\txb_reg[86][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[85][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[84][7] [5]),
        .O(\int_reg[5]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_38 
       (.I0(\txb_reg[91][7] [5]),
        .I1(\txb_reg[90][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[89][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[88][7] [5]),
        .O(\int_reg[5]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_39 
       (.I0(\txb_reg[95][7] [5]),
        .I1(\txb_reg[94][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[93][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[92][7] [5]),
        .O(\int_reg[5]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_40 
       (.I0(\txb_reg[67][7] [5]),
        .I1(\txb_reg[66][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[65][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[64][7] [5]),
        .O(\int_reg[5]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_41 
       (.I0(\txb_reg[71][7] [5]),
        .I1(\txb_reg[70][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[69][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[68][7] [5]),
        .O(\int_reg[5]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_42 
       (.I0(\txb_reg[75][7] [5]),
        .I1(\txb_reg[74][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[73][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[72][7] [5]),
        .O(\int_reg[5]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_43 
       (.I0(\txb_reg[79][7] [5]),
        .I1(\txb_reg[78][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[77][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[76][7] [5]),
        .O(\int_reg[5]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_44 
       (.I0(\txb_reg[19][7] [5]),
        .I1(\txb_reg[18][7] [5]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[17][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[16][7] [5]),
        .O(\int_reg[5]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_45 
       (.I0(\txb_reg[23][7] [5]),
        .I1(\txb_reg[22][7] [5]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[21][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[20][7] [5]),
        .O(\int_reg[5]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_46 
       (.I0(\txb_reg[27][7] [5]),
        .I1(\txb_reg[26][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[25][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[24][7] [5]),
        .O(\int_reg[5]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_47 
       (.I0(\txb_reg[31][7] [5]),
        .I1(\txb_reg[30][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[29][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[28][7] [5]),
        .O(\int_reg[5]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_48 
       (.I0(\txb_reg[3][7] [5]),
        .I1(\txb_reg[2][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[1][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[0][7] [5]),
        .O(\int_reg[5]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_49 
       (.I0(\txb_reg[7][7] [5]),
        .I1(\txb_reg[6][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[5][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[4][7] [5]),
        .O(\int_reg[5]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_50 
       (.I0(\txb_reg[11][7] [5]),
        .I1(\txb_reg[10][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[9][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[8][7] [5]),
        .O(\int_reg[5]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_51 
       (.I0(\txb_reg[15][7] [5]),
        .I1(\txb_reg[14][7] [5]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[13][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[12][7] [5]),
        .O(\int_reg[5]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_52 
       (.I0(\txb_reg[51][7] [5]),
        .I1(\txb_reg[50][7] [5]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[49][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[48][7] [5]),
        .O(\int_reg[5]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_53 
       (.I0(\txb_reg[55][7] [5]),
        .I1(\txb_reg[54][7] [5]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[53][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[52][7] [5]),
        .O(\int_reg[5]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_54 
       (.I0(\txb_reg[59][7] [5]),
        .I1(\txb_reg[58][7] [5]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[57][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[56][7] [5]),
        .O(\int_reg[5]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_55 
       (.I0(\txb_reg[63][7] [5]),
        .I1(\txb_reg[62][7] [5]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[61][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[60][7] [5]),
        .O(\int_reg[5]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_56 
       (.I0(\txb_reg[35][7] [5]),
        .I1(\txb_reg[34][7] [5]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[33][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[32][7] [5]),
        .O(\int_reg[5]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_57 
       (.I0(\txb_reg[39][7] [5]),
        .I1(\txb_reg[38][7] [5]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[37][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[36][7] [5]),
        .O(\int_reg[5]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_58 
       (.I0(\txb_reg[43][7] [5]),
        .I1(\txb_reg[42][7] [5]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[41][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[40][7] [5]),
        .O(\int_reg[5]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[5]_i_59 
       (.I0(\txb_reg[47][7] [5]),
        .I1(\txb_reg[46][7] [5]),
        .I2(\tx_idx_reg[1]_rep__0 ),
        .I3(\txb_reg[45][7] [5]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[44][7] [5]),
        .O(\int_reg[5]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_2 
       (.I0(\int_reg_reg[6]_i_4_n_0 ),
        .I1(\int_reg_reg[6]_i_5_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[6]_i_6_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[6]_i_7_n_0 ),
        .O(\int_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_28 
       (.I0(\txb_reg[51][7] [6]),
        .I1(\txb_reg[50][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[49][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[48][7] [6]),
        .O(\int_reg[6]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_29 
       (.I0(\txb_reg[55][7] [6]),
        .I1(\txb_reg[54][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[53][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[52][7] [6]),
        .O(\int_reg[6]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_3 
       (.I0(\int_reg_reg[6]_i_8_n_0 ),
        .I1(\int_reg_reg[6]_i_9_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[6]_i_10_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[6]_i_11_n_0 ),
        .O(\int_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_30 
       (.I0(\txb_reg[59][7] [6]),
        .I1(\txb_reg[58][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[57][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[56][7] [6]),
        .O(\int_reg[6]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_31 
       (.I0(\txb_reg[63][7] [6]),
        .I1(\txb_reg[62][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[61][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[60][7] [6]),
        .O(\int_reg[6]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_32 
       (.I0(\txb_reg[35][7] [6]),
        .I1(\txb_reg[34][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[33][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[32][7] [6]),
        .O(\int_reg[6]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_33 
       (.I0(\txb_reg[39][7] [6]),
        .I1(\txb_reg[38][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[37][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[36][7] [6]),
        .O(\int_reg[6]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_34 
       (.I0(\txb_reg[43][7] [6]),
        .I1(\txb_reg[42][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[41][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[40][7] [6]),
        .O(\int_reg[6]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_35 
       (.I0(\txb_reg[47][7] [6]),
        .I1(\txb_reg[46][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[45][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[44][7] [6]),
        .O(\int_reg[6]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_36 
       (.I0(\txb_reg[19][7] [6]),
        .I1(\txb_reg[18][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[17][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[16][7] [6]),
        .O(\int_reg[6]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_37 
       (.I0(\txb_reg[23][7] [6]),
        .I1(\txb_reg[22][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[21][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[20][7] [6]),
        .O(\int_reg[6]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_38 
       (.I0(\txb_reg[27][7] [6]),
        .I1(\txb_reg[26][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[25][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[24][7] [6]),
        .O(\int_reg[6]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_39 
       (.I0(\txb_reg[31][7] [6]),
        .I1(\txb_reg[30][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[29][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[28][7] [6]),
        .O(\int_reg[6]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_40 
       (.I0(\txb_reg[3][7] [6]),
        .I1(\txb_reg[2][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[1][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[0][7] [6]),
        .O(\int_reg[6]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_41 
       (.I0(\txb_reg[7][7] [6]),
        .I1(\txb_reg[6][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[5][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[4][7] [6]),
        .O(\int_reg[6]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_42 
       (.I0(\txb_reg[11][7] [6]),
        .I1(\txb_reg[10][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[9][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[8][7] [6]),
        .O(\int_reg[6]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_43 
       (.I0(\txb_reg[15][7] [6]),
        .I1(\txb_reg[14][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[13][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[12][7] [6]),
        .O(\int_reg[6]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_44 
       (.I0(\txb_reg[115][7] [6]),
        .I1(\txb_reg[114][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[113][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[112][7] [6]),
        .O(\int_reg[6]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_45 
       (.I0(\txb_reg[119][7] [6]),
        .I1(\txb_reg[118][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[117][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[116][7] [6]),
        .O(\int_reg[6]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_46 
       (.I0(\txb_reg[123][7] [6]),
        .I1(\txb_reg[122][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[121][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[120][7] [6]),
        .O(\int_reg[6]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_47 
       (.I0(\txb_reg[127][7] [6]),
        .I1(\txb_reg[126][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[125][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[124][7] [6]),
        .O(\int_reg[6]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_48 
       (.I0(\txb_reg[99][7] [6]),
        .I1(\txb_reg[98][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[97][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[96][7] [6]),
        .O(\int_reg[6]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_49 
       (.I0(\txb_reg[103][7] [6]),
        .I1(\txb_reg[102][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[101][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[100][7] [6]),
        .O(\int_reg[6]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_50 
       (.I0(\txb_reg[107][7] [6]),
        .I1(\txb_reg[106][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[105][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[104][7] [6]),
        .O(\int_reg[6]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_51 
       (.I0(\txb_reg[111][7] [6]),
        .I1(\txb_reg[110][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[109][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[108][7] [6]),
        .O(\int_reg[6]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_52 
       (.I0(\txb_reg[83][7] [6]),
        .I1(\txb_reg[82][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[81][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[80][7] [6]),
        .O(\int_reg[6]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_53 
       (.I0(\txb_reg[87][7] [6]),
        .I1(\txb_reg[86][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[85][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[84][7] [6]),
        .O(\int_reg[6]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_54 
       (.I0(\txb_reg[91][7] [6]),
        .I1(\txb_reg[90][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[89][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[88][7] [6]),
        .O(\int_reg[6]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_55 
       (.I0(\txb_reg[95][7] [6]),
        .I1(\txb_reg[94][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[93][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[92][7] [6]),
        .O(\int_reg[6]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_56 
       (.I0(\txb_reg[67][7] [6]),
        .I1(\txb_reg[66][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[65][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[64][7] [6]),
        .O(\int_reg[6]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_57 
       (.I0(\txb_reg[71][7] [6]),
        .I1(\txb_reg[70][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[69][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[68][7] [6]),
        .O(\int_reg[6]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_58 
       (.I0(\txb_reg[75][7] [6]),
        .I1(\txb_reg[74][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[73][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[72][7] [6]),
        .O(\int_reg[6]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[6]_i_59 
       (.I0(\txb_reg[79][7] [6]),
        .I1(\txb_reg[78][7] [6]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[77][7] [6]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[76][7] [6]),
        .O(\int_reg[6]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_30 
       (.I0(\txb_reg[51][7] [7]),
        .I1(\txb_reg[50][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[49][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[48][7] [7]),
        .O(\int_reg[7]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_31 
       (.I0(\txb_reg[55][7] [7]),
        .I1(\txb_reg[54][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[53][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[52][7] [7]),
        .O(\int_reg[7]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_32 
       (.I0(\txb_reg[59][7] [7]),
        .I1(\txb_reg[58][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[57][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[56][7] [7]),
        .O(\int_reg[7]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_33 
       (.I0(\txb_reg[63][7] [7]),
        .I1(\txb_reg[62][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[61][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[60][7] [7]),
        .O(\int_reg[7]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_34 
       (.I0(\txb_reg[35][7] [7]),
        .I1(\txb_reg[34][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[33][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[32][7] [7]),
        .O(\int_reg[7]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_35 
       (.I0(\txb_reg[39][7] [7]),
        .I1(\txb_reg[38][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[37][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[36][7] [7]),
        .O(\int_reg[7]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_36 
       (.I0(\txb_reg[43][7] [7]),
        .I1(\txb_reg[42][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[41][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[40][7] [7]),
        .O(\int_reg[7]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_37 
       (.I0(\txb_reg[47][7] [7]),
        .I1(\txb_reg[46][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[45][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[44][7] [7]),
        .O(\int_reg[7]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_38 
       (.I0(\txb_reg[19][7] [7]),
        .I1(\txb_reg[18][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[17][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[16][7] [7]),
        .O(\int_reg[7]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_39 
       (.I0(\txb_reg[23][7] [7]),
        .I1(\txb_reg[22][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[21][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[20][7] [7]),
        .O(\int_reg[7]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_4 
       (.I0(\int_reg_reg[7]_i_6_n_0 ),
        .I1(\int_reg_reg[7]_i_7_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[7]_i_8_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[7]_i_9_n_0 ),
        .O(\int_reg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_40 
       (.I0(\txb_reg[27][7] [7]),
        .I1(\txb_reg[26][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[25][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[24][7] [7]),
        .O(\int_reg[7]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_41 
       (.I0(\txb_reg[31][7] [7]),
        .I1(\txb_reg[30][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[29][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[28][7] [7]),
        .O(\int_reg[7]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_42 
       (.I0(\txb_reg[3][7] [7]),
        .I1(\txb_reg[2][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[1][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[0][7] [7]),
        .O(\int_reg[7]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_43 
       (.I0(\txb_reg[7][7] [7]),
        .I1(\txb_reg[6][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[5][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[4][7] [7]),
        .O(\int_reg[7]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_44 
       (.I0(\txb_reg[11][7] [7]),
        .I1(\txb_reg[10][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[9][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[8][7] [7]),
        .O(\int_reg[7]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_45 
       (.I0(\txb_reg[15][7] [7]),
        .I1(\txb_reg[14][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[13][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[12][7] [7]),
        .O(\int_reg[7]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_46 
       (.I0(\txb_reg[115][7] [7]),
        .I1(\txb_reg[114][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[113][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[112][7] [7]),
        .O(\int_reg[7]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_47 
       (.I0(\txb_reg[119][7] [7]),
        .I1(\txb_reg[118][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[117][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[116][7] [7]),
        .O(\int_reg[7]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_48 
       (.I0(\txb_reg[123][7] [7]),
        .I1(\txb_reg[122][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[121][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[120][7] [7]),
        .O(\int_reg[7]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_49 
       (.I0(\txb_reg[127][7] [7]),
        .I1(\txb_reg[126][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[125][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[124][7] [7]),
        .O(\int_reg[7]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_5 
       (.I0(\int_reg_reg[7]_i_10_n_0 ),
        .I1(\int_reg_reg[7]_i_11_n_0 ),
        .I2(\tx_idx_reg[6] [5]),
        .I3(\int_reg_reg[7]_i_12_n_0 ),
        .I4(\tx_idx_reg[6] [4]),
        .I5(\int_reg_reg[7]_i_13_n_0 ),
        .O(\int_reg[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_50 
       (.I0(\txb_reg[99][7] [7]),
        .I1(\txb_reg[98][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[97][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[96][7] [7]),
        .O(\int_reg[7]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_51 
       (.I0(\txb_reg[103][7] [7]),
        .I1(\txb_reg[102][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[101][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[100][7] [7]),
        .O(\int_reg[7]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_52 
       (.I0(\txb_reg[107][7] [7]),
        .I1(\txb_reg[106][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[105][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[104][7] [7]),
        .O(\int_reg[7]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_53 
       (.I0(\txb_reg[111][7] [7]),
        .I1(\txb_reg[110][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[109][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[108][7] [7]),
        .O(\int_reg[7]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_54 
       (.I0(\txb_reg[83][7] [7]),
        .I1(\txb_reg[82][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[81][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[80][7] [7]),
        .O(\int_reg[7]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_55 
       (.I0(\txb_reg[87][7] [7]),
        .I1(\txb_reg[86][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[85][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[84][7] [7]),
        .O(\int_reg[7]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_56 
       (.I0(\txb_reg[91][7] [7]),
        .I1(\txb_reg[90][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[89][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[88][7] [7]),
        .O(\int_reg[7]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_57 
       (.I0(\txb_reg[95][7] [7]),
        .I1(\txb_reg[94][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[93][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[92][7] [7]),
        .O(\int_reg[7]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_58 
       (.I0(\txb_reg[67][7] [7]),
        .I1(\txb_reg[66][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[65][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[64][7] [7]),
        .O(\int_reg[7]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_59 
       (.I0(\txb_reg[71][7] [7]),
        .I1(\txb_reg[70][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[69][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[68][7] [7]),
        .O(\int_reg[7]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_60 
       (.I0(\txb_reg[75][7] [7]),
        .I1(\txb_reg[74][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[73][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[72][7] [7]),
        .O(\int_reg[7]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \int_reg[7]_i_61 
       (.I0(\txb_reg[79][7] [7]),
        .I1(\txb_reg[78][7] [7]),
        .I2(\tx_idx_reg[1]_rep__1 ),
        .I3(\txb_reg[77][7] [7]),
        .I4(\tx_idx_reg[6] [0]),
        .I5(\txb_reg[76][7] [7]),
        .O(\int_reg[7]_i_61_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[1]_2 ),
        .D(\int_reg_reg[1]_0 [0]),
        .Q(int_reg[0]),
        .R(SR));
  MUXF7 \int_reg_reg[0]_i_1 
       (.I0(\int_reg[0]_i_2_n_0 ),
        .I1(\int_reg[0]_i_3_n_0 ),
        .O(\int_reg_reg[1]_0 [0]),
        .S(\tx_idx_reg[6] [6]));
  MUXF8 \int_reg_reg[0]_i_10 
       (.I0(\int_reg_reg[0]_i_24_n_0 ),
        .I1(\int_reg_reg[0]_i_25_n_0 ),
        .O(\int_reg_reg[0]_i_10_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[0]_i_11 
       (.I0(\int_reg_reg[0]_i_26_n_0 ),
        .I1(\int_reg_reg[0]_i_27_n_0 ),
        .O(\int_reg_reg[0]_i_11_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF7 \int_reg_reg[0]_i_12 
       (.I0(\int_reg[0]_i_28_n_0 ),
        .I1(\int_reg[0]_i_29_n_0 ),
        .O(\int_reg_reg[0]_i_12_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[0]_i_13 
       (.I0(\int_reg[0]_i_30_n_0 ),
        .I1(\int_reg[0]_i_31_n_0 ),
        .O(\int_reg_reg[0]_i_13_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[0]_i_14 
       (.I0(\int_reg[0]_i_32_n_0 ),
        .I1(\int_reg[0]_i_33_n_0 ),
        .O(\int_reg_reg[0]_i_14_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[0]_i_15 
       (.I0(\int_reg[0]_i_34_n_0 ),
        .I1(\int_reg[0]_i_35_n_0 ),
        .O(\int_reg_reg[0]_i_15_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[0]_i_16 
       (.I0(\int_reg[0]_i_36_n_0 ),
        .I1(\int_reg[0]_i_37_n_0 ),
        .O(\int_reg_reg[0]_i_16_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[0]_i_17 
       (.I0(\int_reg[0]_i_38_n_0 ),
        .I1(\int_reg[0]_i_39_n_0 ),
        .O(\int_reg_reg[0]_i_17_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[0]_i_18 
       (.I0(\int_reg[0]_i_40_n_0 ),
        .I1(\int_reg[0]_i_41_n_0 ),
        .O(\int_reg_reg[0]_i_18_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[0]_i_19 
       (.I0(\int_reg[0]_i_42_n_0 ),
        .I1(\int_reg[0]_i_43_n_0 ),
        .O(\int_reg_reg[0]_i_19_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[0]_i_20 
       (.I0(\int_reg[0]_i_44_n_0 ),
        .I1(\int_reg[0]_i_45_n_0 ),
        .O(\int_reg_reg[0]_i_20_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[0]_i_21 
       (.I0(\int_reg[0]_i_46_n_0 ),
        .I1(\int_reg[0]_i_47_n_0 ),
        .O(\int_reg_reg[0]_i_21_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[0]_i_22 
       (.I0(\int_reg[0]_i_48_n_0 ),
        .I1(\int_reg[0]_i_49_n_0 ),
        .O(\int_reg_reg[0]_i_22_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[0]_i_23 
       (.I0(\int_reg[0]_i_50_n_0 ),
        .I1(\int_reg[0]_i_51_n_0 ),
        .O(\int_reg_reg[0]_i_23_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[0]_i_24 
       (.I0(\int_reg[0]_i_52_n_0 ),
        .I1(\int_reg[0]_i_53_n_0 ),
        .O(\int_reg_reg[0]_i_24_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[0]_i_25 
       (.I0(\int_reg[0]_i_54_n_0 ),
        .I1(\int_reg[0]_i_55_n_0 ),
        .O(\int_reg_reg[0]_i_25_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[0]_i_26 
       (.I0(\int_reg[0]_i_56_n_0 ),
        .I1(\int_reg[0]_i_57_n_0 ),
        .O(\int_reg_reg[0]_i_26_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[0]_i_27 
       (.I0(\int_reg[0]_i_58_n_0 ),
        .I1(\int_reg[0]_i_59_n_0 ),
        .O(\int_reg_reg[0]_i_27_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF8 \int_reg_reg[0]_i_4 
       (.I0(\int_reg_reg[0]_i_12_n_0 ),
        .I1(\int_reg_reg[0]_i_13_n_0 ),
        .O(\int_reg_reg[0]_i_4_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[0]_i_5 
       (.I0(\int_reg_reg[0]_i_14_n_0 ),
        .I1(\int_reg_reg[0]_i_15_n_0 ),
        .O(\int_reg_reg[0]_i_5_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[0]_i_6 
       (.I0(\int_reg_reg[0]_i_16_n_0 ),
        .I1(\int_reg_reg[0]_i_17_n_0 ),
        .O(\int_reg_reg[0]_i_6_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[0]_i_7 
       (.I0(\int_reg_reg[0]_i_18_n_0 ),
        .I1(\int_reg_reg[0]_i_19_n_0 ),
        .O(\int_reg_reg[0]_i_7_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[0]_i_8 
       (.I0(\int_reg_reg[0]_i_20_n_0 ),
        .I1(\int_reg_reg[0]_i_21_n_0 ),
        .O(\int_reg_reg[0]_i_8_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[0]_i_9 
       (.I0(\int_reg_reg[0]_i_22_n_0 ),
        .I1(\int_reg_reg[0]_i_23_n_0 ),
        .O(\int_reg_reg[0]_i_9_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[1]_2 ),
        .D(\int_reg_reg[1]_0 [1]),
        .Q(int_reg[1]),
        .R(SR));
  MUXF7 \int_reg_reg[1]_i_1 
       (.I0(\int_reg[1]_i_2_n_0 ),
        .I1(\int_reg[1]_i_3_n_0 ),
        .O(\int_reg_reg[1]_0 [1]),
        .S(\tx_idx_reg[6] [6]));
  MUXF8 \int_reg_reg[1]_i_10 
       (.I0(\int_reg_reg[1]_i_24_n_0 ),
        .I1(\int_reg_reg[1]_i_25_n_0 ),
        .O(\int_reg_reg[1]_i_10_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[1]_i_11 
       (.I0(\int_reg_reg[1]_i_26_n_0 ),
        .I1(\int_reg_reg[1]_i_27_n_0 ),
        .O(\int_reg_reg[1]_i_11_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF7 \int_reg_reg[1]_i_12 
       (.I0(\int_reg[1]_i_28_n_0 ),
        .I1(\int_reg[1]_i_29_n_0 ),
        .O(\int_reg_reg[1]_i_12_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[1]_i_13 
       (.I0(\int_reg[1]_i_30_n_0 ),
        .I1(\int_reg[1]_i_31_n_0 ),
        .O(\int_reg_reg[1]_i_13_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[1]_i_14 
       (.I0(\int_reg[1]_i_32_n_0 ),
        .I1(\int_reg[1]_i_33_n_0 ),
        .O(\int_reg_reg[1]_i_14_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[1]_i_15 
       (.I0(\int_reg[1]_i_34_n_0 ),
        .I1(\int_reg[1]_i_35_n_0 ),
        .O(\int_reg_reg[1]_i_15_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[1]_i_16 
       (.I0(\int_reg[1]_i_36_n_0 ),
        .I1(\int_reg[1]_i_37_n_0 ),
        .O(\int_reg_reg[1]_i_16_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[1]_i_17 
       (.I0(\int_reg[1]_i_38_n_0 ),
        .I1(\int_reg[1]_i_39_n_0 ),
        .O(\int_reg_reg[1]_i_17_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[1]_i_18 
       (.I0(\int_reg[1]_i_40_n_0 ),
        .I1(\int_reg[1]_i_41_n_0 ),
        .O(\int_reg_reg[1]_i_18_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[1]_i_19 
       (.I0(\int_reg[1]_i_42_n_0 ),
        .I1(\int_reg[1]_i_43_n_0 ),
        .O(\int_reg_reg[1]_i_19_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[1]_i_20 
       (.I0(\int_reg[1]_i_44_n_0 ),
        .I1(\int_reg[1]_i_45_n_0 ),
        .O(\int_reg_reg[1]_i_20_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[1]_i_21 
       (.I0(\int_reg[1]_i_46_n_0 ),
        .I1(\int_reg[1]_i_47_n_0 ),
        .O(\int_reg_reg[1]_i_21_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[1]_i_22 
       (.I0(\int_reg[1]_i_48_n_0 ),
        .I1(\int_reg[1]_i_49_n_0 ),
        .O(\int_reg_reg[1]_i_22_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[1]_i_23 
       (.I0(\int_reg[1]_i_50_n_0 ),
        .I1(\int_reg[1]_i_51_n_0 ),
        .O(\int_reg_reg[1]_i_23_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[1]_i_24 
       (.I0(\int_reg[1]_i_52_n_0 ),
        .I1(\int_reg[1]_i_53_n_0 ),
        .O(\int_reg_reg[1]_i_24_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[1]_i_25 
       (.I0(\int_reg[1]_i_54_n_0 ),
        .I1(\int_reg[1]_i_55_n_0 ),
        .O(\int_reg_reg[1]_i_25_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[1]_i_26 
       (.I0(\int_reg[1]_i_56_n_0 ),
        .I1(\int_reg[1]_i_57_n_0 ),
        .O(\int_reg_reg[1]_i_26_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[1]_i_27 
       (.I0(\int_reg[1]_i_58_n_0 ),
        .I1(\int_reg[1]_i_59_n_0 ),
        .O(\int_reg_reg[1]_i_27_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF8 \int_reg_reg[1]_i_4 
       (.I0(\int_reg_reg[1]_i_12_n_0 ),
        .I1(\int_reg_reg[1]_i_13_n_0 ),
        .O(\int_reg_reg[1]_i_4_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[1]_i_5 
       (.I0(\int_reg_reg[1]_i_14_n_0 ),
        .I1(\int_reg_reg[1]_i_15_n_0 ),
        .O(\int_reg_reg[1]_i_5_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[1]_i_6 
       (.I0(\int_reg_reg[1]_i_16_n_0 ),
        .I1(\int_reg_reg[1]_i_17_n_0 ),
        .O(\int_reg_reg[1]_i_6_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[1]_i_7 
       (.I0(\int_reg_reg[1]_i_18_n_0 ),
        .I1(\int_reg_reg[1]_i_19_n_0 ),
        .O(\int_reg_reg[1]_i_7_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[1]_i_8 
       (.I0(\int_reg_reg[1]_i_20_n_0 ),
        .I1(\int_reg_reg[1]_i_21_n_0 ),
        .O(\int_reg_reg[1]_i_8_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[1]_i_9 
       (.I0(\int_reg_reg[1]_i_22_n_0 ),
        .I1(\int_reg_reg[1]_i_23_n_0 ),
        .O(\int_reg_reg[1]_i_9_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[1]_2 ),
        .D(txb[2]),
        .Q(int_reg[2]),
        .R(SR));
  MUXF7 \int_reg_reg[2]_i_1 
       (.I0(\int_reg[2]_i_2_n_0 ),
        .I1(\int_reg[2]_i_3_n_0 ),
        .O(txb[2]),
        .S(\tx_idx_reg[6] [6]));
  MUXF8 \int_reg_reg[2]_i_10 
       (.I0(\int_reg_reg[2]_i_24_n_0 ),
        .I1(\int_reg_reg[2]_i_25_n_0 ),
        .O(\int_reg_reg[2]_i_10_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[2]_i_11 
       (.I0(\int_reg_reg[2]_i_26_n_0 ),
        .I1(\int_reg_reg[2]_i_27_n_0 ),
        .O(\int_reg_reg[2]_i_11_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF7 \int_reg_reg[2]_i_12 
       (.I0(\int_reg[2]_i_28_n_0 ),
        .I1(\int_reg[2]_i_29_n_0 ),
        .O(\int_reg_reg[2]_i_12_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[2]_i_13 
       (.I0(\int_reg[2]_i_30_n_0 ),
        .I1(\int_reg[2]_i_31_n_0 ),
        .O(\int_reg_reg[2]_i_13_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[2]_i_14 
       (.I0(\int_reg[2]_i_32_n_0 ),
        .I1(\int_reg[2]_i_33_n_0 ),
        .O(\int_reg_reg[2]_i_14_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[2]_i_15 
       (.I0(\int_reg[2]_i_34_n_0 ),
        .I1(\int_reg[2]_i_35_n_0 ),
        .O(\int_reg_reg[2]_i_15_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[2]_i_16 
       (.I0(\int_reg[2]_i_36_n_0 ),
        .I1(\int_reg[2]_i_37_n_0 ),
        .O(\int_reg_reg[2]_i_16_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[2]_i_17 
       (.I0(\int_reg[2]_i_38_n_0 ),
        .I1(\int_reg[2]_i_39_n_0 ),
        .O(\int_reg_reg[2]_i_17_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[2]_i_18 
       (.I0(\int_reg[2]_i_40_n_0 ),
        .I1(\int_reg[2]_i_41_n_0 ),
        .O(\int_reg_reg[2]_i_18_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[2]_i_19 
       (.I0(\int_reg[2]_i_42_n_0 ),
        .I1(\int_reg[2]_i_43_n_0 ),
        .O(\int_reg_reg[2]_i_19_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[2]_i_20 
       (.I0(\int_reg[2]_i_44_n_0 ),
        .I1(\int_reg[2]_i_45_n_0 ),
        .O(\int_reg_reg[2]_i_20_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[2]_i_21 
       (.I0(\int_reg[2]_i_46_n_0 ),
        .I1(\int_reg[2]_i_47_n_0 ),
        .O(\int_reg_reg[2]_i_21_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[2]_i_22 
       (.I0(\int_reg[2]_i_48_n_0 ),
        .I1(\int_reg[2]_i_49_n_0 ),
        .O(\int_reg_reg[2]_i_22_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[2]_i_23 
       (.I0(\int_reg[2]_i_50_n_0 ),
        .I1(\int_reg[2]_i_51_n_0 ),
        .O(\int_reg_reg[2]_i_23_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[2]_i_24 
       (.I0(\int_reg[2]_i_52_n_0 ),
        .I1(\int_reg[2]_i_53_n_0 ),
        .O(\int_reg_reg[2]_i_24_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[2]_i_25 
       (.I0(\int_reg[2]_i_54_n_0 ),
        .I1(\int_reg[2]_i_55_n_0 ),
        .O(\int_reg_reg[2]_i_25_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[2]_i_26 
       (.I0(\int_reg[2]_i_56_n_0 ),
        .I1(\int_reg[2]_i_57_n_0 ),
        .O(\int_reg_reg[2]_i_26_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[2]_i_27 
       (.I0(\int_reg[2]_i_58_n_0 ),
        .I1(\int_reg[2]_i_59_n_0 ),
        .O(\int_reg_reg[2]_i_27_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF8 \int_reg_reg[2]_i_4 
       (.I0(\int_reg_reg[2]_i_12_n_0 ),
        .I1(\int_reg_reg[2]_i_13_n_0 ),
        .O(\int_reg_reg[2]_i_4_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[2]_i_5 
       (.I0(\int_reg_reg[2]_i_14_n_0 ),
        .I1(\int_reg_reg[2]_i_15_n_0 ),
        .O(\int_reg_reg[2]_i_5_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[2]_i_6 
       (.I0(\int_reg_reg[2]_i_16_n_0 ),
        .I1(\int_reg_reg[2]_i_17_n_0 ),
        .O(\int_reg_reg[2]_i_6_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[2]_i_7 
       (.I0(\int_reg_reg[2]_i_18_n_0 ),
        .I1(\int_reg_reg[2]_i_19_n_0 ),
        .O(\int_reg_reg[2]_i_7_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[2]_i_8 
       (.I0(\int_reg_reg[2]_i_20_n_0 ),
        .I1(\int_reg_reg[2]_i_21_n_0 ),
        .O(\int_reg_reg[2]_i_8_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[2]_i_9 
       (.I0(\int_reg_reg[2]_i_22_n_0 ),
        .I1(\int_reg_reg[2]_i_23_n_0 ),
        .O(\int_reg_reg[2]_i_9_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[1]_2 ),
        .D(txb[3]),
        .Q(int_reg[3]),
        .R(SR));
  MUXF7 \int_reg_reg[3]_i_1 
       (.I0(\int_reg[3]_i_2_n_0 ),
        .I1(\int_reg[3]_i_3_n_0 ),
        .O(txb[3]),
        .S(\tx_idx_reg[6] [6]));
  MUXF8 \int_reg_reg[3]_i_10 
       (.I0(\int_reg_reg[3]_i_24_n_0 ),
        .I1(\int_reg_reg[3]_i_25_n_0 ),
        .O(\int_reg_reg[3]_i_10_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[3]_i_11 
       (.I0(\int_reg_reg[3]_i_26_n_0 ),
        .I1(\int_reg_reg[3]_i_27_n_0 ),
        .O(\int_reg_reg[3]_i_11_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF7 \int_reg_reg[3]_i_12 
       (.I0(\int_reg[3]_i_28_n_0 ),
        .I1(\int_reg[3]_i_29_n_0 ),
        .O(\int_reg_reg[3]_i_12_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[3]_i_13 
       (.I0(\int_reg[3]_i_30_n_0 ),
        .I1(\int_reg[3]_i_31_n_0 ),
        .O(\int_reg_reg[3]_i_13_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[3]_i_14 
       (.I0(\int_reg[3]_i_32_n_0 ),
        .I1(\int_reg[3]_i_33_n_0 ),
        .O(\int_reg_reg[3]_i_14_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[3]_i_15 
       (.I0(\int_reg[3]_i_34_n_0 ),
        .I1(\int_reg[3]_i_35_n_0 ),
        .O(\int_reg_reg[3]_i_15_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[3]_i_16 
       (.I0(\int_reg[3]_i_36_n_0 ),
        .I1(\int_reg[3]_i_37_n_0 ),
        .O(\int_reg_reg[3]_i_16_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[3]_i_17 
       (.I0(\int_reg[3]_i_38_n_0 ),
        .I1(\int_reg[3]_i_39_n_0 ),
        .O(\int_reg_reg[3]_i_17_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[3]_i_18 
       (.I0(\int_reg[3]_i_40_n_0 ),
        .I1(\int_reg[3]_i_41_n_0 ),
        .O(\int_reg_reg[3]_i_18_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[3]_i_19 
       (.I0(\int_reg[3]_i_42_n_0 ),
        .I1(\int_reg[3]_i_43_n_0 ),
        .O(\int_reg_reg[3]_i_19_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[3]_i_20 
       (.I0(\int_reg[3]_i_44_n_0 ),
        .I1(\int_reg[3]_i_45_n_0 ),
        .O(\int_reg_reg[3]_i_20_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[3]_i_21 
       (.I0(\int_reg[3]_i_46_n_0 ),
        .I1(\int_reg[3]_i_47_n_0 ),
        .O(\int_reg_reg[3]_i_21_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[3]_i_22 
       (.I0(\int_reg[3]_i_48_n_0 ),
        .I1(\int_reg[3]_i_49_n_0 ),
        .O(\int_reg_reg[3]_i_22_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[3]_i_23 
       (.I0(\int_reg[3]_i_50_n_0 ),
        .I1(\int_reg[3]_i_51_n_0 ),
        .O(\int_reg_reg[3]_i_23_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[3]_i_24 
       (.I0(\int_reg[3]_i_52_n_0 ),
        .I1(\int_reg[3]_i_53_n_0 ),
        .O(\int_reg_reg[3]_i_24_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[3]_i_25 
       (.I0(\int_reg[3]_i_54_n_0 ),
        .I1(\int_reg[3]_i_55_n_0 ),
        .O(\int_reg_reg[3]_i_25_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[3]_i_26 
       (.I0(\int_reg[3]_i_56_n_0 ),
        .I1(\int_reg[3]_i_57_n_0 ),
        .O(\int_reg_reg[3]_i_26_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[3]_i_27 
       (.I0(\int_reg[3]_i_58_n_0 ),
        .I1(\int_reg[3]_i_59_n_0 ),
        .O(\int_reg_reg[3]_i_27_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF8 \int_reg_reg[3]_i_4 
       (.I0(\int_reg_reg[3]_i_12_n_0 ),
        .I1(\int_reg_reg[3]_i_13_n_0 ),
        .O(\int_reg_reg[3]_i_4_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[3]_i_5 
       (.I0(\int_reg_reg[3]_i_14_n_0 ),
        .I1(\int_reg_reg[3]_i_15_n_0 ),
        .O(\int_reg_reg[3]_i_5_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[3]_i_6 
       (.I0(\int_reg_reg[3]_i_16_n_0 ),
        .I1(\int_reg_reg[3]_i_17_n_0 ),
        .O(\int_reg_reg[3]_i_6_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[3]_i_7 
       (.I0(\int_reg_reg[3]_i_18_n_0 ),
        .I1(\int_reg_reg[3]_i_19_n_0 ),
        .O(\int_reg_reg[3]_i_7_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[3]_i_8 
       (.I0(\int_reg_reg[3]_i_20_n_0 ),
        .I1(\int_reg_reg[3]_i_21_n_0 ),
        .O(\int_reg_reg[3]_i_8_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[3]_i_9 
       (.I0(\int_reg_reg[3]_i_22_n_0 ),
        .I1(\int_reg_reg[3]_i_23_n_0 ),
        .O(\int_reg_reg[3]_i_9_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[1]_2 ),
        .D(txb[4]),
        .Q(int_reg[4]),
        .R(SR));
  MUXF7 \int_reg_reg[4]_i_1 
       (.I0(\int_reg[4]_i_2_n_0 ),
        .I1(\int_reg[4]_i_3_n_0 ),
        .O(txb[4]),
        .S(\tx_idx_reg[6] [6]));
  MUXF8 \int_reg_reg[4]_i_10 
       (.I0(\int_reg_reg[4]_i_24_n_0 ),
        .I1(\int_reg_reg[4]_i_25_n_0 ),
        .O(\int_reg_reg[4]_i_10_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[4]_i_11 
       (.I0(\int_reg_reg[4]_i_26_n_0 ),
        .I1(\int_reg_reg[4]_i_27_n_0 ),
        .O(\int_reg_reg[4]_i_11_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF7 \int_reg_reg[4]_i_12 
       (.I0(\int_reg[4]_i_28_n_0 ),
        .I1(\int_reg[4]_i_29_n_0 ),
        .O(\int_reg_reg[4]_i_12_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[4]_i_13 
       (.I0(\int_reg[4]_i_30_n_0 ),
        .I1(\int_reg[4]_i_31_n_0 ),
        .O(\int_reg_reg[4]_i_13_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[4]_i_14 
       (.I0(\int_reg[4]_i_32_n_0 ),
        .I1(\int_reg[4]_i_33_n_0 ),
        .O(\int_reg_reg[4]_i_14_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[4]_i_15 
       (.I0(\int_reg[4]_i_34_n_0 ),
        .I1(\int_reg[4]_i_35_n_0 ),
        .O(\int_reg_reg[4]_i_15_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[4]_i_16 
       (.I0(\int_reg[4]_i_36_n_0 ),
        .I1(\int_reg[4]_i_37_n_0 ),
        .O(\int_reg_reg[4]_i_16_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[4]_i_17 
       (.I0(\int_reg[4]_i_38_n_0 ),
        .I1(\int_reg[4]_i_39_n_0 ),
        .O(\int_reg_reg[4]_i_17_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[4]_i_18 
       (.I0(\int_reg[4]_i_40_n_0 ),
        .I1(\int_reg[4]_i_41_n_0 ),
        .O(\int_reg_reg[4]_i_18_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[4]_i_19 
       (.I0(\int_reg[4]_i_42_n_0 ),
        .I1(\int_reg[4]_i_43_n_0 ),
        .O(\int_reg_reg[4]_i_19_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[4]_i_20 
       (.I0(\int_reg[4]_i_44_n_0 ),
        .I1(\int_reg[4]_i_45_n_0 ),
        .O(\int_reg_reg[4]_i_20_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[4]_i_21 
       (.I0(\int_reg[4]_i_46_n_0 ),
        .I1(\int_reg[4]_i_47_n_0 ),
        .O(\int_reg_reg[4]_i_21_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[4]_i_22 
       (.I0(\int_reg[4]_i_48_n_0 ),
        .I1(\int_reg[4]_i_49_n_0 ),
        .O(\int_reg_reg[4]_i_22_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[4]_i_23 
       (.I0(\int_reg[4]_i_50_n_0 ),
        .I1(\int_reg[4]_i_51_n_0 ),
        .O(\int_reg_reg[4]_i_23_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[4]_i_24 
       (.I0(\int_reg[4]_i_52_n_0 ),
        .I1(\int_reg[4]_i_53_n_0 ),
        .O(\int_reg_reg[4]_i_24_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[4]_i_25 
       (.I0(\int_reg[4]_i_54_n_0 ),
        .I1(\int_reg[4]_i_55_n_0 ),
        .O(\int_reg_reg[4]_i_25_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[4]_i_26 
       (.I0(\int_reg[4]_i_56_n_0 ),
        .I1(\int_reg[4]_i_57_n_0 ),
        .O(\int_reg_reg[4]_i_26_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[4]_i_27 
       (.I0(\int_reg[4]_i_58_n_0 ),
        .I1(\int_reg[4]_i_59_n_0 ),
        .O(\int_reg_reg[4]_i_27_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF8 \int_reg_reg[4]_i_4 
       (.I0(\int_reg_reg[4]_i_12_n_0 ),
        .I1(\int_reg_reg[4]_i_13_n_0 ),
        .O(\int_reg_reg[4]_i_4_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[4]_i_5 
       (.I0(\int_reg_reg[4]_i_14_n_0 ),
        .I1(\int_reg_reg[4]_i_15_n_0 ),
        .O(\int_reg_reg[4]_i_5_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[4]_i_6 
       (.I0(\int_reg_reg[4]_i_16_n_0 ),
        .I1(\int_reg_reg[4]_i_17_n_0 ),
        .O(\int_reg_reg[4]_i_6_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[4]_i_7 
       (.I0(\int_reg_reg[4]_i_18_n_0 ),
        .I1(\int_reg_reg[4]_i_19_n_0 ),
        .O(\int_reg_reg[4]_i_7_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[4]_i_8 
       (.I0(\int_reg_reg[4]_i_20_n_0 ),
        .I1(\int_reg_reg[4]_i_21_n_0 ),
        .O(\int_reg_reg[4]_i_8_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[4]_i_9 
       (.I0(\int_reg_reg[4]_i_22_n_0 ),
        .I1(\int_reg_reg[4]_i_23_n_0 ),
        .O(\int_reg_reg[4]_i_9_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[1]_2 ),
        .D(\int_reg[5]_i_1_n_0 ),
        .Q(int_reg[5]),
        .R(SR));
  MUXF8 \int_reg_reg[5]_i_10 
       (.I0(\int_reg_reg[5]_i_24_n_0 ),
        .I1(\int_reg_reg[5]_i_25_n_0 ),
        .O(\int_reg_reg[5]_i_10_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[5]_i_11 
       (.I0(\int_reg_reg[5]_i_26_n_0 ),
        .I1(\int_reg_reg[5]_i_27_n_0 ),
        .O(\int_reg_reg[5]_i_11_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF7 \int_reg_reg[5]_i_12 
       (.I0(\int_reg[5]_i_28_n_0 ),
        .I1(\int_reg[5]_i_29_n_0 ),
        .O(\int_reg_reg[5]_i_12_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[5]_i_13 
       (.I0(\int_reg[5]_i_30_n_0 ),
        .I1(\int_reg[5]_i_31_n_0 ),
        .O(\int_reg_reg[5]_i_13_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[5]_i_14 
       (.I0(\int_reg[5]_i_32_n_0 ),
        .I1(\int_reg[5]_i_33_n_0 ),
        .O(\int_reg_reg[5]_i_14_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[5]_i_15 
       (.I0(\int_reg[5]_i_34_n_0 ),
        .I1(\int_reg[5]_i_35_n_0 ),
        .O(\int_reg_reg[5]_i_15_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[5]_i_16 
       (.I0(\int_reg[5]_i_36_n_0 ),
        .I1(\int_reg[5]_i_37_n_0 ),
        .O(\int_reg_reg[5]_i_16_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[5]_i_17 
       (.I0(\int_reg[5]_i_38_n_0 ),
        .I1(\int_reg[5]_i_39_n_0 ),
        .O(\int_reg_reg[5]_i_17_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[5]_i_18 
       (.I0(\int_reg[5]_i_40_n_0 ),
        .I1(\int_reg[5]_i_41_n_0 ),
        .O(\int_reg_reg[5]_i_18_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[5]_i_19 
       (.I0(\int_reg[5]_i_42_n_0 ),
        .I1(\int_reg[5]_i_43_n_0 ),
        .O(\int_reg_reg[5]_i_19_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[5]_i_20 
       (.I0(\int_reg[5]_i_44_n_0 ),
        .I1(\int_reg[5]_i_45_n_0 ),
        .O(\int_reg_reg[5]_i_20_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[5]_i_21 
       (.I0(\int_reg[5]_i_46_n_0 ),
        .I1(\int_reg[5]_i_47_n_0 ),
        .O(\int_reg_reg[5]_i_21_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[5]_i_22 
       (.I0(\int_reg[5]_i_48_n_0 ),
        .I1(\int_reg[5]_i_49_n_0 ),
        .O(\int_reg_reg[5]_i_22_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[5]_i_23 
       (.I0(\int_reg[5]_i_50_n_0 ),
        .I1(\int_reg[5]_i_51_n_0 ),
        .O(\int_reg_reg[5]_i_23_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[5]_i_24 
       (.I0(\int_reg[5]_i_52_n_0 ),
        .I1(\int_reg[5]_i_53_n_0 ),
        .O(\int_reg_reg[5]_i_24_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[5]_i_25 
       (.I0(\int_reg[5]_i_54_n_0 ),
        .I1(\int_reg[5]_i_55_n_0 ),
        .O(\int_reg_reg[5]_i_25_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[5]_i_26 
       (.I0(\int_reg[5]_i_56_n_0 ),
        .I1(\int_reg[5]_i_57_n_0 ),
        .O(\int_reg_reg[5]_i_26_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[5]_i_27 
       (.I0(\int_reg[5]_i_58_n_0 ),
        .I1(\int_reg[5]_i_59_n_0 ),
        .O(\int_reg_reg[5]_i_27_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF8 \int_reg_reg[5]_i_4 
       (.I0(\int_reg_reg[5]_i_12_n_0 ),
        .I1(\int_reg_reg[5]_i_13_n_0 ),
        .O(\int_reg_reg[5]_i_4_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[5]_i_5 
       (.I0(\int_reg_reg[5]_i_14_n_0 ),
        .I1(\int_reg_reg[5]_i_15_n_0 ),
        .O(\int_reg_reg[5]_i_5_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[5]_i_6 
       (.I0(\int_reg_reg[5]_i_16_n_0 ),
        .I1(\int_reg_reg[5]_i_17_n_0 ),
        .O(\int_reg_reg[5]_i_6_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[5]_i_7 
       (.I0(\int_reg_reg[5]_i_18_n_0 ),
        .I1(\int_reg_reg[5]_i_19_n_0 ),
        .O(\int_reg_reg[5]_i_7_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[5]_i_8 
       (.I0(\int_reg_reg[5]_i_20_n_0 ),
        .I1(\int_reg_reg[5]_i_21_n_0 ),
        .O(\int_reg_reg[5]_i_8_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[5]_i_9 
       (.I0(\int_reg_reg[5]_i_22_n_0 ),
        .I1(\int_reg_reg[5]_i_23_n_0 ),
        .O(\int_reg_reg[5]_i_9_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[1]_2 ),
        .D(txb[6]),
        .Q(int_reg[6]),
        .R(SR));
  MUXF7 \int_reg_reg[6]_i_1 
       (.I0(\int_reg[6]_i_2_n_0 ),
        .I1(\int_reg[6]_i_3_n_0 ),
        .O(txb[6]),
        .S(\tx_idx_reg[6] [6]));
  MUXF8 \int_reg_reg[6]_i_10 
       (.I0(\int_reg_reg[6]_i_24_n_0 ),
        .I1(\int_reg_reg[6]_i_25_n_0 ),
        .O(\int_reg_reg[6]_i_10_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[6]_i_11 
       (.I0(\int_reg_reg[6]_i_26_n_0 ),
        .I1(\int_reg_reg[6]_i_27_n_0 ),
        .O(\int_reg_reg[6]_i_11_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF7 \int_reg_reg[6]_i_12 
       (.I0(\int_reg[6]_i_28_n_0 ),
        .I1(\int_reg[6]_i_29_n_0 ),
        .O(\int_reg_reg[6]_i_12_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[6]_i_13 
       (.I0(\int_reg[6]_i_30_n_0 ),
        .I1(\int_reg[6]_i_31_n_0 ),
        .O(\int_reg_reg[6]_i_13_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[6]_i_14 
       (.I0(\int_reg[6]_i_32_n_0 ),
        .I1(\int_reg[6]_i_33_n_0 ),
        .O(\int_reg_reg[6]_i_14_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[6]_i_15 
       (.I0(\int_reg[6]_i_34_n_0 ),
        .I1(\int_reg[6]_i_35_n_0 ),
        .O(\int_reg_reg[6]_i_15_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[6]_i_16 
       (.I0(\int_reg[6]_i_36_n_0 ),
        .I1(\int_reg[6]_i_37_n_0 ),
        .O(\int_reg_reg[6]_i_16_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[6]_i_17 
       (.I0(\int_reg[6]_i_38_n_0 ),
        .I1(\int_reg[6]_i_39_n_0 ),
        .O(\int_reg_reg[6]_i_17_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[6]_i_18 
       (.I0(\int_reg[6]_i_40_n_0 ),
        .I1(\int_reg[6]_i_41_n_0 ),
        .O(\int_reg_reg[6]_i_18_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[6]_i_19 
       (.I0(\int_reg[6]_i_42_n_0 ),
        .I1(\int_reg[6]_i_43_n_0 ),
        .O(\int_reg_reg[6]_i_19_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[6]_i_20 
       (.I0(\int_reg[6]_i_44_n_0 ),
        .I1(\int_reg[6]_i_45_n_0 ),
        .O(\int_reg_reg[6]_i_20_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[6]_i_21 
       (.I0(\int_reg[6]_i_46_n_0 ),
        .I1(\int_reg[6]_i_47_n_0 ),
        .O(\int_reg_reg[6]_i_21_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[6]_i_22 
       (.I0(\int_reg[6]_i_48_n_0 ),
        .I1(\int_reg[6]_i_49_n_0 ),
        .O(\int_reg_reg[6]_i_22_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[6]_i_23 
       (.I0(\int_reg[6]_i_50_n_0 ),
        .I1(\int_reg[6]_i_51_n_0 ),
        .O(\int_reg_reg[6]_i_23_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[6]_i_24 
       (.I0(\int_reg[6]_i_52_n_0 ),
        .I1(\int_reg[6]_i_53_n_0 ),
        .O(\int_reg_reg[6]_i_24_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[6]_i_25 
       (.I0(\int_reg[6]_i_54_n_0 ),
        .I1(\int_reg[6]_i_55_n_0 ),
        .O(\int_reg_reg[6]_i_25_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[6]_i_26 
       (.I0(\int_reg[6]_i_56_n_0 ),
        .I1(\int_reg[6]_i_57_n_0 ),
        .O(\int_reg_reg[6]_i_26_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[6]_i_27 
       (.I0(\int_reg[6]_i_58_n_0 ),
        .I1(\int_reg[6]_i_59_n_0 ),
        .O(\int_reg_reg[6]_i_27_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF8 \int_reg_reg[6]_i_4 
       (.I0(\int_reg_reg[6]_i_12_n_0 ),
        .I1(\int_reg_reg[6]_i_13_n_0 ),
        .O(\int_reg_reg[6]_i_4_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[6]_i_5 
       (.I0(\int_reg_reg[6]_i_14_n_0 ),
        .I1(\int_reg_reg[6]_i_15_n_0 ),
        .O(\int_reg_reg[6]_i_5_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[6]_i_6 
       (.I0(\int_reg_reg[6]_i_16_n_0 ),
        .I1(\int_reg_reg[6]_i_17_n_0 ),
        .O(\int_reg_reg[6]_i_6_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[6]_i_7 
       (.I0(\int_reg_reg[6]_i_18_n_0 ),
        .I1(\int_reg_reg[6]_i_19_n_0 ),
        .O(\int_reg_reg[6]_i_7_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[6]_i_8 
       (.I0(\int_reg_reg[6]_i_20_n_0 ),
        .I1(\int_reg_reg[6]_i_21_n_0 ),
        .O(\int_reg_reg[6]_i_8_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[6]_i_9 
       (.I0(\int_reg_reg[6]_i_22_n_0 ),
        .I1(\int_reg_reg[6]_i_23_n_0 ),
        .O(\int_reg_reg[6]_i_9_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  FDRE #(
    .INIT(1'b0)) 
    \int_reg_reg[7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\FSM_sequential_PS_reg[1]_2 ),
        .D(txb[7]),
        .Q(int_reg[7]),
        .R(SR));
  MUXF8 \int_reg_reg[7]_i_10 
       (.I0(\int_reg_reg[7]_i_22_n_0 ),
        .I1(\int_reg_reg[7]_i_23_n_0 ),
        .O(\int_reg_reg[7]_i_10_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[7]_i_11 
       (.I0(\int_reg_reg[7]_i_24_n_0 ),
        .I1(\int_reg_reg[7]_i_25_n_0 ),
        .O(\int_reg_reg[7]_i_11_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[7]_i_12 
       (.I0(\int_reg_reg[7]_i_26_n_0 ),
        .I1(\int_reg_reg[7]_i_27_n_0 ),
        .O(\int_reg_reg[7]_i_12_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[7]_i_13 
       (.I0(\int_reg_reg[7]_i_28_n_0 ),
        .I1(\int_reg_reg[7]_i_29_n_0 ),
        .O(\int_reg_reg[7]_i_13_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF7 \int_reg_reg[7]_i_14 
       (.I0(\int_reg[7]_i_30_n_0 ),
        .I1(\int_reg[7]_i_31_n_0 ),
        .O(\int_reg_reg[7]_i_14_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[7]_i_15 
       (.I0(\int_reg[7]_i_32_n_0 ),
        .I1(\int_reg[7]_i_33_n_0 ),
        .O(\int_reg_reg[7]_i_15_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[7]_i_16 
       (.I0(\int_reg[7]_i_34_n_0 ),
        .I1(\int_reg[7]_i_35_n_0 ),
        .O(\int_reg_reg[7]_i_16_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[7]_i_17 
       (.I0(\int_reg[7]_i_36_n_0 ),
        .I1(\int_reg[7]_i_37_n_0 ),
        .O(\int_reg_reg[7]_i_17_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[7]_i_18 
       (.I0(\int_reg[7]_i_38_n_0 ),
        .I1(\int_reg[7]_i_39_n_0 ),
        .O(\int_reg_reg[7]_i_18_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[7]_i_19 
       (.I0(\int_reg[7]_i_40_n_0 ),
        .I1(\int_reg[7]_i_41_n_0 ),
        .O(\int_reg_reg[7]_i_19_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[7]_i_2 
       (.I0(\int_reg[7]_i_4_n_0 ),
        .I1(\int_reg[7]_i_5_n_0 ),
        .O(txb[7]),
        .S(\tx_idx_reg[6] [6]));
  MUXF7 \int_reg_reg[7]_i_20 
       (.I0(\int_reg[7]_i_42_n_0 ),
        .I1(\int_reg[7]_i_43_n_0 ),
        .O(\int_reg_reg[7]_i_20_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[7]_i_21 
       (.I0(\int_reg[7]_i_44_n_0 ),
        .I1(\int_reg[7]_i_45_n_0 ),
        .O(\int_reg_reg[7]_i_21_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[7]_i_22 
       (.I0(\int_reg[7]_i_46_n_0 ),
        .I1(\int_reg[7]_i_47_n_0 ),
        .O(\int_reg_reg[7]_i_22_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[7]_i_23 
       (.I0(\int_reg[7]_i_48_n_0 ),
        .I1(\int_reg[7]_i_49_n_0 ),
        .O(\int_reg_reg[7]_i_23_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[7]_i_24 
       (.I0(\int_reg[7]_i_50_n_0 ),
        .I1(\int_reg[7]_i_51_n_0 ),
        .O(\int_reg_reg[7]_i_24_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[7]_i_25 
       (.I0(\int_reg[7]_i_52_n_0 ),
        .I1(\int_reg[7]_i_53_n_0 ),
        .O(\int_reg_reg[7]_i_25_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[7]_i_26 
       (.I0(\int_reg[7]_i_54_n_0 ),
        .I1(\int_reg[7]_i_55_n_0 ),
        .O(\int_reg_reg[7]_i_26_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[7]_i_27 
       (.I0(\int_reg[7]_i_56_n_0 ),
        .I1(\int_reg[7]_i_57_n_0 ),
        .O(\int_reg_reg[7]_i_27_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[7]_i_28 
       (.I0(\int_reg[7]_i_58_n_0 ),
        .I1(\int_reg[7]_i_59_n_0 ),
        .O(\int_reg_reg[7]_i_28_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF7 \int_reg_reg[7]_i_29 
       (.I0(\int_reg[7]_i_60_n_0 ),
        .I1(\int_reg[7]_i_61_n_0 ),
        .O(\int_reg_reg[7]_i_29_n_0 ),
        .S(\tx_idx_reg[6] [2]));
  MUXF8 \int_reg_reg[7]_i_6 
       (.I0(\int_reg_reg[7]_i_14_n_0 ),
        .I1(\int_reg_reg[7]_i_15_n_0 ),
        .O(\int_reg_reg[7]_i_6_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[7]_i_7 
       (.I0(\int_reg_reg[7]_i_16_n_0 ),
        .I1(\int_reg_reg[7]_i_17_n_0 ),
        .O(\int_reg_reg[7]_i_7_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[7]_i_8 
       (.I0(\int_reg_reg[7]_i_18_n_0 ),
        .I1(\int_reg_reg[7]_i_19_n_0 ),
        .O(\int_reg_reg[7]_i_8_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  MUXF8 \int_reg_reg[7]_i_9 
       (.I0(\int_reg_reg[7]_i_20_n_0 ),
        .I1(\int_reg_reg[7]_i_21_n_0 ),
        .O(\int_reg_reg[7]_i_9_n_0 ),
        .S(\tx_idx_reg[6] [3]));
  FDRE #(
    .INIT(1'b0)) 
    low_packet_valid_reg
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(low_packet_valid_reg_0),
        .Q(low_packet_valid),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    parity_done_reg
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(parity_done_reg_0),
        .Q(parity_done),
        .R(\<const0> ));
endmodule

module router_sync
   (soft_reset_1,
    soft_reset_2,
    addr_t,
    \FSM_sequential_PS_reg[2] ,
    fifo_full,
    \count0_reg[4]_0 ,
    \count_reg[0] ,
    \count_reg[0]_0 ,
    \count_reg[0]_1 ,
    \FSM_sequential_PS_reg[0] ,
    \FSM_sequential_PS_reg[1] ,
    SR,
    PCLK_IBUF_BUFG,
    \rd_pointer_reg[0] ,
    \rd_pointer_reg[0]_0 ,
    \rd_pointer_reg[0]_1 ,
    PRESETn_IBUF,
    \rd_pointer_reg[0]_2 ,
    \rd_pointer_reg[0]_3 ,
    \rd_pointer_reg[0]_4 ,
    \rx_cnt_reg[4] ,
    \rd_pointer_reg[0]_5 ,
    \rd_pointer_reg[0]_6 ,
    Q,
    parity_done,
    out,
    parity_done_reg,
    pkt_valid_w,
    \tx_idx_reg[6] ,
    \rx_cnt_reg[6] ,
    \rx_cnt_reg[4]_0 ,
    \rd_pointer_reg[0]_7 );
  output soft_reset_1;
  output soft_reset_2;
  output [1:0]addr_t;
  output \FSM_sequential_PS_reg[2] ;
  output fifo_full;
  output \count0_reg[4]_0 ;
  output [0:0]\count_reg[0] ;
  output [0:0]\count_reg[0]_0 ;
  output [0:0]\count_reg[0]_1 ;
  output \FSM_sequential_PS_reg[0] ;
  output \FSM_sequential_PS_reg[1] ;
  input [0:0]SR;
  input PCLK_IBUF_BUFG;
  input \rd_pointer_reg[0] ;
  input \rd_pointer_reg[0]_0 ;
  input \rd_pointer_reg[0]_1 ;
  input PRESETn_IBUF;
  input \rd_pointer_reg[0]_2 ;
  input \rd_pointer_reg[0]_3 ;
  input \rd_pointer_reg[0]_4 ;
  input \rx_cnt_reg[4] ;
  input \rd_pointer_reg[0]_5 ;
  input \rd_pointer_reg[0]_6 ;
  input [4:0]Q;
  input parity_done;
  input [2:0]out;
  input parity_done_reg;
  input pkt_valid_w;
  input [1:0]\tx_idx_reg[6] ;
  input [0:0]\rx_cnt_reg[6] ;
  input [0:0]\rx_cnt_reg[4]_0 ;
  input [0:0]\rd_pointer_reg[0]_7 ;

  wire \<const1> ;
  wire \FSM/dest_empty ;
  wire \FSM_sequential_PS_reg[0] ;
  wire \FSM_sequential_PS_reg[1] ;
  wire \FSM_sequential_PS_reg[2] ;
  wire PCLK_IBUF_BUFG;
  wire PRESETn_IBUF;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [1:0]addr_t;
  wire [4:0]count0;
  wire \count0[0]_i_1_n_0 ;
  wire \count0[1]_i_1_n_0 ;
  wire \count0[2]_i_1_n_0 ;
  wire \count0[3]_i_1_n_0 ;
  wire \count0[4]_i_2_n_0 ;
  wire \count0_reg[4]_0 ;
  wire [4:0]count1;
  wire \count1[0]_i_1_n_0 ;
  wire \count1[1]_i_1_n_0 ;
  wire \count1[2]_i_1_n_0 ;
  wire \count1[3]_i_1_n_0 ;
  wire \count1[4]_i_2_n_0 ;
  wire [4:0]count2;
  wire \count2[0]_i_1_n_0 ;
  wire \count2[1]_i_1_n_0 ;
  wire \count2[2]_i_1_n_0 ;
  wire \count2[3]_i_1_n_0 ;
  wire \count2[4]_i_2_n_0 ;
  wire [0:0]\count_reg[0] ;
  wire [0:0]\count_reg[0]_0 ;
  wire [0:0]\count_reg[0]_1 ;
  wire \data_in_tmp[0]_i_1_n_0 ;
  wire \data_in_tmp[1]_i_1_n_0 ;
  wire fifo_full;
  wire [2:0]out;
  wire parity_done;
  wire parity_done_reg;
  wire pkt_valid_w;
  wire \rd_pointer_reg[0] ;
  wire \rd_pointer_reg[0]_0 ;
  wire \rd_pointer_reg[0]_1 ;
  wire \rd_pointer_reg[0]_2 ;
  wire \rd_pointer_reg[0]_3 ;
  wire \rd_pointer_reg[0]_4 ;
  wire \rd_pointer_reg[0]_5 ;
  wire \rd_pointer_reg[0]_6 ;
  wire [0:0]\rd_pointer_reg[0]_7 ;
  wire \rx_cnt_reg[4] ;
  wire [0:0]\rx_cnt_reg[4]_0 ;
  wire [0:0]\rx_cnt_reg[6] ;
  wire soft_reset_0;
  wire soft_reset_05_out;
  wire soft_reset_1;
  wire soft_reset_13_out;
  wire soft_reset_2;
  wire soft_reset_21_out;
  wire [1:0]\tx_idx_reg[6] ;

  LUT5 #(
    .INIT(32'h30305F50)) 
    \FSM_sequential_PS[0]_i_3 
       (.I0(fifo_full),
        .I1(parity_done),
        .I2(out[0]),
        .I3(\FSM/dest_empty ),
        .I4(out[2]),
        .O(\FSM_sequential_PS_reg[0] ));
  LUT5 #(
    .INIT(32'h1C1F1013)) 
    \FSM_sequential_PS[0]_i_5 
       (.I0(\rd_pointer_reg[0] ),
        .I1(addr_t[1]),
        .I2(addr_t[0]),
        .I3(\rd_pointer_reg[0]_0 ),
        .I4(\rd_pointer_reg[0]_1 ),
        .O(\FSM/dest_empty ));
  LUT6 #(
    .INIT(64'hAA000C00AA000CFF)) 
    \FSM_sequential_PS[1]_i_3 
       (.I0(parity_done_reg),
        .I1(pkt_valid_w),
        .I2(fifo_full),
        .I3(out[0]),
        .I4(out[2]),
        .I5(\FSM/dest_empty ),
        .O(\FSM_sequential_PS_reg[1] ));
  LUT6 #(
    .INIT(64'h55F5DDFF55F5DD55)) 
    \FSM_sequential_PS[2]_i_3 
       (.I0(PRESETn_IBUF),
        .I1(soft_reset_1),
        .I2(soft_reset_2),
        .I3(addr_t[0]),
        .I4(addr_t[1]),
        .I5(soft_reset_0),
        .O(\FSM_sequential_PS_reg[2] ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \count0[0]_i_1 
       (.I0(count0[0]),
        .O(\count0[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h007FFF00)) 
    \count0[1]_i_1 
       (.I0(count0[4]),
        .I1(count0[3]),
        .I2(count0[2]),
        .I3(count0[1]),
        .I4(count0[0]),
        .O(\count0[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h0F7FF000)) 
    \count0[2]_i_1 
       (.I0(count0[4]),
        .I1(count0[3]),
        .I2(count0[0]),
        .I3(count0[1]),
        .I4(count0[2]),
        .O(\count0[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h1FFFC000)) 
    \count0[3]_i_1 
       (.I0(count0[4]),
        .I1(count0[1]),
        .I2(count0[0]),
        .I3(count0[2]),
        .I4(count0[3]),
        .O(\count0[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h77FF8000)) 
    \count0[4]_i_2 
       (.I0(count0[3]),
        .I1(count0[2]),
        .I2(count0[1]),
        .I3(count0[0]),
        .I4(count0[4]),
        .O(\count0[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \count0[4]_i_3 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\count0_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count0[0]_i_1_n_0 ),
        .Q(count0[0]),
        .R(\rx_cnt_reg[6] ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count0[1]_i_1_n_0 ),
        .Q(count0[1]),
        .R(\rx_cnt_reg[6] ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count0[2]_i_1_n_0 ),
        .Q(count0[2]),
        .R(\rx_cnt_reg[6] ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count0[3]_i_1_n_0 ),
        .Q(count0[3]),
        .R(\rx_cnt_reg[6] ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count0[4]_i_2_n_0 ),
        .Q(count0[4]),
        .R(\rx_cnt_reg[6] ));
  LUT1 #(
    .INIT(2'h1)) 
    \count1[0]_i_1 
       (.I0(count1[0]),
        .O(\count1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h007FFF00)) 
    \count1[1]_i_1 
       (.I0(count1[4]),
        .I1(count1[3]),
        .I2(count1[2]),
        .I3(count1[1]),
        .I4(count1[0]),
        .O(\count1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h0F7FF000)) 
    \count1[2]_i_1 
       (.I0(count1[4]),
        .I1(count1[3]),
        .I2(count1[0]),
        .I3(count1[1]),
        .I4(count1[2]),
        .O(\count1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h1FFFC000)) 
    \count1[3]_i_1 
       (.I0(count1[4]),
        .I1(count1[1]),
        .I2(count1[0]),
        .I3(count1[2]),
        .I4(count1[3]),
        .O(\count1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h77FF8000)) 
    \count1[4]_i_2 
       (.I0(count1[3]),
        .I1(count1[2]),
        .I2(count1[1]),
        .I3(count1[0]),
        .I4(count1[4]),
        .O(\count1[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count1[0]_i_1_n_0 ),
        .Q(count1[0]),
        .R(\rx_cnt_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count1[1]_i_1_n_0 ),
        .Q(count1[1]),
        .R(\rx_cnt_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count1[2]_i_1_n_0 ),
        .Q(count1[2]),
        .R(\rx_cnt_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count1[3]_i_1_n_0 ),
        .Q(count1[3]),
        .R(\rx_cnt_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count1[4]_i_2_n_0 ),
        .Q(count1[4]),
        .R(\rx_cnt_reg[4]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count2[0]_i_1 
       (.I0(count2[0]),
        .O(\count2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h007FFF00)) 
    \count2[1]_i_1 
       (.I0(count2[4]),
        .I1(count2[3]),
        .I2(count2[2]),
        .I3(count2[1]),
        .I4(count2[0]),
        .O(\count2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h0F7FF000)) 
    \count2[2]_i_1 
       (.I0(count2[4]),
        .I1(count2[3]),
        .I2(count2[0]),
        .I3(count2[1]),
        .I4(count2[2]),
        .O(\count2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h1FFFC000)) 
    \count2[3]_i_1 
       (.I0(count2[4]),
        .I1(count2[1]),
        .I2(count2[0]),
        .I3(count2[2]),
        .I4(count2[3]),
        .O(\count2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h77FF8000)) 
    \count2[4]_i_2 
       (.I0(count2[3]),
        .I1(count2[2]),
        .I2(count2[1]),
        .I3(count2[0]),
        .I4(count2[4]),
        .O(\count2[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count2[0]_i_1_n_0 ),
        .Q(count2[0]),
        .R(\rd_pointer_reg[0]_7 ));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count2[1]_i_1_n_0 ),
        .Q(count2[1]),
        .R(\rd_pointer_reg[0]_7 ));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count2[2]_i_1_n_0 ),
        .Q(count2[2]),
        .R(\rd_pointer_reg[0]_7 ));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count2[3]_i_1_n_0 ),
        .Q(count2[3]),
        .R(\rd_pointer_reg[0]_7 ));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\count2[4]_i_2_n_0 ),
        .Q(count2[4]),
        .R(\rd_pointer_reg[0]_7 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \data_in_tmp[0]_i_1 
       (.I0(\tx_idx_reg[6] [0]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(addr_t[0]),
        .O(\data_in_tmp[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \data_in_tmp[1]_i_1 
       (.I0(\tx_idx_reg[6] [1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(addr_t[1]),
        .O(\data_in_tmp[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_tmp_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\data_in_tmp[0]_i_1_n_0 ),
        .Q(addr_t[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_in_tmp_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\data_in_tmp[1]_i_1_n_0 ),
        .Q(addr_t[1]),
        .R(SR));
  LUT5 #(
    .INIT(32'h0CAF0CA0)) 
    \int_reg[7]_i_3 
       (.I0(\rd_pointer_reg[0]_2 ),
        .I1(\rd_pointer_reg[0]_3 ),
        .I2(addr_t[0]),
        .I3(addr_t[1]),
        .I4(\rd_pointer_reg[0]_4 ),
        .O(fifo_full));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mem[15][8]_i_1 
       (.I0(soft_reset_0),
        .I1(PRESETn_IBUF),
        .O(\count_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mem[15][8]_i_1__0 
       (.I0(soft_reset_1),
        .I1(PRESETn_IBUF),
        .O(\count_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \mem[15][8]_i_1__1 
       (.I0(soft_reset_2),
        .I1(PRESETn_IBUF),
        .O(\count_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    soft_reset_0_i_1
       (.I0(\rx_cnt_reg[4] ),
        .I1(count0[4]),
        .I2(count0[0]),
        .I3(count0[3]),
        .I4(count0[2]),
        .I5(count0[1]),
        .O(soft_reset_05_out));
  FDRE #(
    .INIT(1'b0)) 
    soft_reset_0_reg
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(soft_reset_05_out),
        .Q(soft_reset_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    soft_reset_1_i_1
       (.I0(\rd_pointer_reg[0]_5 ),
        .I1(count1[4]),
        .I2(count1[0]),
        .I3(count1[3]),
        .I4(count1[2]),
        .I5(count1[1]),
        .O(soft_reset_13_out));
  FDRE #(
    .INIT(1'b0)) 
    soft_reset_1_reg
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(soft_reset_13_out),
        .Q(soft_reset_1),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    soft_reset_2_i_1
       (.I0(\rd_pointer_reg[0]_6 ),
        .I1(count2[4]),
        .I2(count2[0]),
        .I3(count2[3]),
        .I4(count2[2]),
        .I5(count2[1]),
        .O(soft_reset_21_out));
  FDRE #(
    .INIT(1'b0)) 
    soft_reset_2_reg
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(soft_reset_21_out),
        .Q(soft_reset_2),
        .R(SR));
endmodule

module router_top
   (\PRDATA[2] ,
    tx_idx,
    E,
    \count0_reg[4] ,
    \data_out_reg[7] ,
    \data_out_reg[7]_0 ,
    \ext_parity_reg[7] ,
    \ext_parity_reg[7]_0 ,
    \ext_parity_reg[7]_1 ,
    p_1_in,
    tx_run_reg,
    \tx_idx_reg[1]_rep__1 ,
    err_seen_reg,
    \tx_cnt_reg[7] ,
    \tx_cnt_reg[3] ,
    SR,
    PCLK_IBUF_BUFG,
    PSEL,
    \PADDR[3] ,
    tx_cnt,
    \PADDR[3]_0 ,
    Q,
    PADDR_IBUF,
    PRDATA1,
    \rx_cnt_reg[1] ,
    \tx_cnt_reg[5] ,
    PSEL_0,
    tx_run_reg_0,
    \tx_idx_reg[6] ,
    PRESETn_IBUF,
    \tx_idx_reg[6]_0 ,
    \txb_reg[0][7] ,
    \txb_reg[19][7] ,
    \txb_reg[18][7] ,
    \tx_idx_reg[1]_rep ,
    \txb_reg[17][7] ,
    \txb_reg[16][7] ,
    \txb_reg[23][7] ,
    \txb_reg[22][7] ,
    \txb_reg[21][7] ,
    \txb_reg[20][7] ,
    \txb_reg[31][7] ,
    \txb_reg[30][7] ,
    \txb_reg[29][7] ,
    \txb_reg[28][7] ,
    \txb_reg[27][7] ,
    \txb_reg[26][7] ,
    \txb_reg[25][7] ,
    \txb_reg[24][7] ,
    \txb_reg[7][7] ,
    \txb_reg[6][7] ,
    \txb_reg[5][7] ,
    \txb_reg[4][7] ,
    \txb_reg[3][7] ,
    \txb_reg[2][7] ,
    \txb_reg[1][7] ,
    \txb_reg[11][7] ,
    \txb_reg[10][7] ,
    \txb_reg[9][7] ,
    \txb_reg[8][7] ,
    \txb_reg[15][7] ,
    \txb_reg[14][7] ,
    \txb_reg[13][7] ,
    \txb_reg[12][7] ,
    \txb_reg[55][7] ,
    \txb_reg[54][7] ,
    \txb_reg[53][7] ,
    \txb_reg[52][7] ,
    \txb_reg[51][7] ,
    \txb_reg[50][7] ,
    \txb_reg[49][7] ,
    \txb_reg[48][7] ,
    \txb_reg[59][7] ,
    \txb_reg[58][7] ,
    \txb_reg[57][7] ,
    \txb_reg[56][7] ,
    \txb_reg[63][7] ,
    \txb_reg[62][7] ,
    \txb_reg[61][7] ,
    \txb_reg[60][7] ,
    \txb_reg[39][7] ,
    \txb_reg[38][7] ,
    \txb_reg[37][7] ,
    \txb_reg[36][7] ,
    \txb_reg[35][7] ,
    \txb_reg[34][7] ,
    \txb_reg[33][7] ,
    \txb_reg[32][7] ,
    \txb_reg[43][7] ,
    \txb_reg[42][7] ,
    \txb_reg[41][7] ,
    \txb_reg[40][7] ,
    \txb_reg[47][7] ,
    \txb_reg[46][7] ,
    \txb_reg[45][7] ,
    \txb_reg[44][7] ,
    \txb_reg[87][7] ,
    \txb_reg[86][7] ,
    \txb_reg[85][7] ,
    \txb_reg[84][7] ,
    \txb_reg[83][7] ,
    \txb_reg[82][7] ,
    \txb_reg[81][7] ,
    \txb_reg[80][7] ,
    \txb_reg[91][7] ,
    \txb_reg[90][7] ,
    \txb_reg[89][7] ,
    \txb_reg[88][7] ,
    \txb_reg[95][7] ,
    \txb_reg[94][7] ,
    \txb_reg[93][7] ,
    \txb_reg[92][7] ,
    \txb_reg[71][7] ,
    \txb_reg[70][7] ,
    \txb_reg[69][7] ,
    \txb_reg[68][7] ,
    \txb_reg[67][7] ,
    \txb_reg[66][7] ,
    \txb_reg[65][7] ,
    \txb_reg[64][7] ,
    \txb_reg[79][7] ,
    \txb_reg[78][7] ,
    \txb_reg[77][7] ,
    \txb_reg[76][7] ,
    \txb_reg[75][7] ,
    \txb_reg[74][7] ,
    \txb_reg[73][7] ,
    \txb_reg[72][7] ,
    \txb_reg[119][7] ,
    \txb_reg[118][7] ,
    \txb_reg[117][7] ,
    \txb_reg[116][7] ,
    \txb_reg[115][7] ,
    \txb_reg[114][7] ,
    \txb_reg[113][7] ,
    \txb_reg[112][7] ,
    \txb_reg[127][7] ,
    \txb_reg[126][7] ,
    \txb_reg[125][7] ,
    \txb_reg[124][7] ,
    \txb_reg[123][7] ,
    \txb_reg[122][7] ,
    \txb_reg[121][7] ,
    \txb_reg[120][7] ,
    \txb_reg[103][7] ,
    \txb_reg[102][7] ,
    \txb_reg[101][7] ,
    \txb_reg[100][7] ,
    \txb_reg[99][7] ,
    \txb_reg[98][7] ,
    \txb_reg[97][7] ,
    \txb_reg[96][7] ,
    \txb_reg[111][7] ,
    \txb_reg[110][7] ,
    \txb_reg[109][7] ,
    \txb_reg[108][7] ,
    \txb_reg[107][7] ,
    \txb_reg[106][7] ,
    \txb_reg[105][7] ,
    \txb_reg[104][7] ,
    \tx_idx_reg[1]_rep__1_0 ,
    \tx_idx_reg[1]_rep__0 ,
    \hit_reg[1] ,
    \PADDR[2] ,
    PWDATA_IBUF,
    err_seen,
    \tx_cnt_reg[0] ,
    tx_run_reg_1);
  output \PRDATA[2] ;
  output tx_idx;
  output [0:0]E;
  output \count0_reg[4] ;
  output [0:0]\data_out_reg[7] ;
  output [0:0]\data_out_reg[7]_0 ;
  output \ext_parity_reg[7] ;
  output \ext_parity_reg[7]_0 ;
  output \ext_parity_reg[7]_1 ;
  output [7:0]p_1_in;
  output tx_run_reg;
  output \tx_idx_reg[1]_rep__1 ;
  output err_seen_reg;
  output \tx_cnt_reg[7] ;
  output \tx_cnt_reg[3] ;
  input [0:0]SR;
  input PCLK_IBUF_BUFG;
  input PSEL;
  input \PADDR[3] ;
  input [1:0]tx_cnt;
  input \PADDR[3]_0 ;
  input [4:0]Q;
  input [2:0]PADDR_IBUF;
  input [0:0]PRDATA1;
  input \rx_cnt_reg[1] ;
  input \tx_cnt_reg[5] ;
  input PSEL_0;
  input tx_run_reg_0;
  input \tx_idx_reg[6] ;
  input PRESETn_IBUF;
  input [6:0]\tx_idx_reg[6]_0 ;
  input [7:0]\txb_reg[0][7] ;
  input [7:0]\txb_reg[19][7] ;
  input [7:0]\txb_reg[18][7] ;
  input \tx_idx_reg[1]_rep ;
  input [7:0]\txb_reg[17][7] ;
  input [7:0]\txb_reg[16][7] ;
  input [7:0]\txb_reg[23][7] ;
  input [7:0]\txb_reg[22][7] ;
  input [7:0]\txb_reg[21][7] ;
  input [7:0]\txb_reg[20][7] ;
  input [7:0]\txb_reg[31][7] ;
  input [7:0]\txb_reg[30][7] ;
  input [7:0]\txb_reg[29][7] ;
  input [7:0]\txb_reg[28][7] ;
  input [7:0]\txb_reg[27][7] ;
  input [7:0]\txb_reg[26][7] ;
  input [7:0]\txb_reg[25][7] ;
  input [7:0]\txb_reg[24][7] ;
  input [7:0]\txb_reg[7][7] ;
  input [7:0]\txb_reg[6][7] ;
  input [7:0]\txb_reg[5][7] ;
  input [7:0]\txb_reg[4][7] ;
  input [7:0]\txb_reg[3][7] ;
  input [7:0]\txb_reg[2][7] ;
  input [7:0]\txb_reg[1][7] ;
  input [7:0]\txb_reg[11][7] ;
  input [7:0]\txb_reg[10][7] ;
  input [7:0]\txb_reg[9][7] ;
  input [7:0]\txb_reg[8][7] ;
  input [7:0]\txb_reg[15][7] ;
  input [7:0]\txb_reg[14][7] ;
  input [7:0]\txb_reg[13][7] ;
  input [7:0]\txb_reg[12][7] ;
  input [7:0]\txb_reg[55][7] ;
  input [7:0]\txb_reg[54][7] ;
  input [7:0]\txb_reg[53][7] ;
  input [7:0]\txb_reg[52][7] ;
  input [7:0]\txb_reg[51][7] ;
  input [7:0]\txb_reg[50][7] ;
  input [7:0]\txb_reg[49][7] ;
  input [7:0]\txb_reg[48][7] ;
  input [7:0]\txb_reg[59][7] ;
  input [7:0]\txb_reg[58][7] ;
  input [7:0]\txb_reg[57][7] ;
  input [7:0]\txb_reg[56][7] ;
  input [7:0]\txb_reg[63][7] ;
  input [7:0]\txb_reg[62][7] ;
  input [7:0]\txb_reg[61][7] ;
  input [7:0]\txb_reg[60][7] ;
  input [7:0]\txb_reg[39][7] ;
  input [7:0]\txb_reg[38][7] ;
  input [7:0]\txb_reg[37][7] ;
  input [7:0]\txb_reg[36][7] ;
  input [7:0]\txb_reg[35][7] ;
  input [7:0]\txb_reg[34][7] ;
  input [7:0]\txb_reg[33][7] ;
  input [7:0]\txb_reg[32][7] ;
  input [7:0]\txb_reg[43][7] ;
  input [7:0]\txb_reg[42][7] ;
  input [7:0]\txb_reg[41][7] ;
  input [7:0]\txb_reg[40][7] ;
  input [7:0]\txb_reg[47][7] ;
  input [7:0]\txb_reg[46][7] ;
  input [7:0]\txb_reg[45][7] ;
  input [7:0]\txb_reg[44][7] ;
  input [7:0]\txb_reg[87][7] ;
  input [7:0]\txb_reg[86][7] ;
  input [7:0]\txb_reg[85][7] ;
  input [7:0]\txb_reg[84][7] ;
  input [7:0]\txb_reg[83][7] ;
  input [7:0]\txb_reg[82][7] ;
  input [7:0]\txb_reg[81][7] ;
  input [7:0]\txb_reg[80][7] ;
  input [7:0]\txb_reg[91][7] ;
  input [7:0]\txb_reg[90][7] ;
  input [7:0]\txb_reg[89][7] ;
  input [7:0]\txb_reg[88][7] ;
  input [7:0]\txb_reg[95][7] ;
  input [7:0]\txb_reg[94][7] ;
  input [7:0]\txb_reg[93][7] ;
  input [7:0]\txb_reg[92][7] ;
  input [7:0]\txb_reg[71][7] ;
  input [7:0]\txb_reg[70][7] ;
  input [7:0]\txb_reg[69][7] ;
  input [7:0]\txb_reg[68][7] ;
  input [7:0]\txb_reg[67][7] ;
  input [7:0]\txb_reg[66][7] ;
  input [7:0]\txb_reg[65][7] ;
  input [7:0]\txb_reg[64][7] ;
  input [7:0]\txb_reg[79][7] ;
  input [7:0]\txb_reg[78][7] ;
  input [7:0]\txb_reg[77][7] ;
  input [7:0]\txb_reg[76][7] ;
  input [7:0]\txb_reg[75][7] ;
  input [7:0]\txb_reg[74][7] ;
  input [7:0]\txb_reg[73][7] ;
  input [7:0]\txb_reg[72][7] ;
  input [7:0]\txb_reg[119][7] ;
  input [7:0]\txb_reg[118][7] ;
  input [7:0]\txb_reg[117][7] ;
  input [7:0]\txb_reg[116][7] ;
  input [7:0]\txb_reg[115][7] ;
  input [7:0]\txb_reg[114][7] ;
  input [7:0]\txb_reg[113][7] ;
  input [7:0]\txb_reg[112][7] ;
  input [7:0]\txb_reg[127][7] ;
  input [7:0]\txb_reg[126][7] ;
  input [7:0]\txb_reg[125][7] ;
  input [7:0]\txb_reg[124][7] ;
  input [7:0]\txb_reg[123][7] ;
  input [7:0]\txb_reg[122][7] ;
  input [7:0]\txb_reg[121][7] ;
  input [7:0]\txb_reg[120][7] ;
  input [7:0]\txb_reg[103][7] ;
  input [7:0]\txb_reg[102][7] ;
  input [7:0]\txb_reg[101][7] ;
  input [7:0]\txb_reg[100][7] ;
  input [7:0]\txb_reg[99][7] ;
  input [7:0]\txb_reg[98][7] ;
  input [7:0]\txb_reg[97][7] ;
  input [7:0]\txb_reg[96][7] ;
  input [7:0]\txb_reg[111][7] ;
  input [7:0]\txb_reg[110][7] ;
  input [7:0]\txb_reg[109][7] ;
  input [7:0]\txb_reg[108][7] ;
  input [7:0]\txb_reg[107][7] ;
  input [7:0]\txb_reg[106][7] ;
  input [7:0]\txb_reg[105][7] ;
  input [7:0]\txb_reg[104][7] ;
  input \tx_idx_reg[1]_rep__1_0 ;
  input \tx_idx_reg[1]_rep__0 ;
  input [1:0]\hit_reg[1] ;
  input \PADDR[2] ;
  input [0:0]PWDATA_IBUF;
  input err_seen;
  input \tx_cnt_reg[0] ;
  input tx_run_reg_1;

  wire \<const0> ;
  wire [0:0]A;
  wire [0:0]A__0;
  wire [0:0]A__1;
  wire [0:0]E;
  wire FIFO_0_n_10;
  wire FIFO_0_n_11;
  wire FIFO_0_n_12;
  wire FIFO_0_n_2;
  wire FIFO_0_n_22;
  wire FIFO_0_n_23;
  wire FIFO_0_n_24;
  wire FIFO_0_n_25;
  wire FIFO_0_n_26;
  wire FIFO_0_n_27;
  wire FIFO_0_n_28;
  wire FIFO_0_n_29;
  wire FIFO_0_n_3;
  wire FIFO_0_n_4;
  wire FIFO_0_n_5;
  wire FIFO_0_n_6;
  wire FIFO_0_n_8;
  wire FIFO_1_n_1;
  wire FIFO_1_n_10;
  wire FIFO_1_n_11;
  wire FIFO_1_n_12;
  wire FIFO_1_n_13;
  wire FIFO_1_n_14;
  wire FIFO_1_n_15;
  wire FIFO_1_n_16;
  wire FIFO_1_n_3;
  wire FIFO_1_n_4;
  wire FIFO_1_n_6;
  wire FIFO_1_n_7;
  wire FIFO_1_n_8;
  wire FIFO_1_n_9;
  wire FIFO_2_n_0;
  wire FIFO_2_n_1;
  wire FIFO_2_n_10;
  wire FIFO_2_n_11;
  wire FIFO_2_n_12;
  wire FIFO_2_n_13;
  wire FIFO_2_n_14;
  wire FIFO_2_n_15;
  wire FIFO_2_n_2;
  wire FIFO_2_n_3;
  wire FIFO_2_n_5;
  wire FIFO_2_n_6;
  wire FIFO_2_n_7;
  wire FIFO_2_n_9;
  wire FSM_n_0;
  wire FSM_n_1;
  wire FSM_n_10;
  wire FSM_n_14;
  wire FSM_n_16;
  wire FSM_n_2;
  wire FSM_n_5;
  wire FSM_n_6;
  wire FSM_n_7;
  wire NS1;
  wire \PADDR[2] ;
  wire \PADDR[3] ;
  wire \PADDR[3]_0 ;
  wire [2:0]PADDR_IBUF;
  wire PCLK_IBUF_BUFG;
  wire [0:0]PRDATA1;
  wire \PRDATA[2] ;
  wire PRESETn_IBUF;
  wire PSEL;
  wire PSEL_0;
  wire [0:0]PWDATA_IBUF;
  wire [4:0]Q;
  wire REGISTER_n_11;
  wire REGISTER_n_9;
  wire [0:0]SR;
  wire SYNCHRONIZER_n_10;
  wire SYNCHRONIZER_n_11;
  wire SYNCHRONIZER_n_4;
  wire SYNCHRONIZER_n_7;
  wire SYNCHRONIZER_n_8;
  wire SYNCHRONIZER_n_9;
  wire [1:0]addr_t;
  wire \count0_reg[4] ;
  wire [7:0]d1;
  wire [7:0]d2;
  wire [0:0]\data_out_reg[7] ;
  wire [0:0]\data_out_reg[7]_0 ;
  wire dout12_out;
  wire err_seen;
  wire err_seen_reg;
  wire ext_parity;
  wire ext_parity0;
  wire \ext_parity_reg[7] ;
  wire \ext_parity_reg[7]_0 ;
  wire \ext_parity_reg[7]_1 ;
  wire fifo_full;
  wire [1:0]\hit_reg[1] ;
  wire int_reg;
  wire laf_state;
  wire lfd_state;
  wire low_packet_valid;
  wire [8:0]p_0_in1_in;
  wire p_0_in__0;
  wire p_0_in__0_0;
  wire p_0_out__15_carry__0_n_3;
  wire p_0_out__15_carry__0_n_6;
  wire p_0_out__15_carry__0_n_7;
  wire p_0_out__15_carry_n_0;
  wire p_0_out__15_carry_n_1;
  wire p_0_out__15_carry_n_2;
  wire p_0_out__15_carry_n_3;
  wire p_0_out__15_carry_n_4;
  wire p_0_out__15_carry_n_5;
  wire p_0_out__15_carry_n_6;
  wire p_0_out__15_carry_n_7;
  wire p_0_out__31_carry__0_n_3;
  wire p_0_out__31_carry__0_n_6;
  wire p_0_out__31_carry__0_n_7;
  wire p_0_out__31_carry_n_0;
  wire p_0_out__31_carry_n_1;
  wire p_0_out__31_carry_n_2;
  wire p_0_out__31_carry_n_3;
  wire p_0_out__31_carry_n_4;
  wire p_0_out__31_carry_n_5;
  wire p_0_out__31_carry_n_6;
  wire p_0_out__31_carry_n_7;
  wire p_0_out_carry__0_n_3;
  wire p_0_out_carry__0_n_6;
  wire p_0_out_carry__0_n_7;
  wire p_0_out_carry_n_0;
  wire p_0_out_carry_n_1;
  wire p_0_out_carry_n_2;
  wire p_0_out_carry_n_3;
  wire p_0_out_carry_n_4;
  wire p_0_out_carry_n_5;
  wire p_0_out_carry_n_6;
  wire p_0_out_carry_n_7;
  wire [7:0]p_1_in;
  wire parity_done;
  wire pkt_valid_w;
  wire \rx_cnt_reg[1] ;
  wire soft_reset_1;
  wire soft_reset_2;
  wire [1:0]tx_cnt;
  wire \tx_cnt_reg[0] ;
  wire \tx_cnt_reg[3] ;
  wire \tx_cnt_reg[5] ;
  wire \tx_cnt_reg[7] ;
  wire tx_idx;
  wire \tx_idx_reg[1]_rep ;
  wire \tx_idx_reg[1]_rep__0 ;
  wire \tx_idx_reg[1]_rep__1 ;
  wire \tx_idx_reg[1]_rep__1_0 ;
  wire \tx_idx_reg[6] ;
  wire [6:0]\tx_idx_reg[6]_0 ;
  wire tx_run_reg;
  wire tx_run_reg_0;
  wire tx_run_reg_1;
  wire [1:0]txb;
  wire [7:0]\txb_reg[0][7] ;
  wire [7:0]\txb_reg[100][7] ;
  wire [7:0]\txb_reg[101][7] ;
  wire [7:0]\txb_reg[102][7] ;
  wire [7:0]\txb_reg[103][7] ;
  wire [7:0]\txb_reg[104][7] ;
  wire [7:0]\txb_reg[105][7] ;
  wire [7:0]\txb_reg[106][7] ;
  wire [7:0]\txb_reg[107][7] ;
  wire [7:0]\txb_reg[108][7] ;
  wire [7:0]\txb_reg[109][7] ;
  wire [7:0]\txb_reg[10][7] ;
  wire [7:0]\txb_reg[110][7] ;
  wire [7:0]\txb_reg[111][7] ;
  wire [7:0]\txb_reg[112][7] ;
  wire [7:0]\txb_reg[113][7] ;
  wire [7:0]\txb_reg[114][7] ;
  wire [7:0]\txb_reg[115][7] ;
  wire [7:0]\txb_reg[116][7] ;
  wire [7:0]\txb_reg[117][7] ;
  wire [7:0]\txb_reg[118][7] ;
  wire [7:0]\txb_reg[119][7] ;
  wire [7:0]\txb_reg[11][7] ;
  wire [7:0]\txb_reg[120][7] ;
  wire [7:0]\txb_reg[121][7] ;
  wire [7:0]\txb_reg[122][7] ;
  wire [7:0]\txb_reg[123][7] ;
  wire [7:0]\txb_reg[124][7] ;
  wire [7:0]\txb_reg[125][7] ;
  wire [7:0]\txb_reg[126][7] ;
  wire [7:0]\txb_reg[127][7] ;
  wire [7:0]\txb_reg[12][7] ;
  wire [7:0]\txb_reg[13][7] ;
  wire [7:0]\txb_reg[14][7] ;
  wire [7:0]\txb_reg[15][7] ;
  wire [7:0]\txb_reg[16][7] ;
  wire [7:0]\txb_reg[17][7] ;
  wire [7:0]\txb_reg[18][7] ;
  wire [7:0]\txb_reg[19][7] ;
  wire [7:0]\txb_reg[1][7] ;
  wire [7:0]\txb_reg[20][7] ;
  wire [7:0]\txb_reg[21][7] ;
  wire [7:0]\txb_reg[22][7] ;
  wire [7:0]\txb_reg[23][7] ;
  wire [7:0]\txb_reg[24][7] ;
  wire [7:0]\txb_reg[25][7] ;
  wire [7:0]\txb_reg[26][7] ;
  wire [7:0]\txb_reg[27][7] ;
  wire [7:0]\txb_reg[28][7] ;
  wire [7:0]\txb_reg[29][7] ;
  wire [7:0]\txb_reg[2][7] ;
  wire [7:0]\txb_reg[30][7] ;
  wire [7:0]\txb_reg[31][7] ;
  wire [7:0]\txb_reg[32][7] ;
  wire [7:0]\txb_reg[33][7] ;
  wire [7:0]\txb_reg[34][7] ;
  wire [7:0]\txb_reg[35][7] ;
  wire [7:0]\txb_reg[36][7] ;
  wire [7:0]\txb_reg[37][7] ;
  wire [7:0]\txb_reg[38][7] ;
  wire [7:0]\txb_reg[39][7] ;
  wire [7:0]\txb_reg[3][7] ;
  wire [7:0]\txb_reg[40][7] ;
  wire [7:0]\txb_reg[41][7] ;
  wire [7:0]\txb_reg[42][7] ;
  wire [7:0]\txb_reg[43][7] ;
  wire [7:0]\txb_reg[44][7] ;
  wire [7:0]\txb_reg[45][7] ;
  wire [7:0]\txb_reg[46][7] ;
  wire [7:0]\txb_reg[47][7] ;
  wire [7:0]\txb_reg[48][7] ;
  wire [7:0]\txb_reg[49][7] ;
  wire [7:0]\txb_reg[4][7] ;
  wire [7:0]\txb_reg[50][7] ;
  wire [7:0]\txb_reg[51][7] ;
  wire [7:0]\txb_reg[52][7] ;
  wire [7:0]\txb_reg[53][7] ;
  wire [7:0]\txb_reg[54][7] ;
  wire [7:0]\txb_reg[55][7] ;
  wire [7:0]\txb_reg[56][7] ;
  wire [7:0]\txb_reg[57][7] ;
  wire [7:0]\txb_reg[58][7] ;
  wire [7:0]\txb_reg[59][7] ;
  wire [7:0]\txb_reg[5][7] ;
  wire [7:0]\txb_reg[60][7] ;
  wire [7:0]\txb_reg[61][7] ;
  wire [7:0]\txb_reg[62][7] ;
  wire [7:0]\txb_reg[63][7] ;
  wire [7:0]\txb_reg[64][7] ;
  wire [7:0]\txb_reg[65][7] ;
  wire [7:0]\txb_reg[66][7] ;
  wire [7:0]\txb_reg[67][7] ;
  wire [7:0]\txb_reg[68][7] ;
  wire [7:0]\txb_reg[69][7] ;
  wire [7:0]\txb_reg[6][7] ;
  wire [7:0]\txb_reg[70][7] ;
  wire [7:0]\txb_reg[71][7] ;
  wire [7:0]\txb_reg[72][7] ;
  wire [7:0]\txb_reg[73][7] ;
  wire [7:0]\txb_reg[74][7] ;
  wire [7:0]\txb_reg[75][7] ;
  wire [7:0]\txb_reg[76][7] ;
  wire [7:0]\txb_reg[77][7] ;
  wire [7:0]\txb_reg[78][7] ;
  wire [7:0]\txb_reg[79][7] ;
  wire [7:0]\txb_reg[7][7] ;
  wire [7:0]\txb_reg[80][7] ;
  wire [7:0]\txb_reg[81][7] ;
  wire [7:0]\txb_reg[82][7] ;
  wire [7:0]\txb_reg[83][7] ;
  wire [7:0]\txb_reg[84][7] ;
  wire [7:0]\txb_reg[85][7] ;
  wire [7:0]\txb_reg[86][7] ;
  wire [7:0]\txb_reg[87][7] ;
  wire [7:0]\txb_reg[88][7] ;
  wire [7:0]\txb_reg[89][7] ;
  wire [7:0]\txb_reg[8][7] ;
  wire [7:0]\txb_reg[90][7] ;
  wire [7:0]\txb_reg[91][7] ;
  wire [7:0]\txb_reg[92][7] ;
  wire [7:0]\txb_reg[93][7] ;
  wire [7:0]\txb_reg[94][7] ;
  wire [7:0]\txb_reg[95][7] ;
  wire [7:0]\txb_reg[96][7] ;
  wire [7:0]\txb_reg[97][7] ;
  wire [7:0]\txb_reg[98][7] ;
  wire [7:0]\txb_reg[99][7] ;
  wire [7:0]\txb_reg[9][7] ;
  wire wr_pointer0;
  wire wr_pointer0_1;
  wire wr_pointer0_2;

  router_fifo FIFO_0
       (.A(A),
        .D(p_0_in1_in[8]),
        .DI({FIFO_0_n_10,FIFO_0_n_11,FIFO_0_n_12,p_0_in__0}),
        .E(E),
        .\FSM_sequential_PS_reg[1] (FIFO_0_n_23),
        .PCLK_IBUF_BUFG(PCLK_IBUF_BUFG),
        .PRESETn_IBUF(PRESETn_IBUF),
        .Q(Q),
        .S({FIFO_0_n_24,FIFO_0_n_25,FIFO_0_n_26,FIFO_0_n_27}),
        .SR(SR),
        .\count0_reg[4] (FIFO_0_n_3),
        .\count1_reg[4] (FIFO_0_n_5),
        .\count1_reg[4]_0 (FIFO_0_n_6),
        .\count_reg[4]_0 ({p_0_out_carry__0_n_6,p_0_out_carry__0_n_7,p_0_out_carry_n_4,p_0_out_carry_n_5,p_0_out_carry_n_6,p_0_out_carry_n_7}),
        .\count_reg[6]_0 (FIFO_0_n_22),
        .\count_reg[6]_1 ({FIFO_0_n_28,FIFO_0_n_29}),
        .\data_out_reg[7]_0 (FIFO_0_n_2),
        .\data_out_reg[7]_1 (\data_out_reg[7]_0 ),
        .\data_out_reg[7]_2 (d1),
        .\data_out_reg[7]_3 (d2),
        .\dout_reg[7] (p_0_in1_in[7:0]),
        .\hit_reg[1] (\hit_reg[1] ),
        .lfd_state(lfd_state),
        .p_1_in(p_1_in),
        .pkt_valid_w(pkt_valid_w),
        .\rd_pointer_reg[0]_0 (FIFO_1_n_1),
        .\rd_pointer_reg[0]_1 (FIFO_2_n_2),
        .\rx_cnt_reg[6] (\count0_reg[4] ),
        .soft_reset_0_reg(FIFO_0_n_4),
        .soft_reset_0_reg_0(SYNCHRONIZER_n_7),
        .txb(txb),
        .wr_pointer0(wr_pointer0),
        .\wr_pointer_reg[4]_0 (FIFO_0_n_8));
  router_fifo_0 FIFO_1
       (.A__0(A__0),
        .D(p_0_in1_in),
        .DI({FIFO_1_n_6,FIFO_1_n_7,FIFO_1_n_8,FIFO_1_n_9}),
        .E(\data_out_reg[7] ),
        .NS1(NS1),
        .PCLK_IBUF_BUFG(PCLK_IBUF_BUFG),
        .PRESETn_IBUF(PRESETn_IBUF),
        .Q(d1),
        .S({FIFO_1_n_11,FIFO_1_n_12}),
        .SR(SYNCHRONIZER_n_8),
        .\count_reg[4]_0 ({FIFO_1_n_13,FIFO_1_n_14,FIFO_1_n_15,FIFO_1_n_16}),
        .\count_reg[4]_1 ({p_0_out__15_carry__0_n_6,p_0_out__15_carry__0_n_7,p_0_out__15_carry_n_4,p_0_out__15_carry_n_5,p_0_out__15_carry_n_6,p_0_out__15_carry_n_7}),
        .\count_reg[6]_0 (FIFO_1_n_10),
        .\data_out_reg[7]_0 (FIFO_1_n_1),
        .pkt_valid_w(pkt_valid_w),
        .\rd_pointer_reg[0]_0 (FIFO_2_n_2),
        .\rd_pointer_reg[0]_1 (FIFO_0_n_2),
        .\rx_cnt_reg[4] (FIFO_0_n_6),
        .soft_reset_1(soft_reset_1),
        .soft_reset_1_reg(FIFO_1_n_3),
        .txb(txb),
        .wr_pointer0(wr_pointer0_1),
        .\wr_pointer_reg[4]_0 (FIFO_1_n_4));
  router_fifo_1 FIFO_2
       (.A__1(A__1),
        .D(p_0_in1_in),
        .DI({FIFO_2_n_5,FIFO_2_n_6,FIFO_2_n_7,p_0_in__0_0}),
        .E(\data_out_reg[7]_0 ),
        .PCLK_IBUF_BUFG(PCLK_IBUF_BUFG),
        .PRESETn_IBUF(PRESETn_IBUF),
        .Q(d2),
        .S({FIFO_2_n_10,FIFO_2_n_11,FIFO_2_n_12,FIFO_2_n_13}),
        .SR(FIFO_2_n_0),
        .\count2_reg[4] (FIFO_2_n_1),
        .\count_reg[0]_0 (FIFO_2_n_2),
        .\count_reg[4]_0 ({p_0_out__31_carry__0_n_6,p_0_out__31_carry__0_n_7,p_0_out__31_carry_n_4,p_0_out__31_carry_n_5,p_0_out__31_carry_n_6,p_0_out__31_carry_n_7}),
        .\count_reg[6]_0 (FIFO_2_n_9),
        .\count_reg[6]_1 ({FIFO_2_n_14,FIFO_2_n_15}),
        .\rd_pointer_reg[0]_0 (FIFO_1_n_1),
        .\rx_cnt_reg[4] (FIFO_0_n_6),
        .soft_reset_2(soft_reset_2),
        .soft_reset_2_reg(SYNCHRONIZER_n_9),
        .wr_pointer0(wr_pointer0_2),
        .\wr_pointer_reg[4]_0 (FIFO_2_n_3));
  router_fsm FSM
       (.E(FSM_n_6),
        .\FSM_sequential_PS_reg[0]_0 (SYNCHRONIZER_n_11),
        .NS1(NS1),
        .\PADDR[3] (\PADDR[3] ),
        .\PADDR[3]_0 (\PADDR[3]_0 ),
        .PADDR_IBUF(PADDR_IBUF),
        .PCLK_IBUF_BUFG(PCLK_IBUF_BUFG),
        .PRDATA1(PRDATA1),
        .\PRDATA[2] (\PRDATA[2] ),
        .PRESETn_IBUF(PRESETn_IBUF),
        .PSEL(PSEL),
        .PSEL_0(PSEL_0),
        .Q(Q[0]),
        .SR(ext_parity),
        .addr_t(addr_t),
        .\dout_reg[7] (FSM_n_7),
        .fifo_full(fifo_full),
        .\header_reg[7] (dout12_out),
        .\int_parity_reg[0] (FSM_n_10),
        .\int_parity_reg[7] (FSM_n_16),
        .\int_reg_reg[7] (int_reg),
        .laf_state(laf_state),
        .lfd_state(lfd_state),
        .low_packet_valid(low_packet_valid),
        .low_packet_valid_reg(FSM_n_5),
        .low_packet_valid_reg_0(ext_parity0),
        .low_packet_valid_reg_1(REGISTER_n_11),
        .out({FSM_n_0,FSM_n_1,FSM_n_2}),
        .parity_done(parity_done),
        .parity_done_reg(FSM_n_14),
        .parity_done_reg_0(SYNCHRONIZER_n_10),
        .pkt_valid_w(pkt_valid_w),
        .\rd_pointer_reg[0] (FIFO_2_n_3),
        .\rd_pointer_reg[0]_0 (FIFO_1_n_4),
        .\rd_pointer_reg[0]_1 (FIFO_0_n_8),
        .\rd_pointer_reg[0]_2 (FIFO_0_n_23),
        .\rx_cnt_reg[1] (\rx_cnt_reg[1] ),
        .soft_reset_1_reg(SYNCHRONIZER_n_4),
        .tx_cnt(tx_cnt),
        .\tx_cnt_reg[0] (\tx_cnt_reg[0] ),
        .\tx_cnt_reg[3] (\tx_cnt_reg[3] ),
        .\tx_cnt_reg[5] (\tx_cnt_reg[5] ),
        .\tx_cnt_reg[7] (\tx_cnt_reg[7] ),
        .tx_idx(tx_idx),
        .\tx_idx_reg[1]_rep__1 (\tx_idx_reg[1]_rep__1 ),
        .\tx_idx_reg[6] (\tx_idx_reg[6] ),
        .tx_run_reg(tx_run_reg),
        .tx_run_reg_0(tx_run_reg_0),
        .tx_run_reg_1(tx_run_reg_1),
        .txb(txb),
        .wr_pointer0(wr_pointer0_2),
        .wr_pointer0_0(wr_pointer0_1),
        .wr_pointer0_1(wr_pointer0));
  GND GND
       (.G(\<const0> ));
  router_reg REGISTER
       (.E(ext_parity0),
        .\FSM_sequential_PS_reg[0] (dout12_out),
        .\FSM_sequential_PS_reg[1] (REGISTER_n_9),
        .\FSM_sequential_PS_reg[1]_0 (FSM_n_10),
        .\FSM_sequential_PS_reg[1]_1 (FSM_n_7),
        .\FSM_sequential_PS_reg[1]_2 (int_reg),
        .\FSM_sequential_PS_reg[1]_3 (ext_parity),
        .\FSM_sequential_PS_reg[2] (REGISTER_n_11),
        .\FSM_sequential_PS_reg[2]_0 (FSM_n_6),
        .\FSM_sequential_PS_reg[2]_1 (FSM_n_16),
        .\PADDR[2] (\PADDR[2] ),
        .PADDR_IBUF(PADDR_IBUF[2]),
        .PCLK_IBUF_BUFG(PCLK_IBUF_BUFG),
        .PRESETn_IBUF(PRESETn_IBUF),
        .PSEL(PSEL_0),
        .PWDATA_IBUF(PWDATA_IBUF),
        .Q(p_0_in1_in[7:0]),
        .SR(SR),
        .err_seen(err_seen),
        .err_seen_reg(err_seen_reg),
        .\ext_parity_reg[7]_0 (\ext_parity_reg[7] ),
        .\ext_parity_reg[7]_1 (\ext_parity_reg[7]_0 ),
        .\ext_parity_reg[7]_2 (\ext_parity_reg[7]_1 ),
        .fifo_full(fifo_full),
        .\int_reg_reg[1]_0 (txb),
        .laf_state(laf_state),
        .lfd_state(lfd_state),
        .low_packet_valid(low_packet_valid),
        .low_packet_valid_reg_0(FSM_n_5),
        .out({FSM_n_0,FSM_n_2}),
        .parity_done(parity_done),
        .parity_done_reg_0(FSM_n_14),
        .pkt_valid_w(pkt_valid_w),
        .\tx_idx_reg[1]_rep (\tx_idx_reg[1]_rep ),
        .\tx_idx_reg[1]_rep__0 (\tx_idx_reg[1]_rep__0 ),
        .\tx_idx_reg[1]_rep__1 (\tx_idx_reg[1]_rep__1_0 ),
        .\tx_idx_reg[6] (\tx_idx_reg[6]_0 ),
        .tx_run_reg(tx_run_reg_0),
        .\txb_reg[0][7] (\txb_reg[0][7] ),
        .\txb_reg[100][7] (\txb_reg[100][7] ),
        .\txb_reg[101][7] (\txb_reg[101][7] ),
        .\txb_reg[102][7] (\txb_reg[102][7] ),
        .\txb_reg[103][7] (\txb_reg[103][7] ),
        .\txb_reg[104][7] (\txb_reg[104][7] ),
        .\txb_reg[105][7] (\txb_reg[105][7] ),
        .\txb_reg[106][7] (\txb_reg[106][7] ),
        .\txb_reg[107][7] (\txb_reg[107][7] ),
        .\txb_reg[108][7] (\txb_reg[108][7] ),
        .\txb_reg[109][7] (\txb_reg[109][7] ),
        .\txb_reg[10][7] (\txb_reg[10][7] ),
        .\txb_reg[110][7] (\txb_reg[110][7] ),
        .\txb_reg[111][7] (\txb_reg[111][7] ),
        .\txb_reg[112][7] (\txb_reg[112][7] ),
        .\txb_reg[113][7] (\txb_reg[113][7] ),
        .\txb_reg[114][7] (\txb_reg[114][7] ),
        .\txb_reg[115][7] (\txb_reg[115][7] ),
        .\txb_reg[116][7] (\txb_reg[116][7] ),
        .\txb_reg[117][7] (\txb_reg[117][7] ),
        .\txb_reg[118][7] (\txb_reg[118][7] ),
        .\txb_reg[119][7] (\txb_reg[119][7] ),
        .\txb_reg[11][7] (\txb_reg[11][7] ),
        .\txb_reg[120][7] (\txb_reg[120][7] ),
        .\txb_reg[121][7] (\txb_reg[121][7] ),
        .\txb_reg[122][7] (\txb_reg[122][7] ),
        .\txb_reg[123][7] (\txb_reg[123][7] ),
        .\txb_reg[124][7] (\txb_reg[124][7] ),
        .\txb_reg[125][7] (\txb_reg[125][7] ),
        .\txb_reg[126][7] (\txb_reg[126][7] ),
        .\txb_reg[127][7] (\txb_reg[127][7] ),
        .\txb_reg[12][7] (\txb_reg[12][7] ),
        .\txb_reg[13][7] (\txb_reg[13][7] ),
        .\txb_reg[14][7] (\txb_reg[14][7] ),
        .\txb_reg[15][7] (\txb_reg[15][7] ),
        .\txb_reg[16][7] (\txb_reg[16][7] ),
        .\txb_reg[17][7] (\txb_reg[17][7] ),
        .\txb_reg[18][7] (\txb_reg[18][7] ),
        .\txb_reg[19][7] (\txb_reg[19][7] ),
        .\txb_reg[1][7] (\txb_reg[1][7] ),
        .\txb_reg[20][7] (\txb_reg[20][7] ),
        .\txb_reg[21][7] (\txb_reg[21][7] ),
        .\txb_reg[22][7] (\txb_reg[22][7] ),
        .\txb_reg[23][7] (\txb_reg[23][7] ),
        .\txb_reg[24][7] (\txb_reg[24][7] ),
        .\txb_reg[25][7] (\txb_reg[25][7] ),
        .\txb_reg[26][7] (\txb_reg[26][7] ),
        .\txb_reg[27][7] (\txb_reg[27][7] ),
        .\txb_reg[28][7] (\txb_reg[28][7] ),
        .\txb_reg[29][7] (\txb_reg[29][7] ),
        .\txb_reg[2][7] (\txb_reg[2][7] ),
        .\txb_reg[30][7] (\txb_reg[30][7] ),
        .\txb_reg[31][7] (\txb_reg[31][7] ),
        .\txb_reg[32][7] (\txb_reg[32][7] ),
        .\txb_reg[33][7] (\txb_reg[33][7] ),
        .\txb_reg[34][7] (\txb_reg[34][7] ),
        .\txb_reg[35][7] (\txb_reg[35][7] ),
        .\txb_reg[36][7] (\txb_reg[36][7] ),
        .\txb_reg[37][7] (\txb_reg[37][7] ),
        .\txb_reg[38][7] (\txb_reg[38][7] ),
        .\txb_reg[39][7] (\txb_reg[39][7] ),
        .\txb_reg[3][7] (\txb_reg[3][7] ),
        .\txb_reg[40][7] (\txb_reg[40][7] ),
        .\txb_reg[41][7] (\txb_reg[41][7] ),
        .\txb_reg[42][7] (\txb_reg[42][7] ),
        .\txb_reg[43][7] (\txb_reg[43][7] ),
        .\txb_reg[44][7] (\txb_reg[44][7] ),
        .\txb_reg[45][7] (\txb_reg[45][7] ),
        .\txb_reg[46][7] (\txb_reg[46][7] ),
        .\txb_reg[47][7] (\txb_reg[47][7] ),
        .\txb_reg[48][7] (\txb_reg[48][7] ),
        .\txb_reg[49][7] (\txb_reg[49][7] ),
        .\txb_reg[4][7] (\txb_reg[4][7] ),
        .\txb_reg[50][7] (\txb_reg[50][7] ),
        .\txb_reg[51][7] (\txb_reg[51][7] ),
        .\txb_reg[52][7] (\txb_reg[52][7] ),
        .\txb_reg[53][7] (\txb_reg[53][7] ),
        .\txb_reg[54][7] (\txb_reg[54][7] ),
        .\txb_reg[55][7] (\txb_reg[55][7] ),
        .\txb_reg[56][7] (\txb_reg[56][7] ),
        .\txb_reg[57][7] (\txb_reg[57][7] ),
        .\txb_reg[58][7] (\txb_reg[58][7] ),
        .\txb_reg[59][7] (\txb_reg[59][7] ),
        .\txb_reg[5][7] (\txb_reg[5][7] ),
        .\txb_reg[60][7] (\txb_reg[60][7] ),
        .\txb_reg[61][7] (\txb_reg[61][7] ),
        .\txb_reg[62][7] (\txb_reg[62][7] ),
        .\txb_reg[63][7] (\txb_reg[63][7] ),
        .\txb_reg[64][7] (\txb_reg[64][7] ),
        .\txb_reg[65][7] (\txb_reg[65][7] ),
        .\txb_reg[66][7] (\txb_reg[66][7] ),
        .\txb_reg[67][7] (\txb_reg[67][7] ),
        .\txb_reg[68][7] (\txb_reg[68][7] ),
        .\txb_reg[69][7] (\txb_reg[69][7] ),
        .\txb_reg[6][7] (\txb_reg[6][7] ),
        .\txb_reg[70][7] (\txb_reg[70][7] ),
        .\txb_reg[71][7] (\txb_reg[71][7] ),
        .\txb_reg[72][7] (\txb_reg[72][7] ),
        .\txb_reg[73][7] (\txb_reg[73][7] ),
        .\txb_reg[74][7] (\txb_reg[74][7] ),
        .\txb_reg[75][7] (\txb_reg[75][7] ),
        .\txb_reg[76][7] (\txb_reg[76][7] ),
        .\txb_reg[77][7] (\txb_reg[77][7] ),
        .\txb_reg[78][7] (\txb_reg[78][7] ),
        .\txb_reg[79][7] (\txb_reg[79][7] ),
        .\txb_reg[7][7] (\txb_reg[7][7] ),
        .\txb_reg[80][7] (\txb_reg[80][7] ),
        .\txb_reg[81][7] (\txb_reg[81][7] ),
        .\txb_reg[82][7] (\txb_reg[82][7] ),
        .\txb_reg[83][7] (\txb_reg[83][7] ),
        .\txb_reg[84][7] (\txb_reg[84][7] ),
        .\txb_reg[85][7] (\txb_reg[85][7] ),
        .\txb_reg[86][7] (\txb_reg[86][7] ),
        .\txb_reg[87][7] (\txb_reg[87][7] ),
        .\txb_reg[88][7] (\txb_reg[88][7] ),
        .\txb_reg[89][7] (\txb_reg[89][7] ),
        .\txb_reg[8][7] (\txb_reg[8][7] ),
        .\txb_reg[90][7] (\txb_reg[90][7] ),
        .\txb_reg[91][7] (\txb_reg[91][7] ),
        .\txb_reg[92][7] (\txb_reg[92][7] ),
        .\txb_reg[93][7] (\txb_reg[93][7] ),
        .\txb_reg[94][7] (\txb_reg[94][7] ),
        .\txb_reg[95][7] (\txb_reg[95][7] ),
        .\txb_reg[96][7] (\txb_reg[96][7] ),
        .\txb_reg[97][7] (\txb_reg[97][7] ),
        .\txb_reg[98][7] (\txb_reg[98][7] ),
        .\txb_reg[99][7] (\txb_reg[99][7] ),
        .\txb_reg[9][7] (\txb_reg[9][7] ));
  router_sync SYNCHRONIZER
       (.\FSM_sequential_PS_reg[0] (SYNCHRONIZER_n_10),
        .\FSM_sequential_PS_reg[1] (SYNCHRONIZER_n_11),
        .\FSM_sequential_PS_reg[2] (SYNCHRONIZER_n_4),
        .PCLK_IBUF_BUFG(PCLK_IBUF_BUFG),
        .PRESETn_IBUF(PRESETn_IBUF),
        .Q(Q),
        .SR(SR),
        .addr_t(addr_t),
        .\count0_reg[4]_0 (\count0_reg[4] ),
        .\count_reg[0] (SYNCHRONIZER_n_7),
        .\count_reg[0]_0 (SYNCHRONIZER_n_8),
        .\count_reg[0]_1 (SYNCHRONIZER_n_9),
        .fifo_full(fifo_full),
        .out({FSM_n_0,FSM_n_1,FSM_n_2}),
        .parity_done(parity_done),
        .parity_done_reg(REGISTER_n_9),
        .pkt_valid_w(pkt_valid_w),
        .\rd_pointer_reg[0] (FIFO_1_n_1),
        .\rd_pointer_reg[0]_0 (FIFO_0_n_2),
        .\rd_pointer_reg[0]_1 (FIFO_2_n_2),
        .\rd_pointer_reg[0]_2 (FIFO_1_n_4),
        .\rd_pointer_reg[0]_3 (FIFO_2_n_3),
        .\rd_pointer_reg[0]_4 (FIFO_0_n_8),
        .\rd_pointer_reg[0]_5 (FIFO_1_n_3),
        .\rd_pointer_reg[0]_6 (FIFO_2_n_1),
        .\rd_pointer_reg[0]_7 (FIFO_2_n_0),
        .\rx_cnt_reg[4] (FIFO_0_n_4),
        .\rx_cnt_reg[4]_0 (FIFO_0_n_5),
        .\rx_cnt_reg[6] (FIFO_0_n_3),
        .soft_reset_1(soft_reset_1),
        .soft_reset_2(soft_reset_2),
        .\tx_idx_reg[6] (txb));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out__15_carry
       (.CI(\<const0> ),
        .CO({p_0_out__15_carry_n_0,p_0_out__15_carry_n_1,p_0_out__15_carry_n_2,p_0_out__15_carry_n_3}),
        .CYINIT(A__0),
        .DI({FIFO_1_n_6,FIFO_1_n_7,FIFO_1_n_8,FIFO_1_n_9}),
        .O({p_0_out__15_carry_n_4,p_0_out__15_carry_n_5,p_0_out__15_carry_n_6,p_0_out__15_carry_n_7}),
        .S({FIFO_1_n_13,FIFO_1_n_14,FIFO_1_n_15,FIFO_1_n_16}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out__15_carry__0
       (.CI(p_0_out__15_carry_n_0),
        .CO(p_0_out__15_carry__0_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,FIFO_1_n_10}),
        .O({p_0_out__15_carry__0_n_6,p_0_out__15_carry__0_n_7}),
        .S({\<const0> ,\<const0> ,FIFO_1_n_11,FIFO_1_n_12}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out__31_carry
       (.CI(\<const0> ),
        .CO({p_0_out__31_carry_n_0,p_0_out__31_carry_n_1,p_0_out__31_carry_n_2,p_0_out__31_carry_n_3}),
        .CYINIT(A__1),
        .DI({FIFO_2_n_5,FIFO_2_n_6,FIFO_2_n_7,p_0_in__0_0}),
        .O({p_0_out__31_carry_n_4,p_0_out__31_carry_n_5,p_0_out__31_carry_n_6,p_0_out__31_carry_n_7}),
        .S({FIFO_2_n_10,FIFO_2_n_11,FIFO_2_n_12,FIFO_2_n_13}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out__31_carry__0
       (.CI(p_0_out__31_carry_n_0),
        .CO(p_0_out__31_carry__0_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,FIFO_2_n_9}),
        .O({p_0_out__31_carry__0_n_6,p_0_out__31_carry__0_n_7}),
        .S({\<const0> ,\<const0> ,FIFO_2_n_14,FIFO_2_n_15}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out_carry
       (.CI(\<const0> ),
        .CO({p_0_out_carry_n_0,p_0_out_carry_n_1,p_0_out_carry_n_2,p_0_out_carry_n_3}),
        .CYINIT(A),
        .DI({FIFO_0_n_10,FIFO_0_n_11,FIFO_0_n_12,p_0_in__0}),
        .O({p_0_out_carry_n_4,p_0_out_carry_n_5,p_0_out_carry_n_6,p_0_out_carry_n_7}),
        .S({FIFO_0_n_24,FIFO_0_n_25,FIFO_0_n_26,FIFO_0_n_27}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out_carry__0
       (.CI(p_0_out_carry_n_0),
        .CO(p_0_out_carry__0_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,FIFO_0_n_22}),
        .O({p_0_out_carry__0_n_6,p_0_out_carry__0_n_7}),
        .S({\<const0> ,\<const0> ,FIFO_0_n_28,FIFO_0_n_29}));
endmodule

module spi_master
   (mosi_OBUF,
    SR,
    sck_OBUF,
    PRDATA_OBUF,
    PSLVERR_OBUF,
    E,
    \tx_reg_reg[0] ,
    done_flag_reg,
    \PRDATA[7] ,
    \PRDATA[6] ,
    \PRDATA[5] ,
    \PRDATA[1] ,
    \PRDATA[0] ,
    l_cpha_reg_0,
    \ss_n[3] ,
    PCLK_IBUF_BUFG,
    Q,
    PRESETn_IBUF,
    PADDR_IBUF,
    PSEL,
    \tx_cnt_reg[2] ,
    \PADDR[4] ,
    \tx_cnt_reg[5] ,
    PSEL_0,
    PWDATA_IBUF,
    done_flag,
    \tx_cnt_reg[4] ,
    \tx_cnt_reg[3] ,
    PSEL_IBUF,
    \tx_reg_reg[7] ,
    miso_IBUF,
    PENABLE_IBUF,
    PWRITE_IBUF);
  output mosi_OBUF;
  output [0:0]SR;
  output sck_OBUF;
  output [2:0]PRDATA_OBUF;
  output PSLVERR_OBUF;
  output [0:0]E;
  output [0:0]\tx_reg_reg[0] ;
  output done_flag_reg;
  output \PRDATA[7] ;
  output \PRDATA[6] ;
  output \PRDATA[5] ;
  output \PRDATA[1] ;
  output \PRDATA[0] ;
  output l_cpha_reg_0;
  output [3:0]\ss_n[3] ;
  input PCLK_IBUF_BUFG;
  input [7:0]Q;
  input PRESETn_IBUF;
  input [5:0]PADDR_IBUF;
  input PSEL;
  input \tx_cnt_reg[2] ;
  input \PADDR[4] ;
  input \tx_cnt_reg[5] ;
  input PSEL_0;
  input [0:0]PWDATA_IBUF;
  input done_flag;
  input \tx_cnt_reg[4] ;
  input \tx_cnt_reg[3] ;
  input PSEL_IBUF;
  input [7:0]\tx_reg_reg[7] ;
  input miso_IBUF;
  input PENABLE_IBUF;
  input PWRITE_IBUF;

  wire \<const1> ;
  wire [0:0]E;
  wire \PADDR[4] ;
  wire [5:0]PADDR_IBUF;
  wire PCLK_IBUF_BUFG;
  wire PENABLE_IBUF;
  wire \PRDATA[0] ;
  wire \PRDATA[1] ;
  wire \PRDATA[5] ;
  wire \PRDATA[6] ;
  wire \PRDATA[7] ;
  wire [2:0]PRDATA_OBUF;
  wire PRESETn_IBUF;
  wire PSEL;
  wire PSEL_0;
  wire PSEL_IBUF;
  wire PSLVERR_OBUF;
  wire [0:0]PWDATA_IBUF;
  wire PWRITE_IBUF;
  wire [7:0]Q;
  wire [0:0]SR;
  wire busy;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire \cfg_reg[7]_i_3_n_0 ;
  wire \div_cnt[0]_i_1_n_0 ;
  wire \div_cnt[1]_i_1_n_0 ;
  wire \div_cnt[2]_i_1_n_0 ;
  wire \div_cnt[3]_i_1_n_0 ;
  wire \div_cnt[3]_i_2_n_0 ;
  wire \div_cnt[3]_i_3_n_0 ;
  wire \div_cnt[3]_i_4_n_0 ;
  wire \div_cnt[3]_i_5_n_0 ;
  wire \div_cnt_reg_n_0_[0] ;
  wire \div_cnt_reg_n_0_[1] ;
  wire \div_cnt_reg_n_0_[2] ;
  wire \div_cnt_reg_n_0_[3] ;
  wire done;
  wire done_flag;
  wire done_flag_i_2_n_0;
  wire done_flag_reg;
  wire done_i_1_n_0;
  wire [3:0]edge_cnt;
  wire \edge_cnt[0]_i_1_n_0 ;
  wire \edge_cnt[1]_i_1_n_0 ;
  wire \edge_cnt[2]_i_1_n_0 ;
  wire \edge_cnt[3]_i_1_n_0 ;
  wire \edge_cnt[3]_i_2_n_0 ;
  wire [3:0]half;
  wire \half[3]_i_1_n_0 ;
  wire l_cpha;
  wire l_cpha_reg_0;
  wire miso_IBUF;
  wire mosi_OBUF;
  wire mosi_r_i_1_n_0;
  wire mosi_r_i_2_n_0;
  wire p_1_in;
  wire [3:0]p_2_in;
  wire [7:0]rx_data;
  wire [7:0]rx_sh;
  wire \rx_sh[0]_i_1_n_0 ;
  wire \rx_sh[1]_i_1_n_0 ;
  wire \rx_sh[2]_i_1_n_0 ;
  wire \rx_sh[3]_i_1_n_0 ;
  wire \rx_sh[4]_i_1_n_0 ;
  wire \rx_sh[5]_i_1_n_0 ;
  wire \rx_sh[6]_i_1_n_0 ;
  wire \rx_sh[7]_i_1_n_0 ;
  wire \rx_sh[7]_i_2_n_0 ;
  wire sck_OBUF;
  wire sck_r_i_1_n_0;
  wire [3:0]\ss_n[3] ;
  wire \ss_r[0]_i_1_n_0 ;
  wire \ss_r[1]_i_1_n_0 ;
  wire \ss_r[2]_i_1_n_0 ;
  wire \ss_r[3]_i_1_n_0 ;
  wire \ss_r[3]_i_2_n_0 ;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \tx_cnt_reg[2] ;
  wire \tx_cnt_reg[3] ;
  wire \tx_cnt_reg[4] ;
  wire \tx_cnt_reg[5] ;
  wire [0:0]\tx_reg_reg[0] ;
  wire [7:0]\tx_reg_reg[7] ;
  wire \tx_sh[0]_i_1_n_0 ;
  wire \tx_sh[1]_i_1_n_0 ;
  wire \tx_sh[2]_i_1_n_0 ;
  wire \tx_sh[3]_i_1_n_0 ;
  wire \tx_sh[4]_i_1_n_0 ;
  wire \tx_sh[5]_i_1_n_0 ;
  wire \tx_sh[6]_i_1_n_0 ;
  wire \tx_sh[7]_i_1_n_0 ;
  wire \tx_sh[7]_i_2_n_0 ;
  wire \tx_sh[7]_i_3_n_0 ;
  wire \tx_sh[7]_i_4_n_0 ;
  wire \tx_sh[7]_i_5_n_0 ;
  wire \tx_sh_reg_n_0_[0] ;
  wire \tx_sh_reg_n_0_[1] ;
  wire \tx_sh_reg_n_0_[2] ;
  wire \tx_sh_reg_n_0_[3] ;
  wire \tx_sh_reg_n_0_[4] ;
  wire \tx_sh_reg_n_0_[5] ;
  wire \tx_sh_reg_n_0_[6] ;

  LUT6 #(
    .INIT(64'h0A0AA8080000A808)) 
    \PRDATA_OBUF[0]_inst_i_2 
       (.I0(PSEL),
        .I1(Q[0]),
        .I2(PADDR_IBUF[1]),
        .I3(busy),
        .I4(PADDR_IBUF[0]),
        .I5(rx_data[0]),
        .O(\PRDATA[0] ));
  LUT6 #(
    .INIT(64'h0A0AA8080000A808)) 
    \PRDATA_OBUF[1]_inst_i_2 
       (.I0(PSEL),
        .I1(Q[1]),
        .I2(PADDR_IBUF[1]),
        .I3(done_flag),
        .I4(PADDR_IBUF[0]),
        .I5(rx_data[1]),
        .O(\PRDATA[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF54040000)) 
    \PRDATA_OBUF[2]_inst_i_1 
       (.I0(PADDR_IBUF[1]),
        .I1(Q[2]),
        .I2(PADDR_IBUF[0]),
        .I3(rx_data[2]),
        .I4(PSEL),
        .I5(\tx_cnt_reg[2] ),
        .O(PRDATA_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF54040000)) 
    \PRDATA_OBUF[3]_inst_i_1 
       (.I0(PADDR_IBUF[1]),
        .I1(Q[3]),
        .I2(PADDR_IBUF[0]),
        .I3(rx_data[3]),
        .I4(PSEL),
        .I5(\tx_cnt_reg[3] ),
        .O(PRDATA_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF54040000)) 
    \PRDATA_OBUF[4]_inst_i_1 
       (.I0(PADDR_IBUF[1]),
        .I1(Q[4]),
        .I2(PADDR_IBUF[0]),
        .I3(rx_data[4]),
        .I4(PSEL),
        .I5(\tx_cnt_reg[4] ),
        .O(PRDATA_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h00008A80)) 
    \PRDATA_OBUF[5]_inst_i_2 
       (.I0(PSEL),
        .I1(rx_data[5]),
        .I2(PADDR_IBUF[0]),
        .I3(Q[5]),
        .I4(PADDR_IBUF[1]),
        .O(\PRDATA[5] ));
  LUT5 #(
    .INIT(32'h00008A80)) 
    \PRDATA_OBUF[6]_inst_i_2 
       (.I0(PSEL),
        .I1(rx_data[6]),
        .I2(PADDR_IBUF[0]),
        .I3(Q[6]),
        .I4(PADDR_IBUF[1]),
        .O(\PRDATA[6] ));
  LUT5 #(
    .INIT(32'h00008A80)) 
    \PRDATA_OBUF[7]_inst_i_2 
       (.I0(PSEL),
        .I1(rx_data[7]),
        .I2(PADDR_IBUF[0]),
        .I3(Q[7]),
        .I4(PADDR_IBUF[1]),
        .O(\PRDATA[7] ));
  LUT6 #(
    .INIT(64'h00BAFFFF00BA00BA)) 
    PSLVERR_OBUF_inst_i_1
       (.I0(busy),
        .I1(PADDR_IBUF[0]),
        .I2(PADDR_IBUF[1]),
        .I3(\PADDR[4] ),
        .I4(\tx_cnt_reg[5] ),
        .I5(PSEL_0),
        .O(PSLVERR_OBUF));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    PSLVERR_OBUF_inst_i_5
       (.I0(PSEL_IBUF),
        .I1(PADDR_IBUF[5]),
        .I2(PADDR_IBUF[3]),
        .I3(PADDR_IBUF[4]),
        .I4(PADDR_IBUF[2]),
        .O(l_cpha_reg_0));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFF7FD500)) 
    busy_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\div_cnt[3]_i_3_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(busy_i_2_n_0),
        .I4(busy),
        .O(busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    busy_i_2
       (.I0(\state_reg_n_0_[1] ),
        .I1(PADDR_IBUF[0]),
        .I2(PADDR_IBUF[1]),
        .I3(PWDATA_IBUF),
        .I4(\cfg_reg[7]_i_3_n_0 ),
        .O(busy_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    busy_reg
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(busy_i_1_n_0),
        .Q(busy),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \cfg_reg[7]_i_1 
       (.I0(PRESETn_IBUF),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \cfg_reg[7]_i_2 
       (.I0(PADDR_IBUF[0]),
        .I1(PADDR_IBUF[1]),
        .I2(\cfg_reg[7]_i_3_n_0 ),
        .O(E));
  LUT4 #(
    .INIT(16'h0040)) 
    \cfg_reg[7]_i_3 
       (.I0(busy),
        .I1(PENABLE_IBUF),
        .I2(PWRITE_IBUF),
        .I3(l_cpha_reg_0),
        .O(\cfg_reg[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \div_cnt[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\div_cnt_reg_n_0_[0] ),
        .I3(\div_cnt[3]_i_3_n_0 ),
        .O(\div_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h00000EE0)) 
    \div_cnt[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\div_cnt_reg_n_0_[0] ),
        .I3(\div_cnt_reg_n_0_[1] ),
        .I4(\div_cnt[3]_i_3_n_0 ),
        .O(\div_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EE0E0E0)) 
    \div_cnt[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\div_cnt_reg_n_0_[2] ),
        .I3(\div_cnt_reg_n_0_[1] ),
        .I4(\div_cnt_reg_n_0_[0] ),
        .I5(\div_cnt[3]_i_3_n_0 ),
        .O(\div_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006AAA)) 
    \div_cnt[3]_i_1 
       (.I0(\div_cnt_reg_n_0_[3] ),
        .I1(\div_cnt_reg_n_0_[0] ),
        .I2(\div_cnt_reg_n_0_[1] ),
        .I3(\div_cnt_reg_n_0_[2] ),
        .I4(\div_cnt[3]_i_2_n_0 ),
        .I5(\div_cnt[3]_i_3_n_0 ),
        .O(\div_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \div_cnt[3]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\div_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1021020002001021)) 
    \div_cnt[3]_i_3 
       (.I0(\div_cnt_reg_n_0_[2] ),
        .I1(\div_cnt[3]_i_4_n_0 ),
        .I2(half[2]),
        .I3(\div_cnt[3]_i_5_n_0 ),
        .I4(\div_cnt_reg_n_0_[3] ),
        .I5(half[3]),
        .O(\div_cnt[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hF69F)) 
    \div_cnt[3]_i_4 
       (.I0(half[1]),
        .I1(\div_cnt_reg_n_0_[1] ),
        .I2(\div_cnt_reg_n_0_[0] ),
        .I3(half[0]),
        .O(\div_cnt[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \div_cnt[3]_i_5 
       (.I0(half[0]),
        .I1(half[1]),
        .O(\div_cnt[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_cnt_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\div_cnt[0]_i_1_n_0 ),
        .Q(\div_cnt_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \div_cnt_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\div_cnt[1]_i_1_n_0 ),
        .Q(\div_cnt_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \div_cnt_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\div_cnt[2]_i_1_n_0 ),
        .Q(\div_cnt_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \div_cnt_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\div_cnt[3]_i_1_n_0 ),
        .Q(\div_cnt_reg_n_0_[3] ),
        .R(SR));
  LUT4 #(
    .INIT(16'hA800)) 
    done_flag_i_1
       (.I0(done_flag_i_2_n_0),
        .I1(done),
        .I2(done_flag),
        .I3(PRESETn_IBUF),
        .O(done_flag_reg));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    done_flag_i_2
       (.I0(\cfg_reg[7]_i_3_n_0 ),
        .I1(PWDATA_IBUF),
        .I2(PADDR_IBUF[1]),
        .I3(PADDR_IBUF[0]),
        .O(done_flag_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    done_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\div_cnt[3]_i_3_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .O(done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(done_i_1_n_0),
        .Q(done),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \edge_cnt[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(edge_cnt[0]),
        .O(\edge_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \edge_cnt[1]_i_1 
       (.I0(edge_cnt[1]),
        .I1(edge_cnt[0]),
        .I2(\state_reg_n_0_[1] ),
        .O(\edge_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \edge_cnt[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(edge_cnt[0]),
        .I2(edge_cnt[1]),
        .I3(edge_cnt[2]),
        .O(\edge_cnt[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \edge_cnt[3]_i_1 
       (.I0(\half[3]_i_1_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\div_cnt[3]_i_3_n_0 ),
        .O(\edge_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \edge_cnt[3]_i_2 
       (.I0(edge_cnt[1]),
        .I1(edge_cnt[0]),
        .I2(edge_cnt[2]),
        .I3(edge_cnt[3]),
        .I4(\state_reg_n_0_[1] ),
        .O(\edge_cnt[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_cnt_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\edge_cnt[3]_i_1_n_0 ),
        .D(\edge_cnt[0]_i_1_n_0 ),
        .Q(edge_cnt[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \edge_cnt_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\edge_cnt[3]_i_1_n_0 ),
        .D(\edge_cnt[1]_i_1_n_0 ),
        .Q(edge_cnt[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \edge_cnt_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\edge_cnt[3]_i_1_n_0 ),
        .D(\edge_cnt[2]_i_1_n_0 ),
        .Q(edge_cnt[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \edge_cnt_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\edge_cnt[3]_i_1_n_0 ),
        .D(\edge_cnt[3]_i_2_n_0 ),
        .Q(edge_cnt[3]),
        .R(SR));
  LUT2 #(
    .INIT(4'h1)) 
    \half[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_2_in[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \half[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \half[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \half[3]_i_1 
       (.I0(\cfg_reg[7]_i_3_n_0 ),
        .I1(PWDATA_IBUF),
        .I2(PADDR_IBUF[1]),
        .I3(PADDR_IBUF[0]),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\half[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \half[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_2_in[3]));
  FDSE #(
    .INIT(1'b1)) 
    \half_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\half[3]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(half[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \half_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\half[3]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(half[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \half_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\half[3]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(half[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \half_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\half[3]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(half[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    l_cpha_reg
       (.C(PCLK_IBUF_BUFG),
        .CE(\half[3]_i_1_n_0 ),
        .D(Q[4]),
        .Q(l_cpha),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    mosi_r_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\div_cnt[3]_i_3_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\half[3]_i_1_n_0 ),
        .I4(\tx_sh[7]_i_3_n_0 ),
        .O(mosi_r_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h0000AA30)) 
    mosi_r_i_2
       (.I0(p_1_in),
        .I1(Q[4]),
        .I2(\tx_reg_reg[7] [7]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(mosi_r_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mosi_r_reg
       (.C(PCLK_IBUF_BUFG),
        .CE(mosi_r_i_1_n_0),
        .D(mosi_r_i_2_n_0),
        .Q(mosi_OBUF),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(rx_sh[0]),
        .Q(rx_data[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(rx_sh[1]),
        .Q(rx_data[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(rx_sh[2]),
        .Q(rx_data[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(rx_sh[3]),
        .Q(rx_data[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(rx_sh[4]),
        .Q(rx_data[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(rx_sh[5]),
        .Q(rx_data[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(rx_sh[6]),
        .Q(rx_data[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .D(rx_sh[7]),
        .Q(rx_data[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_sh[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(miso_IBUF),
        .O(\rx_sh[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_sh[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(rx_sh[0]),
        .O(\rx_sh[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_sh[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(rx_sh[1]),
        .O(\rx_sh[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_sh[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(rx_sh[2]),
        .O(\rx_sh[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_sh[4]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(rx_sh[3]),
        .O(\rx_sh[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_sh[5]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(rx_sh[4]),
        .O(\rx_sh[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_sh[6]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(rx_sh[5]),
        .O(\rx_sh[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FF00FF00FF08)) 
    \rx_sh[7]_i_1 
       (.I0(\div_cnt[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\half[3]_i_1_n_0 ),
        .I4(l_cpha),
        .I5(edge_cnt[0]),
        .O(\rx_sh[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_sh[7]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(rx_sh[6]),
        .O(\rx_sh[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_sh_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\rx_sh[7]_i_1_n_0 ),
        .D(\rx_sh[0]_i_1_n_0 ),
        .Q(rx_sh[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_sh_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\rx_sh[7]_i_1_n_0 ),
        .D(\rx_sh[1]_i_1_n_0 ),
        .Q(rx_sh[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_sh_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\rx_sh[7]_i_1_n_0 ),
        .D(\rx_sh[2]_i_1_n_0 ),
        .Q(rx_sh[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_sh_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\rx_sh[7]_i_1_n_0 ),
        .D(\rx_sh[3]_i_1_n_0 ),
        .Q(rx_sh[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_sh_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\rx_sh[7]_i_1_n_0 ),
        .D(\rx_sh[4]_i_1_n_0 ),
        .Q(rx_sh[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_sh_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\rx_sh[7]_i_1_n_0 ),
        .D(\rx_sh[5]_i_1_n_0 ),
        .Q(rx_sh[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_sh_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\rx_sh[7]_i_1_n_0 ),
        .D(\rx_sh[6]_i_1_n_0 ),
        .Q(rx_sh[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_sh_reg[7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\rx_sh[7]_i_1_n_0 ),
        .D(\rx_sh[7]_i_2_n_0 ),
        .Q(rx_sh[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hCFEE3022)) 
    sck_r_i_1
       (.I0(Q[5]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\div_cnt[3]_i_3_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(sck_OBUF),
        .O(sck_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sck_r_reg
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(sck_r_i_1_n_0),
        .Q(sck_OBUF),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    \ss_r[0]_i_1 
       (.I0(\div_cnt[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\ss_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hB8BB)) 
    \ss_r[1]_i_1 
       (.I0(\div_cnt[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\ss_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hB8BB)) 
    \ss_r[2]_i_1 
       (.I0(\div_cnt[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\ss_r[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \ss_r[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\div_cnt[3]_i_3_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\half[3]_i_1_n_0 ),
        .O(\ss_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \ss_r[3]_i_2 
       (.I0(\div_cnt[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\ss_r[3]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ss_r_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\ss_r[3]_i_1_n_0 ),
        .D(\ss_r[0]_i_1_n_0 ),
        .Q(\ss_n[3] [0]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ss_r_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\ss_r[3]_i_1_n_0 ),
        .D(\ss_r[1]_i_1_n_0 ),
        .Q(\ss_n[3] [1]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ss_r_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\ss_r[3]_i_1_n_0 ),
        .D(\ss_r[2]_i_1_n_0 ),
        .Q(\ss_n[3] [2]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ss_r_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\ss_r[3]_i_1_n_0 ),
        .D(\ss_r[3]_i_2_n_0 ),
        .Q(\ss_n[3] [3]),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h0505A2E2)) 
    \state[0]_i_1 
       (.I0(\half[3]_i_1_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\div_cnt[3]_i_3_n_0 ),
        .I3(\state[0]_i_2_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state[0]_i_2 
       (.I0(edge_cnt[3]),
        .I1(edge_cnt[2]),
        .I2(edge_cnt[0]),
        .I3(edge_cnt[1]),
        .O(\state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h36C4)) 
    \state[1]_i_1 
       (.I0(\half[3]_i_1_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\div_cnt[3]_i_3_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .O(\state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tx_reg[7]_i_1 
       (.I0(\cfg_reg[7]_i_3_n_0 ),
        .I1(PADDR_IBUF[0]),
        .I2(PADDR_IBUF[1]),
        .O(\tx_reg_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \tx_sh[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\tx_reg_reg[7] [0]),
        .I2(Q[4]),
        .O(\tx_sh[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tx_sh[1]_i_1 
       (.I0(\tx_sh_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\tx_reg_reg[7] [1]),
        .I3(Q[4]),
        .I4(\tx_reg_reg[7] [0]),
        .O(\tx_sh[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tx_sh[2]_i_1 
       (.I0(\tx_sh_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\tx_reg_reg[7] [2]),
        .I3(Q[4]),
        .I4(\tx_reg_reg[7] [1]),
        .O(\tx_sh[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tx_sh[3]_i_1 
       (.I0(\tx_sh_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\tx_reg_reg[7] [3]),
        .I3(Q[4]),
        .I4(\tx_reg_reg[7] [2]),
        .O(\tx_sh[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tx_sh[4]_i_1 
       (.I0(\tx_sh_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\tx_reg_reg[7] [4]),
        .I3(Q[4]),
        .I4(\tx_reg_reg[7] [3]),
        .O(\tx_sh[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tx_sh[5]_i_1 
       (.I0(\tx_sh_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\tx_reg_reg[7] [5]),
        .I3(Q[4]),
        .I4(\tx_reg_reg[7] [4]),
        .O(\tx_sh[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tx_sh[6]_i_1 
       (.I0(\tx_sh_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\tx_reg_reg[7] [6]),
        .I3(Q[4]),
        .I4(\tx_reg_reg[7] [5]),
        .O(\tx_sh[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABAAAAAAA)) 
    \tx_sh[7]_i_1 
       (.I0(\tx_sh[7]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\cfg_reg[7]_i_3_n_0 ),
        .I3(PWDATA_IBUF),
        .I4(\tx_sh[7]_i_4_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(\tx_sh[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tx_sh[7]_i_2 
       (.I0(\tx_sh_reg_n_0_[6] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\tx_reg_reg[7] [7]),
        .I3(Q[4]),
        .I4(\tx_reg_reg[7] [6]),
        .O(\tx_sh[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAA2AAA0000)) 
    \tx_sh[7]_i_3 
       (.I0(\tx_sh[7]_i_5_n_0 ),
        .I1(edge_cnt[1]),
        .I2(edge_cnt[2]),
        .I3(edge_cnt[3]),
        .I4(edge_cnt[0]),
        .I5(l_cpha),
        .O(\tx_sh[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_sh[7]_i_4 
       (.I0(PADDR_IBUF[1]),
        .I1(PADDR_IBUF[0]),
        .O(\tx_sh[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tx_sh[7]_i_5 
       (.I0(\div_cnt[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\tx_sh[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_sh_reg[0] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\tx_sh[7]_i_1_n_0 ),
        .D(\tx_sh[0]_i_1_n_0 ),
        .Q(\tx_sh_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_sh_reg[1] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\tx_sh[7]_i_1_n_0 ),
        .D(\tx_sh[1]_i_1_n_0 ),
        .Q(\tx_sh_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_sh_reg[2] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\tx_sh[7]_i_1_n_0 ),
        .D(\tx_sh[2]_i_1_n_0 ),
        .Q(\tx_sh_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_sh_reg[3] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\tx_sh[7]_i_1_n_0 ),
        .D(\tx_sh[3]_i_1_n_0 ),
        .Q(\tx_sh_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_sh_reg[4] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\tx_sh[7]_i_1_n_0 ),
        .D(\tx_sh[4]_i_1_n_0 ),
        .Q(\tx_sh_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_sh_reg[5] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\tx_sh[7]_i_1_n_0 ),
        .D(\tx_sh[5]_i_1_n_0 ),
        .Q(\tx_sh_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_sh_reg[6] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\tx_sh[7]_i_1_n_0 ),
        .D(\tx_sh[6]_i_1_n_0 ),
        .Q(\tx_sh_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_sh_reg[7] 
       (.C(PCLK_IBUF_BUFG),
        .CE(\tx_sh[7]_i_1_n_0 ),
        .D(\tx_sh[7]_i_2_n_0 ),
        .Q(p_1_in),
        .R(SR));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module system_top
   (PCLK,
    PRESETn,
    PSEL,
    PENABLE,
    PWRITE,
    PADDR,
    PWDATA,
    PRDATA,
    PREADY,
    PSLVERR,
    miso,
    mosi,
    sck,
    ss_n);
  input PCLK;
  input PRESETn;
  input PSEL;
  input PENABLE;
  input PWRITE;
  input [7:0]PADDR;
  input [7:0]PWDATA;
  output [7:0]PRDATA;
  output PREADY;
  output PSLVERR;
  input miso;
  output mosi;
  output sck;
  output [3:0]ss_n;

  wire \<const1> ;
  wire [7:0]PADDR;
  wire [7:2]PADDR_IBUF;
  wire PCLK;
  wire PCLK_IBUF;
  wire PCLK_IBUF_BUFG;
  wire PENABLE;
  wire PENABLE_IBUF;
  wire [7:0]PRDATA;
  wire [7:0]PRDATA_OBUF;
  wire \PRDATA_OBUF[4]_inst_i_2_n_0 ;
  wire \PRDATA_OBUF[4]_inst_i_4_n_0 ;
  wire \PRDATA_OBUF[7]_inst_i_3_n_0 ;
  wire \PRDATA_OBUF[7]_inst_i_5_n_0 ;
  wire PREADY;
  wire PRESETn;
  wire PRESETn_IBUF;
  wire PSEL;
  wire PSEL_IBUF;
  wire PSLVERR;
  wire PSLVERR_OBUF;
  wire PSLVERR_OBUF_inst_i_2_n_0;
  wire [7:0]PWDATA;
  wire [7:0]PWDATA_IBUF;
  wire PWRITE;
  wire PWRITE_IBUF;
  wire miso;
  wire miso_IBUF;
  wire mosi;
  wire mosi_OBUF;
  wire sck;
  wire sck_OBUF;
  wire [3:0]ss_n;
  wire [3:0]ss_n_OBUF;
  wire u_rtr_n_0;
  wire u_rtr_n_1;
  wire u_rtr_n_7;
  wire u_rtr_n_8;
  wire u_rtr_n_9;
  wire u_spi_n_1;
  wire u_spi_n_10;
  wire u_spi_n_11;
  wire u_spi_n_12;
  wire u_spi_n_7;
  wire u_spi_n_8;
  wire u_spi_n_9;

  IBUF \PADDR_IBUF[2]_inst 
       (.I(PADDR[2]),
        .O(PADDR_IBUF[2]));
  IBUF \PADDR_IBUF[3]_inst 
       (.I(PADDR[3]),
        .O(PADDR_IBUF[3]));
  IBUF \PADDR_IBUF[4]_inst 
       (.I(PADDR[4]),
        .O(PADDR_IBUF[4]));
  IBUF \PADDR_IBUF[5]_inst 
       (.I(PADDR[5]),
        .O(PADDR_IBUF[5]));
  IBUF \PADDR_IBUF[6]_inst 
       (.I(PADDR[6]),
        .O(PADDR_IBUF[6]));
  IBUF \PADDR_IBUF[7]_inst 
       (.I(PADDR[7]),
        .O(PADDR_IBUF[7]));
  BUFG PCLK_IBUF_BUFG_inst
       (.I(PCLK_IBUF),
        .O(PCLK_IBUF_BUFG));
  IBUF PCLK_IBUF_inst
       (.I(PCLK),
        .O(PCLK_IBUF));
  IBUF PENABLE_IBUF_inst
       (.I(PENABLE),
        .O(PENABLE_IBUF));
  OBUF \PRDATA_OBUF[0]_inst 
       (.I(PRDATA_OBUF[0]),
        .O(PRDATA[0]));
  OBUF \PRDATA_OBUF[1]_inst 
       (.I(PRDATA_OBUF[1]),
        .O(PRDATA[1]));
  OBUF \PRDATA_OBUF[2]_inst 
       (.I(PRDATA_OBUF[2]),
        .O(PRDATA[2]));
  OBUF \PRDATA_OBUF[3]_inst 
       (.I(PRDATA_OBUF[3]),
        .O(PRDATA[3]));
  OBUF \PRDATA_OBUF[4]_inst 
       (.I(PRDATA_OBUF[4]),
        .O(PRDATA[4]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \PRDATA_OBUF[4]_inst_i_2 
       (.I0(PWRITE_IBUF),
        .I1(PADDR_IBUF[4]),
        .I2(PADDR_IBUF[6]),
        .I3(PADDR_IBUF[5]),
        .I4(PADDR_IBUF[7]),
        .I5(PSEL_IBUF),
        .O(\PRDATA_OBUF[4]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \PRDATA_OBUF[4]_inst_i_4 
       (.I0(PADDR_IBUF[4]),
        .I1(PADDR_IBUF[2]),
        .I2(PADDR_IBUF[3]),
        .O(\PRDATA_OBUF[4]_inst_i_4_n_0 ));
  OBUF \PRDATA_OBUF[5]_inst 
       (.I(PRDATA_OBUF[5]),
        .O(PRDATA[5]));
  OBUF \PRDATA_OBUF[6]_inst 
       (.I(PRDATA_OBUF[6]),
        .O(PRDATA[6]));
  OBUF \PRDATA_OBUF[7]_inst 
       (.I(PRDATA_OBUF[7]),
        .O(PRDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \PRDATA_OBUF[7]_inst_i_3 
       (.I0(PADDR_IBUF[4]),
        .I1(PADDR_IBUF[2]),
        .I2(PADDR_IBUF[3]),
        .O(\PRDATA_OBUF[7]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \PRDATA_OBUF[7]_inst_i_5 
       (.I0(PWRITE_IBUF),
        .I1(PADDR_IBUF[5]),
        .I2(PADDR_IBUF[6]),
        .I3(PADDR_IBUF[7]),
        .I4(PSEL_IBUF),
        .O(\PRDATA_OBUF[7]_inst_i_5_n_0 ));
  OBUF PREADY_OBUF_inst
       (.I(\<const1> ),
        .O(PREADY));
  IBUF PRESETn_IBUF_inst
       (.I(PRESETn),
        .O(PRESETn_IBUF));
  IBUF PSEL_IBUF_inst
       (.I(PSEL),
        .O(PSEL_IBUF));
  OBUF PSLVERR_OBUF_inst
       (.I(PSLVERR_OBUF),
        .O(PSLVERR));
  LUT3 #(
    .INIT(8'hBF)) 
    PSLVERR_OBUF_inst_i_2
       (.I0(u_spi_n_12),
        .I1(PWRITE_IBUF),
        .I2(PENABLE_IBUF),
        .O(PSLVERR_OBUF_inst_i_2_n_0));
  IBUF \PWDATA_IBUF[0]_inst 
       (.I(PWDATA[0]),
        .O(PWDATA_IBUF[0]));
  IBUF \PWDATA_IBUF[1]_inst 
       (.I(PWDATA[1]),
        .O(PWDATA_IBUF[1]));
  IBUF \PWDATA_IBUF[2]_inst 
       (.I(PWDATA[2]),
        .O(PWDATA_IBUF[2]));
  IBUF \PWDATA_IBUF[3]_inst 
       (.I(PWDATA[3]),
        .O(PWDATA_IBUF[3]));
  IBUF \PWDATA_IBUF[4]_inst 
       (.I(PWDATA[4]),
        .O(PWDATA_IBUF[4]));
  IBUF \PWDATA_IBUF[5]_inst 
       (.I(PWDATA[5]),
        .O(PWDATA_IBUF[5]));
  IBUF \PWDATA_IBUF[6]_inst 
       (.I(PWDATA[6]),
        .O(PWDATA_IBUF[6]));
  IBUF \PWDATA_IBUF[7]_inst 
       (.I(PWDATA[7]),
        .O(PWDATA_IBUF[7]));
  IBUF PWRITE_IBUF_inst
       (.I(PWRITE),
        .O(PWRITE_IBUF));
  VCC VCC
       (.P(\<const1> ));
  IBUF miso_IBUF_inst
       (.I(miso),
        .O(miso_IBUF));
  OBUF mosi_OBUF_inst
       (.I(mosi_OBUF),
        .O(mosi));
  OBUF sck_OBUF_inst
       (.I(sck_OBUF),
        .O(sck));
  OBUF \ss_n_OBUF[0]_inst 
       (.I(ss_n_OBUF[0]),
        .O(ss_n[0]));
  OBUF \ss_n_OBUF[1]_inst 
       (.I(ss_n_OBUF[1]),
        .O(ss_n[1]));
  OBUF \ss_n_OBUF[2]_inst 
       (.I(ss_n_OBUF[2]),
        .O(ss_n[2]));
  OBUF \ss_n_OBUF[3]_inst 
       (.I(ss_n_OBUF[3]),
        .O(ss_n[3]));
  router_apb u_rtr
       (.\PADDR[3] (\PRDATA_OBUF[7]_inst_i_3_n_0 ),
        .\PADDR[3]_0 (\PRDATA_OBUF[4]_inst_i_4_n_0 ),
        .PADDR_IBUF(PADDR_IBUF),
        .PCLK_IBUF_BUFG(PCLK_IBUF_BUFG),
        .PENABLE_IBUF(PENABLE_IBUF),
        .\PRDATA[2] (u_rtr_n_0),
        .\PRDATA[3] (u_rtr_n_8),
        .\PRDATA[4] (u_rtr_n_7),
        .PRDATA_OBUF({PRDATA_OBUF[7:5],PRDATA_OBUF[1:0]}),
        .PRESETn_IBUF(PRESETn_IBUF),
        .PSEL(\PRDATA_OBUF[7]_inst_i_5_n_0 ),
        .PSEL_IBUF(PSEL_IBUF),
        .PSLVERR(u_rtr_n_9),
        .PWDATA_IBUF(PWDATA_IBUF),
        .PWRITE_IBUF(PWRITE_IBUF),
        .SR(u_spi_n_1),
        .\cfg_reg_reg[0] (u_spi_n_11),
        .\cfg_reg_reg[1] (u_spi_n_10),
        .err_seen_reg_0(u_rtr_n_1),
        .\rx_data_reg[5] (u_spi_n_9),
        .\rx_data_reg[6] (u_spi_n_8),
        .\rx_data_reg[7] (u_spi_n_7));
  apb_spi u_spi
       (.\PADDR[4] (PSLVERR_OBUF_inst_i_2_n_0),
        .PADDR_IBUF(PADDR_IBUF),
        .PCLK_IBUF_BUFG(PCLK_IBUF_BUFG),
        .PENABLE_IBUF(PENABLE_IBUF),
        .\PRDATA[0] (u_spi_n_11),
        .\PRDATA[1] (u_spi_n_10),
        .\PRDATA[5] (u_spi_n_9),
        .\PRDATA[6] (u_spi_n_8),
        .\PRDATA[7] (u_spi_n_7),
        .PRDATA_OBUF(PRDATA_OBUF[4:2]),
        .PRESETn_IBUF(PRESETn_IBUF),
        .PSEL(\PRDATA_OBUF[4]_inst_i_2_n_0 ),
        .PSEL_0(u_rtr_n_1),
        .PSEL_IBUF(PSEL_IBUF),
        .PSLVERR_OBUF(PSLVERR_OBUF),
        .PWDATA_IBUF(PWDATA_IBUF),
        .PWRITE_IBUF(PWRITE_IBUF),
        .Q(ss_n_OBUF),
        .SR(u_spi_n_1),
        .l_cpha_reg(u_spi_n_12),
        .miso_IBUF(miso_IBUF),
        .mosi_OBUF(mosi_OBUF),
        .sck_OBUF(sck_OBUF),
        .\tx_cnt_reg[2] (u_rtr_n_0),
        .\tx_cnt_reg[3] (u_rtr_n_8),
        .\tx_cnt_reg[4] (u_rtr_n_7),
        .\tx_cnt_reg[5] (u_rtr_n_9));
endmodule
