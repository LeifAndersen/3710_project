`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:10:23 10/22/2011 
// Design Name: 
// Module Name:    Painter 
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
module Painter(
	input clk,
	input reset,
	input empty,
	input swapBuffers,
	input [31:0] PRAMdata, //The line, right, left, and color stored in two lines of PRAM by CPU.
	output reg [14:0] addr, //Address (pixel location) in frame buffer.  Only need addressing for 1 buffer.  Which buffer is determined externally.
	output reg [2:0] data, //1 bit routed to each bit-addressed buffer, or all 3 bits if it's the special buffer.
	output reg we, //write enable to frame buffer.
	output reg re,
	output reg swapBuffersCommand //1 when CPU writes 16'hffff to PRAM, time to swap front and back buffer.
    );

parameter read1 = 3'd0;
parameter read2 = 3'd1;
parameter read3 = 3'd2;
parameter paint = 3'd3;
parameter pause = 3'd4;

reg newline; //Set to one when it's time to read in the next line.
reg[2:0] state; //Either paused, read line 1 of mem, read line 2 of mem.
reg[7:0] left; //Start of pixel line, 0-159
reg[7:0] right; //End of pixel line, 0-159
reg[6:0] line; //Horizontal line of pixels, 0-119

always@(posedge clk)
begin
	if (reset == 1'b1)
		begin
			state <= read1;
			newline <= 1;
			addr <= 0;
			data <= 0;
			we <= 0;
			re <= 0;
			swapBuffersCommand <= 0;
		end
	else begin
	
	case(state)
	read1:
	begin
		//swapBuffersCommand <= 0;
		we <= 0;
		addr <= 0;
		if (!empty)
		begin
			re <= 1;
			state <= read2;
		end
	end
	
	read2:
	begin
		re <= 0;
		state <= read3;
	end
	
	read3:	
	begin
		if (PRAMdata == 32'hffffffff)
		begin
			swapBuffersCommand <= 1;
			state <= pause;
		end
		else
		begin
			line <= PRAMdata[25:19];
			data <= PRAMdata[18:16];
			left <= PRAMdata[15:8];
			right <= PRAMdata[7:0];
			state <= paint;
		end
	end
			
	paint:
		begin
			if (newline)
				begin
					we <= 1;
					//addr <= line * 160 + left; //Optimizable to line << 7 + line << 5 (Meaning line * 128 + line * 32) if necessary.
					addr <= (line << 7) + (line << 5) + left; //Optimizable to line << 7 + line << 5 (Meaning line * 128 + line * 32) if necessary.
					if (right <= left)
						begin
							newline <= 1;
							state <= read1;
						end
					else
						newline <= 0;
				end
			//else if (addr >= (line * 160 + right - 1))
			else if (addr >= ((line << 7) + (line << 5) + right - 1))
				begin
					addr <= addr + 1;
					newline <= 1;
					state <= read1;
				end
			else
				begin
					addr <= addr + 1;
				end
		end
		
	pause:
		begin
			if (swapBuffers)
				state <= read1;
			swapBuffersCommand <= 0;
		end
	endcase
	end //END reset else.
end

endmodule
