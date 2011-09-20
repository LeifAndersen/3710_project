`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:32:49 09/20/2011 
// Design Name: 
// Module Name:    RegBusB 
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
module RegBusB(
    input [15:0] busIn,
	 input [15:0] immediate,
    input useImmediate,
	 input enable,
    output reg [15:0] busOut
    );
	 
	always@(*) begin
		if(enable == 1'b1) begin
			if(useImmediate == 1'b0) begin
				busOut = busIn;
			end
			else begin
				busOut = immediate;
			end
		end
		else begin
			busOut = 16'bZZZZ_ZZZZ_ZZZZ_ZZZZ;
		end
	end


endmodule
