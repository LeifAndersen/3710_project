`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:22:50 11/06/2011
// Design Name:   Painter
// Module Name:   C:/Users/jhparker/3710/Painter/Painter_tb.v
// Project Name:  Painter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Painter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Painter_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [9:0] wrtPtr;
	reg [15:0] PRAM;

	// Outputs
	wire [9:0] rdPtr;
	wire full;
	wire [14:0] addr;
	wire [2:0] data;
	wire we;
	wire swapBuffers;

	// Instantiate the Unit Under Test (UUT)
	Painter uut (
		.clk(clk), 
		.reset(reset), 
		.wrtPtr(wrtPtr), 
		.PRAMdata(PRAM), 
		.rdPtr(rdPtr), 
		.full(full), 
		.addr(addr), 
		.data(data), 
		.we(we),
		.swapBuffers
	);
integer i;

always
begin
#10;
clk = ~clk;
end

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		wrtPtr = 0;
		PRAM = 0;
		#20;
		reset = 0;
		// Wait 100 ns for global reset to finish
		#110;
        
		// Add stimulus here
		for (i = 0; i < 1000; i = i + 1)
		begin
			wrtPtr <= wrtPtr + 1;
			PRAM <= 16'hffff - i;
			#20;
		end

	end
      
endmodule

