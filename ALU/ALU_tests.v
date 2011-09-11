`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:07:52 09/11/2011 
// Design Name: 
// Module Name:    ALU_tests 
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
module ALU_tests(
    );
	
	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [7:0] Opcode;

	// Outputs
	wire [15:0] C;
	wire Carry;
	wire Flag;
	wire Low;
	wire Negative;
	wire Zero;

	integer i;
	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.Opcode(Opcode), 
		.Carry(Carry),
		.Flag(Flag),
		.Low(Low),
		.Negative(Negative),
		.Zero(Zero)
	);

	initial begin

		// Initialize Inputs
		A = 0;
		B = 0;
		Opcode = 2'b11;

		//Random simulation
		for( i = 0; i< 10; i = 1+ 1)
		begin
			#10
			A = $random % 16;
			B = $random %16;
		end
		$finish(2);
		
		// Edge cases
		

	end

endmodule
