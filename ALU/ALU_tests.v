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

	`include "opcodesLOL.v"

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
        /*for( i = 0; i< 10; i = 1+ 1)
		begin
			#10
			A = $random % 16;
			B = $random %16;
		end*/

		// Edge Cases
		// ADD
		Opcode = ADD;
		A = 16'b45;
		B = 16'hFF00;
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end
		#10
		
		A = 16'b45;
		B = 16'hFF00;
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end
		#10
		
		A = 16'b45;
		B = 16'hFF00;
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end
		#10
		
		A = 16'b45;
		B = 16'hFF00;
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end
		#10
		
		A = 16'b45;
		B = 16'hFF00;
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end
		#10
		
		A = 16'b45;
		B = 16'hFF00;
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end
		#10
		
		A = 16'b45;
		B = 16'hFF00;
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end
		#10
		
		A = 16'b45;
		B = 16'hFF00;
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end
		#10

		$finish(2);

	end

endmodule
