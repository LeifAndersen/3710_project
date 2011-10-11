`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Potato
// Engineer:
//
// Create Date:    22:57:27 09/22/2011
// Design Name:
// Module Name:    TopLevel
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
module TopLevel(
    input BTN_NORTH,
    input CLK_50MHZ,
    output [11:8] SF_D,
    output LCD_E,
    output LCD_RS,
    output LCD_RW
    ); // includes some of the outputs from the LCD controller (ionno how it works, tho).

	wire reset;
	assign reset = BTN_NORTH;
	
    // clock divider and stuff
    wire clk;
    ClockDivider omgwtfbbq(reset, CLK_50MHZ, clk);

    //
    //  inputs:
    //      reset -- resets the FSM which then resets the regfile
    //      start -- starts the FSM and stuff, lol
    //
    //  outputs:
    //      initialR -- value for the intial two registers used (over two cycles)
    //      regWrite -- register write select 0-15
    //      regRead1 -- register read select 1
    //      regRead2 -- register read select 2
    //      ALUOp    -- thing to do
    //      buffCtrl -- control for all the external buffers
    //      regReset -- reset reg file
    //      regWriteEn --  enables writing to registers
    //
    wire [15:0] initialR;
    wire [3:0] regWrite;
	wire [3:0] regWrite2;
    wire [3:0] regRead1;
    wire [3:0] regRead2;
    wire [3:0] ALUOp;
    wire [3:0] buffCtrl;
    wire regWriteEn;
	wire regWriteEn2;
    FibFSM magic(clk, reset, initialR, regWrite, regWrite2, regRead1, regRead2, ALUOp, buffCtrl, regWriteEn, regWriteEn2);

    // Input buffers
    wire [15:0] ABusBuffed;
    wire [15:0] ABus;
    SixteenBuff abuf(ABus, buffCtrl[1], ABusBuffed);
    wire [15:0] BBusBuffed;
    wire [15:0] BBus;
    SixteenBuff bbuf(BBus, buffCtrl[2], BBusBuffed);
    wire [15:0] writeBusBuffed;
    wire [15:0] writeBus;
    SixteenBuff cbuf(writeBus, buffCtrl[3], writeBusBuffed);
    SixteenBuff initialbuf(initialR, buffCtrl[0], writeBusBuffed); // buffer from fsm

    // wires for ALU
    wire carryIn;
    assign carryIn = 1'b1;
    wire carry;
    wire flag;
    wire low;
    wire negative;
    wire zero;
    ALU myFirstALU(ABusBuffed, BBusBuffed, ALUOp, carryIn, writeBus, carry, flag, low, negative, zero);

    // wires for flagregister
    wire carryFL;
    wire flagFL;
    wire zeroFL;
    wire lowFL;
    wire negativeFL;
    FlagRegister yourmom(clk, carry, flag, zero, low, negative, carryFL, flagFL, zeroFL, lowFL, negativeFL);

    // regfile
    Register omgbadname(clk, regRead1, regRead2, regWrite, regWrite2, regWriteEn, regWriteEn2, reset, writeBusBuffed, writeBusBuffed, ABus, BBus);

	// lcd controller
	lcd_ctrl lcdctrl(CLK_50MHZ, reset, writeBus, SF_D, LCD_E, LCD_RS, LCD_RW);

endmodule
