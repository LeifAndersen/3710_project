`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Potato
// Engineer:
//
// Create Date:    16:21:14 09/08/2011
// Design Name:
// Module Name:    Register
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


module RegisterModule(
		input clk,
		input write,
		input reset,
		input [15:0] inputReg,
		output reg [15:0] value
		);

	always@(negedge clk) begin
		if(reset == 1'b1) begin
			value = 0;
		end
		else begin
			if(write == 1'b1) begin
				value = inputReg;
			end
			else begin
			    value = value;
			end
		end
	end

endmodule
