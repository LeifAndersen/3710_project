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
	input rp, //East
	input gp, //South
	input bp, //West
	output[17:0] fbAddr,
	output[8:0] line,
	output[9:0] offset,
	output[2:0] color,
	output hsync,
	output vsync
    );

wire reset = resetp;
wire r = rp;
wire g = gp;
wire b = bp;
reg pixClk;

always@(posedge clk, posedge reset)
begin
	if (reset)
		pixClk <= 0;
	else
		begin
		pixClk <= ~pixClk;
		end
end

VGA_Controller v(
		.clk(pixClk),
		.reset(reset),
		.r(r),
		.g(g),
		.b(b),
		.fbAddr(fbAddr),
		.line(line),
		.offset(offset),
		.color(color),
		.hsync(hsync),
		.vsync(vsync)
	);

endmodule
