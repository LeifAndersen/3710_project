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
	
    );
	
	/* Control flow is outlined in comments */
	
	// Intruction fetch and $PC++
	
	// Top Level Decode
	
	// Instruction decode put values from regfile/imm on busses
		// ALU type (completely single cycle; all steps done at once)
			// 1. Opcode decode (combinational)
			// 2. Bus into ALU (combinational)
			// 3. Output Control (combinational)
		
		// Branch type (completely single cycle; all steps done at once)
			// 1. Test flags appropriately (combinational)
			// 2. Conditionally add immediate to $PC (combinational)
		
		// Mov type (completely single cycle; all steps done at once) 
			// 1. Decode mov type (combinational)
			// 2. Conditionally enable buffers on based on mov type (combinational)
		
		// Multiply type
			// TDB; will remain unimplemented
	
	// Special decode
		// Call type (single since $PC and jump target latch simultaneously)
			// 1.   Push return address and stop instruction fetch (combinational)
			// 2.   Load target into $PC (combinational)
			
		// Store type
			// 1. Direct immediate and value of mem register to memory (combinational)
		
		// Load type
			// 1. Direct immediate to addr of mem ctrl and open line to mem register (combinational)
			// (can we always leave the line open since memory is always reading?)

endmodule
