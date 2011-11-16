`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:41 09/20/2011 
// Design Name: 
// Module Name:    RegBusA 
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
module SixteenBuff(
    input [15:0] busIn,
    input enable,
    output reg [15:0] busOut
    );
	 
	always@(*) begin
		if(enable == 1'b1) begin
			busOut = busIn;
		end
		else begin
			busOut = 16'bZZZZ_ZZZZ_ZZZZ_ZZZZ;
		end
	end


endmodule
