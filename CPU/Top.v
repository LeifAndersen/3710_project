`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:38:45 10/05/2011 
// Design Name: 
// Module Name:    Top 
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
module Top(
	input BTN_NORTH,
    input CLK_50MHZ,
    output [11:8] SF_D,
    output LCD_E,
    output LCD_RS,
    output LCD_RW
    );

	wire reset;
	assign reset = ~BTN_NORTH;

	// Buffers and wires
	wire [15:0] aBus;
	wire [15:0] bBus;
	wire [15:0] writeBus;
	wire [15:0] writeBus2;
	wire [15:0] pcWriteBus;
	wire [15:0] memWriteBus;
	wire [15:0] memAddrBus;
	wire [15:0] incrDecrBus;
	wire [15:0] regTo1;
	wire [15:0] immediate;
	wire [15:0] aluOut;
	wire [15:0] memDataOut;
	wire [15:0] pcPlus1;
	wire [15:0] specialAddr;
	wire [15:0] pc;
	wire [15:0] incrReg;
	wire [15:0] decrReg;
	wire [17:0] instruction;
	wire [20:0] buffCtrl;
	wire [14:12] buffCtrlP;
	wire  [3:0] aluOp;
	wire  [3:0] destSel;
	wire  [3:0] destSel2;
	wire  [3:0] srcSel;
	wire  [2:0] flags;
	wire  [2:0] flagsToControl;
	wire 		flagWrite;
	wire 		regWriteEn;
	wire 		regWriteEn2;
	wire 		memWriteEn;
    SixteenBuff buf0(   immediate,   buffCtrl[0], aBus);
    SixteenBuff buf1(      regTo1,   buffCtrl[1], aBus);
    SixteenBuff buf2(      aluOut,   buffCtrl[2], writeBus);
    SixteenBuff buf3(      aluOut,   buffCtrl[3], writeBus2);
    SixteenBuff buf4(        aBus,   buffCtrl[4], writeBus);
    SixteenBuff buf5(        aBus,   buffCtrl[5], writeBus2);
    SixteenBuff buf6(        bBus,   buffCtrl[6], writeBus);
    SixteenBuff buf7(        bBus,   buffCtrl[7], writeBus2);
    SixteenBuff buf8(        bBus,   buffCtrl[8], memAddrBus);
    SixteenBuff buf9( specialAddr,   buffCtrl[9], memAddrBus);
    SixteenBuff buf10(       aBus,  buffCtrl[10], memWriteBus);
    SixteenBuff buf11(         pc,  buffCtrl[11], memWriteBus);
    SixteenBuff buf12( memDataOut, buffCtrlP[12], writeBus);
    SixteenBuff buf13( memDataOut, buffCtrlP[13], writeBus2);
    SixteenBuff buf14( memDataOut, buffCtrlP[14], pcWriteBus);
    SixteenBuff buf15(specialAddr,  buffCtrl[15], pcWriteBus);
    SixteenBuff buf16(    pcPlus1,  buffCtrl[16], pcWriteBus);
    SixteenBuff buf17(incrDecrBus,  buffCtrl[17], writeBus);
    SixteenBuff buf18(incrDecrBus,  buffCtrl[18], writeBus2);
    SixteenBuff buf19(    decrReg,  buffCtrl[19], incrDecrBus);
    SixteenBuff buf20(    incrReg,  buffCtrl[20], incrDecrBus);
	
	// increment and decrement
	Incrementer INCR(bBus, incrReg);
	Decrementer DECR(bBus, decrReg);
	
	// PC
	ProgramCounter PC(reset, CLK_50MHZ, pcWriteBus, pc);
	Incrementer PCINCR(pc, pcPlus1);
	
	// alu
    ALU ALUinstance(aBus, bBus, aluOp, aluOut, flags[2], flags[1], flags[0]);

	// flag reg
    FlagRegister FlagReg(reset, CLK_50MHZ, flags[2], flags[1], flags[0], flagWrite, flagsToControl[2], flagsToControl[1], flagsToControl[0]);
	
	// memory
	// some inputs are always 0.
	wire [15:0] data_to_controller;
	wire [17:0] instruction_to_controller;
	wire [15:0] data_to_main;
	wire [15:0] data_addr_to_main;
	wire 		data_wr_en_to_main;
	wire [17:0] inst_addr_to_main;
	wire [15:0] pram_out;
	wire 		pram_wr_en;
	wire 		lcd_en;
	wire [15:0] lcd_data;
	wire [15:0] lcdreg_to_lcd;
	
	wire memWriteEnA;
	assign memWriteEnA = 0;
	wire [15:0] memWriteDataA;
	assign memWriteDataA = 16'b0;
	// a is instructions, b is data
	BlockRam #(.DATA(18), .ADDR(14), .SIZE(12288), .FILE("init.mem")) MainMemory(CLK_50MHZ, memWriteEnA, data_wr_en_to_main, inst_addr_to_main, data_addr_to_main, memWriteDataA, data_to_main, instruction_to_controller, data_to_controller);
	
	// Memory controller
	MemoryController MemCtrl(memWriteBus, memAddrBus, memWriteEn, pc, data_to_controller, instruction_to_controller, memDataOut, instruction, data_to_main, data_addr_to_main, data_wr_en_to_main, inst_addr_to_main, pram_out, pram_wr_en, lcd_data, lcd_en);
	
	// control
	//     Has some forwarding logic around it
	wire [3:0] destSelP;
	reg  [3:0] destSelF;
	reg        regWriteEnF;
	reg        regWriteEn2F;
	wire       regWriteEnP;
	wire       regWriteEn2P;
	wire       memRead;
	wire       memReadP;
	//     Pipeline Register
	PipelineRegister PReg(CLK_50MHZ, reset, memRead, memReadP, regWriteEn, regWriteEnP, regWriteEn2, regWriteEn2P, buffCtrl[14:12], buffCtrlP[14:12], destSel, destSelP);
	//     Control
	Control MasterControl(instruction, flagsToControl, aluOp, regWriteEn, regWriteEn2, immediate, buffCtrl, destSel, destSel2, srcSel, flagWrite, memWriteEn, memRead, specialAddr);
	//     Forwarding logic
	always@(destSel, destSelP, regWriteEn, regWriteEn2, regWriteEnP, regWriteEn2P, memReadP, memRead) begin
		if(memReadP == 1'b1) begin
			destSelF     = destSelP;
			regWriteEnF  = regWriteEnP;
			regWriteEn2F = regWriteEn2P;
		end
		else if(memRead == 1'b1) begin
			destSelF     = destSel;
			regWriteEnF  = 0;
			regWriteEn2F = 0;
		end
		else begin
			destSelF     = destSel;
			regWriteEnF  = regWriteEn;
			regWriteEn2F = regWriteEn2;
		end
	end

	// regfile
    Register RegisterFile(CLK_50MHZ, destSelF, srcSel, destSelF, destSel2, regWriteEnF, regWriteEn2F, reset, writeBus, writeBus2, regTo1, bBus);

	// lcd register
	Register16 lcdReg(reset, CLK_50MHZ, lcd_en, lcd_data, lcdreg_to_lcd);

	// lcd controller
	lcd_ctrl lcdctrl(CLK_50MHZ, reset, lcdreg_to_lcd, SF_D, LCD_E, LCD_RS, LCD_RW);

endmodule
