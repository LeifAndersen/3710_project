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
	wire [15:0] regTo2;
	wire [15:0] immTo0;
	wire [15:0] aluC;
	wire [15:0] memOut;
	wire [15:0] pcPlus1;
	wire [15:0] addr;
	wire [15:0] pc;
	wire [15:0] incrTo18;
	wire [15:0] decrTo19;
	wire [17:0] instruction;
	wire [21:0] buffCtrl;
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
    SixteenBuff buf0(      immTo0,  buffCtrl[0], aBus);
    SixteenBuff buf1(      regTo1,  buffCtrl[1], aBus);
    SixteenBuff buf2(      regTo2,  buffCtrl[2], bBus);
    SixteenBuff buf3(        bBus,  buffCtrl[3], writeBus);
    SixteenBuff buf4(        aluC,  buffCtrl[4], writeBus);
    SixteenBuff buf5(      memOut,  buffCtrl[5], writeBus);
    SixteenBuff buf6(        bBus,  buffCtrl[6], writeBus2);
    SixteenBuff buf7(        aluC,  buffCtrl[7], writeBus2);
    SixteenBuff buf8(      memOut,  buffCtrl[8], writeBus2);
    SixteenBuff buf9(     pcPlus1,  buffCtrl[9], pcWriteBus);
    SixteenBuff buf10(       addr, buffCtrl[10], pcWriteBus);
    SixteenBuff buf11(     memOut, buffCtrl[11], pcWriteBus);
    SixteenBuff buf12(       addr, buffCtrl[12], memAddrBus);
    SixteenBuff buf13(       bBus, buffCtrl[13], memAddrBus);
    SixteenBuff buf14(         pc, buffCtrl[14], memWriteBus);
    SixteenBuff buf15(       aBus, buffCtrl[15], memWriteBus);
    SixteenBuff buf16(       aBus, buffCtrl[16], writeBus);
    SixteenBuff buf17(       aBus, buffCtrl[17], writeBus2);
    SixteenBuff buf18(   incrTo18, buffCtrl[18], incrDecrBus);
    SixteenBuff buf19(   decrTo19, buffCtrl[19], incrDecrBus);
    SixteenBuff buf20(incrDecrBus, buffCtrl[20], writeBus);
    SixteenBuff buf21(incrDecrBus, buffCtrl[21], writeBus2);
	
	// increment and decrement
	Incrementer INCR(bBus, incrTo18);
	Decrementer DECR(bBus, decrTo19);
	
	// PC
	ProgramCounter PC(reset, CLK_50MHZ, pcWriteBus, pc);
	Incrementer PCINCR(pc, pcPlus1);
	
	// alu
    ALU ALUinstance(aBus, bBus, aluOp, aluC, flags[2], flags[1], flags[0]);

	// flag reg
    FlagRegister FlagReg(reset, CLK_50MHZ, flags[2], flags[1], flags[0], flagWrite, flagsToControl[2], flagsToControl[1], flagsToControl[0]);

    // regfile
    Register RegisterFile(CLK_50MHZ, destSel, srcSel, destSel, destSel2, regWriteEn, regWriteEn2, reset, writeBus, writeBus2, regTo1, regTo2);
	
	// memory
	// some inputs are always 0.
	wire memWriteEnA;
	assign memWriteEnA = 0;
	wire [15:0] memWriteDataA;
	assign memWriteDataA = 16'b0;
	// a is instructions, b is data
	BlockRam #(.DATA(18), .ADDR(14), .SIZE(12288), .FILE("init.txt")) MainMemory(CLK_50MHZ, memWriteEnA, memWriteEn, pc, memAddrBus, memWriteDataA, memWriteBus, instruction, memOut);
	
	// control
	Control MasterControl(instruction, flagsToControl, aluOp, regWriteEn, regWriteEn2, immTo0, buffCtrl, destSel, destSel2, srcSel, flagWrite, memWriteEn, addr);

	// lcd controller
	lcd_ctrl lcdctrl(CLK_50MHZ, reset, aluC, SF_D, LCD_E, LCD_RS, LCD_RW);

endmodule
