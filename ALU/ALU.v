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
		input [7:0] Opcode,
		input CarryIn,
		output reg [15:0] C,
		output reg Carry,
		output reg Flag,
		output reg Low,
		output reg Negative,
		output reg Zero
	);
	
	`include "opcodesLOL.v"

	wire[15:0] D = -B;//~B + 1;

	always@(*) begin
		case(Opcode)
		ADD:
		begin
			C = A + B;
			if (C == 0)
				Zero = 1;
			else
				Zero = 0;
				
			Flag = (~A[15]&~B[15]&C[15]) | (A[15] & B[15] & ~C[15]);
			
			Carry = 0;
			Low = $signed(A)<$signed(B);
			Negative = $signed(A + B)<0;
		end

		ADDU:
		begin
			{Carry, C} = A + B;
			if (C == 0)
				Zero = 1;
			else
				Zero = 0;
			
			Low = A<B;
			Negative = 0;
			Flag = 0;
		end

		ADDI:
		begin
			C = A + B;
			if( C == 0)
				Zero = 1;
			else
				Zero = 0;
				
			Flag = (~A[15]&~B[15]&C[15]) | (A[15] & B[15] & ~C[15]);
			
			Carry = 0;
			Low = $signed(A)<$signed(B);
			Negative = $signed(A + B)<0;
		end

		ADDUI:
		begin
			{Carry, C} = A + B;
			if (C == 0)
				Zero = 1;
			else
				Zero = 0;
			
			Flag = 0;
			Low = A<B;
			Negative = 0;
		end

		ADDCU:
		begin
			{Carry, C} = A + B + CarryIn;
			if ((C == 0) && (Carry == 0))
				Zero = 1;
			else
				Zero = 0;
			
			Flag = 0;
			Low = A<B;
			Negative = 0;
		end

		ADDCUI:
		begin
			{Carry, C} = A + B + CarryIn;
			if ((C == 0) && (Carry == 0))
				Zero = 1;
			else
				Zero = 0;
			
			Flag = 0;
			Low = A<B;
			Negative = 0;
		end

		SUB:
		begin
			C = A+D;
			if (A == B)
				Zero = 1;
			else
				Zero = 0;
			
			Flag = ((~A[15])&(~D[15])&C[15]) | (A[15] & (D[15]) & (~C[15]));
			
			Low = $signed(A)<$signed(B);
			Carry = 0;
			Negative = C[15];
		end

		SUBI:
		begin
			C = A+D;
			if (A == B)
				Zero = 1;
			else
				Zero = 0;
			
			//Currently using -B[15], maybe a way to say D = -B, then use D.
			Flag = (!A[15]&!(D[15])&C[15]) | (A[15] & (D[15]) & !C[15]);
			
			Low = $signed(A)<$signed(B);
			Carry = 0;
			Negative = C[15];
		end

		CMP:
		begin
			Low = A<B;
			Negative = $signed(A)<$signed(B);
			if (A == B)
				Zero = 1;
			else
				Zero = 0;
			Carry = 1'b0;
			C = 16'b0000000000000000;
			Flag = 1'd0;
		end

		CMPI:
		begin
			Low = A<B;
			Negative = $signed(A)<$signed(B);
			if (A == B)
				Zero = 1;
			else
				Zero = 0;
			Flag = 1'd0;
			Carry = 1'b0;
			C = 16'b0000000000000000;
		end

		TEST:
		begin
			C = A&B;
			if (C == 0)
				Zero = 1;
			else
				Zero = 0;
			Low = A<B;
			Negative = $signed(A)<$signed(B);
			Flag = 1'b0;
			Carry = 1'b0;
		end

		AND:
		begin
			C = A&B;
			if (C == 0)
				Zero = 1;
			else
				Zero = 0;
			Low = A<B;
			Negative = C[15];
			Flag = 1'b0;
			Carry = 1'b0;
		end

		OR:
		begin
			C = A|B;
			if (C == 0)
				Zero = 1;
			else
				Zero = 0;
			Low = A<B;
			Negative = C[15];
			Flag = 1'b0;
			Carry = 1'b0;
		end

		XOR:
		begin
			C = A^B;
			if (C == 0)
				Zero = 1;
			else
				Zero = 0;
			Low = A<B;
			Negative = C[15];
			Flag = 1'b0;
			Carry = 1'b0;
		end

		NOT:
		begin
			C = ~A;
			if (C == 0)
				Zero = 1;
			else
				Zero = 0;
			Low = C<A; //0?
			Negative = $signed(~A)<0;
			Flag = 1'b0;
			Carry = 1'b0;
		end

		LSH:
		begin
			C = A << B;
			if (C == 0)
				Zero = 1;
			else
				Zero = 0;
			
			Low = 1'b0;
			Negative = 1'b0;
			Flag = 1'b0;
			Carry = 1'b0;
		end

		LSHI:
		begin
			C = A << B;
			if (C == 0)
				Zero = 1;
			else
				Zero = 0;
			
			Low = 1'b0;
			Negative = 1'b0;
			Flag = 1'b0;
			Carry = 1'b0;
		end

		RSH:
		begin
			C = A >> B;
			if (C == 0)
				Zero = 1;
			else
				Zero = 0;
			
			Low = 1'b0;
			Negative = 1'b0;
			Flag = 1'b0;
			Carry = 1'b0;
		end

		RSHI:
		begin
			C = A >> B;
			if (C == 0)
				Zero = 1;
			else
				Zero = 0;
			
			Low = 1'b0;
			Negative = 1'b0;
			Flag = 1'b0;
			Carry = 1'b0;
		end

		ALSH:
		begin
			C = A << B;
			if (C == 0)
				Zero = 1;
			else
				Zero = 0;
			
			Low = 1'b0;
			Negative = 1'b0;
			Flag = 1'b0;
			Carry = 1'b0;
		end

		ARSH:
		begin
			C = $signed(A) >>> B[3:0];
			if (C == 0)
				Zero = 1;
			else
				Zero = 0;
			
			Low = 1'b0;
			Negative = 1'b0;
			Flag = 1'b0;
			Carry = 1'b0;
		end

		NOP:
		begin
			C = 16'b0000000000000000;
			Carry = 1'b0;
			Flag = 1'b0;
			Low = 1'b0;
			Negative = 1'b0;
			Zero = 1'b0;
		end

		default:
		begin
			C = 16'b0000000000000000;
			Carry = 1'b0;
			Flag = 1'b0;
			Low = 1'b0;
			Negative = 1'b0;
			Zero = 1'b0;
		end

		endcase
	end

endmodule
