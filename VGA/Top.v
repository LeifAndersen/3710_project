`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:35:48 09/30/2011 
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
	input clk,
	input resetp, //North
	input rp, //West
	input gp, //South
	input bp, //East
	//output[17:0] fbAddr,
	output[8:0] line,
	output[9:0] offset,
	output reg[2:0] color,
	output hsync,
	output vsync
    );

wire reset;
wire r = rp;
wire g = gp;
wire b = bp;
//reg r;
//reg g;
//reg b;
wire[2:0] colortemp;
wire clkfb;
wire clk2x;
wire clk2x180;
wire clk4x180;
wire clk4x;
wire vgaClk;
//reg[7:0] rshifter;
//reg[7:0] gshifter;
//reg[7:0] bshifter;
//reg[3:0] counter;

//assign color[2] = rshifter[0];
//assign color[1] = gshifter[0];
//assign color[0] = bshifter[0];

//always@(posedge clk2x)
//begin
//if (~reset)
//begin
//	counter <= 0;
//	rshifter <= 0;
//	gshifter <= 0;
//	bshifter <= 0;
//end
//else
//begin
//	if (counter == 7)
//	begin
//		counter <= 0;
//		case (colortemp)
//			0:
//			begin			
//				rshifter <= 0;
//				gshifter <= 0;
//				bshifter <= 0;
//			end
//			
//			1:
//			begin			
//				rshifter <= 8'b0;
//				gshifter <= 8'b00100100;		
//				bshifter <= 8'b0;	
//			end
//			
//			2:
//			begin
//				rshifter <= 8'b0;
//				gshifter <= 8'b10101010;
//				bshifter <= 8'b0;
//			end
//			
//			3:
//			begin
//				rshifter <= 8'b0;
//				gshifter <= 8'b01001011;
//				bshifter <= 8'b0;
//			end
//			
//			4:
//			begin
//				rshifter <= 8'b0;
//				gshifter <= 8'b11111111;
//				bshifter <= 8'b0;
//			end
//			
//			5:
//			begin
//				rshifter <= 8'b01100110;
//				gshifter <= 8'b00110100;
//				bshifter <= 8'b00000000;
//			end
//			
//			6:
//			begin
//				rshifter <= 8'b11111111;
//				gshifter <= 8'b0;
//				bshifter <= 8'b0;
//			end
//			
//			7:
//			begin
//				rshifter <= 8'b0;
//				gshifter <= 8'b0;
//				bshifter <= 8'b11111111;
//			end			
//		endcase
//	end		
//	else
//	begin
//		counter <= counter + 1;
//		rshifter <= {rshifter[0], rshifter[7:1]};
//		gshifter <= {gshifter[0], gshifter[7:1]};
//		bshifter <= {bshifter[0], bshifter[7:1]};
//	end
//end
//end

//always@(*)
//begin
//	if (colortemp[2])
//		color[1] <= (clk2x & clk4x);
//	else
//		color[1] <= 0;
//		
//	if (colortemp[1])
//		color[1] <= (clk2x & clk4x180);
//	else
//		color[1] <= 0;
//		
//	if (colortemp[0])
//		color[1] <= clk4x;
//	else
//		color[1] <= 0;
//end

always@(*)
begin
	case(colortemp)
	0:
	begin
		color[0] <= 0;
		color[1] <= 0;
		color[2] <= 0;
	end
	1:
	begin
		color[0] <= 0;
		color[1] <= clk2x | clk4x;
		color[2] <= 0;
	end
	2:
	begin
		color[0] <= 0;
		color[1] <= clk4x;
		color[2] <= 0;
	end
	3:
	begin
		color[0] <= 0;
		color[1] <= clk4x & clk2x;
		color[2] <= 0;
	end
	4:
	begin
		color[0] <= 0;
		color[1] <= clk4x;// & clk2x;
		color[2] <= clk4x;// & clk2x;
	end
	5:
	begin
		color[0] <= 0;
		color[1] <= 1;
		color[2] <= 0;
	end
	6:
	begin
		color[0] <= 1;
		color[1] <= 0;
		color[2] <= 0;
	end
	7:
	begin
		color[0] <= 0;
		color[1] <= 0;
		color[2] <= 1;
	end
	endcase
	
end

DCM_SP #(
      .CLKDV_DIVIDE(2.0), // Divide by: 1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.5,6.0,6.5
                          //   7.0,7.5,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0 or 16.0
      //.CLKFX_DIVIDE(1),   // Can be any integer from 1 to 32
      .CLKFX_MULTIPLY(6), // Can be any integer from 2 to 32
      .CLKIN_DIVIDE_BY_2("FALSE"), // TRUE/FALSE to enable CLKIN divide by two feature
      //.CLKIN_PERIOD(0.0),  // Specify period of input clock
      .CLKOUT_PHASE_SHIFT("NONE"), // Specify phase shift of NONE, FIXED or VARIABLE
      .CLK_FEEDBACK("1X"),  // Specify clock feedback of NONE, 1X or 2X
      .DESKEW_ADJUST("SYSTEM_SYNCHRONOUS"), // SOURCE_SYNCHRONOUS, SYSTEM_SYNCHRONOUS or
                                            //   an integer from 0 to 15
      .DLL_FREQUENCY_MODE("LOW"),  // HIGH or LOW frequency mode for DLL
      .DUTY_CYCLE_CORRECTION("TRUE"), // Duty cycle correction, TRUE or FALSE
      .PHASE_SHIFT(0),     // Amount of fixed phase shift from -255 to 255
      .STARTUP_WAIT("TRUE")   // Delay configuration DONE until DCM LOCK, TRUE/FALSE
   ) DCM_SP_inst (
		.CLK0(clkfb),
      .CLK2X(clk2x),   // 2X DCM CLK output
      .CLKDV(vgaClk),   // Divided DCM CLK out (CLKDV_DIVIDE)
		.CLKFB(clkfb),
      .CLKIN(clk),   // Clock input (from IBUFG, BUFG or DCM)
      .RST(resetp),        // DCM asynchronous reset input
		.LOCKED(reset),
		.CLKFX(clk4x),
		.CLKFX180(clk4x180),
		.CLK2X180(clk2x180)
   );

VGA_Controller v(
		.clk(vgaClk),
		.reset(~reset),
		.r(r),
		.g(g),
		.b(b),
		//.fbAddr(fbAddr),
		.line(line),
		.offset(offset),
		.color(colortemp),
		.hsync(hsync),
		.vsync(vsync)
	);
	
	

endmodule
