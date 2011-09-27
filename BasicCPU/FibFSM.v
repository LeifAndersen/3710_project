			`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Potato
// Engineer:
//
// Create Date:    22:57:27 09/22/2011
// Design Name:
// Module Name:    TopLevel
// Project Name:
// Target Devices:
// Tool versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
//
//  inputs:
//      reset -- resets the FSM which then resets the regfile
//      start -- starts the FSM and stuff, lol
//
//  outputs:
//      initialR -- value for the intial two registers used (over two cycles)
//      regWrite -- register write select 0-15
//      regRead1 -- register read select 1
//      regRead2 -- register read select 2
//      ALUOp    -- thing to do
//      buffCtrl -- control for all the external buffers
//      regReset -- reset reg file
//      regWriteEn --  enables writing to registers
//
module FibFSM(
	input clk,
    input reset,
    input start,
    output reg [15:0] initialR,
    output reg [3:0] regWrite,
    output reg [3:0] regRead1,
    output reg [3:0] regRead2,
    output reg [7:0] ALUOp,
    output reg [3:0] buffCtrl,
    output reg regReset,
    output reg regWriteEn
    );

	`include "../ALU/opcodesLOL.v"

    reg [3:0] state;
	reg [3:0] nextState;

    // reset sends 1 to R0, R1
	always@(posedge clk, negedge reset, negedge start) begin
		if (reset == 0) begin
            state = 0;
		end
		else begin
			if (start == 0) begin
				state = 2;
			end
			else begin
				state = nextState;
			end
		end
	end

	always@(posedge clk) begin
        case(state)
             4'd0: 
                nextState = 4'd1;
             4'd1:  
                nextState = 4'd0;
             4'd2:  
                nextState = 4'd3;
             4'd3:
				nextState = 4'd2;
             default:  
                nextState = nextState;
         endcase
    end

    //  fib generation:
    //      add R1, R0  // state 2
    //      add R0, R1	// state 3

	always@(posedge clk) begin
        case(state)
			0: begin				// mov R0, $1
				initialR 	<= 16'd1;
				regWrite 	<= 4'd0;
				regRead1 	<= 4'd0;
				regRead2 	<= 4'd0;
				ALUOp 		<= NOP;
				buffCtrl 	<= 4'b0001;
				regReset 	<= 1'd0;
				regWriteEn 	<= 1'd1;
			end
			1: begin				// mov R1, $1
				initialR 	<= 16'd1;
				regWrite 	<= 4'd1;
				regRead1 	<= 4'd0;
				regRead2 	<= 4'd0;
				ALUOp 		<= NOP;
				buffCtrl 	<= 4'b0001;
				regReset 	<= 1'd0;
				regWriteEn 	<= 1'd1;
			end
			2: begin				// add R1, R0
				initialR 	<= 16'd0;
				regWrite 	<= 4'd1;
				regRead1 	<= 4'd0;
				regRead2 	<= 4'd1;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regReset 	<= 1'd0;
				regWriteEn 	<= 1'd1;
			end
			3: begin				// add R0, R1
				initialR 	<= 16'd0;
				regWrite 	<= 4'd0;
				regRead1 	<= 4'd1;
				regRead2 	<= 4'd0;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regReset 	<= 1'd0;
				regWriteEn 	<= 1'd1;
			end
			default: begin			// default
				initialR 	<= 16'bxxxx_xxxx_xxxx_xxxx;
				regWrite 	<= 4'bxxxx;
				regRead1 	<= 4'bxxxx;
				regRead2 	<= 4'bxxxx;
				ALUOp    	<= 8'bxxxx_xxxx;
				buffCtrl 	<= 4'bxxxx;
				regReset 	<= 1'bx;
				regWriteEn 	<= 1'bx;
			end
		endcase
	end

endmodule
