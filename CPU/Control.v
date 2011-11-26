`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    14:32:05 10/06/2011
// Design Name:
// Module Name:    Control
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
module Control(
	input 		[17:0] 	instruction,
	input 		 [2:0] 	flags,
	output reg 	 [3:0] 	ALUOp,
	output reg			WriteEn1,
	output reg			WriteEn2,
	output reg 	[15:0] 	immediate,
	output reg 	[22:0] 	BuffCtrl,
	output reg 	 [3:0] 	DestSel,
	output reg   [3:0]	DestSel2,
	output reg 	 [3:0] 	SrcSel,
	output reg 			FlagWrite,
	output reg 			MemWrite,
	output reg 			MemRead,
	output reg	[15:0]	Addr,
	output reg			ret
    );

	`include "..\ALU\opcodesLOL.v"
	`include "InstructionTypes.v"

	//translate flags for easy reading
	wire Low;
	wire Negative;
	wire Zero;
	assign Low = flags[2];
	assign Negative = flags[1];
	assign Zero = flags[0];

	/* Control flow is outlined in comments */
	reg [2:0] instType;

	// Intruction fetch and $PC++ is automatic
		// nothing to do, not doing anything

	// Top Level Decode
	always@(*) begin
		if (instruction[17:16] == 2'b00) begin
			// N-type (normal)
			if (instruction[15:12] == 4'b0000) begin
				// I-Capable with no I
				instType <= N0000;
			end
			else if (instruction[15:12] == 4'b0001) begin
				// I-Incapable
				instType <= N0001;
			end
			else begin
				// I-Capable with I
				instType <= N0000I;
			end
		end
		// S-Type (special)
		else if (instruction[17:16] == 2'b01 || instruction[17:16] == 2'b10) begin
			// 14-Bit immediate instructions
			instType <= S14I;
		end
		else begin // 11
			if (instruction[17:14] == 4'b1100 || instruction[17:14] == 4'b1101 || instruction[17:14] == 4'b1110) begin
				// POP, PUSH, and PUSHI
				instType <= SPPP;
			end
			else if (instruction[17:14] == 4'b1111) begin
				// POP, PUSH, and PUSHI
				instType <= S1111;
			end else begin
				instType <= ERROR;
			end
		end
	end

	always@(*) begin
		// I-Capable with no immediate
		if (instType == N0000) begin
			ALUOp           <= instruction[7:4];
			DestSel         <= instruction[11:8];
			DestSel2        <= instruction[11:8];
			SrcSel          <= instruction[3:0];
			BuffCtrl[1]     <= 1;
			BuffCtrl[16]    <= 1;
			BuffCtrl[0]     <= 0;
			BuffCtrl[5:4]   <= 2'd0;
			BuffCtrl[15:8]  <= 8'd0;
			BuffCtrl[22:17] <= 6'd0;
			MemWrite        <= 0;
			immediate       <= 16'd0;
			Addr            <= 0;
			MemRead         <= 0;
			ret             <= 0;

			if (instruction[7:4] == ADD ||
				instruction[7:4] == SUB ||
				instruction[7:4] == AND ||
				instruction[7:4] == OR ||
				instruction[7:4] == XOR ||
				instruction[7:4] == NOT ||
				instruction[7:4] == LSH ||
				instruction[7:4] == RSH ||
				instruction[7:4] == FMUL ||
				instruction[7:4] == ARSH) begin
				//ADD-ARSH
				BuffCtrl[6]  <= 0;
				BuffCtrl[7]  <= 0;
				FlagWrite    <= 1;
				if (instruction[11:8] == 12 || instruction[11:8] == 13) begin
					WriteEn1    <= 0;
					WriteEn2    <= 1;
					BuffCtrl[3] <= 1;
					BuffCtrl[2] <= 0;
				end else begin
					WriteEn1    <= 1;
					WriteEn2    <= 0;
					BuffCtrl[2] <= 1;
					BuffCtrl[3] <= 0;
				end
			end

			else if (instruction[7:4] == CMP ||
				instruction[7:4] == CMPR) begin
				//Compares which should not write back
				BuffCtrl[2]  <= 0;
				BuffCtrl[3]  <= 0;
				FlagWrite    <= 1;
				WriteEn1    <= 0;
				WriteEn2    <= 0;
				BuffCtrl[6] <= 0;
				BuffCtrl[7] <= 0;
			end

			else if (instruction[7:4] == MUL) begin
				BuffCtrl[3] <= 0;
				BuffCtrl[6] <= 0;
				BuffCtrl[7] <= 0;
				if (instruction[11:8] == 12) begin
					FlagWrite	<= 1;
					WriteEn1    <= 1;
					WriteEn2    <= 1;
					BuffCtrl[21]<= 1;
					BuffCtrl[2] <= 1;
				end else begin
					FlagWrite	<= 0;
					WriteEn1    <= 0;
					WriteEn2    <= 0;
					BuffCtrl[21]<= 0;
					BuffCtrl[2] <= 0;
				end
			end

			else if (instruction[7:4] == MOVR) begin
				//MOVR
				BuffCtrl[2] <= 0;
				BuffCtrl[3] <= 0;
				FlagWrite   <= 0;
				if (instruction[11:8] == 12 || instruction[11:8] == 13) begin
					WriteEn1    <= 0;
					WriteEn2    <= 1;
					BuffCtrl[7] <= 1;
					BuffCtrl[6] <= 0;
				end else begin
					WriteEn1    <= 1;
					WriteEn2    <= 0;
					BuffCtrl[6] <= 1;
					BuffCtrl[7] <= 0;
				end
			end
			else begin
				BuffCtrl[2] <= 0;
				BuffCtrl[3] <= 0;
				FlagWrite   <= 0;
				WriteEn1    <= 0;
				WriteEn2    <= 0;
				BuffCtrl[6] <= 0;
				BuffCtrl[7] <= 0;
			end
		end

		// I-Incapable
		else if (instType == N0001) begin
			ALUOp           <= instruction[7:4];
			DestSel         <= instruction[11:8];
			DestSel2        <= instruction[11:8];
			SrcSel          <= instruction[3:0];
			BuffCtrl[1]     <= 1;
			BuffCtrl[16]    <= 1;
			BuffCtrl[0]     <= 0;
			BuffCtrl[7:2]   <= 6'd0;
			BuffCtrl[9]     <= 0;
			BuffCtrl[11]    <= 0;
			BuffCtrl[15:14] <= 2'd0;
			BuffCtrl[22:17] <= 6'd0;
			immediate       <= 16'd0;
			FlagWrite       <= 0;
			Addr            <= 16'd0;
			ret             <= 0;

			if (instruction[7:4] == MOVMR) begin
				//MOVMR:
				MemWrite     <= 0;
				MemRead      <= 1;
				BuffCtrl[8]  <= 1;
				BuffCtrl[10] <= 0;
				if (instruction[11:8] == 12 || instruction[11:8] == 13) begin
					WriteEn1     <= 0;
					WriteEn2     <= 1;
					BuffCtrl[13] <= 1;
					BuffCtrl[12] <= 0;
				end else begin
					WriteEn1     <= 1;
					WriteEn2     <= 0;
					BuffCtrl[12] <= 1;
					BuffCtrl[13] <= 0;
				end
			end

			else if (instruction[7:4] == MOVRM) begin
				//MOVRM:
				MemRead       <= 0;
				MemWrite      <= 1;
				BuffCtrl[8]   <= 1;
				BuffCtrl[10]  <= 1;
				BuffCtrl[12]  <= 0;
				BuffCtrl[13]  <= 0;
				WriteEn1      <= 0;
				WriteEn2      <= 0;
			end
			else begin
				MemRead       <= 0;
				MemWrite      <= 0;
				BuffCtrl[8]   <= 0;
				BuffCtrl[10]  <= 0;
				BuffCtrl[12]  <= 0;
				BuffCtrl[13]  <= 0;
				WriteEn1      <= 0;
				WriteEn2      <= 0;
			end
		end

		// I-Capable with immediate
		else if (instType == N0000I) begin
			ALUOp           <= instruction[15:12];
			DestSel         <= instruction[11:8];
			DestSel2        <= instruction[11:8];
			SrcSel          <= instruction[11:8];
			BuffCtrl[0]     <= 1;
			BuffCtrl[16]    <= 1;
			BuffCtrl[1]     <= 0;
			BuffCtrl[15:6]  <= 10'd0;
			BuffCtrl[22:17] <= 6'd0;
			MemWrite        <= 0;
			immediate       <= {8'd0,instruction[7:0]};
			Addr            <= 0;
			MemRead         <= 0;
			ret             <= 0;

			if (instruction[15:12] == ADD ||
				instruction[15:12] == SUB ||
				instruction[15:12] == AND ||
				instruction[15:12] == OR ||
				instruction[15:12] == XOR ||
				instruction[15:12] == NOT ||
				instruction[15:12] == LSH ||
				instruction[15:12] == RSH ||
				instruction[15:12] == ARSH) begin
				//ADD-ARSH
				BuffCtrl[5:4]   <= 2'b0;
				FlagWrite       <= 1;
				if (instruction[11:8] == 12 || instruction[11:8] == 13) begin
					WriteEn1    <= 0;
					WriteEn2    <= 1;
					BuffCtrl[3] <= 1;
					BuffCtrl[2] <= 0;
				end else begin
					WriteEn1    <= 1;
					WriteEn2    <= 0;
					BuffCtrl[2] <= 1;
					BuffCtrl[3] <= 0;
				end
			end

			else if (instruction[15:12] == CMP ||
				instruction[15:12] == CMPR) begin
				//Compares which should not write back
				BuffCtrl[5:4] <= 2'b0;
				FlagWrite     <= 1;
				WriteEn1      <= 0;
				WriteEn2      <= 0;
				BuffCtrl[3]   <= 0;
				BuffCtrl[2]   <= 0;
			end

			else if (instruction[15:12] == MUL || instruction[15:12] == FMUL) begin
				//MUL-FMUL
				// TODO
				BuffCtrl[5]  <= 0;
				BuffCtrl[4]  <= 0;
				FlagWrite    <= 0;
				WriteEn1     <= 0;
				WriteEn2     <= 0;
				BuffCtrl[2]	 <= 0;
				BuffCtrl[3]	 <= 0;
			end

			else if (instruction[15:12] == MOVR) begin
				//MOVR
				BuffCtrl[2] <= 0;
				BuffCtrl[3] <= 0;
				FlagWrite   <= 0;
				if (instruction[11:8] == 12 || instruction[11:8] == 13) begin
					WriteEn1     <= 0;
					WriteEn2     <= 1;
					BuffCtrl[5]  <= 1;
					BuffCtrl[4]  <= 0;
				end else begin
					WriteEn1     <= 1;
					WriteEn2     <= 0;
					BuffCtrl[4]  <= 1;
					BuffCtrl[5]  <= 0;
				end
			end
			else begin
				BuffCtrl[2]  <= 0;
				BuffCtrl[3]  <= 0;
				FlagWrite    <= 0;
				WriteEn1     <= 0;
				WriteEn2     <= 0;
				BuffCtrl[4]	 <= 0;
				BuffCtrl[5]	 <= 0;
			end
		end



		/* Special instructions */

		// 14-Bit immediate instructions
		else if (instType == S14I) begin
			FlagWrite       <= 0;
			ALUOp           <= 4'd0;
			DestSel         <= 4'd15;
			BuffCtrl[1]	    <= 1;
			BuffCtrl[0]	    <= 0;
			BuffCtrl[7:2]   <= 6'd0;
			BuffCtrl[11]    <= 0;
			BuffCtrl[13]    <= 0;
			BuffCtrl[17]    <= 0;
			BuffCtrl[21]    <= 0;
			immediate       <= 16'd0;
			Addr            <= {2'd0,instruction[13:0]};

			if(instruction[17:14] == CALL) begin
				//CALL:
				BuffCtrl[19] <= 1;
				BuffCtrl[18] <= 1;
				BuffCtrl[15] <= 1;
				BuffCtrl[11] <= 1;
				BuffCtrl[8]  <= 1;
				BuffCtrl[20] <= 0;
				BuffCtrl[22] <= 0;
				BuffCtrl[16] <= 0;
				BuffCtrl[14] <= 0;
				BuffCtrl[12] <= 0;
				BuffCtrl[10] <= 0;
				BuffCtrl[9]  <= 0;
				WriteEn2     <= 1;
				DestSel2     <= 4'd13;
				SrcSel       <= 4'd13;
				WriteEn1     <= 0;
				MemWrite     <= 1;
				MemRead      <= 0;
				ret          <= 0;
			end

			else if(instruction[17:14] == MOVMRI) begin
				//MOVMRI:
				BuffCtrl[22] <= 0;
				BuffCtrl[12] <= 1;
				BuffCtrl[16] <= 1;
				BuffCtrl[15] <= 0;
				BuffCtrl[14] <= 0;
				BuffCtrl[10] <= 0;
				BuffCtrl[11] <= 0;
				BuffCtrl[8]  <= 0;
				BuffCtrl[9]  <= 1;
				BuffCtrl[20] <= 0;
				BuffCtrl[19] <= 0;
				BuffCtrl[18] <= 0;
				WriteEn2     <= 0;
				DestSel2     <= 0;
				SrcSel       <= 0;
				WriteEn1     <= 1;
				MemWrite     <= 0;
				MemRead      <= 1;
				ret          <= 0;
			end

			else if(instruction[17:14] == MOVRMI) begin
				//MOVRMI:
				BuffCtrl[22] <= 0;
				BuffCtrl[16] <= 1;
				BuffCtrl[10] <= 1;
				BuffCtrl[12] <= 0;
				BuffCtrl[15] <= 0;
				BuffCtrl[14] <= 0;
				BuffCtrl[11] <= 0;
				BuffCtrl[8]  <= 0;
				BuffCtrl[9]  <= 1;
				BuffCtrl[20] <= 0;
				BuffCtrl[19] <= 0;
				BuffCtrl[18] <= 0;
				WriteEn1     <= 0;
				MemWrite     <= 1;
				MemRead      <= 0;
				WriteEn2     <= 0;
				DestSel2     <= 0;
				SrcSel       <= 0;
				ret          <= 0;
			end

			else if(instruction[17:14] == RET) begin
				//RET:
				BuffCtrl[22] <= 1;
				BuffCtrl[20] <= 1;
				BuffCtrl[18] <= 0;
				BuffCtrl[14] <= 1;
				BuffCtrl[19] <= 0;
				BuffCtrl[12] <= 0;
				BuffCtrl[16] <= 1;  // run the next instruction (so as not to break the PC) which is guaranteed safe by the assembler
				BuffCtrl[15] <= 0;
				BuffCtrl[10] <= 0;
				BuffCtrl[11] <= 0;
				BuffCtrl[8]  <= 0;
				BuffCtrl[9]  <= 0;
				WriteEn1     <= 0;
				MemWrite     <= 0;
				MemRead      <= 1;
				WriteEn2     <= 0;
				DestSel2     <= 4'd13;
				SrcSel       <= 4'd13;
				ret          <= 1;
			end

			else if(instruction[17:13] == JL) begin
				//JL: low or negative
				MemRead      <= 0;
				BuffCtrl[8]  <= 0;
				BuffCtrl[9]  <= 1;
				BuffCtrl[20] <= 0;
				BuffCtrl[19] <= 0;
				BuffCtrl[18] <= 0;
				BuffCtrl[22] <= 0;
				WriteEn2     <= 0;
				DestSel2     <= 0;
				SrcSel       <= 0;
				ret          <= 0;
				if (Negative == 1'b1) begin
					BuffCtrl[15] <= 1;
					BuffCtrl[12] <= 0;
					BuffCtrl[16] <= 0;
					BuffCtrl[14] <= 0;
					BuffCtrl[10] <= 0;
					BuffCtrl[11] <= 0;
					WriteEn1     <= 0;
					MemWrite     <= 0;
				end
				else begin
					BuffCtrl[16] <= 1;
					BuffCtrl[12] <= 0;
					BuffCtrl[15] <= 0;
					BuffCtrl[14] <= 0;
					BuffCtrl[10] <= 0;
					BuffCtrl[11] <= 0;
					WriteEn1     <= 0;
					MemWrite     <= 0;
				end
			end

			else if(instruction[17:13] == JLE) begin
				//JLE: low, negative, or zero
				MemRead      <= 0;
				BuffCtrl[8]  <= 0;
				BuffCtrl[9]  <= 1;
				BuffCtrl[20] <= 0;
				BuffCtrl[19] <= 0;
				BuffCtrl[18] <= 0;
				BuffCtrl[22] <= 0;
				WriteEn2     <= 0;
				DestSel2     <= 0;
				SrcSel       <= 0;
				ret          <= 0;
				if (Negative == 1'b1 || Zero == 1'b1) begin
					BuffCtrl[15] <= 1;
					BuffCtrl[12] <= 0;
					BuffCtrl[16] <= 0;
					BuffCtrl[14] <= 0;
					BuffCtrl[10] <= 0;
					BuffCtrl[11] <= 0;
					WriteEn1     <= 0;
					MemWrite     <= 0;
				end else begin
					BuffCtrl[16] <= 1;
					BuffCtrl[12] <= 0;
					BuffCtrl[15] <= 0;
					BuffCtrl[14] <= 0;
					BuffCtrl[10] <= 0;
					BuffCtrl[11] <= 0;
					WriteEn1     <= 0;
					MemWrite     <= 0;
				end
			end

			else if(instruction[17:13] == JNE) begin
				//JNE: not zero
				MemRead      <= 0;
				BuffCtrl[8]  <= 0;
				BuffCtrl[9]  <= 1;
				BuffCtrl[20] <= 0;
				BuffCtrl[19] <= 0;
				BuffCtrl[18] <= 0;
				BuffCtrl[22] <= 0;
				WriteEn2     <= 0;
				DestSel2     <= 0;
				SrcSel       <= 0;
				ret          <= 0;
				if (!(Zero == 1'b1)) begin
					BuffCtrl[15] <= 1;
					BuffCtrl[12] <= 0;
					BuffCtrl[16] <= 0;
					BuffCtrl[14] <= 0;
					BuffCtrl[10] <= 0;
					BuffCtrl[11] <= 0;
					WriteEn1     <= 0;
					MemWrite     <= 0;
				end else begin
					BuffCtrl[16] <= 1;
					BuffCtrl[12] <= 0;
					BuffCtrl[15] <= 0;
					BuffCtrl[14] <= 0;
					BuffCtrl[10] <= 0;
					BuffCtrl[11] <= 0;
					WriteEn1     <= 0;
					MemWrite     <= 0;
				end
			end

			else if(instruction[17:13] == JE) begin
				//JE:
				MemRead      <= 0;
				BuffCtrl[8]  <= 0;
				BuffCtrl[9]  <= 1;
				BuffCtrl[20] <= 0;
				BuffCtrl[19] <= 0;
				BuffCtrl[18] <= 0;
				BuffCtrl[22] <= 0;
				WriteEn2     <= 0;
				DestSel2     <= 0;
				SrcSel       <= 0;
				ret          <= 0;
				if (Zero == 1'b1) begin
					BuffCtrl[15] <= 1;
					BuffCtrl[12] <= 0;
					BuffCtrl[16] <= 0;
					BuffCtrl[14] <= 0;
					BuffCtrl[10] <= 0;
					BuffCtrl[11] <= 0;
					WriteEn1     <= 0;
					MemWrite     <= 0;
				end else begin
					BuffCtrl[16] <= 1;
					BuffCtrl[12] <= 0;
					BuffCtrl[15] <= 0;
					BuffCtrl[14] <= 0;
					BuffCtrl[10] <= 0;
					BuffCtrl[11] <= 0;
					WriteEn1     <= 0;
					MemWrite     <= 0;
				end
			end
			else if(instruction[17:13] == J) begin
				//J:
				MemRead      <= 0;
				BuffCtrl[8]  <= 0;
				BuffCtrl[9]  <= 1;
				BuffCtrl[15] <= 1;
				BuffCtrl[12] <= 0;
				BuffCtrl[16] <= 0;
				BuffCtrl[14] <= 0;
				BuffCtrl[10] <= 0;
				BuffCtrl[11] <= 0;
				BuffCtrl[20] <= 0;
				BuffCtrl[19] <= 0;
				BuffCtrl[18] <= 0;
				BuffCtrl[22] <= 0;
				WriteEn1     <= 0;
				MemWrite     <= 0;
				WriteEn2     <= 0;
				DestSel2     <= 0;
				SrcSel       <= 0;
				ret          <= 0;
			end
			else if(instruction[17:13] == JBE) begin
				//JBE:
				MemRead      <= 0;
				BuffCtrl[8]  <= 0;
				BuffCtrl[9]  <= 1;
				BuffCtrl[20] <= 0;
				BuffCtrl[19] <= 0;
				BuffCtrl[18] <= 0;
				BuffCtrl[22] <= 0;
				WriteEn2     <= 0;
				DestSel2     <= 0;
				SrcSel       <= 0;
				ret          <= 0;
				if (Low == 1'b1 || Zero == 1'b1) begin
					BuffCtrl[15] <= 1;
					BuffCtrl[12] <= 0;
					BuffCtrl[16] <= 0;
					BuffCtrl[14] <= 0;
					BuffCtrl[10] <= 0;
					BuffCtrl[11] <= 0;
					WriteEn1     <= 0;
					MemWrite     <= 0;
				end else begin
					BuffCtrl[16] <= 1;
					BuffCtrl[12] <= 0;
					BuffCtrl[15] <= 0;
					BuffCtrl[14] <= 0;
					BuffCtrl[10] <= 0;
					BuffCtrl[11] <= 0;
					WriteEn1     <= 0;
					MemWrite     <= 0;
				end
			end
			else if(instruction[17:13] == JB) begin
				//JB:
				MemRead      <= 0;
				BuffCtrl[8]  <= 0;
				BuffCtrl[9]  <= 1;
				BuffCtrl[20] <= 0;
				BuffCtrl[19] <= 0;
				BuffCtrl[18] <= 0;
				BuffCtrl[22] <= 0;
				WriteEn2     <= 0;
				DestSel2     <= 0;
				SrcSel       <= 0;
				ret          <= 0;
				if (Low == 1'b1) begin
					BuffCtrl[15] <= 1;
					BuffCtrl[12] <= 0;
					BuffCtrl[16] <= 0;
					BuffCtrl[14] <= 0;
					BuffCtrl[10] <= 0;
					BuffCtrl[11] <= 0;
					WriteEn1     <= 0;
					MemWrite     <= 0;
				end else begin
					BuffCtrl[16] <= 1;
					BuffCtrl[12] <= 0;
					BuffCtrl[15] <= 0;
					BuffCtrl[14] <= 0;
					BuffCtrl[10] <= 0;
					BuffCtrl[11] <= 0;
					WriteEn1     <= 0;
					MemWrite     <= 0;
				end
			end
			else begin
				BuffCtrl[16] <= 1;
				BuffCtrl[12] <= 0;
				BuffCtrl[15] <= 0;
				BuffCtrl[14] <= 0;
				BuffCtrl[10] <= 0;
				BuffCtrl[11] <= 0;
				BuffCtrl[8]  <= 0;
				BuffCtrl[9]  <= 1;
				BuffCtrl[20] <= 0;
				BuffCtrl[19] <= 0;
				BuffCtrl[18] <= 0;
				BuffCtrl[22] <= 0;
				WriteEn1     <= 0;
				MemWrite     <= 0;
				MemRead      <= 0;
				WriteEn2     <= 0;
				DestSel2     <= 0;
				SrcSel       <= 0;
				ret          <= 0;
			end
		end

		// POP, PUSH, and PUSHI
		else if (instType == SPPP) begin
			FlagWrite       <= 0;
			BuffCtrl[16]	<= 1;
			BuffCtrl[10]    <= 1;
			BuffCtrl[7:2]   <= 6'd0;
			BuffCtrl[9]     <= 0;
			BuffCtrl[11]    <= 0;
			BuffCtrl[15:13] <= 3'd0;
			BuffCtrl[17]    <= 0;
			BuffCtrl[21]    <= 0;
			immediate       <= 16'd0;
			Addr            <= 16'd0;
			ALUOp           <= 4'd0;
			ret             <= 0;

			if(instruction[17:14] == POP) begin
				//POP:
				SrcSel      <= 13;
				MemWrite    <= 0;
				if (instruction[13:10] == 13 || instruction[13:10] == 12) begin
					// NEVER POP INTO THE STACK POINTER!
					WriteEn1        <= 0;
					WriteEn2        <= 0;
					DestSel         <= 0;
					DestSel2        <= 0;
					BuffCtrl[0]	    <= 0;
					BuffCtrl[1]	    <= 0;
					BuffCtrl[8]	    <= 0;
					BuffCtrl[12]    <= 0;
					BuffCtrl[22]    <= 0;
					BuffCtrl[20:18] <= 3'd0;
					MemRead         <= 0;
				end
				else begin
					WriteEn1     	<= 1;                	// Write to operand reg
					WriteEn2     	<= 0;                	// Write to SP (not anymore)
					DestSel      	<= instruction[13:10];   // Operand reg
					DestSel2     	<= 13;               	// SP to decrement
					BuffCtrl[1]	 	<= 1;
					BuffCtrl[19] 	<= 0;
					BuffCtrl[18] 	<= 0;
					BuffCtrl[8]	    <= 0;	
					BuffCtrl[0]	 	<= 0;
					BuffCtrl[12] 	<= 0;
					BuffCtrl[20] 	<= 0;
					BuffCtrl[22]    <= 0;
					MemRead         <= 1;
				end
			end

			else if(instruction[17:14] == PUSH) begin
				//PUSH:
				SrcSel       <= 13;
				MemWrite     <= 1;
				WriteEn1     <= 0;
				WriteEn2     <= 1;                // Write to SP
				DestSel      <= instruction[13:10];
				DestSel2     <= 13;               // SP to increment
				BuffCtrl[1]	 <= 1;
				BuffCtrl[20] <= 1;
				BuffCtrl[18] <= 1;
				BuffCtrl[8]	 <= 1;
				BuffCtrl[0]	 <= 0;
				BuffCtrl[12] <= 0;
				BuffCtrl[19] <= 0;
				BuffCtrl[22] <= 0;
				MemRead      <= 0;
			end

			else if(instruction[17:14] == PUSHI) begin
				//PUSHI:
				SrcSel       <= 13;
				MemWrite     <= 1;
				WriteEn1     <= 0;
				WriteEn2     <= 1;                // Write to SP
				DestSel      <= 0;
				DestSel2     <= 13;               // SP to increment
				BuffCtrl[0]	 <= 1;
				BuffCtrl[18] <= 1;
				BuffCtrl[20] <= 1;
				BuffCtrl[8]	 <= 1;
				BuffCtrl[1]	 <= 0;
				BuffCtrl[12] <= 0;
				BuffCtrl[19] <= 0;
				BuffCtrl[22] <= 0;
				MemRead      <= 0;
			end
			else begin
				SrcSel       <= 0;
				MemWrite     <= 0;
				WriteEn1     <= 0;
				WriteEn2     <= 0;
				DestSel      <= 0;
				DestSel2     <= 0;
				BuffCtrl[0]	 <= 0;
				BuffCtrl[18] <= 0;
				BuffCtrl[20] <= 0;
				BuffCtrl[1]	 <= 0;
				BuffCtrl[8]	 <= 0;
				BuffCtrl[12] <= 0;
				BuffCtrl[19] <= 0;
				BuffCtrl[22] <= 0;
				MemRead      <= 0;
			end
		end


		// INCR and DECR
		else if (instType == S1111) begin
			FlagWrite       <= 0;
			BuffCtrl[16]    <= 1;
			BuffCtrl[15:0]  <= 16'd0;
			BuffCtrl[21]    <= 0;
			BuffCtrl[22]    <= 0;
			immediate       <= 16'd0;
			Addr            <= 16'd0;
			ALUOp           <= 0;
			MemWrite        <= 0;
			MemRead         <= 0;
			SrcSel          <= instruction[11:8];
			DestSel         <= instruction[11:8];
			DestSel2        <= instruction[11:8];
			ret             <= 0;

			if(instruction[17:12] == INCR) begin
				//INCR:
				if (instruction[11:8] == 12 || instruction[11:8] == 13) begin
					WriteEn1     <= 0;
					WriteEn2     <= 1;
					BuffCtrl[18] <= 1;
					BuffCtrl[20] <= 1;
					BuffCtrl[19] <= 0;
					BuffCtrl[17] <= 0;
				end else begin
					WriteEn1     <= 1;
					WriteEn2     <= 0;
					BuffCtrl[17] <= 1;
					BuffCtrl[20] <= 1;
					BuffCtrl[18] <= 0;
					BuffCtrl[19] <= 0;
				end
			end

			else if(instruction[17:12] == DECR) begin
				//DECR:
				if (instruction[11:8] == 12 || instruction[11:8] == 13) begin
					WriteEn1     <= 0;
					WriteEn2     <= 1;
					BuffCtrl[19] <= 1;
					BuffCtrl[18] <= 1;
					BuffCtrl[17] <= 0;
					BuffCtrl[20] <= 0;
				end else begin
					WriteEn1   	 <= 1;
					WriteEn2     <= 0;
					BuffCtrl[19] <= 1;
					BuffCtrl[17] <= 1;
					BuffCtrl[18] <= 0;
					BuffCtrl[20] <= 0;
				end
			end
			else begin
				WriteEn1     <= 0;
				WriteEn2     <= 0;
				BuffCtrl[17] <= 0;
				BuffCtrl[18] <= 0;
				BuffCtrl[19] <= 0;
				BuffCtrl[20] <= 0;
			end
		end
		else begin
			ALUOp 	  <= 4'd0;
			WriteEn1  <= 0;
			WriteEn2  <= 0;
			immediate <= 16'd0;
			BuffCtrl[22:17]  <= 6'd0;
			BuffCtrl[16]    <= 1;
			BuffCtrl[15:0]  <= 16'd0;
			DestSel	  <= 4'd0;
			DestSel2  <= 4'd0;
			SrcSel	  <= 4'd0;
			FlagWrite <= 0;
			MemWrite  <= 0;
			MemRead   <= 0;
			Addr	  <= 16'd0;
			ret       <= 0;
		end
	end
endmodule
