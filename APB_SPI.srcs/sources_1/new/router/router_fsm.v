`timescale 1ns/1ps
/***************************************************************************************************
FILENAME    :  router_fsm.v
BASED ON    :  Mohamed Anas MN - github.com/mnmhdanas/Router-1-x-3- (router_fsm.v, 22/08/2021)
CHANGES     :  1) addr_t latches the destination address when detect_add is high
               2) WAIT_TILL_EMPTY waits only for the DESTINATION fifo (was: all three fifos)
               3) only the soft reset of the destination fifo sends the FSM back to DECODE_ADDRESS
****************************************************************************************************/

module router_fsm(clock,resetn,pkt_valid,data_in,fifo_full,fifo_empty_0,fifo_empty_1,fifo_empty_2,
                  soft_reset_0,soft_reset_1,soft_reset_2,parity_done,low_packet_valid,
                  write_enb_reg,detect_add,ld_state,laf_state,lfd_state,full_state,rst_int_reg,busy);

  input clock,resetn,pkt_valid,fifo_full,fifo_empty_0,fifo_empty_1,fifo_empty_2;
  input soft_reset_0,soft_reset_1,soft_reset_2,parity_done,low_packet_valid;
  input [1:0] data_in;
  output write_enb_reg,detect_add,ld_state,laf_state,lfd_state,full_state,rst_int_reg,busy;

  parameter DECODE_ADDRESS     = 3'b000,
            LOAD_FIRST_DATA    = 3'b001,
            LOAD_DATA          = 3'b010,
            WAIT_TILL_EMPTY    = 3'b011,
            CHECK_PARITY_ERROR = 3'b100,
            LOAD_PARITY        = 3'b101,
            FIFO_FULL_STATE    = 3'b110,
            LOAD_AFTER_FULL    = 3'b111;

  reg [2:0] PS,NS;
  reg [1:0] addr_t;                       // destination address of the current packet

  always @(posedge clock)
    begin
      if (!resetn)
        addr_t <= 2'b00;
      else if (detect_add)
        addr_t <= data_in;
    end

  wire soft_reset_sel = ((addr_t == 2'b00) & soft_reset_0) |
                        ((addr_t == 2'b01) & soft_reset_1) |
                        ((addr_t == 2'b10) & soft_reset_2);

  wire dest_empty     = ((addr_t == 2'b00) & fifo_empty_0) |
                        ((addr_t == 2'b01) & fifo_empty_1) |
                        ((addr_t == 2'b10) & fifo_empty_2);

  always @(posedge clock)
    begin
      if (!resetn)
        PS <= DECODE_ADDRESS;
      else if (soft_reset_sel)
        PS <= DECODE_ADDRESS;
      else
        PS <= NS;
    end

  always @(*)
    begin
      NS = DECODE_ADDRESS;
      case (PS)

        DECODE_ADDRESS :
          begin
            if ((pkt_valid && (data_in[1:0] == 2'd0) && fifo_empty_0) ||
                (pkt_valid && (data_in[1:0] == 2'd1) && fifo_empty_1) ||
                (pkt_valid && (data_in[1:0] == 2'd2) && fifo_empty_2))
              NS = LOAD_FIRST_DATA;
            else if ((pkt_valid && (data_in[1:0] == 2'd0) && !fifo_empty_0) ||
                     (pkt_valid && (data_in[1:0] == 2'd1) && !fifo_empty_1) ||
                     (pkt_valid && (data_in[1:0] == 2'd2) && !fifo_empty_2))
              NS = WAIT_TILL_EMPTY;
            else
              NS = DECODE_ADDRESS;
          end

        LOAD_FIRST_DATA : NS = LOAD_DATA;

        LOAD_DATA :
          begin
            if (fifo_full)
              NS = FIFO_FULL_STATE;
            else if (!fifo_full && !pkt_valid)
              NS = LOAD_PARITY;
            else
              NS = LOAD_DATA;
          end

        WAIT_TILL_EMPTY :
          begin
            if (dest_empty)
              NS = LOAD_FIRST_DATA;
            else
              NS = WAIT_TILL_EMPTY;
          end

        CHECK_PARITY_ERROR :
          begin
            if (fifo_full)
              NS = FIFO_FULL_STATE;
            else
              NS = DECODE_ADDRESS;
          end

        LOAD_PARITY : NS = CHECK_PARITY_ERROR;

        FIFO_FULL_STATE :
          begin
            if (!fifo_full)
              NS = LOAD_AFTER_FULL;
            else
              NS = FIFO_FULL_STATE;
          end

        LOAD_AFTER_FULL :
          begin
            if (!parity_done && !low_packet_valid)
              NS = LOAD_DATA;
            else if (!parity_done && low_packet_valid)
              NS = LOAD_PARITY;
            else
              NS = DECODE_ADDRESS;
          end

      endcase
    end

  assign detect_add    = (PS == DECODE_ADDRESS);
  assign write_enb_reg = (PS == LOAD_DATA || PS == LOAD_PARITY || PS == LOAD_AFTER_FULL);
  assign full_state    = (PS == FIFO_FULL_STATE);
  assign lfd_state     = (PS == LOAD_FIRST_DATA);
  assign busy          = (PS == FIFO_FULL_STATE || PS == LOAD_AFTER_FULL || PS == WAIT_TILL_EMPTY ||
                          PS == LOAD_FIRST_DATA || PS == LOAD_PARITY || PS == CHECK_PARITY_ERROR);
  assign ld_state      = (PS == LOAD_DATA);
  assign laf_state     = (PS == LOAD_AFTER_FULL);
  assign rst_int_reg   = (PS == CHECK_PARITY_ERROR);

endmodule
