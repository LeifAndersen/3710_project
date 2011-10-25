`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:24:36 10/13/2011 
// Design Name: 
// Module Name:    ProgramCounter 
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
module ProgramCounter(
	input reset,
    input clk,
    input [15:0] pcin,
    output reg [15:0] pc
    );

	always@(posedge clk) begin
		if(reset == 1'b1) begin
			pc <= 16'd0;
		end
		else begin
			pc <= pcin;
		end
	end

endmodule
