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
	input data,
	output full,
	output[2:0] color, //{R, G, B}
	output hsync,
	output vsync
    );

wire[9:0] rdPtr; //Queue index for painter into PRAM
reg[9:0] wrtPtr; //Queue index for data from CPU to PRAM
wire[15:0] Pdata; //Data from PRAM to Painter
wire[14:0] pixelAddr; //address from painter to frame buffer.
wire[2:0] color2; //color2 from painter to frame buffer.
wire bufferWe; //write enable from painter to frame buffer.
reg PRAMWe; //PRAM write enable (essentially the CPU write enable gated when queue is full).
wire[15:0] vgaAddr; //Address from VGA read for frame buffer. If >38600, read from Special. vgaAddr = line * 160 + offset outputted by vga controller.
wire vgaR; //Data out of frame buffer to VGA output.
wire vgaG; //Data out of frame buffer to VGA output.
wire vgaB; //Data out of frame buffer to VGA output.
wire[2:0] vgaS; //Data out of frame buffer to VGA output.
wire vgaLine; //Line of pixels vga is drawing to.
wire vgaOffset; //Specific pixel (offset from left of line) vga is drawing to.
reg[2:0] BUFFERtoVGA; //Data out of frame buffer to VGA output, mux of vgaR, vgaG, vgaB, and vgaS.
reg bufferWe1; //Write enable to red/green/blue buffers.
reg bufferWe2; //Write enable to special buffer.

wire pixelAddr2; //The address used to read from special buffer.
assign pixelAddr2 = vgaAddr - 36800; //Convert the address calculated by vgaAddr into the right one. 160*115*2 for front and back buffer of red/green/blue.  Above that is special.

always@(posedge clk)
begin
	if (!full) //Don't write to PRAM queue while it's full.
		if ((wrtPtr != rdPtr - 1) && we == 1) //Make sure write can't lap read (that means overwriting start of queue instead of adding to end).
			begin
				wrtPtr <= wrtPtr + 1;
				PRAMWe <= 1;
			end
		else
			begin
				PRAMWe <= 0;
			end
	
	//4 buffers memory controller
	if (pixelAddr >= 36800) //This means it exceeds the 3 regular buffer, goes into the special.
		begin
			bufferWe1 <= 0;
			bufferWe2 <= bufferWe; //If painter wants to write a color, enable special buffer write.
			//BUFFERtoVGA <= vgaS; This is junk, wrong place i think.
		end
	else
		begin
			bufferWe1 <= bufferWe; //If painter wants to write a color, enable red/green/blue buffer write.
			bufferWe2 <= 0;
			//BUFFERtoVGA <= {vgaR, vgaG, vgaB}; Junk, wrong place i think.
		end
end



Painter painter(
	.clk(clk),
	.reset(reset),
	.wrtPtr(wrtPtr), //Write pointer, location in PRAM that CPU is writing to.
	.PRAMdata(Pdata), //The line, right, left, and color stored in two lines of PRAM by CPU.
	.rdPtr(rdPtr), //Read pointer, location in PRAM that Painter is reading from.
	.full(full), //This signal tells the CPU to NOP on its write until queue has space, also tells PRAM not to latch CPU'S value.
	.addr(pixelAddr), //Address (pixel location) in frame buffer.  Only need addressing for 1 buffer.  Which buffer is determined externally.
	.data(color2), //1 bit routed to each bit-addressed buffer, or all 3 bits if it's the special buffer.
	.we(bufferWe) //write enable to frame buffer.
    );

BlockRam #(.DATA(16),.ADDR(10),.SIZE(1024),.FILE("init.txt")) PRAM(
	.clka(clk),
	.wea(PRAMWe), //Gated CPU write enable.
	.web(0),
	.addra(wrtPtr), //Address in queue to write to.
	.addrb(rdPtr), //Where painter reads from.
	.dina(data), //Data from CPU to write.
	.dinb(0), //Port B is read only.
	//.douta(0), Port A is write only
	.doutb(PData)
	 );

DCBlockRam #(.DATA(1),.ADDR(16),.SIZE(36864),.FILE("init.txt")) redBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk), //VGA reads at 25Mhz.
	.wea(bufferWe1), //Determined by address in buffer.
	//.web(0),
	.addra(pixelAddr), //Which pixel to write to, determined by painter.
	.addrb(vgaAddr), //Which pixel to read from, determined by vga.
	.dina(color2[2]),
	//.dinb(0),
	//.douta(0),
	.doutb(vgaR)
	 );
	 
DCBlockRam #(.DATA(1),.ADDR(16),.SIZE(36864),.FILE("init.txt")) greenBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk), //VGA reads at 25Mhz.
	.wea(bufferWe1),
	.web(0),
	.addra(pixelAddr), //Which pixel to write to, determined by painter.
	.addrb(vgaAddr), //Which pixel to read from, determined by vga.
	.dina(color2[1]),
	.dinb(0),
	//.douta(0),
	.doutb(vgaG)
	 );
	 
DCBlockRam #(.DATA(1),.ADDR(16),.SIZE(36864),.FILE("init.txt")) blueBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk), //VGA reads at 25Mhz.
	.wea(bufferWe1),
	.web(0),
	.addra(pixelAddr), //Which pixel to write to, determined by painter.
	.addrb(vgaAddr), //Which pixel to read from, determined by vga.
	.dina(color2[0]),
	.dinb(0),
	//.douta(0),
	.doutb(vgaB)
	 );
	 
DCBlockRam #(.DATA(3),.ADDR(11),.SIZE(1600),.FILE("init.txt")) specialBuffer(  //5 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk), //VGA reads at 25Mhz.
	.wea(bufferWe2),
	.web(0),
	.addra(pixelAddr2), //Which pixels to write to (3 instead of 1 at a time here), determined by painter.
	.addrb(vgaAddr), //Which pixel to read from (all 3 come from this buffer instead of 3 separate buffers), determined by vga.
	.dina(color2[2:0]),
	.dinb(0),
	//.douta(0),
	.doutb(vgaS)
	 );

VGA_Controller vga_controller(
	.clk(vgaClk), //Must be 25MHz. Please use DCM.
	.reset(reset),
	.r(BUFFERtoVGA[2]),
	.g(BUFFERtoVGA[1]),
	.b(BUFFERtoVGA[0]),
	.line(vgaLine), //Frame buffer address.  TOBO done.
	.offset(vgaOffset),
	.color(color), //{R, G, B}
	.hsync(hsync),
	.vsync(vsync)
    );

endmodule
