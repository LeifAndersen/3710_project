`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:26 09/27/2011 
// Design Name: 
// Module Name:    ClockDivider 
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
module ClockDivider(
	input reset,
    input clock,
    output reg outClock
    );
    
    reg [31:0] count;
    
    always @ (posedge clock) begin
		if (reset == 1'b1) begin
			count = 0;
			outClock = 0;
		end
		else begin
			if (count == 12500000) begin
				outClock = ~outClock;
				count = 32'd0;
			end
			else 
				count = count + 1;
		end
    end
	
endmodule
