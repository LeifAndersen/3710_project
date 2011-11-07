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
wire[11:0] pixelAddr; //address from painter to VRAM
wire[2:0] color2; //color2 from painter to VRAM
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
wire vgaLine;
wire vgaOffset;
reg[2:0] BUFFERtoVGA;
reg pixelWe1;
reg pixelWe2;

wire pixelAddr2;
assign pixelAddr2 = vgaAddr - 36800;

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
			pixelWe1 <= 0;
			pixelWe2 <= pixelWe;
			BUFFERtoVGA <= vgaS;
		end
	else
		begin
			pixelWe1 <= pixelWe;
			pixelWe2 <= 0;
			BUFFERtoVGA <= {vgaR, vgaG, vgaB};
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
	.data(color2), //1 bit routed to each bit-addressed buffer, or all 3 bits if it's the special buffer.
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
	//.douta(0),
	.doutb(PData)
	 );

DCBlockRam #(.DATA(1),.ADDR(16),.SIZE(36864),.FILE("init.txt")) redBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk),
	.wea(pixelWe1),
	//.web(0),
	.addra(pixelAddr),
	.addrb(vgaAddr),
	.dina(color2[2]),
	//.dinb(0),
	//.douta(0),
	.doutb(vgaR)
	 );
	 
DCBlockRam #(.DATA(1),.ADDR(16),.SIZE(36864),.FILE("init.txt")) greenBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk),
	.wea(pixelWe1),
	.web(0),
	.addra(pixelAddr),
	.addrb(vgaAddr),
	.dina(color2[1]),
	.dinb(0),
	//.douta(0),
	.doutb(vgaG)
	 );
	 
DCBlockRam #(.DATA(1),.ADDR(16),.SIZE(36864),.FILE("init.txt")) blueBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk),
	.wea(pixelWe1),
	.web(0),
	.addra(pixelAddr),
	.addrb(vgaAddr),
	.dina(color2[0]),
	.dinb(0),
	//.douta(0),
	.doutb(vgaB)
	 );
	 
DCBlockRam #(.DATA(3),.ADDR(11),.SIZE(1600),.FILE("init.txt")) specialBuffer(  //5 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk),
	.wea(pixelWe2),
	.web(0),
	.addra(pixelAddr2),
	.addrb(vgaAddr),
	.dina(color2[2:0]),
	.dinb(0),
	//.douta(0),
	.doutb(vgaS)
	 );

VGA_Controller vga_controller(
	.clk(vgaClk),  //Expected to be 25MHz.
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
