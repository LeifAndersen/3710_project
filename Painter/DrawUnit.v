`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:51:34 10/23/2011 
// Design Name: 
// Module Name:    DrawUnit 
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
module DrawUnit(
	input clk,
	input vgaClk,
	input reset,
	input we,
	input[15:0] dataIn,
	output full,
	output[2:0] color, //{R, G, B}
	output hsync,
	output vsync
    );

wire re; //painter to queue read enable.
wire empty; //queue to painter empty signal.
wire[31:0] PRAMdata; //line, right, left, color data written by CPU to queue, read by painter.
wire[14:0] wrtPtr; //write pointer from painter to framebuffer.
wire[14:0] rdPtr; //read pointer from vga Controller.
wire[2:0] data; //Color data from painter to fram buffer.
wire fbwe; //frame buffer write enable sent from painter.
wire swapBuffersCommand; //1 when CPU says time to swap buffers, waits until vga done with current line.
reg swapBuffersOnVsync;
reg swapBuffers; //1 when swapBufferCommand is 1 and vga finishes frame.
wire[2:0] fbout; //Color from frameBuffer to vga controller.
wire[8:0] line; //Line
wire[9:0] offset;

assign rdPtr = line[8:2] * 160 + offset[9:2]; //Divide each by 4 to change 640x480 to 160x120.

always@(posedge clk)
begin
	if(reset)
	begin
		swapBuffersOnVsync <= 0;
	end

	if (swapBuffersCommand)
		swapBuffersOnVsync <= 1;
	else if (vsync == 0 && swapBuffersOnVsync == 1)
		begin
			swapBuffers <= 1;
			swapBuffersOnVsync <= 0;
		end
	else
		begin
			swapBuffers <= 0;
		end
end

//always@(negedge vsync)
//begin
//	if (swapBuffersOnVsync)
//	begin
//		swapBuffers <= 1;
//		swapBuffersOnVsync <= 0;
//	end
//	else
//		swapBuffers <= 0;
//end

Queue queue(
	.clk(clk),
	.reset(reset),
	.we(we),
	.re(re),
	.wrtData(dataIn),
	.rdData(PRAMdata),
	.full(full),
	.empty(empty)
    );

Painter painter(
	.clk(clk),
	.reset(reset),
	.empty(empty),
	.swapBuffers(swapBuffers),
	.PRAMdata(PRAMdata), //The line, right, left, and color stored in two lines of PRAM by CPU.
	.addr(wrtPtr), //Address (pixel location) in frame buffer.  Only need addressing for 1 buffer.  Which buffer is determined externally.
	.data(data), //1 bit routed to each bit-addressed buffer, or all 3 bits if it's the special buffer.
	.we(fbwe), //write enable to frame buffer.
	.re(re),
	.swapBuffersCommand(swapBuffersCommand) //1 when CPU writes 16'hffffffff to PRAM, time to swap front and back buffer.
    );

FrameBuffer framebuffer(
	.clk(clk),
	.vgaClk(vgaClk),
	.reset(reset),
	.swapBuffers(swapBuffers),
	.we(fbwe),
	.dataIn(data),
	.rdPtr(rdPtr),
	.wrtPtr(wrtPtr),
	.color(fbout)
    );

VGA_Controller vga_controller(
	.clk(vgaClk), //Must be 25MHz. Please use DCM.
	.reset(reset),
	.r(fbout[2]),
	.g(fbout[1]),
	.b(fbout[0]),
	.line(line), //Frame buffer address.
	.offset(offset), //Frame buffer address.
	.color(color), //{R, G, B}
	.hsync(hsync),
	.vsync(vsync)
    );

endmodule
