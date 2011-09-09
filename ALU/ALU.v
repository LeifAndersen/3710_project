`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
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

//ADDC, ADDCU, ADDCUI, ADDCI, SUB, SUBI, CMP, CMPI, CMPU/I,
//AND, OR, XOR, NOT(?), LSH, LSHI, RSH, RSHI, ALSH, ARSH, NOP/WAIT

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
parameter CMPU/I   = 8'd12;
parameter AND      = 8'd13;
parameter OR       = 8'd14;
parameter XOR      = 8'd15;
parameter NOT      = 8'd16;
parameter LSH      = 8'd17;
parameter LSHI     = 8'd18;
parameter RSH      = 8'd19;
parameter RSHI     = 8'd20;
parameter ALSH     = 8'd21;
parameter ARSH     = 8'd22;
parameter NOP/WAIT = 8'd23;

module ALU(
	 input [15:0] A,
    input [15:0] B,
    input [7:0] Opcode,
    output Carry,
    output [15:0] Result,
    output Flag,
    output Low,
    output Negative,
    output Zero
    );

always@(*)
begin
case(opcode)
begin

ADD:
begin
	C = A + B;
	Zero = (C == 0);
		
	Flag = (~A[15]&~B[15]&C[15]) | (A[15] & B[15] & ~C[15]);
	
	Cary = 0;
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
	
	Cary = 0;
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
	
	Cary = 0;
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
	
	Less = 0;
	Carry = 0;
	Negative = 0;
end

SUBI:
begin
	C = A-B;
	Zero = (C == 0);
	
	//Currently using -B[15], maybe a way to say D = -B[15], then use D.
	Flag = (~A[15]&~(-B[15])&C[15]) | (A[15] & (-B[15]) & ~C[15]);
	
	Less = 0;
	Carry = 0;
	Negative = 0;
end

CMP:
begin
	Low = $signed(A)<$signed(B); //THIS ISN'T DONE (probly).
end

CMPI:
begin
end

CMPU/I:
begin
end

AND:
begin
end

OR:
begin
end

XOR:
begin
end

NOT:
begin
end

LSH:
begin
end

LSHI:
begin
end

RSH:
begin
end

RSHI:
begin
end

ALSH:
begin
end

ARSH:
begin
end

NOP/WAIT:
begin
end

end
end

endmodule
