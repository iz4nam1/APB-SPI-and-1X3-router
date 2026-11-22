`timescale 1ns/1ps
/***************************************************************************************************
FILENAME    :  router_sync.v
BASED ON    :  Mohamed Anas MN - github.com/mnmhdanas/Router-1-x-3- (router_sync.v, 24/08/2021)
CHANGES     :  1) soft_reset_x is cleared every cycle by default, so it is a 1-cycle pulse
                  (before, it stayed at 1 forever once the FIFO had been flushed)
               2) combinational block uses blocking assignments (=) with defaults
****************************************************************************************************/

module router_sync(clock,resetn,data_in,detect_add,full_0,full_1,full_2,empty_0,empty_1,empty_2,
                   write_enb_reg,read_enb_0,read_enb_1,read_enb_2,write_enb,fifo_full,
                   vld_out_0,vld_out_1,vld_out_2,soft_reset_0,soft_reset_1,soft_reset_2);

  input clock,resetn,detect_add,full_0,full_1,full_2,empty_0,empty_1,empty_2,write_enb_reg;
  input read_enb_0,read_enb_1,read_enb_2;
  input [1:0] data_in;
  output reg [2:0] write_enb;
  output reg fifo_full,soft_reset_0,soft_reset_1,soft_reset_2;
  output vld_out_0,vld_out_1,vld_out_2;

  reg [1:0] data_in_tmp;
  reg [4:0] count0,count1,count2;

  // ------ latch the destination address ------
  always @(posedge clock)
    begin
      if (!resetn)
        data_in_tmp <= 2'b00;
      else if (detect_add)
        data_in_tmp <= data_in;
    end

  // ------ address decode ------
  always @(*)
    begin
      fifo_full = 1'b0;
      write_enb = 3'b000;
      case (data_in_tmp)
        2'b00: begin fifo_full = full_0; if (write_enb_reg) write_enb = 3'b001; end
        2'b01: begin fifo_full = full_1; if (write_enb_reg) write_enb = 3'b010; end
        2'b10: begin fifo_full = full_2; if (write_enb_reg) write_enb = 3'b100; end
        default: ;
      endcase
    end

  // ------ valid output flags ------
  assign vld_out_0 = ~empty_0;
  assign vld_out_1 = ~empty_1;
  assign vld_out_2 = ~empty_2;

  // ------ soft reset: 30 cycles of valid data that is not being read ------
  always @(posedge clock)
    begin
      if (!resetn)
        begin count0 <= 5'd0; soft_reset_0 <= 1'b0; end
      else
        begin
          soft_reset_0 <= 1'b0;
          if (vld_out_0 && !read_enb_0)
            begin
              if (count0 == 5'd29) begin soft_reset_0 <= 1'b1; count0 <= 5'd0; end
              else count0 <= count0 + 1'b1;
            end
          else
            count0 <= 5'd0;
        end
    end

  always @(posedge clock)
    begin
      if (!resetn)
        begin count1 <= 5'd0; soft_reset_1 <= 1'b0; end
      else
        begin
          soft_reset_1 <= 1'b0;
          if (vld_out_1 && !read_enb_1)
            begin
              if (count1 == 5'd29) begin soft_reset_1 <= 1'b1; count1 <= 5'd0; end
              else count1 <= count1 + 1'b1;
            end
          else
            count1 <= 5'd0;
        end
    end

  always @(posedge clock)
    begin
      if (!resetn)
        begin count2 <= 5'd0; soft_reset_2 <= 1'b0; end
      else
        begin
          soft_reset_2 <= 1'b0;
          if (vld_out_2 && !read_enb_2)
            begin
              if (count2 == 5'd29) begin soft_reset_2 <= 1'b1; count2 <= 5'd0; end
              else count2 <= count2 + 1'b1;
            end
          else
            count2 <= 5'd0;
        end
    end

endmodule