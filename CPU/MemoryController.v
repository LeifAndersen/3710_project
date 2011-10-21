`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:43:19 10/20/2011 
// Design Name: 
// Module Name:    MemoryController 
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
module MemoryController(
    input 		[15:0] 	CPU_Data_In,
    input 		[15:0] 	CPU_Data_Addr,
    input 				CPU_Data_Wr_En,
	input		[15:0]	CPU_Instruction_Addr,
    input 		[15:0] 	Main_Data_In,
    input 		[17:0] 	Main_Instruction_In,
	input		[15:0]	PRAM_In,
    output reg 	[15:0] 	CPU_Data_Out,
    output reg 	[17:0] 	CPU_Instruction_Out,
    output reg 	[15:0] 	Main_Data_Out,
    output reg 	[15:0] 	Main_Data_Addr,
	output reg			Main_Data_Wr_En,
	output reg	[15:0]	Main_Instruction_Addr,
	output reg	[15:0]	PRAM_Out,
	output reg	[15:0]	PRAM_Addr,
	output reg			PRAM_Wr_En
    );
	// bounds of the two blockrams behind the controller
	parameter MAIN_TOP = 14'b11_1111_1111_1111;	// 0x3FFF
	parameter MAIN_BOT = 14'b00_1000_0000_0000;	// 0x0800
	parameter PRAM_TOP = 14'b00_0111_1111_1111;	// 0x07FF
	parameter PRAM_BOT = 14'b00_0000_0000_0000;	// 0x0000
	parameter SOME_I_O = 14'b10_0000_0000_0000;	// Some hardcoded Memory-Mapped I/O
	
	always@(*) begin
		// Instruction memory is always in one block
		CPU_Instruction_Out = Main_Instruction_In;
		Main_Instruction_Addr = CPU_Instruction_Addr;
		// Always send the write data and address, but only write to one or the other
		Main_Data_Out = CPU_Data_In;
		Main_Data_Addr = CPU_Data_Addr;
		PRAM_Out = CPU_Data_In;
		PRAM_Addr = CPU_Data_Addr;
		
		// Data Memory split between Main, PRAM, and Memory-Mapped I/O
		if (CPU_Data_Addr > MAIN_TOP && CPU_Data_Addr < MAIN_BOT) begin
			// switch between Main and Memory_mapped
			if(CPU_Data_Addr == SOME_I_O) begin
				// Go to register for that.
				// Memory-Mapped I/O will require additonal ports per device added.  These ports are not on the CPU side.
				Main_Data_Wr_En = 0;
				PRAM_Wr_En = 0;
			end
			else begin
				// Main Memory Access
				CPU_Data_Out = Main_Data_In;
				Main_Data_Wr_En = CPU_Data_Wr_En;
				PRAM_Wr_En = 0;
			end
		end
		else if (CPU_Data_Addr > PRAM_TOP && CPU_Data_Addr < PRAM_BOT) begin
			// PRAM Access
			CPU_Data_Out = PRAM_In;
			Main_Data_Wr_En = 0;
			PRAM_Wr_En = CPU_Data_Wr_En;
		end
	end

endmodule
