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
		input clk,
		input FlagIn,
		input ZeroIn,
		input LowIn,
		input NegativeIn,
		input enable,
		output reg Flag,
		output reg Zero,
		output reg Low,
		output reg Negative
	);

always@(posedge clk)
begin
	if (enable) begin
		Flag = FlagIn;
		Zero = ZeroIn;
		Low = LowIn;
		Negative = NegativeIn;
	end
end
endmodule
