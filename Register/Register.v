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


module Register(
		input clk,
		input [3:0] A,
		input [3:0] B,
		input [3:0] C,
		input write,
		input [15:0] inputReg,
		output [15:0] outputReg1,
		output [15:0] outputReg2
	);

	reg[15:0]R[15:0];

assign outputReg1 = R[A];
assign outputReg2 = R[B];
	
always@(posedge clk) begin
		if(write == 1'b1)
		begin
			R[C] = inputReg;
		end
	end

endmodule
