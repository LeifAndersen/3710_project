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
    output reg 	[15:0] 	CPU_Data_Out,
    output reg 	[17:0] 	CPU_Instruction_Out,
    output reg 	[15:0] 	Main_Data_Out,
    output reg 	[15:0] 	Main_Data_Addr,
	output reg			Main_Data_Wr_En,
	output reg	[15:0]	Main_Instruction_Addr,
	output reg	[15:0]	PRAM_Out,
	output reg			PRAM_Wr_En,
	output reg	[15:0]  LCDReg_Data,
	output reg			LCDReg_Wr_En
    );
	// bounds of the two blockrams behind the controller
	parameter PRAM	   = 14'b00_0000_0000_0000;
	parameter SOME_I_O = 14'b10_0000_0000_0000;	// Some hardcoded Memory-Mapped I/O
	
	always@(*) begin
		// Instruction memory is always in one block
		CPU_Instruction_Out = Main_Instruction_In;
		Main_Instruction_Addr = CPU_Instruction_Addr;
		// Always send the write data and address, but only write to one or the other
		Main_Data_Out = CPU_Data_In;
		Main_Data_Addr = CPU_Data_Addr;
		PRAM_Out = CPU_Data_In;
		LCDReg_Data = CPU_Data_In;
		
		if(CPU_Data_Addr == SOME_I_O) begin
			// Go to register for that.
			// Memory-Mapped I/O will require additonal ports per device added.  These ports are not on the CPU side.
			CPU_Data_Out = 0;
			Main_Data_Wr_En = 0;
			PRAM_Wr_En = 0;
			LCDReg_Wr_En = CPU_Data_Wr_En;
		end
		else if (CPU_Data_Addr == PRAM) begin
			// PRAM Access
			CPU_Data_Out = 0;
			Main_Data_Wr_En = 0;
			PRAM_Wr_En = CPU_Data_Wr_En;
			LCDReg_Wr_En = 0;
		end
		else begin
			// Main Memory Access
			CPU_Data_Out = Main_Data_In;
			Main_Data_Wr_En = CPU_Data_Wr_En;
			PRAM_Wr_En = 0;
			LCDReg_Wr_En = 0;
		end

	end

endmodule
