`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:18:15 10/25/2011
// Design Name:   Top
// Module Name:   U:/3710/3710/CPU/testdatapath.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testdatapath;

	// Inputs
	reg BTN_NORTH;
	reg inCLK_50MHZ;

	// Outputs
	wire [11:8] SF_D;
	wire LCD_E;
	wire LCD_RS;
	wire LCD_RW;
	wire[2:0] color;
	wire hsync;
	wire vsync;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.BTN_NORTH(BTN_NORTH), 
		.inCLK_50MHZ(inCLK_50MHZ), 
		.SF_D(SF_D), 
		.LCD_E(LCD_E), 
		.LCD_RS(LCD_RS), 
		.LCD_RW(LCD_RW),
		.color(color),
		.hsync(hsync),
		.vsync(vsync)
	);
	
	always begin
		#20;
		inCLK_50MHZ = ~inCLK_50MHZ;
	end

	initial begin
		// Initialize Inputs
		BTN_NORTH = 0;
		inCLK_50MHZ = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		// Hey, reset
		BTN_NORTH = 1;
		BTN_NORTH = 0;
		#650;
		
		// now start
		BTN_NORTH = 1;
		#650;

	end
      
endmodule

