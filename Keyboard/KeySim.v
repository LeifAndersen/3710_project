`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:30:24 11/04/2011
// Design Name:   Keyboard
// Module Name:   /home/leif/3710/Keyboard/KeySim.v
// Project Name:  Keyboard
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Keyboard
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module KeySim;

	// Inputs
	reg clk;
	reg data;
	reg reset;

	// Outputs
	wire [15:0] up;
	wire [15:0] down;
	wire [15:0] left;
	wire [15:0] right;
	wire [15:0] a;
	wire [15:0] b;

	// Instantiate the Unit Under Test (UUT)
	Keyboard uut (
		.clk(clk), 
		.data(data), 
		.reset(reset), 
		.up(up), 
		.down(down), 
		.left(left), 
		.right(right), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		data = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

