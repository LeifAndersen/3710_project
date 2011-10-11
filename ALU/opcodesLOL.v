parameter IMMType	= 4'd0;
parameter RType		= 4'd1;

// 2-12 are ALUType instructions; uses primary OP 0000
parameter ALUStart	= 4'd2;		// these must be kept up to date.
parameter ALUStop	= 4'd12;
	
parameter ADD		= 4'd2;
parameter SUB		= 4'd3;
parameter CMP		= 4'd4;
parameter TEST		= 4'd5;
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