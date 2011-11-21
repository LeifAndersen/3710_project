`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:52:15 11/20/2011 
// Design Name: 
// Module Name:    shiftReg 
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
module shiftReg(
	input data_in[7:0],
	input we,
	input clk,
	input reset,
	output wave
    );

wire Q[6:0];
reg[7:0] data;

always@(*)
begin
	if (we)
		data <= data_in;
	else
		data <= {data[0], data[7:1]};
end

 ODDR2 #(
      .DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1" 
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) r7 (
      .Q(Q[6]),   // 1-bit DDR output data
      .C0(clk),   // 1-bit clock input
      .C1(~clk),   // 1-bit clock input
      .CE(1), // 1-bit clock enable input
      .D0(data[7]), // 1-bit data input (associated with C0)
      .D1(data[7]), // 1-bit data input (associated with C1)
      .R(reset),   // 1-bit reset input
      //.S(S)    // 1-bit set input
   );

 ODDR2 #(
      .DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1" 
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) r6 (
      .Q(Q[5]),   // 1-bit DDR output data
      .C0(clk),   // 1-bit clock input
      .C1(~clk),   // 1-bit clock input
      .CE(1), // 1-bit clock enable input
      .D0(data[6]), // 1-bit data input (associated with C0)
      .D1(data[6]), // 1-bit data input (associated with C1)
      .R(reset),   // 1-bit reset input
      //.S(S)    // 1-bit set input
   );

 ODDR2 #(
      .DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1" 
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) r5 (
      .Q(Q[4]),   // 1-bit DDR output data
      .C0(clk),   // 1-bit clock input
      .C1(~clk),   // 1-bit clock input
      .CE(1), // 1-bit clock enable input
      .D0(data[5]), // 1-bit data input (associated with C0)
      .D1(data[5]), // 1-bit data input (associated with C1)
      .R(reset),   // 1-bit reset input
      //.S(S)    // 1-bit set input
   );

 ODDR2 #(
      .DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1" 
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) r4 (
      .Q(Q[3]),   // 1-bit DDR output data
      .C0(clk),   // 1-bit clock input
      .C1(~clk),   // 1-bit clock input
      .CE(1), // 1-bit clock enable input
      .D0(data[4]), // 1-bit data input (associated with C0)
      .D1(data[4]), // 1-bit data input (associated with C1)
      .R(reset),   // 1-bit reset input
      //.S(S)    // 1-bit set input
   );

 ODDR2 #(
      .DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1" 
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) r3 (
      .Q(Q[2]),   // 1-bit DDR output data
      .C0(clk),   // 1-bit clock input
      .C1(~clk),   // 1-bit clock input
      .CE(1), // 1-bit clock enable input
      .D0(data[3]), // 1-bit data input (associated with C0)
      .D1(data[3]), // 1-bit data input (associated with C1)
      .R(reset),   // 1-bit reset input
      //.S(S)    // 1-bit set input
   );

 ODDR2 #(
      .DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1" 
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) r2 (
      .Q(Q[1]),   // 1-bit DDR output data
      .C0(clk),   // 1-bit clock input
      .C1(~clk),   // 1-bit clock input
      .CE(1), // 1-bit clock enable input
      .D0(data[2]), // 1-bit data input (associated with C0)
      .D1(data[2]), // 1-bit data input (associated with C1)
      .R(reset),   // 1-bit reset input
      //.S(S)    // 1-bit set input
   );

 ODDR2 #(
      .DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1" 
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) r1 (
      .Q(Q[0]),   // 1-bit DDR output data
      .C0(clk),   // 1-bit clock input
      .C1(~clk),   // 1-bit clock input
      .CE(1), // 1-bit clock enable input
      .D0(data[1]), // 1-bit data input (associated with C0)
      .D1(data[1]), // 1-bit data input (associated with C1)
      .R(reset),   // 1-bit reset input
      //.S(S)    // 1-bit set input
   );

 ODDR2 #(
      .DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1" 
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) r0 (
      .Q(wave),   // 1-bit DDR output data
      .C0(clk),   // 1-bit clock input
      .C1(~clk),   // 1-bit clock input
      .CE(1), // 1-bit clock enable input
      .D0(data[0]), // 1-bit data input (associated with C0)
      .D1(data[0]), // 1-bit data input (associated with C1)
      .R(reset),   // 1-bit reset input
      //.S(S)    // 1-bit set input
   );
	
endmodule
