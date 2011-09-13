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
		// +/-
		A = 16'd45;
		B = 16'hFF00;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

        // -/+
		A = 16'hFFF1;
        B = 16'd42;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// TMin/Tmax
		A = 16'h8000;
		B = 16'h7FFF;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// TMax/Tmin
		A = 16'h7FFF;
		B = 16'h8000;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

        // TMax/1
		A = 16'h7FFF;
		B = 16'h0001;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b01010)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// TMin/0
		A = 16'h8000;
		B = 16'h0000;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// -/-
		A = 16'hFF01;
		B = 16'hFF00;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// +/+
		A = 16'd45;
		B = 16'd42;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

	    Opcode = ADDI;
		// +/-
		A = 16'd45;
		B = 16'hFF00;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

        // -/+
		A = 16'hFFF1;
        B = 16'd42;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// TMin/Tmax
		A = 16'h8000;
		B = 16'h7FFF;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// TMax/Tmin
		A = 16'h7FFF;
		B = 16'h8000;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

        // TMax/1
		A = 16'h7FFF;
		B = 16'h0001;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b01010)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// TMin/0
		A = 16'h8000;
		B = 16'h0000;
		#10
		if (!((C) == (A + B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// -/-
		A = 16'hFF01;
		B = 16'hFF00;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// +/+
		A = 16'd45;
		B = 16'd42;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

	    Opcode = ADDU;
		// +/+
		A = 16'd42;
		B = 16'h12;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// TMax/0
		A = 16'hFFFF;
		B = 16'h0000;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

        // TMax/1
		A = 16'hFFFF;
		B = 16'h0001;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b10000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// 1/TMax
		A = 16'h0001;
		B = 16'hFFFF;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b01000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

	    Opcode = ADDUI;
		// +/+
		A = 16'd42;
		B = 16'h12;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// TMax/0
		A = 16'hFFFF;
		B = 16'h0000;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

        // TMax/1
		A = 16'hFFFF;
		B = 16'h0001;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b10000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// 1/TMax
		A = 16'h0001;
		B = 16'hFFFF;
		#10
		if (!((C) == (A + B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b01000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

	    Opcode = ADDCU;
		// +/+
		A = 16'd42;
		B = 16'h12;
		CarryIn = 1'b0;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// TMax/0
		A = 16'hFFFF;
		B = 16'h0000;
		CarryIn = 1'b1;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == 5'b10000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

        // TMax/1
		A = 16'hFFFF;
		B = 16'h0001;
		CarryIn = 1'b0;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == 5'b10000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// 1/TMax
		A = 16'h0001;
		B = 16'hFFFF;
		CarryIn = 1'b0;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == 5'b01000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

	    Opcode = ADDCUI;
		// +/+
		A = 16'd42;
		B = 16'h12;
		CarryIn = 1'b0;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == 5'b00000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// TMax/0
		A = 16'hFFFF;
		B = 16'h0000;
		CarryIn = 1'b1;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == 5'b10000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

        // TMax/1
		A = 16'hFFFF;
		B = 16'h0001;
		CarryIn = 1'b0;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == 5'b10000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		// 1/TMax
		A = 16'h0001;
		B = 16'hFFFF;
		CarryIn = 1'b0;
		#10
		if (!((C) == (A + B + CarryIn)) && !({Carry,Flag,Low,Negative,Zero} == 5'b01000)) begin
			$display("Wrong for Opcode: %b, A: %b + B: %b, C:%b", Opcode, A, B, C);
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

		Opcode = SUB;
		// +/+
		A = 16'd45;
		B = 16'd47;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end

        // +/+ (0)
		A = 16'hFFF1;
        B = 16'h000F;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00001)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end

		// -/-
		A = 16'd42;
		B = 16'd40;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00000)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end

		// -/- (0)
		A = 16'h0F0F;
		B = 16'hF0F1;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00001)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end

		// +/- (OF)
		A = 16'h7FFF;
		B = 16'hFFFF;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b01000)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end

		// -/+ (OF)
		A = 16'h8000;
		B = 16'h0001;
		#10
		if (!((C) == (A - B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b01000)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

		Opcode = SUBI;
		// +/+
		A = 16'd45;
		B = 16'd47;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00010)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end

        // +/+ (0)
		A = 16'hFFF1;
        B = 16'h000F;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00001)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end

		// -/-
		A = 16'd42;
		B = 16'd40;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00000)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end

		// -/- (0)
		A = 16'h0F0F;
		B = 16'hF0F1;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b00001)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end

		// +/- (OF)
		A = 16'h7FFF;
		B = 16'hFFFF;
		#10
		if (!((C) == (A - B)) || !({Carry,Flag,Low,Negative,Zero} == 5'b01000)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end

		// -/+ (OF)
		A = 16'h8000;
		B = 16'h0001;
		#10
		if (!((C) == (A - B)) && !({Carry,Flag,Low,Negative,Zero} == 5'b01000)) begin
			$display("Wrong for A: %b + B: %b, C:%b", A, B, C);
		end

		$finish(2);

	end

endmodule
