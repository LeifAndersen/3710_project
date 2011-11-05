`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:29:44 09/30/2011
// Design Name:   VGA_Controller
// Module Name:   C:/Users/jhparker/Desktop/Scrap/VGA/VGA_Controller_tb.v
// Project Name:  VGA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VGA_Controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module VGA_Controller_tb;

	// Inputs
	reg clk;
	reg reset;
	reg r;
	reg g;
	reg b;
	
	// Outputs
	wire[8:0] line;
	wire[9:0] offset;
	//wire[17:0] fbAddr;
	wire[2:0] color;
	wire hsync;
	wire vsync;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk(clk), 
		.resetp(reset), 
		.rp(r), 
		.gp(g), 
		.bp(b),
		//.fbAddr(fbAddr),
		.line(line),
		.offset(offset),
		.color(color),
		.hsync(hsync),
		.vsync(vsync)
	);

always
begin
#10;
clk = ~clk;
end

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 1;
		#40;
		reset = 0;
		r = 1;
		g = 1;
		b = 1;
	end
      
endmodule

