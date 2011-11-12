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
	reg [15:0] data;

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
		.dataIn(data), 
		.full(full), 
		.color(color2), 
		.hsync(hsync), 
		.vsync(vsync)
	);

integer i;

always
begin
#10;
clk = ~clk;
#10;
clk = ~clk;
vgaClk = ~vgaClk;
end

	initial begin
		// Initialize Inputs
		clk = 0;
		vgaClk = 0;
		reset = 1;
		we = 0;
		data = 0;

		// Wait 100 ns for global reset to finish
		#100;
      reset = 0;
		#20;
		// Add stimulus here
		//data = 16'hffff;
		//
		#310;
		 
//		Add stimulus here
//		for (i = 0; i < 1000; i = i + 1)
//		begin
//			if (!full)
//				we = 1;
//			else
//				we = 0;
//			data[15:10] = 0;
//			data[9:7] = i%8;
//			data[6:0] = i%120;
//			#20;
//			if (!full)
//				we = 1;
//			else
//				we = 0;		
//			data[15:8] = i%80;
//			data[7:0] = 159 - i%80;
//			#20;
//		end

		for (i = 0; i < 1000; i = i + 1)
		begin
			if (!full)
				we = 1;
			else
				we = 0;
			data[15:10] = 0;
			data[9:7] = i%8;
			data[6:0] = i%120;
			#20;
			if (!full)
				we = 1;
			else
				we = 0;		
			data[15:8] = 0;
			data[7:0] = 159;
			#20;
		end
		we = 0;
		
		#1000000;
		we = 1;
		data[15:0] = 16'hffff;
		#60;
		we = 0;
	end
	
endmodule

