`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:18:38 10/06/2011 
// Design Name: 
// Module Name:    BlockRam 
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
module BlockRam#(parameter DATA = 18, parameter ADDR = 14, parameter SIZE = 12288, parameter FILE = "init.txt")(
	input clka,
	input wea, //write enable A
	input web, //write enable B
	input [ADDR-1:0] addra,
	input [ADDR-1:0] addrb,
	input [DATA-1:0] dina,
	input [DATA-1:0] dinb,
	output reg [DATA-1:0] douta,
	output reg [DATA-1:0] doutb
	 );
	//synthesis attribute ram_style of mem is distributed
   parameter RAM_WIDTH = 18;
   parameter RAM_ADDR_BITS = 15;

	//(* RAM_STYLE="{AUTO | BLOCK |  BLOCK_POWER1 | BLOCK_POWER2}" *)
   reg [DATA-1:0] memory [SIZE-1:0];
   //reg [RAM_WIDTH-1:0] output_dataA, output_dataB;

	//Shouldn't need these, addresses and data are inputs already.
   //<reg_or_wire> [RAM_ADDR_BITS-1:0] <addressA>, <addressB>;
   //<reg_or_wire> [RAM_WIDTH-1:0] <input_dataA>;

   //  The following code is only necessary if you wish to initialize the RAM 
   //  contents via an external file (use $readmemb for binary data	
	initial
		$readmemh(FILE, memory);

   always @(posedge clka)
	begin
         if (wea)
            memory[addra] <= dina;
         douta <= memory[addra];
	end
      
   always @(posedge clka)
   begin
         if (web)
            memory[addrb] <= dinb;
         doutb <= memory[addrb];
   end

endmodule
