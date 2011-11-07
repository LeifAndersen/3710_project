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
	input [9:0] wrtPtr, //Write pointer, location in PRAM that CPU is writing to.
	input [15:0] PRAMdata, //The line, right, left, and color stored in two lines of PRAM by CPU.
	output reg [9:0] rdPtr, //Read pointer, location in PRAM that Painter is reading from.
	output reg full, //This signal tells the CPU to NOP on its write until queue has space, also tells PRAM not to latch CPU'S value.
	output reg [14:0] addr, //Address (pixel location) in frame buffer.  Only need addressing for 1 buffer.  Which buffer is determined externally.
	output reg [2:0] data, //1 bit routed to each bit-addressed buffer, or all 3 bits if it's the special buffer.
	output reg we //write enable to frame buffer.
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
			state <= read1;
			newline <= 1;
			rdPtr <= 0;
			we <= 0;
			full <= 0;
		end
	else begin
	
	if (wrtPtr == (rdPtr - 1)) begin
		full <= 1;
		end
	else begin
		full <= 0;
		end
	
	case(state)
	read1:
		begin
			we <= 0;
			addr <= 0;
			if (wrtPtr != rdPtr)  //New data to read.
				begin
					left <= PRAMdata[13:7];
					right <= PRAMdata[6:0];
					state <= read2;
					if (rdPtr == 1023) //Probly not necessary, this should overflow correctly anyways.  If necessary, then above comparisons are wrong.
						rdPtr <= 0;
					else
						rdPtr <= rdPtr + 1;
				end
		end
		
	read2:
		begin
			if (wrtPtr != rdPtr)  //New data to read.
				begin
					line <= PRAMdata[9:3];
					data <= PRAMdata[2:0];
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
