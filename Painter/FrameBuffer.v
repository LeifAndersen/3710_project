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

reg[14:0] bufferWrtPtr;
reg[14:0] bufferRdPtr;
reg bufferWe; //regular buffer wrt enable.
reg bufferWeS; //special buffer wrt enable.
reg[2:0] ddataIn; //Delayed data in by 1 clock to match with the 1 clock delay on we and wrtPtr.

wire R;
wire G;
wire B;
wire[2:0] S;

//All write logic in here.
always@(posedge clk)
begin
	if (reset)
	begin
		state <= frontLow;
	end
	else begin
	ddataIn <= dataIn;

	if (swapBuffers)
	begin
		state <= ~state; //Switch which is front buffer and which is back buffer.
	end

	case(state)	
		frontLow:
		begin
			if (wrtPtr >= 13440) //Special buffer, part of high buffer, begins at 32640, and right now rdPtr already is at 19200. 32640 - 19200 = 13440 is end of regular buffer.
			begin
				bufferWrtPtr <= wrtPtr - 13440; //Ptr is for special buffer.
				bufferWe <= 0;
				bufferWeS <= we;
			end
			else
			begin
				bufferWrtPtr <= wrtPtr + 19200; //19200 is where high buffer starts, low buffer ends.
				bufferWe <= we;
				bufferWeS <= 0;
			end
		end
		
		frontHigh:
		begin
			bufferWrtPtr <= wrtPtr;
		end
	endcase
	end //end reset else.
end

//All read logic in here.
always@(posedge vgaClk)
begin
	if (reset)
	begin
		color <= 0;
	end
	else begin

	case(state)	
		frontLow:
		begin
			bufferRdPtr <= rdPtr;
			color <= {R, G, B};
		end
		
		frontHigh:
		begin
			if (rdPtr >= 13440) //Special buffer, part of high buffer, begins at 36800, and right now rdPtr already is at 19200. 32640 - 19200 = 13440 is end of regular buffer.
			begin
				bufferRdPtr <= rdPtr - 13440;
				color <= S;
			end
			else
			begin
				bufferRdPtr <= rdPtr + 19200; //19200 is where high buffer starts, low buffer ends.
				color <= {R, G, B};
			end
		end
	endcase
	end //end reset else.
end
	 
DCBlockRam #(.DATA(1),.ADDR(15),.SIZE(32768),.FILE("initR.txt")) redBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk), //VGA reads at 25Mhz.
	.wea(bufferWe), //Determined by address in buffer.
	.web(1'b0),
	.addra(bufferWrtPtr), //Which pixel to write to, determined by painter.
	.addrb(bufferRdPtr), //Which pixel to read from, determined by vga.
	.dina(ddataIn[2]),
	.dinb(1'b0),
	//.douta(0),
	.doutb(R)
	 );
	 
DCBlockRam #(.DATA(1),.ADDR(15),.SIZE(32768),.FILE("initG.txt")) greenBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk), //VGA reads at 25Mhz.
	.wea(bufferWe),
	.web(1'b0),
	.addra(bufferWrtPtr), //Which pixel to write to, determined by painter.
	.addrb(bufferRdPtr), //Which pixel to read from, determined by vga.
	.dina(ddataIn[1]),
	.dinb(1'b0),
	//.douta(0),
	.doutb(G)
	 );
	 
DCBlockRam #(.DATA(1),.ADDR(15),.SIZE(32768),.FILE("initB.txt")) blueBuffer(  //115 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk), //VGA reads at 25Mhz.
	.wea(bufferWe),
	.web(1'b0),
	.addra(bufferWrtPtr), //Which pixel to write to, determined by painter.
	.addrb(bufferRdPtr), //Which pixel to read from, determined by vga.
	.dina(ddataIn[0]),
	.dinb(1'b0),
	//.douta(0),
	.doutb(B)
	 );
	 
DCBlockRam #(.DATA(3),.ADDR(13),.SIZE(5760),.FILE("initS.txt")) specialBuffer(  //5 horizontal lines of pixels, out of the full 120.
	.clka(clk),
	.clkb(vgaClk), //VGA reads at 25Mhz.
	.wea(bufferWeS),
	.web(1'b0),
	.addra(bufferWrtPtr[12:0]), //Which pixels to write to (3 instead of 1 at a time here), determined by painter.
	.addrb(bufferRdPtr[12:0]), //Which pixel to read from (all 3 come from this buffer instead of 3 separate buffers), determined by vga.
	.dina(ddataIn),
	.dinb(3'b0),
	//.douta(0),
	.doutb(S)
	 );

endmodule
