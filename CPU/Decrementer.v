`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:37:29 10/13/2011 
// Design Name: 
// Module Name:    decrementer 
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
module Decrementer(
    input [15:0] in,
    output reg [15:0] out
    );

	always@(in) begin
		out <= in - 1;
	end

endmodule
