`timescale 1ns/1ps
/***************************************************************************************************
FILENAME    :  router_reg.v
BASED ON    :  Mohamed Anas MN - github.com/mnmhdanas/Router-1-x-3- (router_reg.v, 23/08/2021)
CHANGES     :  none to the logic (reformatted only)
****************************************************************************************************/

module router_reg(clock,resetn,pkt_valid,data_in,fifo_full,detect_add,
                  ld_state,laf_state,full_state,lfd_state,rst_int_reg,err,
                  parity_done,low_packet_valid,dout);

  input clock,resetn,pkt_valid,fifo_full,detect_add,ld_state,laf_state,full_state,lfd_state,rst_int_reg;
  input [7:0] data_in;
  output reg err,parity_done,low_packet_valid;
  output reg [7:0] dout;

  reg [7:0] header,int_reg,int_parity,ext_parity;

  // ------ data out ------
  always @(posedge clock)
    begin
      if (!resetn)
        begin
          dout    <= 8'b0;
          header  <= 8'b0;
          int_reg <= 8'b0;
        end
      else if (detect_add && pkt_valid && data_in[1:0] != 2'b11)
        header <= data_in;
      else if (lfd_state)
        dout <= header;
      else if (ld_state && !fifo_full)
        dout <= data_in;
      else if (ld_state && fifo_full)
        int_reg <= data_in;
      else if (laf_state)
        dout <= int_reg;
    end

  // ------ low packet valid ------
  always @(posedge clock)
    begin
      if (!resetn)
        low_packet_valid <= 1'b0;
      else if (rst_int_reg)
        low_packet_valid <= 1'b0;
      else if (ld_state && !pkt_valid)
        low_packet_valid <= 1'b1;
    end

  // ------ parity done ------
  always @(posedge clock)
    begin
      if (!resetn)
        parity_done <= 1'b0;
      else if (detect_add)
        parity_done <= 1'b0;
      else if ((ld_state && !fifo_full && !pkt_valid) ||
               (laf_state && low_packet_valid && !parity_done))
        parity_done <= 1'b1;
    end

  // ------ internal parity (XOR of header + payload) ------
  always @(posedge clock)
    begin
      if (!resetn)
        int_parity <= 8'b0;
      else if (detect_add)
        int_parity <= 8'b0;
      else if (lfd_state && pkt_valid)
        int_parity <= int_parity ^ header;
      else if (ld_state && pkt_valid && !full_state)
        int_parity <= int_parity ^ data_in;
    end

  // ------ error ------
  always @(posedge clock)
    begin
      if (!resetn)
        err <= 1'b0;
      else if (parity_done)
        begin
          if (int_parity == ext_parity)
            err <= 1'b0;
          else
            err <= 1'b1;
        end
      else
        err <= 1'b0;
    end

  // ------ external parity (the parity byte that came with the packet) ------
  always @(posedge clock)
    begin
      if (!resetn)
        ext_parity <= 8'b0;
      else if (detect_add)
        ext_parity <= 8'b0;
      else if ((ld_state && !fifo_full && !pkt_valid) ||
               (laf_state && !parity_done && low_packet_valid))
        ext_parity <= data_in;
    end

endmodule