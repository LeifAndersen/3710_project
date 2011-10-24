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
	input reset,
	input we,
	input data,
	output full
    );

reg[9:0] rdPtr; //Queue index for painter into PRAM
reg[9:0] wrtPtr; //Queue index for data from CPU to PRAM
wire[15:0] Pdata; //Data from PRAM to Painter
wire[11:0] pixelAddr; //address from painter to VRAM
wire[2:0] color; //color from painter to VRAM
wire pixelWe; //write enable from painter to VRAM
reg PRAMWe; //PRAM write enable
wire[15:0] vgaRaddr; //Address from VGA read for red buffer.
wire[15:0] vgaGaddr; //Address from VGA read for green buffer.
wire[15:0] vgaBaddr; //Address from VGA read for blue buffer.
wire[15:0] vgaSaddr; //Address from VGA read for Special buffer.
wire vgaR;
wire vgaG;
wire vgaB;
wire[2:0] vgaS;

always@(posedge clk)
begin
	if (!full) //Don't write to PRAM queue while it's full.
		if (wrtPtr != rdPtr - 1) //Make sure write can't lap read (that means overwriting start of queue instead of adding to end).
			begin
				wrtPtr <= wrtPtr + 1;
				PRAMWe <= 1;
			end
end



Painter painter(
	.clk(clk),
	.reset(reset),
	.wrtPtr(wrtPtr), //Write pointer, location in PRAM that CPU is writing to.
	.PRAM(Pdata), //The line, right, left, and color stored in two lines of PRAM by CPU.
	.rdPtr(rdPtr), //Read pointer, location in PRAM that Painter is reading from.
	.full(full), //This signal tells the CPU to NOP on its write until queue has space, also tells PRAM not to latch CPU'S value.
	.addr(pixelAddr), //Address (pixel location) in frame buffer.  Only need addressing for 1 buffer.  Which buffer is determined externally.
	.data(color), //1 bit routed to each bit-addressed buffer, or all 3 bits if it's the special buffer.
	.we(pixelWe) //write enable
    );

BlockRam #(.DATA(16),.ADDR(10),.SIZE(1024),.FILE("init.txt")) PRAM(
	.clka(clk),
	.wea(PRAMWe),
	.web(0),
	.addra(wrtPtr),
	.addrb(rdPtr),
	.dina(data),
	.dinb(0),
	.douta(0),
	.doutb(PData)
	 );

BlockRam #(.DATA(1),.ADDR(16),.SIZE(36864),.FILE("init.txt")) redBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.wea(pixelWe),
	.web(0),
	.addra(pixelAddr),
	.addrb(vgaAddr),
	.dina(color[2]),
	.dinb(0),
	.douta(0),
	.doutb(vgaR)
	 );
	 
BlockRam #(.DATA(1),.ADDR(16),.SIZE(36864),.FILE("init.txt")) greenBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.wea(pixelWe),
	.web(0),
	.addra(pixelAddr),
	.addrb(vgaAddr),
	.dina(color[1]),
	.dinb(0),
	.douta(0),
	.doutb(vgaG)
	 );
	 
BlockRam #(.DATA(1),.ADDR(16),.SIZE(36864),.FILE("init.txt")) blueBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.wea(pixelWe),
	.web(0),
	.addra(pixelAddr),
	.addrb(vgaAddr),
	.dina(color[0]),
	.dinb(0),
	.douta(0),
	.doutb(vgaB)
	 );
	 
BlockRam #(.DATA(3),.ADDR(11),.SIZE(1600),.FILE("init.txt")) specialBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.wea(pixelWe),
	.web(0),
	.addra(pixelAddr),
	.addrb(vgaAddr[10:0]),
	.dina(color[2:0]),
	.dinb(0),
	.douta(0),
	.doutb(vgaB)
	 );

endmodule
