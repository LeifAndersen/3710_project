`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:25:48 09/20/2011
// Design Name:   Register
// Module Name:   U:/3710/3710/Register/Register_tb.v
// Project Name:  Register
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Register_tb;

	// Inputs
	reg clk;
	reg [3:0] A;
	reg [3:0] B;
	reg [3:0] C;
	reg write;
	reg [15:0] inputReg;

	// Outputs
	wire [15:0] outputReg1;
	wire [15:0] outputReg2;

	// Instantiate the Unit Under Test (UUT)
	Register uut (
		.clk(clk), 
		.A(A), 
		.B(B), 
		.C(C), 
		.write(write), 
		.inputReg(inputReg), 
		.outputReg1(outputReg1), 
		.outputReg2(outputReg2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		A = 0;
		B = 0;
		C = 0;
		write = 0;
		inputReg = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

