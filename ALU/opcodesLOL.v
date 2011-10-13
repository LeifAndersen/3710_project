parameter IMMType	= 4'd0;
parameter RType		= 4'd1;

// 2-12 are ALUType instructions; uses primary OP 0000
parameter ALUStart	= 4'd2;		// these must be kept up to date.
parameter ALUStop	= 4'd12;
	
parameter ADD		= 4'd2;
parameter SUB		= 4'd3;
parameter CMP		= 4'd4;
parameter CMPR		= 4'd5;
parameter AND		= 4'd6;
parameter OR		= 4'd7;
parameter XOR		= 4'd8;
parameter NOT		= 4'd9;
parameter LSH		= 4'd10;
parameter RSH		= 4'd11;
parameter ARSH		= 4'd12;
	
// 13 and 14 are MULType instructions
parameter MULStart	= 4'd13;		// these must be kept up to date.
parameter MULStop	= 4'd14;

parameter MUL		= 4'd13;
parameter FMUL		= 4'd14;

// 15 is moves between registers including imm -> REG
parameter MOVR		= 4'd15;

// 2 and 3 Mov to and from memory; uses primary OP 0001
parameter MMOVStart	= 4'd2;
parameter MMOVStop	= 4'd3; 

parameter MOVMR		= 4'd2;
parameter MOVRM		= 4'd3;

// Specials
parameter CALL		= 4'b0100;
parameter MOVMRI	= 4'b0101;
parameter MOVRMI	= 4'b0110;
parameter RET		= 4'b0111;
parameter JL		= 4'b1000;
parameter JLE		= 4'b1001;
parameter JNE		= 4'b1010;
parameter JE		= 4'b1011;

parameter POP		= 4'b1100;
parameter PUSH		= 4'b1101;
parameter PUSHI		= 4'b1110;

parameter INCR		= 6'b111100;
parameter DECR		= 6'b111101;
