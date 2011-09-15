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
		input [15:0] A,
		input [15:0] B,
		input [15:0] C,
		input write,
		input [15:0] inputReg,
		output reg [15:0] outputReg1,
		output reg [15:0] outputReg2
	);

	reg[15:0]R[15:0];	
always@(posedge clk) begin
		outputReg1 = R[A];
		outputReg2 = R[B];
		if(write == 1'b1)
		begin
			R[C] = inputReg;
		end
	end

endmodule
