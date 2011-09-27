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
module FibFSM(
    input reset,
    input start,
    output [15:0] initialR,
    output [3:0] regWrite,
    output [3:0] regRead1,
    output [3:0] regRead2,
    output [8:0] ALUOp,
    output [2:0] buffCtrl,
    output [3:0] regReset,
    output regWriteEn
    );

    reg [1:0] state;

    // reset sends 1 to R0, R1


    //  fib generation:
    //      add R1, R0
    //      add R0, R1



endmodule
