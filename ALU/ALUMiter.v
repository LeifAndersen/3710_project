					`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:23 09/20/2011 
// Design Name: 
// Module Name:    ALUMiter 
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
module ALUMiter(
		input [15:0] A,
		input [15:0] B,
		input [7:0] Opcode,
		input CarryIn,
		output miterOut
    );
	 
	wire [15:0] C;
	wire Carry;
	wire Flag;
	wire Low;
	wire Negative;
	wire Zero;
	wire [15:0] C2;
	wire Carry2;
	wire Flag2;
	wire Low2;
	wire Negative2;
	wire Zero2;
	 
	ALU bob(A, B, Opcode, CarryIn, C, Carry, Flag, Low, Negative, Zero);

	ALUSynth fred(CarryIn, Flag2, Carry2, Low2, Negative2, Zero2, C2, A, B, Opcode);
	
	assign miterOut = (C == C2) && (Carry == Carry2) && (Flag ==  Flag2) && (Low == Low2) && (Negative == Negative2) && (Zero == Zero2);

endmodule
