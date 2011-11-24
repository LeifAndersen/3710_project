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
	input 				full, 					//full signal from queue.
    output reg 	[15:0] 	CPU_Data_Out,
    output reg 	[17:0] 	CPU_Instruction_Out,
    output reg 	[15:0] 	Main_Data_Out,
    output reg 	[15:0] 	Main_Data_Addr,
	output reg			Main_Data_Wr_En,
	output reg	[15:0]	Main_Instruction_Addr,
	output reg	[15:0]	PRAM_Out,
	output reg			PRAM_Wr_En,
	output reg	[15:0]  LCDReg_Data,
	output reg			LCDReg_Wr_En,
	input 		[15:0]	FORWARD_In,
	input 		[15:0]	BACKWARD_In,
	input 		[15:0]	TURNRIGHT_In,
	input	 	[15:0]	TURNLEFT_In,
	input 		[15:0]	SHOOT_In,
	input		[15:0]	RESET_In,
	output reg			Keyboard_reset
    );

	// bounds of the two blockrams behind the controller
	parameter PRAM	   = 14'b11_1111_1111_1111;	// vga
	parameter FORWARD  = 14'b11_1111_1111_1110;	// W key
	parameter BACKWARD = 14'b11_1111_1111_1101;	// S key
	parameter TURNRIGHT= 14'b11_1111_1111_1100;	// D key
	parameter TURNLEFT = 14'b11_1111_1111_1011;	// A key
	parameter SHOOT    = 14'b11_1111_1111_1010;	// Spacebar
	parameter RESET    = 14'b11_1111_1111_1001;	// Esc
	parameter LCD      = 14'b11_1111_1111_1000;	// LCD Screen

	always@(*) begin
		// Instruction memory is always in one block
		CPU_Instruction_Out <= Main_Instruction_In;
		Main_Instruction_Addr <= CPU_Instruction_Addr;
		// Always send the write data and address, but only write to one or the other
		Main_Data_Out <= CPU_Data_In;
		Main_Data_Addr <= CPU_Data_Addr;
		//PRAM_Out = CPU_Data_In;
		LCDReg_Data <= CPU_Data_In;

		if (CPU_Data_Addr == LCD) begin
			// Go to register for that.
			// Memory-Mapped I/O will require additonal ports per device added.  These ports are not on the CPU side.
			CPU_Data_Out <= 0;
			Main_Data_Wr_En <= 0;
			PRAM_Wr_En <= 0;
			LCDReg_Wr_En <= CPU_Data_Wr_En;
			PRAM_Out <= 0;
			Keyboard_reset <= 0;
		end
		else if (CPU_Data_Addr == PRAM) begin
			// PRAM Access
			Main_Data_Wr_En <= 0;
			PRAM_Wr_En <= CPU_Data_Wr_En;
			LCDReg_Wr_En <= 0;
			if (!CPU_Data_Wr_En) begin
				CPU_Data_Out <= {15'b0, full};
				PRAM_Out <= 0;
			end
			else begin
				PRAM_Out <= CPU_Data_In;
				CPU_Data_Out <= 0;
			end
			Keyboard_reset <= 0;
		end
		else if (CPU_Data_Addr == FORWARD) begin
			// forward key
			Main_Data_Wr_En <= 0;
			PRAM_Wr_En <= CPU_Data_Wr_En;
			LCDReg_Wr_En <= 0;
			PRAM_Out <= 0;
			if (!CPU_Data_Wr_En) begin
				CPU_Data_Out <= FORWARD_In;
				Keyboard_reset <= 0;
			end
			else begin
				CPU_Data_Out <= 0;
				Keyboard_reset <= !(!(CPU_Data_In));
			end
		end
		else if (CPU_Data_Addr == BACKWARD) begin
			// backaward key
			Main_Data_Wr_En <= 0;
			PRAM_Wr_En <= CPU_Data_Wr_En;
			LCDReg_Wr_En <= 0;
			PRAM_Out <= 0;
			if (!CPU_Data_Wr_En) begin
				CPU_Data_Out <= BACKWARD_In;
				Keyboard_reset <= 0;
			end
			else begin
				CPU_Data_Out <= 0;
				Keyboard_reset <= !(!(CPU_Data_In));
			end
		end
		else if (CPU_Data_Addr == TURNRIGHT) begin
			// turnright key
			Main_Data_Wr_En <= 0;
			PRAM_Wr_En <= CPU_Data_Wr_En;
			LCDReg_Wr_En <= 0;
			PRAM_Out <= 0;
			if (!CPU_Data_Wr_En) begin
				CPU_Data_Out <= TURNRIGHT_In;
				Keyboard_reset <= 0;
			end
			else begin
				CPU_Data_Out <= 0;
				Keyboard_reset <= !(!(CPU_Data_In));
			end
		end
		else if (CPU_Data_Addr == TURNLEFT) begin
			// turnleft key
			Main_Data_Wr_En <= 0;
			PRAM_Wr_En <= CPU_Data_Wr_En;
			LCDReg_Wr_En <= 0;
			PRAM_Out <= 0;
			if (!CPU_Data_Wr_En) begin
				CPU_Data_Out <= TURNLEFT_In;
				Keyboard_reset <= 0;
			end
			else begin
				CPU_Data_Out <= 0;
				Keyboard_reset <= !(!(CPU_Data_In));
			end
		end
		else if (CPU_Data_Addr == SHOOT) begin
			// Shoot keyboard key
			Main_Data_Wr_En <= 0;
			PRAM_Wr_En <= CPU_Data_Wr_En;
			LCDReg_Wr_En <= 0;
			PRAM_Out <= 0;
			if (!CPU_Data_Wr_En) begin
				CPU_Data_Out <= SHOOT_In;
				Keyboard_reset <= 0;
			end
			else begin
				CPU_Data_Out <= 0;
				Keyboard_reset <= !(!(CPU_Data_In));
			end
		end
		else if (CPU_Data_Addr == RESET) begin
			// Reset keybaord key
			CPU_Data_Out <= 0;
			Main_Data_Wr_En <= 0;
			PRAM_Wr_En <= CPU_Data_Wr_En;
			LCDReg_Wr_En <= 0;
			PRAM_Out <= 0;
			if (!CPU_Data_Wr_En) begin
				CPU_Data_Out <= RESET_In;
				Keyboard_reset <= 0;
			end
			else begin
				CPU_Data_Out <= 0;
				Keyboard_reset <= !(!(CPU_Data_In));
			end
		end
		else begin
			// Main Memory Access
			CPU_Data_Out <= Main_Data_In;
			Main_Data_Wr_En <= CPU_Data_Wr_En;
			PRAM_Wr_En <= 0;
			LCDReg_Wr_En <= 0;
			PRAM_Out <= 0;
			Keyboard_reset <= 0;
		end

	end

endmodule
