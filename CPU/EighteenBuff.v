`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:43:20 10/05/2011 
// Design Name: 
// Module Name:    EighteenBuff 
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
module EighteenBuff(
    input [17:0] busIn,
    input enable,
    output reg [17:0] busOut
    );
	 
	always@(*) begin
		if(enable == 1'b1) begin
			busOut <= busIn;
		end
		else begin
			busOut <= 18'bZZ_ZZZZ_ZZZZ_ZZZZ_ZZZZ;
		end
	end


endmodule
