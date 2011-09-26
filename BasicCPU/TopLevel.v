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
    input reset,
    input start,
    input undividedClk,
    output SF_CE0,
    output SF_D,
    output LCD_E,
    output LCD_RS,
    output LCD_RW
    ); // includes some of the outputs from the LCD controller (ionno how it works, tho).

    // clock divider and stuff
    wire clk;
    ClockDivider(undividedClk, clk);

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
    wire initialR;
    wire regWrite;
    wire regRead1;
    wire regRead2;
    wire [7:0] ALUOp;
    wire [2:0] buffCtrl;
    wire regReset;
    wire regWriteEn;
    FibFSM magic(reset, start, initialR, regWrite, regRead1, regRead2, ALUOp, buffCtrl, regReset, regWriteEn);

    // Input buffers
    wire [15:0] ABusBuffed;
    wire [15:0] ABus;
    SixteenBuff abuf(ABus, buffCtrl[0], ABusBuffed);
    wire [15:0] BBusBuffed;
    wire [15:0] BBus;
    SixteenBuff bbuf(BBus, buffCtrl[1], BBusBuffed);
    wire [15:0] writeBusBuffed;
    wire [15:0] writeBus;
    SixteenBuff bbuf(writeBus, buffCtrl[2], writeBusBuffed);

    // wires for ALU
    wire carryIn;
    assign carryIn = 1'b1;
    wire carry;
    wire flag;
    wire low;
    wire negative;
    wire zero;
    ALU myFirstALU(ABus, BBus, ALUOp, carryIn, writeBus, carry, flag, low, negative, zero);

    // wires for flagregister
    wire carryFL;
    wire flagFL;
    wire zeroFL;
    wire lowFL;
    wire negativeFL;
    FlagRegister yourmom(clk, carry, flag, zero, low, negative, carryFL, flagFL, zeroFL, negativeFL);

    // regfile
    Register omgbadname(clk, regRead1, regRead2, regWrite, regWriteEn, regReset, writeBusBuffed, ABus, BBus);

endmodule
