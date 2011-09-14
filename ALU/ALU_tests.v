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
	reg CarryIn;
	reg [4:0] flags;

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
		.Zero(Zero),
		.CarryIn(CarryIn)
	);

	initial begin

		// Initialize Inputs
		A = 0;
		B = 0;
		CarryIn = 0;
		Opcode = 2'b11;

		// Edge Cases
		// ADD
		Opcode = ADD;
		// +/-
		A = 16'd45;
		B = 16'hFF00;
		flags = 5'b00010;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // -/+
		A = 16'hFFF1;
        B = 16'd42;
        flags = 5'b00000;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMin/Tmax
		A = 16'h8000;
		B = 16'h7FFF;
		flags = 5'b00010;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMax/Tmin
		A = 16'h7FFF;
		B = 16'h8000;
		flags = 5'b00010;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // TMax/1
		A = 16'h7FFF;
		B = 16'h0001;
		flags = 5'b01010;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMin/0
		A = 16'h8000;
		B = 16'h0000;
		flags = 5'b00010;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/-
		A = 16'hFF01;
		B = 16'hFF00;
		flags = 5'b00010;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// +/+
		A = 16'd45;
		B = 16'd42;
		flags = 5'b00010;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

	    Opcode = ADDI;
		// +/-
		A = 16'd45;
		B = 16'hFF00;
		flags = b00010;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // -/+
		A = 16'hFFF1;
        B = 16'd42;
		flags = b00000;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMin/Tmax
		A = 16'h8000;
		B = 16'h7FFF;
		flags = b00010;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMax/Tmin
		A = 16'h7FFF;
		B = 16'h8000;
		flags = b00010;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // TMax/1
		A = 16'h7FFF;
		B = 16'h0001;
		flags = b01010;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMin/0
		A = 16'h8000;
		B = 16'h0000;
		flags = b00010;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/-
		A = 16'hFF01;
		B = 16'hFF00;
		flags = b00010;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// +/+
		A = 16'd45;
		B = 16'd42;
		flags = b00010;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

	    Opcode = ADDU;
		// +/+
		A = 16'd42;
		B = 16'h12;
		flags = b00000;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMax/0
		A = 16'hFFFF;
		B = 16'h0000;
		flags = b00000;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // TMax/1
		A = 16'hFFFF;
		B = 16'h0001;
		flags = b10000;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// 1/TMax
		A = 16'h0001;
		B = 16'hFFFF;
		flags = b01000;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

	    Opcode = ADDUI;
		// +/+
		A = 16'd42;
		B = 16'h12;
		flags = b00000;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMax/0
		A = 16'hFFFF;
		B = 16'h0000;
		flags = b00000;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // TMax/1
		A = 16'hFFFF;
		B = 16'h0001;
		flags = b10000;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// 1/TMax
		A = 16'h0001;
		B = 16'hFFFF;
		flags = b01000;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

	    Opcode = ADDCU;
		// +/+
		A = 16'd42;
		B = 16'h12;
		CarryIn = 1'b0;
		flags = b00000;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMax/0
		A = 16'hFFFF;
		B = 16'h0000;
		CarryIn = 1'b1;
		flags = b10000;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // TMax/1
		A = 16'hFFFF;
		B = 16'h0001;
		CarryIn = 1'b0;
		flags = b10000;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// 1/TMax
		A = 16'h0001;
		B = 16'hFFFF;
		CarryIn = 1'b0;
		flags = b01000;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

	    Opcode = ADDCUI;
		// +/+
		A = 16'd42;
		B = 16'h12;
		CarryIn = 1'b0;
		flags = b00000;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMax/0
		A = 16'hFFFF;
		B = 16'h0000;
		CarryIn = 1'b1;
		flags = b10000;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // TMax/1
		A = 16'hFFFF;
		B = 16'h0001;
		CarryIn = 1'b0;
		flags = b10000;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// 1/TMax
		A = 16'h0001;
		B = 16'hFFFF;
		CarryIn = 1'b0;
		flags = b01000;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A + B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

		Opcode = SUB;
		// +/+
		A = 16'd45;
		B = 16'd47;
		flags = b00010;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b - B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A - B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // +/+ (0)
		A = 16'hFFF1;
        B = 16'h000F;
		flags = b00001;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b - B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A - B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/-
		A = 16'd42;
		B = 16'd40;
		flags = b00000;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b - B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A - B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/- (0)
		A = 16'h0F0F;
		B = 16'hF0F1;
		flags = b00001;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b - B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A - B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// +/- (OF)
		A = 16'h7FFF;
		B = 16'hFFFF;
		flags = b01000;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b - B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A - B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/+ (OF)
		A = 16'h8000;
		B = 16'h0001;
		flags = b01000;
		#10
		if (!((C) == (A - B)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b - B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A - B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

		Opcode = SUBI;
		// +/+
		A = 16'd45;
		B = 16'd47;
		flags = b00010;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b - B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A - B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // +/+ (0)
		A = 16'hFFF1;
        B = 16'h000F;
		flags = b00001;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b - B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A - B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/-
		A = 16'd42;
		B = 16'd40;
		flags = b00000;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b - B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A - B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/- (0)
		A = 16'h0F0F;
		B = 16'hF0F1;
		flags = b00001;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b - B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A - B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// +/- (OF)
		A = 16'h7FFF;
		B = 16'hFFFF;
		flags = b01000;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b - B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A - B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/+ (OF)
		A = 16'h8000;
		B = 16'h0001;
		flags = b01000;
		#10
		if (!((C) == (A - B)) && !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for Opcode: %b, A: %b - B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", Opcode, A, B, (A - B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

		Opcode = CMP;
		// same
		A = 16'd45;
		B = 16'd45;
		flags = b00001;
		#10
		if (!(C == 0) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("CMP Wrong for A: %b, B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", A, B, (A < B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // A > B
		A = 16'h0FF1;
        B = 16'h000F;
		flags = b00000;
		#10
		if (!(C == 0) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("CMP Wrong for A: %b, B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", A, B, (A < B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// A < B
		A = 16'd2;
		B = 16'd4000;
		flags = b00100;
		#10
		if (!(C == 0) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("CMP Wrong for A: %b, B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", A, B, (A < B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

		Opcode = CMPI;
		// same
		A = 16'd45;
		B = 16'd45;
		flags = b00001;
		#10
		if (!(C == 0) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("CMPI Wrong for A: %b, B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", A, B, (A < B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // A > B
		A = 16'h0FF1;
        B = 16'h000F;
		flags = b00000;
		#10
		if (!(C == 0) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("CMPI Wrong for A: %b, B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", A, B, (A < B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// A < B
		A = 16'd2;
		B = 16'd4000;
		flags = b00100;
		#10
		if (!(C == 0) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("CMPI Wrong for A: %b, B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", A, B, (A < B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = AND;
		A = 16'd45;
		B = 16'd45;
		flags = b00000;
		#10
		if (!(C == (A & B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b AND B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", A, B, (A & B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		A = 16'h0FF1;
        B = 16'h000F;
		flags = b00000;
		#10
		if (!(C == (A & B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b AND B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", A, B, (A & B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		A = 16'd2000;
		B = 16'd4000;
		flags = b00000;
		#10
		if (!(C == (A & B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b AND B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", A, B, (A & B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end



		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = OR;
		A = 16'd45;
		B = 16'd45;
		flags = b00000;
		#10
		if (!(C == (A | B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b OR B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", A, B, (A | B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		A = 16'h0FF1;
        B = 16'h000F;
		flags = b00000;
		#10
		if (!(C == (A | B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b OR B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", A, B, (A | B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		A = 16'd2000;
		B = 16'd4000;
		flags = b00000;
		#10
		if (!(C == (A | B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b OR B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", A, B, (A | B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = XOR;
		A = 16'd45;
		B = 16'd45;
		flags = b00000;
		#10
		if (!(C == (A ^ B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b XOR B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", A, B, (A ^ B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		A = 16'h0FF1;
        B = 16'h000F;
		flags = b00000;
		#10
		if (!(C == (A ^ B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b XOR B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", A, B, (A ^ B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		A = 16'd2000;
		B = 16'd4000;
		flags = b00000;
		#10
		if (!(C == (A ^ B)) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b XOR B: %b\nExpected %b, but got %b.\nExpected flags %b, but got %b.", A, B, (A ^ B), C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = LSH;
		A = 16'h4444;
		B = 16'd4;
		flags = b00000;
		#10
		if (!(C == 16'h4440) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b LSH B: %b\nExpected 0100010001000000, but got %b.\nExpected flags %b, but got %b.", A, B, C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        A = 16'h4444;
		B = 16'd1;
		flags = b00000;
		#10
		if (!(C == 16'h8888) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b LSH B: %b\nExpected 1000100010001000, but got %b.\nExpected flags %b, but got %b.", A, B, C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = LSHI;
		A = 16'h4444;
		B = 16'd4;
		flags = b00000;
		#10
		if (!(C == 16'h4440) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b LSHI B: %b\nExpected 0100010001000000, but got %b.\nExpected flags %b, but got %b.", A, B, C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        A = 16'h4444;
		B = 16'd1;
		flags = b00000;
		#10
		if (!(C == 16'h8888) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b LSHI B: %b\nExpected 1000100010001000, but got %b.\nExpected flags %b, but got %b.", A, B, C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = RSH;
		A = 16'h4444;
		B = 16'd4;
		flags = b00000;
		#10
		if (!(C == 16'h0444) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b RSH B: %b\nExpected 0000010001000100, but got %b.\nExpected flags %b, but got %b.", A, B, C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        A = 16'h4444;
		B = 16'd1;
		flags = b00000;
		#10
		if (!(C == 16'h2222) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b RSH B: %b\nExpected 0010001000100010, but got %b.\nExpected flags %b, but got %b.", A, B, C, flags, {Carry,Flag,Low,Negative,Zero});
        end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = RSHI;
		A = 16'h4444;
		B = 16'd4;
		flags = b00000;
		#10
		if (!(C == 16'h0444) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b RSHI B: %b\nExpected 0000010001000100, but got %b.\nExpected flags %b, but got %b.", A, B, C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        A = 16'h4444;
		B = 16'd1;
		flags = b00000;
		#10
		if (!(C == 16'h2222) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b RSHI B: %b\nExpected 0010001000100010, but got %b.\nExpected flags %b, but got %b.", A, B, C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = ALSH;
		A = 16'h4444;
		B = 16'd4;
		flags = b00000;
		#10
		if (!(C == 16'h4440) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b ALSH B: %b\nExpected 0100010001000000, but got %b.\nExpected flags %b, but got %b.", A, B, C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        A = 16'h1111;
		B = 16'd1;
		flags = b00000;
		#10
		if (!(C == 16'h2223) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b ALSH B: %b\nExpected 0010001000100011, but got %b.\nExpected flags %b, but got %b.", A, B, C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = ARSH;
		A = 16'h4444;
		B = 16'd4;
		flags = b00000;
		#10
		if (!(C == 16'h0444) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b ALSH B: %b\nExpected 0000010001000100, but got %b.\nExpected flags %b, but got %b.", A, B, C, flags, {Carry,Flag,Low,Negative,Zero});
		end

        A = 16'h8888;
		B = 16'd2;
		flags = b00000;
		#10
		if (!(C == 16'hE222) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b ALSH B: %b\nExpected 1110001000100010, but got %b.\nExpected flags %b, but got %b.", A, B, C, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = NOP;
		A = 16'h4444;
		B = 16'd4;
		flags = b00000;
		#10
		if (!(C == 0) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b NOP B: %b, C:%b", A, B, C);
		end

        A = 16'h8888;
		B = 16'd1;
		flags = b00000;
		#10
		if (!(C == 0) || !({Carry,Flag,Low,Negative,Zero} == flags)) begin
			$display("Wrong for A: %b NOP B: %b, C:%b", A, B, C);
		end

		$finish(2);

	end

endmodule
