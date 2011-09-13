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
		output reg Carry,
		output reg [15:0] C,
		output reg Flag,
		output reg Low,
		output reg Negative,
		output reg Zero
	);

	parameter ADD      = 8'd0;
	parameter ADDU     = 8'd1;
	parameter ADDI     = 8'd2;
	parameter ADDUI    = 8'd3;
	parameter ADDC     = 8'd4;
	parameter ADDCU    = 8'd5;
	parameter ADDCUI   = 8'd6;
	parameter ADDCI    = 8'd7;
	parameter SUB      = 8'd8;
	parameter SUBI     = 8'd9;
	parameter CMP      = 8'd10;
	parameter CMPI     = 8'd11;
	parameter AND      = 8'd12;
	parameter OR       = 8'd13;
	parameter XOR      = 8'd14;
	parameter NOT      = 8'd15;
	parameter LSH      = 8'd16;
	parameter LSHI     = 8'd17;
	parameter RSH      = 8'd18;
	parameter RSHI     = 8'd19;
	parameter ALSH     = 8'd20;
	parameter ARSH     = 8'd21;
	parameter NOP      = 8'd22;


	always@(*) begin
		case(Opcode)
		ADD:
		begin
			C = A + B;
			Zero = (C == 0);
				
			Flag = (~A[15]&~B[15]&C[15]) | (A[15] & B[15] & ~C[15]);
			
			Carry = 0;
			Low = 0;
			Negative = 0;
		end

		ADDU:
		begin
			{Carry, C} = A + B;
			Zero = (C == 0);
			
			Flag = 0;
			Low = 0;
			Negative = 0;
		end

		ADDI:
		begin
			C = A + B;
			Zero = (C == 0);
				
			Flag = (~A[15]&~B[15]&C[15]) | (A[15] & B[15] & ~C[15]);
			
			Carry = 0;
			Low = 0;
			Negative = 0;
		end

		ADDUI:
		begin
			{Carry, C} = A + B;
			Zero = (C == 0);
			
			Flag = 0;
			Low = 0;
			Negative = 0;
		end

		//This operation can be deleted.
		ADDC:
		begin
			C = A + B + Carry;
			Zero = (C == 0);
			
			//If we keep, this needs to be changed.
			Flag = (~A[15]&~B[15]&C[15]) | (A[15] & B[15] & ~C[15]);
			
			Carry = 0;
			Low = 0;
			Negative = 0;
		end

		ADDCU:
		begin
			{Carry, C} = A + B + Carry;
			Zero = (C == 0);
			
			Flag = 0;
			Low = 0;
			Negative = 0;
		end

		ADDCUI:
		begin
			{Carry, C} = A + B + Carry;
			Zero = (C == 0);
			
			Flag = 0;
			Low = 0;
			Negative = 0;
		end

		//Can probly be deleted.
		ADDCI:
		begin

		end

		SUB:
		begin
			C = A-B;
			Zero = (C == 0);
			
			//Currently using -B[15], maybe a way to say D = -B[15], then use D.
			Flag = (~A[15]&~(-B[15])&C[15]) | (A[15] & (-B[15]) & ~C[15]);
			
			Low = 0;
			Carry = 0;
			Negative = 0;
		end

		SUBI:
		begin
			C = A-B;
			Zero = (C == 0);
			
			//Currently using -B[15], maybe a way to say D = -B[15], then use D.
			Flag = (~A[15]&~(-B[15])&C[15]) | (A[15] & (-B[15]) & ~C[15]);
			
			Low = 0;
			Carry = 0;
			Negative = 0;
		end

		CMP:
		begin
			Low = (A<B) ? 1'b1 : 1'b0;
			Negative = ($signed(A)<$signed(B)) ? 1'b1 : 1'b0;
			Zero = (A==B) ? 1'b1 : 1'b0;
			Carry = 1'bx;
			C = 16'bxxxxxxxxxxxxxxxx;
		end

		CMPI:
		begin
			Low = ($signed(A)<$signed(B)) ? 1'b1 : 1'b0;
			Flag = 1'dx;
			Zero = (A==B) ? 1'b1 : 1'b0;
			Carry = 1'bx;
			C = 16'bxxxxxxxxxxxxxxxx;
		end

		AND:
		begin
			C = A&B;
		end

		OR:
		begin
			C = A|B;
		end

		XOR:
		begin
			C = A^B;
		end

		NOT:
		begin
			C = !A;
		end

		LSH:
		begin
			C = A << B;
		end

		LSHI:
		begin
			C = A << B;
		end

		RSH:
		begin
			C = A >> B;
		end

		RSHI:
		begin
			C = A >> B;
		end

		ALSH:
		begin
			C = A <<< B;
		end

		ARSH:
		begin
			C = A >>> B;
		end

		NOP:
		begin
			C = 16'dx;
			Carry = 1'bx;
			Flag = 1'bx;
			Low = 1'bx;
			Negative = 1'bx;
			Zero = 1'bx;
		end

		default:
		begin
			C = 16'dx;
			Carry = 1'bx;
			Flag = 1'bx;
			Low = 1'bx;
			Negative = 1'bx;
			Zero = 1'bx;
		end

		endcase
	end

endmodule
