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
	input full,
	input [15:0] PRAMdata, //The line, right, left, and color stored in two lines of PRAM by CPU.
	output reg [14:0] addr, //Address (pixel location) in frame buffer.  Only need addressing for 1 buffer.  Which buffer is determined externally.
	output reg [2:0] data, //1 bit routed to each bit-addressed buffer, or all 3 bits if it's the special buffer.
	output reg we, //write enable to frame buffer.
	output reg re,
	output reg swapBuffers //1 when CPU writes 16'hffff to PRAM, time to swap front and back buffer.
    );

parameter read1 = 0;
parameter read2 = 1;
parameter paint = 2;

reg newline; //Set to one when it's time to read in the next line.
reg [1:0] state; //Either paused, read line 1 of mem, read line 2 of mem.
reg[7:0] left; //Start of pixel line, 0-159
reg[7:0] right; //End of pixel line, 0-159
reg[6:0] line; //Horizontal line of pixels, 0-119

always@(posedge clk)
begin
	if (reset == 1'b1)
		begin
			addr <= 0;
			data <= 0;
			state <= read1;
			newline <= 1;
			we <= 0;
			re <= 0;
			full <= 0;
			swapBuffers <= 0;
		end
	else begin
	
	case(state)
	read1:
		begin
			we <= 0;
			addr <= 0;
			if (!empty)  //New data to read.
				begin
					if(PRAMdata == 16'hffff)
					begin
						swapBuffers <= 1;
						rdPtr <= rdPtr + 1;
					end
					else
					begin
						swapBuffers <= 0;
						line <= PRAMdata[9:3];
						data <= PRAMdata[2:0];
						state <= read2;
						rdPtr <= rdPtr + 1;
					end
				end
			else
				swapBuffers <= 0;
		end
		
	read2:
		begin
			if (wrtPtr != rdPtr)  //New data to read.
				begin
					left <= PRAMdata[15:8];
					right <= PRAMdata[7:0];
					state <= paint;
					if (rdPtr == 1023)
						rdPtr <= 0;
					else
						rdPtr <= rdPtr + 1;
				end
		end
		
	paint:
		begin
			if (newline)
				begin
					we <= 1;
					addr <= line * 160 + left; //Optimizable to line << 7 + line << 5 (Meaning line * 128 + line * 32) if necessary.
					if (right <= left)
						begin
							newline <= 1;
							state <= read1;
						end
					else
						newline <= 0;
				end
			else if (addr >= (line * 160 + right - 1))
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
	endcase
	end //END reset else.
end

endmodule
