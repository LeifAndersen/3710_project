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


module FlagRegister(
		input reset,
		input clk,
		input LowIn,
		input NegativeIn,
		input ZeroIn,
		input enable,
		output reg Low,
		output reg Negative,
		output reg Zero
	);

always@(posedge clk)
begin
	if (reset == 1'b1) begin
		Zero <= 0;
		Low <= 0;
		Negative <= 0;
	end
	else begin
		if (enable == 1'b1) begin
			Zero <= ZeroIn;
			Low <= LowIn;
			Negative <= NegativeIn;
		end
		else begin
			Zero <= Zero;
			Low <= Low;
			Negative <= Negative;
		end
	end
end
endmodule
