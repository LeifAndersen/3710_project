`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:05 11/03/2011 
// Design Name: 
// Module Name:    KeyTest 
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
module KeyTest(
    input CLK_50MHZ,
	 input PS2_CLK,
	 input PS2_DATA,
	 input BTN_NORTH,
	 output [11:8] SF_D,
	 output LCD_E,
	 output LCD_RS,
	 output LCD_RW
    );

	wire [15:0] up;
	wire [15:0] down;
	wire [15:0] left;
	wire [15:0] right;
	wire [15:0] a;
	wire [15:0] b;
	wire [15:0] LCD_IN;
	
	assign LCD_IN = up | down | left | right | a | b;


Keyboard keyboard(PS2_CLK, PS2_DATA, BTN_NORTH, up, down, left, right, a, b);
lcd_ctrl lcd(CLK_50MHZ, BTN_NORTH, LCD_IN, SF_D, LCD_E, LCD_RS, LCD_RW);

endmodule
