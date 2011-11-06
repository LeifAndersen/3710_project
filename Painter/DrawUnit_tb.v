`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:02:27 11/04/2011
// Design Name:   DrawUnit
// Module Name:   C:/Users/jhparker/3710/Painter/DrawUnit_tb.v
// Project Name:  Painter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DrawUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DrawUnit_tb;

	// Inputs
	reg clk;
	reg vgaClk;
	reg reset;
	reg we;
	reg data;

	// Outputs
	wire full;
	wire [2:0] color2;
	wire hsync;
	wire vsync;

	// Instantiate the Unit Under Test (UUT)
	DrawUnit uut (
		.clk(clk), 
		.vgaClk(vgaClk), 
		.reset(reset), 
		.we(we), 
		.data(data), 
		.full(full), 
		.color2(color2), 
		.hsync(hsync), 
		.vsync(vsync)
	);

always
begin
#10;
clk = ~clk;
#10;
vgaClk = !vgaClk;
end

	initial begin
		// Initialize Inputs
		clk = 0;
		vgaClk = 0;
		reset = 0;
		we = 0;
		data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

