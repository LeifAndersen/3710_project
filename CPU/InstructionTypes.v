	parameter N0000		= 3'd0; // I-Capable with no immediate
	parameter N0001		= 3'd1; // I-Incapable
	parameter N0000I	= 3'd2;	// I-Capable with immediate
	parameter S14I		= 3'd3;	// 14-Bit immediate instructions (0100-1011)
	parameter SPPP		= 3'd4;	// POP, PUSH, and PUSHI
	parameter S1111		= 3'd5;	// INCR and DECR
	parameter ERROR		= 3'd7;