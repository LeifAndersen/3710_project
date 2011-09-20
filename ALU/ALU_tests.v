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
		$display("Testing opcode ADD...");
		// +/-
		A = 16'd45;
		B = 16'hFF00;
		flags = 5'b00010;
		#10
		$display("Test number %d", 1);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // -/+
		A = 16'hFFF1;
        B = 16'd42;
        flags = 5'b00100;
		#10
		$display("Test number %d", 2);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMin/Tmax
		A = 16'h8000;
		B = 16'h7FFF;
		flags = 5'b00110;
		#10
		$display("Test number %d", 3);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMax/Tmin
		A = 16'h7FFF;
		B = 16'h8000;
		flags = 5'b00010;
		#10
		$display("Test number %d", 4);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // TMax/1
		A = 16'h7FFF;
		B = 16'h0001;
		flags = 5'b01010;
		#10
		$display("Test number %d", 5);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMin/0
		A = 16'h8000;
		B = 16'h0000;
		flags = 5'b00110;
		#10
		$display("Test number %d", 6);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/-
		A = 16'hFF01;
		B = 16'hFF00;
		flags = 5'b00010;
		#10
		$display("Test number %d", 7);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// +/+
		A = 16'd45;
		B = 16'd42;
		flags = 5'b00000;
		#10
		$display("Test number %d", 8);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

	    Opcode = ADDI;
	    $display("Testing opcode ADDI...");
		// +/-
		A = 16'd45;
		B = 16'hFF00;
		flags = 5'b00010;
		#10
		$display("Test number %d", 9);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // -/+
		A = 16'hFFF1;
        B = 16'd42;
		flags = 5'b00100;
		#10
		$display("Test number %d", 10);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMin/Tmax
		A = 16'h8000;
		B = 16'h7FFF;
		flags = 5'b00110;
		#10
		$display("Test number %d", 11);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMax/Tmin
		A = 16'h7FFF;
		B = 16'h8000;
		flags = 5'b00010;
		#10
		$display("Test number %d", 12);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // TMax/1
		A = 16'h7FFF;
		B = 16'h0001;
		flags = 5'b01010;
		#10
		$display("Test number %d", 13);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMin/0
		A = 16'h8000;
		B = 16'h0000;
		flags = 5'b00110;
		#10
		$display("Test number %d", 14);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/-
		A = 16'hFF01;
		B = 16'hFF00;
		flags = 5'b00010;
		#10
		$display("Test number %d", 14.5);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// +/+
		A = 16'd45;
		B = 16'd42;
		flags = 5'b00000;
		#10
		$display("Test number %d", 15);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

	    Opcode = ADDU;
	    $display("Testing opcode ADDU...");
		// +/+
		A = 16'd42;
		B = 16'h12;
		flags = 5'b00000;
		#10
		$display("Test number %d", 16);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMax/0
		A = 16'hFFFF;
		B = 16'h0000;
		flags = 5'b00000;
		#10
		$display("Test number %d", 17);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // TMax/1
		A = 16'hFFFF;
		B = 16'h0001;
		flags = 5'b10001;
		#10
		$display("Test number %d", 18);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// 1/TMax
		A = 16'h0001;
		B = 16'hFFFF;
		flags = 5'b10101;
		#10
		$display("Test number %d", 19);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

	    Opcode = ADDUI;
	    $display("Testing opcode ADDUI...");
		// +/+
		A = 16'd42;
		B = 16'h12;
		flags = 5'b00000;
		#10
		$display("Test number %d", 20);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMax/0
		A = 16'hFFFF;
		B = 16'h0000;
		flags = 5'b00000;
		#10
		$display("Test number %d", 21);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // TMax/1
		A = 16'hFFFF;
		B = 16'h0001;
		flags = 5'b10001;
		#10
		$display("Test number %d", 22);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// 1/TMax
		A = 16'h0001;
		B = 16'hFFFF;
		flags = 5'b10101;
		#10
		$display("Test number %d", 23);
		if (!((C) == (A + B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

	    Opcode = ADDCU;
	    $display("Testing opcode ADDCU...");
		// +/+
		A = 16'd42;
		B = 16'h12;
		CarryIn = 1'b0;
		flags = 5'b00000;
		#10
		$display("Test number %d", 24);
		if (!((C) == (A + B + CarryIn))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMax/0
		A = 16'hFFFF;
		B = 16'h0000;
		CarryIn = 1'b1;
		flags = 5'b10000;
		#10
		$display("Test number %d", 25);
		if (!((C) == (A + B + CarryIn))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // TMax/1
		A = 16'hFFFF;
		B = 16'h0001;
		CarryIn = 1'b0;
		flags = 5'b10000;
		#10
		$display("Test number %d", 26);
		if (!((C) == (A + B + CarryIn))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// 1/TMax
		A = 16'h0001;
		B = 16'hFFFF;
		CarryIn = 1'b0;
		flags = 5'b10100;
		#10
		$display("Test number %d", 27);
		if (!((C) == (A + B + CarryIn))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

	    Opcode = ADDCUI;
	    $display("Testing opcode ADDCUI...");
		// +/+
		A = 16'd42;
		B = 16'h12;
		CarryIn = 1'b0;
		flags = 5'b00000;
		#10
		$display("Test number %d", 28);
		if (!((C) == (A + B + CarryIn))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// TMax/0
		A = 16'hFFFF;
		B = 16'h0000;
		CarryIn = 1'b1;
		flags = 5'b10000;
		#10
		$display("Test number %d", 29);
		if (!((C) == (A + B + CarryIn))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // TMax/1
		A = 16'hFFFF;
		B = 16'h0001;
		CarryIn = 1'b0;
		flags = 5'b10000;
		#10
		$display("Test number %d", 30);
		if (!((C) == (A + B + CarryIn))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// 1/TMax
		A = 16'h0001;
		B = 16'hFFFF;
		CarryIn = 1'b0;
		flags = 5'b10100;
		#10
		$display("Test number %d", 31);
		if (!((C) == (A + B + CarryIn))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

		Opcode = SUB;
		$display("Testing opcode SUB...");
		// +/+
		A = 16'd45;
		B = 16'd47;
		flags = 5'b00110;
		#10
		$display("Test number %d", 32);
		if (!((C) == (A - B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A - B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // +/+ (0)
		A = 16'hFFF1;
        B = 16'h000F;
		flags = 5'b00110;
		#10
		$display("Test number %d", 33);
		if (!((C) == (A - B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A - B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/-
		A = 16'd42;
		B = 16'd40;
		flags = 5'b00000;
		#10
		$display("Test number %d", 34);
		if (!((C) == (A - B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A - B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/- (0)
		A = 16'hF0F1;
		B = 16'hF0F1;
		flags = 5'b00001;
		#10
		$display("Test number %d", 35);
		if (!((C) == (A - B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A - B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// +/- (OF)
		A = 16'h7FFF;
		B = 16'hFFFF;
		flags = 5'b01010;
		#10
		$display("Test number %d", 36);
		if (!((C) == (A - B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A - B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/+ (OF)
		A = 16'h8000;
		B = 16'h0001;
		flags = 5'b01100;
		#10
		$display("Test number %d", 37);
		if (!((C) == (A - B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A - B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

		Opcode = SUBI;
		$display("Testing opcode SUBI...");
		// +/+
		A = 16'd45;
		B = 16'd47;
		flags = 5'b00110;
		#10
		$display("Test number %d", 38);
		if (!((C) == (A - B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A - B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // +/+ (0)
		A = 16'hFFF1;
        B = 16'h000F;
		flags = 5'b00110;
		#10
		$display("Test number %d", 39);
		if (!((C) == (A - B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A - B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/-
		A = 16'd42;
		B = 16'd40;
		flags = 5'b00000;
		#10
		$display("Test number %d", 40);
		if (!((C) == (A - B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A - B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/- (0)
		A = 16'h0F0F;
		B = 16'hF0F1;
		flags = 5'b00000;
		#10
		$display("Test number %d", 41);
		if (!((C) == (A - B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A - B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// +/- (OF)
		A = 16'h7FFF;
		B = 16'hFFFF;
		flags = 5'b01010;
		#10
		$display("Test number %d", 42);
		if (!((C) == (A - B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A - B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// -/+ (OF)
		A = 16'h8000;
		B = 16'h0001;
		flags = 5'b01100;
		#10
		$display("Test number %d", 43);
		if (!((C) == (A - B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A - B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

		Opcode = CMP;
		$display("Testing opcode CMP...");
		// same
		A = 16'd45;
		B = 16'd45;
		flags = 5'b00001;
		#10
		$display("Test number %d", 44);
		if (!(C == 0)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A < B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // A > B
		A = 16'h0FF1;
        B = 16'h000F;
		flags = 5'b00000;
		#10
		$display("Test number %d", 45);
		if (!(C == 0)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A < B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// A < B
		A = 16'd2;
		B = 16'd4000;
		flags = 5'b00110;
		#10
		$display("Test number %d", 46);
		if (!(C == 0)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A < B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

		Opcode = CMPI;
		$display("Testing opcode CMPI...");
		// same
		A = 16'd45;
		B = 16'd45;
		flags = 5'b00001;
		#10
		$display("Test number %d", 47);
		if (!(C == 0)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A < B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        // A > B
		A = 16'h0FF1;
        B = 16'h000F;
		flags = 5'b00000;
		#10
		$display("Test number %d", 48);
		if (!(C == 0)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A < B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		// A < B
		A = 16'd2;
		B = 16'd4000;
		flags = 5'b00110;
		#10
		$display("Test number %d", 49);
		if (!(C == 0)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A < B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = AND;
        $display("Testing opcode AND...");
		A = 16'd45;
		B = 16'd45;
		flags = 5'b00000;
		#10
		$display("Test number %d", 50);
		if (!(C == (A & B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A & B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		A = 16'h0FF1;
        B = 16'h000F;
		flags = 5'b00000;
		#10
		$display("Test number %d", 51);
		if (!(C == (A & B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A & B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		A = 16'd2000;
		B = 16'd4000;
		flags = 5'b00100;
		#10
		$display("Test number %d", 52);
		if (!(C == (A & B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A & B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end



		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = OR;
        $display("Testing opcode OR...");
		A = 16'd45;
		B = 16'd45;
		flags = 5'b00000;
		#10
		$display("Test number %d", 53);
		if (!(C == (A | B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A | B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		A = 16'h0FF1;
        B = 16'h000F;
		flags = 5'b00000;
		#10
		$display("Test number %d", 54);
		if (!(C == (A | B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A | B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		A = 16'd2000;
		B = 16'd4000;
		flags = 5'b00100;
		#10
		$display("Test number %d", 55);
		if (!(C == (A | B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A | B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = XOR;
        $display("Testing opcode XOR...");
		A = 16'd45;
		B = 16'd45;
		flags = 5'b00001;
		#10
		$display("Test number %d", 56);
		if (!(C == (A ^ B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A ^ B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		A = 16'h0FF1;
        B = 16'h000F;
		flags = 5'b00000;
		#10
		$display("Test number %d", 57);
		if (!(C == (A ^ B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A ^ B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		A = 16'd2000;
		B = 16'd4000;
		flags = 5'b00100;
		#10
		$display("Test number %d", 58);
		if (!(C == (A ^ B))) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A ^ B), C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = LSH;
        $display("Testing opcode LSH...");
		A = 16'h4444;
		B = 16'd4;
		flags = 5'b00000;
		#10
		$display("Test number %d", 59);
		if (!(C == 16'h4440)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, 16'h4440, C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        A = 16'h4444;
		B = 16'd1;
		flags = 5'b00000;
		#10
		$display("Test number %d", 60);
		if (!(C == 16'h8888)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, 16'h8888, C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = LSHI;
        $display("Testing opcode LSHI...");
		A = 16'h4444;
		B = 16'd4;
		flags = 5'b00000;
		#10
		$display("Test number %d", 61);
		if (!(C == 16'h4440)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, 16'h4440, C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        A = 16'h4444;
		B = 16'd1;
		flags = 5'b00000;
		#10
		$display("Test number %d", 62);
		if (!(C == 16'h8888)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, 16'h8888, C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = RSH;
        $display("Testing opcode RSH...");
		A = 16'h4444;
		B = 16'd4;
		flags = 5'b00000;
		#10
		$display("Test number %d", 63);
		if (!(C == 16'h0444)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, 16'h0444, C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        A = 16'h4444;
		B = 16'd1;
		flags = 5'b00000;
		#10
		$display("Test number %d", 64);
		if (!(C == 16'h2222)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, 16'h2222, C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = RSHI;
        $display("Testing opcode RSHI...");
		A = 16'h4444;
		B = 16'd4;
		flags = 5'b00000;
		#10
		$display("Test number %d", 65);
		if (!(C == 16'h0444)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, 16'h0444, C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        A = 16'h4444;
		B = 16'd1;
		flags = 5'b00000;
		#10
		$display("Test number %d", 66);
		if (!(C == 16'h2222)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, 16'h2222, C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = ALSH;
        $display("Testing opcode ALSH...");
		A = 16'h4444;
		B = 16'd4;
		flags = 5'b00000;
		#10
		$display("Test number %d", 67);
		if (!(C == 16'h4440)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, 16'h4440, C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        A = 16'h1111;
		B = 16'd1;
		flags = 5'b00000;
		#10
		$display("Test number %d", 68);
		if (!(C == 16'h2222)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, 16'h2222, C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = ARSH;
        $display("Testing opcode ARSH...");
		A = 16'h4444;
		B = 16'd4;
		flags = 5'b00000;
		#10
		$display("Test number %d", 69);
		if (!(C == 16'h0444)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, 16'h0444, C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        A = 16'h8888;
		B = 16'd2;
		flags = 5'b00000;
		#10
		$display("Test number %d", 70);
		if (!(C == 16'hE222)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, 16'hE222, C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////

        Opcode = NOP;
        $display("Testing opcode NOP...");
		A = 16'h4444;
		B = 16'd4;
		flags = 5'b00000;
		#10
		$display("Test number %d", 71);
		if (!(C == 0)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, 0, C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

        A = 16'h8888;
		B = 16'd1;
		flags = 5'b00000;
		#10
		$display("Test number %d", 72);
		if (!(C == 0)) begin
        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, 0, C);
        end
        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin

            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
		end

		$finish(2);

	end

endmodule
