`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:49:35 09/27/2011
// Design Name:   TopLevel
// Module Name:   U:/3710/3710/BasicCPU/simulate_test.v
// Project Name:  BasicCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TopLevel
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module simulate_test;

	// Inputs
	reg BTN_NORTH;
	reg CLK_50MHZ;

	// Outputs
	wire [11:8] SF_D;
	wire LCD_E;
	wire LCD_RS;
	wire LCD_RW;

	// Instantiate the Unit Under Test (UUT)
	TopLevel uut (
		.BTN_NORTH(BTN_NORTH), 
		.CLK_50MHZ(CLK_50MHZ), 
		.SF_D(SF_D), 
		.LCD_E(LCD_E), 
		.LCD_RS(LCD_RS), 
		.LCD_RW(LCD_RW)
	);

	always begin
		#20;
		CLK_50MHZ = ~CLK_50MHZ;
	end

	initial begin
		// Initialize Inputs
		BTN_NORTH = 1;
		CLK_50MHZ = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		// Hey, reset
		BTN_NORTH = 0;
		#650;
		
		// now start
		BTN_NORTH = 1;
		#650;
	end
      
endmodule

