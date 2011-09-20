`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:   15:02:41 09/20/2011
// Design Name:   glbl
// Module Name:   U:/3710/3710/ALU/ALU_synth_test.v
// Project Name:  ALU
// Target Device:
// Tool versions:
// Description:
//
// Verilog Test Fixture created by ISE for module: glbl
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
////////////////////////////////////////////////////////////////////////////////

module ALU_synth_test;

	`include "opcodesLOL.v"

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [7:0] Opcode;
	reg CarryIn;

	// Outputs
	wire miterOut;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	ALUMiter uut (
		.A(A),
		.B(B),
		.Opcode(Opcode),
		.CarryIn(CarryIn),
		.miterOut(miterOut)
	);

		initial begin
		i = 0;
		
		#100

			for( Opcode = 0; Opcode < 22; Opcode = Opcode + 1) begin
				for( i = 0; i < 10; i = i + 1) begin
					#10
					A = $random % 16;
					B = $random % 16;
					CarryIn = $random % 1;
					if (miterOut != 1'b1) begin
						$display("NOT THE SAME FOR A: %0d, B: %0d, Opcode: %b.", A, B, Opcode);
					end
				end
			end

		$finish(2);	
		end
			
		
		

endmodule

