`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Potato
// Engineer: 
// 
// Create Date:    16:21:14 09/08/2011 
// Design Name: 
// Module Name:    Register 
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


module Register_Test(
	);

		//Inputs
		reg clk;
		reg [3:0] A;
		reg [3:0] B;
		reg [3:0] C;
		reg write;
		reg reset;
		reg [15:0] inputReg;
		
		//Outputs
		wire [15:0] outputReg1;
		wire [15:0] outputReg2;
		
		// Instantiate the Unit Under Test (UUT)
	Register uut (
		.clk(clk),
		.A(A),
		.B(B),
		.C(C),
		.write(write),
		.reset(reset),
		.inputReg(inputReg),
		.outputReg1(outputReg1),
		.outputReg2(outputReg2)
	);
	
	always
	begin
		#20;
		clk = ~clk;
	end
	
	integer i;
	
	initial begin

		// Initialize Inputs
		clk = 0;
		A = 0;
		B = 0;
		C = 0;
		write = 0;
		inputReg = 0;
		reset = 1;
		
		#100;
		
		reset = 0;
		
		#100;		
		//This loop should write to the register for 0 to 15 in order, only writing once every other iteration.
		for (i = 0; i < 32; i = i + 1)
		begin
			write = ~write;
			A = 0;
			B = 0;
			C = i/2;
			inputReg = $random % 16'hffff;//reg [15:0] inputReg;
			#20;
		end
//		
//		#20;
//		$display("Testing opcode ADD...");
//		// +/-
//		A = 16'd45;
//		B = 16'hFF00;
//		flags = 5'b00010;
//		#10
//		$display("Test number %d", 1);
//		if (!((C) == (A + B))) begin
//        	$display("Wrong for Opcode: %b, A: %b, B: %b\nExpected %b, but got %b.", Opcode, A, B, (A + B), C);
//        end
//        if(!({Carry,Flag,Low,Negative,Zero} == flags)) begin
//
//            $display("Wrong for Opcode: %b, A: %b, B: %b\nExpected flags %b, but got %b. ({Carry,Flag,Low,Negative,Zero})", Opcode, A, B, flags, {Carry,Flag,Low,Negative,Zero});
//		end
		
		
		
	end

endmodule
