`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:50:58 10/27/2011 
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
module Register16(
    input reset,
    input clk,
	input en,
    input [15:0] D,
    output reg [15:0] Q
    );
	
	always@(posedge clk) begin
		if (reset == 1'b1) begin
			Q <= 0;
		end
		else begin
			if (en == 1'b1) begin
				Q <= D;
			end
			else begin
				Q <= Q;
			end
		end
	end


endmodule
