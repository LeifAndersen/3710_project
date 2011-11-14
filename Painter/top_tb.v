`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:32:28 11/13/2011
// Design Name:   top
// Module Name:   C:/Users/jhparker/3710/Painter/top_tb.v
// Project Name:  Painter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_tb;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [2:0] color;
	wire hsync;
	wire vsync;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.reset(reset), 
		.color(color), 
		.hsync(hsync), 
		.vsync(vsync)
	);

always
begin
#10;
clk <= ~clk;
end

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#10000000;
		reset = 1;
		#10000000;
		reset = 0;
        
		// Add stimulus here

	end
      
endmodule

