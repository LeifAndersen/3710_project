`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:38:06 11/09/2011 
// Design Name: 
// Module Name:    Queue 
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
module Queue(
	input clk,
	input reset,
	input we,
	input re, //read enable
	input[15:0] wrtData,
	output reg [31:0] rdData,
	output full,
	output empty
    );


//parameter noWrite = 0;
//parameter justWrote = 1;
//parameter writes = 0;
//
//reg[15:0] Pdata;
//reg writeState;
//
parameter high = 0;
parameter low = 1;

reg state;
reg[31:0] temp;//Holds the high value CPU writes in until CPU writes a low value too, then this writes to the PRAM.

reg[8:0] rdPtr;
reg[8:0] wrtPtr;
reg[9:0] count;
wire[31:0] dataOut;

assign full = (count == 511);
assign empty = (count == 0);

always@(posedge clk)
begin
if (reset)
begin
	wrtPtr <= 0;
	rdPtr <= 0;
	rdData <= 0;
	count <= 0;
end
else
begin
	if (we)
	begin
		case(state)		
			high:
			begin
				temp[31:16] <= wrtData;
				state <= low;
			end		
			low:
			begin
				temp[15:0] <= wrtData;
				wrtPtr <= wrtPtr + 1;
				state <= high;
			end
		endcase
	end
	
	if (re)
	begin
		rdPtr <= rdPtr + 1;
		rdData <= dataOut;
	end
	
	if (re && !we && count != 0)
	begin
		count <= count - 1;
	end
	
	if (we && !re && count != 512)
	begin
		count <= count + 1;
	end
end
end



BlockRam #(.DATA(32),.ADDR(9),.SIZE(512),.FILE("init.txt")) PRAM(
	.clka(clk),
	.wea(we),
	.web(1'b0),
	.addra(temp), //Address in queue to write to.
	.addrb(rdPtr), //Where painter reads from.
	.dina(wrtData), //Data from CPU to write.
	.dinb(16'b0), //Port B is read only.
	//.douta(0), Port A is write only
	.doutb(dataOut)
	 );

endmodule
