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
    input data,
	 input reset,
    output reg[16:0] buttons
	 );
	 
`include "KeyboardCodes.v"

reg[10:0] shiftReg;

reg rel;

always@(negedge clk)
begin
	if(reset == 1'b1) begin
		shiftReg = 11'b11111111111;
		rel = 1'd0;
		buttons = 16'd0;
	end else begin
		shiftReg[10:1] = shiftReg[9:0];
		shiftReg[0] = data;
	end
	
	if(shiftReg[10] == 1'b0) begin
		if(rel == 1'b0) begin
			case(shiftReg)
			UP: buttons[0] = 1'b1;
			DOWN: buttons[1] = 1'b1;
			LEFT: buttons[2] = 1'b1;
			RIGHT: buttons[3] = 1'b1;
			A: buttons[4] = 1'b1;
			B: buttons[5] = 1'b1;
			REL: rel = 1'b1;
			endcase
		end else begin
			case(shiftReg)
			UP: buttons[0] = 1'b0;
			DOWN: buttons[1] = 1'b0;
			LEFT: buttons[2] = 1'b0;
			RIGHT: buttons[3] = 1'b0;
			A: buttons[4] = 1'b0;
			B: buttons[5] = 1'b0;
			endcase
			rel = 1'b0;
		end
		shiftReg = 11'b11111111111;
	end
end

endmodule