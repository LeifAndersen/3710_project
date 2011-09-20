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
		.inputReg(inputReg),
		.outputReg1(outputReg1),
		.outputReg2(outputReg2)
	);
	
	always
	begin
		#20;
		clk = ~clk;
	end
	
	initial begin

		// Initialize Inputs
		clk = 0;
		A = 0;
		B = 0;
		C = 0;
		write = 0;
		inputReg = 0;
		
		#20;
		
		//First inputs
		write = 1;
		A = 1;//reg [3:0] A;
		B = 2;//reg [3:0] B;
		C = 3;//reg [3:0] C;
		write = 1;//reg write;
		inputReg = 36;//reg [15:0] inputReg;
		
		#20;
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
		
		
		
	end

endmodule
