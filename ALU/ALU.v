`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Potato
// Engineer: 
// 
// Create Date:    16:21:14 09/08/2011 
// Design Name: 
// Module Name:    ALU 
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


module ALU(
		input [15:0] A,
		input [15:0] B,
		input [3:0] Opcode,
		output reg [15:0] C,
		output reg [15:0] D,
		output reg Low,
		output reg Negative,
		output reg Zero
	);
	
	`include "opcodesLOL.v"

	wire[15:0] notB = -B;//~B + 1;
	reg[31:0] temp;

	always@(*) begin
		case(Opcode)
		ADD:
		begin
			C <= A + B;
			if (C == 0)
				Zero <= 1;
			else
				Zero <= 0;
			
			Low <= $signed(A)<$signed(B);
			Negative <= $signed(A + B)<0;
			D <= 0;
		end

		SUB:
		begin
			C <= A+notB;
			if (A == B)
				Zero <= 1;
			else
				Zero <= 0;
						
			Low <= $signed(A)<$signed(B);
			Negative <= C[15];
			D <= 0;
		end

		CMP:
		begin
			Low <= A<B;
			Negative <= $signed(A)<$signed(B);
			if (A == B)
				Zero <= 1;
			else
				Zero <= 0;
			C <= 16'b0000000000000000;
			D <= 0;
		end

		CMPR:
		begin
			Low <= B<A;
			Negative <= $signed(B)<$signed(A);
			if (A == B)
				Zero <= 1;
			else
				Zero = 0;
			C <= 16'b0000000000000000;
			D <= 0;
		end

		AND:
		begin
			C <= A&B;
			if (C == 0)
				Zero <= 1;
			else
				Zero <= 0;
			Low <= A<B;
			Negative <= C[15];
			D <= 0;
		end

		OR:
		begin
			C <= A|B;
			if (C == 0)
				Zero <= 1;
			else
				Zero <= 0;
			Low <= A<B;
			Negative <= C[15];
			D <= 0;
		end

		XOR:
		begin
			C <= A^B;
			if (C == 0)
				Zero <= 1;
			else
				Zero <= 0;
			Low <= A<B;
			Negative <= C[15];
			D <= 0;
		end

		NOT:
		begin
			C <= ~A;
			if (C == 0)
				Zero <= 1;
			else
				Zero <= 0;
			Low <= C<A; //0?
			Negative <= $signed(~A)<0;
			D <= 0;
		end

		LSH:
		begin
			C <= B << A;
			if (C == 0)
				Zero <= 1;
			else
				Zero <= 0;
			
			Low <= 1'b0;
			Negative <= 1'b0;
			D <= 0;
		end

		RSH:
		begin
			C <= B >> A;
			if (C == 0)
				Zero <= 1;
			else
				Zero <= 0;
			
			Low <= 1'b0;
			Negative <= 1'b0;
			D <= 0;
		end

		ARSH:
		begin
			C <= $signed(B) >>> A[3:0];
			if (C == 0)
				Zero <= 1;
			else
				Zero <= 0;
			
			Low <= 1'b0;
			Negative <= 1'b0;
			D <= 0;
		end

		MUL:
		begin
			{C, D} = A * B;
			if (C == 0)
				Zero <= 1;
			else
				Zero <= 0;
				
			Low <= 1'b0;
			Negative <= 1'b0;
		end
		
		FMUL:
		begin
			temp = A * B;
			C = temp[29:14];
			if (C == 0)
				Zero <= 1;
			else
				Zero <= 0;
				
			Low <= 1'b0;
			Negative <= 1'b0;
			D <= 0;			
		end

		default:
		begin
			C <= 16'b0000000000000000;
			Low <= 1'b0;
			Negative <= 1'b0;
			Zero <= 1'b0;
		end

		endcase
	end

endmodule
