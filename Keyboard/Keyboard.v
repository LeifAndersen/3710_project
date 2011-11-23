`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:36:44 10/24/2011 
// Design Name: 
// Module Name:    Keyboard 
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
module Keyboard(
    input clk,
	input ps2_clk,
    input data,
	input reset,
    output reg[15:0] up,
	output reg[15:0] down,
	output reg[15:0] left,
	output reg[15:0] right,
	output reg[15:0] a,
	output reg[15:0] b
	);
		 
	`include "KeyboardCodes.v"

	reg[10:0] shiftReg;
	reg[5:0] buttons;

	reg rel;
	reg ps2negedge;

	always@(posedge clk) begin
		if(reset) begin
			shiftReg <= 11'b11111111111;
			rel <= 1'd0;
			buttons <= 16'd0;
			up <= 16'd0;
			down <= 16'd0;
			right <= 16'd0;
			left <= 16'd0;
			ps2negedge <= 0;
		end
		
		else if (ps2negedge != ps2_clk) //this chunk essentially does an always@(negedge ps2_clk).
		begin
			ps2negedge <= ~ps2negedge;
			if (ps2negedge == 1) //Means its going to change from 1 to zero right now, so negedge.
			begin
				shiftReg[10:1] <= shiftReg[9:0];
				shiftReg[0] <= data;
				if(shiftReg[10] == 1'd0) begin
					if(rel == 1'b0) begin
						case(shiftReg)
						UP: buttons[0] <= 1'b1;
						DOWN: buttons[1] <= 1'b1;
						LEFT: buttons[2] <= 1'b1;
						RIGHT: buttons[3] <= 1'b1;
						A: buttons[4] <= 1'b1;
						B: buttons[5] <= 1'b1;
						REL: rel <= 1'b1;
						endcase
					end else begin
						case(shiftReg)
						UP: buttons[0] <= 1'b0;
						DOWN: buttons[1] <= 1'b0;
						LEFT: buttons[2] <= 1'b0;
						RIGHT: buttons[3] <= 1'b0;
						A: buttons[4] <= 1'b0;
						B: buttons[5] <= 1'b0;
						endcase
						rel <= 1'b0;
					end
				end
				if(buttons[0] == 1'b1) begin
					if(up != 16'b1111111111111111)
						up <= up + 1;
				end
				if(buttons[1] == 1'b1) begin
					if(down != 16'b1111111111111111)
						down <= down + 1;
				end
				if(buttons[2] == 1'b1) begin
					if(left != 16'b1111111111111111)
							left <= left + 1;
				end
				if(buttons[3] == 1'b1) begin
					if(right != 16'b1111111111111111)
						right <= right + 1;
				end
				if(buttons[4] == 1'b1) begin
					if(a != 16'b1111111111111111)
						a <= a + 1;
				end
				if(buttons[5] == 1'b1) begin
					if(b != 16'b1111111111111111)
						b <= b + 1;
				end
			end
		end
	end

endmodule
