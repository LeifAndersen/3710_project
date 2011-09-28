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
    output reg [15:0] initialR,
    output reg [3:0] regWrite,
    output reg [3:0] regRead1,
    output reg [3:0] regRead2,
    output reg [7:0] ALUOp,
    output reg [3:0] buffCtrl,
	 output reg regWriteEn
    );

	`include "../ALU/opcodesLOL.v"

    reg [3:0] state;
	reg [3:0] nextState;

    // reset sends 1 to R0, R1
	always@(posedge clk, posedge reset) begin
		if (reset == 1'b1) begin
            state = 0;
		end
		else begin
			state = nextState;
		end
	end

	always@(posedge clk, posedge reset) begin
        if (reset == 1'b1) begin
            nextState = 0;
		end
		else begin
			case(state)
				 4'd0:
					nextState = 4'd1;
				 4'd1:
					nextState = 4'd2;
				 4'd2:
					nextState = 4'd3;
				 4'd3:
					nextState = 4'd4;
				 4'd4:
					nextState = 4'd5;
				 4'd5:
					nextState = 4'd6;
				 4'd6:
					nextState = 4'd7;
				 4'd7:
					nextState = 4'd8;
				 4'd8:
					nextState = 4'd9;
				 4'd9:
					nextState = 4'd10;
				 4'd10:
					nextState = 4'd11;
				 4'd11:
					nextState = 4'd12;
				 4'd12:
					nextState = 4'd13;
				 4'd13:
					nextState = 4'd14;
				 4'd14:
					nextState = 4'd15;
				 4'd15:
					nextState = 4'd15;
				 default:
					nextState = nextState;
			 endcase
		 end
    end

	always@(posedge clk) begin
        case(state)
			0: begin				// mov R0, $0
				initialR 	<= 16'd0;
				regWrite 	<= 4'd0;
				regRead1 	<= 4'd0;
				regRead2 	<= 4'd0;
				ALUOp 		<= NOP;
				buffCtrl 	<= 4'b0001;
				regWriteEn 	<= 1;
			end
			1: begin				// mov R1, $1
				initialR 	<= 16'd1;
				regWrite 	<= 4'd1;
				regRead1 	<= 4'd0;
				regRead2 	<= 4'd0;
				ALUOp 		<= NOP;
				buffCtrl 	<= 4'b0001;
				regWriteEn 	<= 1;
			end
			2: begin				// add R2, R1
				initialR 	<= 16'd0;
				regWrite 	<= 4'd2;
				regRead1 	<= 4'd1;
				regRead2 	<= 4'd0;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regWriteEn 	<= 1;
			end
			3: begin				// add R3, R2
				initialR 	<= 16'd0;
				regWrite 	<= 4'd3;
				regRead1 	<= 4'd2;
				regRead2 	<= 4'd1;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regWriteEn 	<= 1;
			end
			4: begin				// add R0, R1
				initialR 	<= 16'd0;
				regWrite 	<= 4'd4;
				regRead1 	<= 4'd3;
				regRead2 	<= 4'd2;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regWriteEn 	<= 1;
			end
			5: begin				// add R0, R1
				initialR 	<= 16'd0;
				regWrite 	<= 4'd5;
				regRead1 	<= 4'd4;
				regRead2 	<= 4'd3;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regWriteEn 	<= 1;
			end
			6: begin				// add R0, R1
				initialR 	<= 16'd0;
				regWrite 	<= 4'd6;
				regRead1 	<= 4'd5;
				regRead2 	<= 4'd4;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regWriteEn 	<= 1;
			end
			7: begin				// add R0, R1
				initialR 	<= 16'd0;
				regWrite 	<= 4'd7;
				regRead1 	<= 4'd6;
				regRead2 	<= 4'd5;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regWriteEn 	<= 1;
			end
			8: begin				// add R0, R1
				initialR 	<= 16'd0;
				regWrite 	<= 4'd8;
				regRead1 	<= 4'd7;
				regRead2 	<= 4'd6;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regWriteEn 	<= 1;
			end
			9: begin				// add R0, R1
				initialR 	<= 16'd0;
				regWrite 	<= 4'd9;
				regRead1 	<= 4'd8;
				regRead2 	<= 4'd7;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regWriteEn 	<= 1;
			end
			10: begin				// add R0, R1
				initialR 	<= 16'd0;
				regWrite 	<= 4'd10;
				regRead1 	<= 4'd9;
				regRead2 	<= 4'd8;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regWriteEn 	<= 1;
			end
			11: begin				// add R0, R1
				initialR 	<= 16'd0;
				regWrite 	<= 4'd11;
				regRead1 	<= 4'd10;
				regRead2 	<= 4'd9;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regWriteEn 	<= 1;
			end
			12: begin				// add R0, R1
				initialR 	<= 16'd0;
				regWrite 	<= 4'd12;
				regRead1 	<= 4'd11;
				regRead2 	<= 4'd10;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regWriteEn 	<= 1;
			end
			13: begin				// add R0, R1
				initialR 	<= 16'd0;
				regWrite 	<= 4'd13;
				regRead1 	<= 4'd12;
				regRead2 	<= 4'd11;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regWriteEn 	<= 1;
			end
			14: begin				// add R0, R1
				initialR 	<= 16'd0;
				regWrite 	<= 4'd14;
				regRead1 	<= 4'd13;
				regRead2 	<= 4'd12;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regWriteEn 	<= 1;
			end
			15: begin				// add R0, R1
				initialR 	<= 16'd0;
				regWrite 	<= 4'd15;
				regRead1 	<= 4'd14;
				regRead2 	<= 4'd13;
				ALUOp 		<= ADD;
				buffCtrl 	<= 4'b1110;
				regWriteEn 	<= 0;
			end
		endcase
	end

endmodule
