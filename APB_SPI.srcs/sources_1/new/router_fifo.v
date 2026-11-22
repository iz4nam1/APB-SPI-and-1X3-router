`timescale 1ns/1ps
/***************************************************************************************************
FILENAME    :  router_fifo.v
BASED ON    :  Mohamed Anas MN - github.com/mnmhdanas/Router-1-x-3- (router_fifo.v, 10/08/2021)
CHANGES     :  1) soft_reset now also resets wr_pointer, rd_pointer and count
               2) count is now reset (it was X after power-up)
               3) data_out drives 8'b0 instead of 8'bz (synthesizable, use vld_out as the valid flag)
****************************************************************************************************/

module router_fifo(clock,resetn,soft_reset,write_enb,read_enb,
                   lfd_state,data_in,full,empty,data_out);

  input clock,resetn,soft_reset;
  input write_enb,read_enb,lfd_state;
  input [7:0] data_in;

  output reg [7:0] data_out;
  output full,empty;

  reg [4:0] rd_pointer,wr_pointer;
  reg [6:0] count;
  reg [8:0] mem [15:0];          // bit 8 = header flag, bits 7:0 = data

  integer i;
  reg lfd_state_t;

  always @(posedge clock)
    begin
      if (!resetn)
        lfd_state_t <= 1'b0;
      else
        lfd_state_t <= lfd_state;
    end

  // ------ Read operation ------
  always @(posedge clock)
    begin
      if (!resetn || soft_reset)
        data_out <= 8'b0;
      else if (read_enb && !empty)
        data_out <= mem[rd_pointer[3:0]][7:0];
      else if (count == 0)
        data_out <= 8'b0;
    end

  // ------ Write operation ------
  always @(posedge clock)
    begin
      if (!resetn || soft_reset)
        begin
          for (i = 0; i < 16; i = i + 1)
            mem[i] <= 9'b0;
        end
      else if (write_enb && !full)
        mem[wr_pointer[3:0]] <= {lfd_state_t, data_in};
    end

  // ------ Pointers (FIX 1: soft_reset resets them too) ------
  always @(posedge clock)
    begin
      if (!resetn || soft_reset)
        wr_pointer <= 5'b0;
      else if (write_enb && !full)
        wr_pointer <= wr_pointer + 1'b1;
    end

  always @(posedge clock)
    begin
      if (!resetn || soft_reset)
        rd_pointer <= 5'b0;
      else if (read_enb && !empty)
        rd_pointer <= rd_pointer + 1'b1;
    end

  // ------ Read counter (counts bytes left in the packet being read) ------
  always @(posedge clock)
    begin
      if (!resetn || soft_reset)
        count <= 7'b0;
      else if (read_enb && !empty)
        begin
          if (mem[rd_pointer[3:0]][8])
            count <= mem[rd_pointer[3:0]][7:2] + 1'b1;
          else if (count != 0)
            count <= count - 1'b1;
        end
    end

  // ------ Full / empty ------
  assign full  = (wr_pointer == {~rd_pointer[4], rd_pointer[3:0]});
  assign empty = (rd_pointer == wr_pointer);

endmodule