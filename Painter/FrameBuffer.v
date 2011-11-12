`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:49:41 11/10/2011 
// Design Name: 
// Module Name:    FrameBuffer 
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
module FrameBuffer(
	input clk,
	input vgaClk,
	input reset,
	input swapBuffers,
	input we,
	input[2:0] dataIn,
	input[14:0] rdPtr,
	input[14:0] wrtPtr,
	output reg[2:0] color
    );

parameter frontLow = 0;
parameter frontHigh = 1;

reg state;

reg[15:0] bufferWrtPtr;
reg[15:0] bufferRdPtr;
reg bufferWe; //regular buffer wrt enable.
reg bufferWeS; //special buffer wrt enable.

wire R;
wire G;
wire B;
wire[2:0] S;

always@(posedge clk)
begin
	if (reset)
	begin
		state <= frontLow;
		color <= 0;
	end

	if (swapBuffers)
	begin
		state <= ~state; //Switch which is front buffer and which is back buffer.
	end

	case(state)	
		frontLow:
		begin
			bufferRdPtr <= rdPtr;
			color <= {R, G, B};
			if (wrtPtr >= 17600) //Special buffer, part of high buffer, begins at 36800, and right now rdPtr already is at 19200. 36800 - 19200 = 17600 is end of regular buffer.
			begin
				bufferWrtPtr <= wrtPtr - 17600; //Ptr is for special buffer.
				bufferWe <= 0;
				bufferWeS <= 1;
			end
			else
			begin
				bufferWrtPtr <= wrtPtr + 19200; //19200 is where high buffer starts, low buffer ends.
				bufferWe <= 1;
				bufferWeS <= 0;
			end
		end
		
		frontHigh:
		begin
			bufferWrtPtr <= wrtPtr;
			if (rdPtr >= 17600) //Special buffer, part of high buffer, begins at 36800, and right now rdPtr already is at 19200. 36800 - 19200 = 17600 is end of regular buffer.
			begin
				bufferRdPtr <= rdPtr - 17600;
				color <= S;
			end
			else
			begin
				bufferRdPtr <= rdPtr + 19200; //19200 is where high buffer starts, low buffer ends.
				color <= {R, G, B};
			end
		end
	endcase
end
	 
DCBlockRam #(.DATA(1),.ADDR(16),.SIZE(36864),.FILE("init.txt")) redBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk), //VGA reads at 25Mhz.
	.wea(bufferWe), //Determined by address in buffer.
	.web(1'b0),
	.addra(bufferWrtPtr), //Which pixel to write to, determined by painter.
	.addrb(bufferRdPtr), //Which pixel to read from, determined by vga.
	.dina(dataIn[2]),
	.dinb(1'b0),
	//.douta(0),
	.doutb(R)
	 );
	 
DCBlockRam #(.DATA(1),.ADDR(16),.SIZE(36864),.FILE("init.txt")) greenBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk), //VGA reads at 25Mhz.
	.wea(bufferWe),
	.web(1'b0),
	.addra(bufferWrtPtr), //Which pixel to write to, determined by painter.
	.addrb(bufferRdPtr), //Which pixel to read from, determined by vga.
	.dina(dataIn[1]),
	.dinb(1'b0),
	//.douta(0),
	.doutb(G)
	 );
	 
DCBlockRam #(.DATA(1),.ADDR(16),.SIZE(36864),.FILE("init.txt")) blueBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk), //VGA reads at 25Mhz.
	.wea(bufferWe),
	.web(1'b0),
	.addra(bufferWrtPtr), //Which pixel to write to, determined by painter.
	.addrb(bufferRdPtr), //Which pixel to read from, determined by vga.
	.dina(dataIn[0]),
	.dinb(1'b0),
	//.douta(0),
	.doutb(B)
	 );
	 
DCBlockRam #(.DATA(3),.ADDR(11),.SIZE(1600),.FILE("init.txt")) specialBuffer(  //5 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk), //VGA reads at 25Mhz.
	.wea(bufferWeS),
	.web(1'b0),
	.addra(bufferWrtPtr[10:0]), //Which pixels to write to (3 instead of 1 at a time here), determined by painter.
	.addrb(bufferRdPtr[10:0]), //Which pixel to read from (all 3 come from this buffer instead of 3 separate buffers), determined by vga.
	.dina(dataIn),
	.dinb(3'b0),
	//.douta(0),
	.doutb(S)
	 );

endmodule
