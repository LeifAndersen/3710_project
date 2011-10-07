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
module BlockRam(
	input clka,
	//input eA, //enable A
	//input eB, //enable B
	input wea, //write enable A
	input web, //write enable B
	input [15:0] addra,
	input [15:0] addrb,
	input [17:0] dina,
	input [17:0] dinb,
	output [17:0] douta,
	output [17:0] doutb
	 );
	 
   parameter RAM_WIDTH = 18;
   parameter RAM_ADDR_BITS = 1024;

   reg [RAM_WIDTH-1:0] memory [(2**RAM_ADDR_BITS)-1:0];
   //reg [RAM_WIDTH-1:0] output_dataA, output_dataB;

	//Shouldn't need these, addresses and data are inputs already.
   //<reg_or_wire> [RAM_ADDR_BITS-1:0] <addressA>, <addressB>;
   //<reg_or_wire> [RAM_WIDTH-1:0] <input_dataA>;

   //  The following code is only necessary if you wish to initialize the RAM 
   //  contents via an external file (use $readmemb for binary data)
   //initial
      //$readmemh("<data_file_name>", <rom_name>, <begin_address>, <end_address>);

   always @(posedge clka)
      if (ea) begin
         if (wea)
            memory[addra] <= dina;
         doutA <= memory[addrb];
      end
      
   always @(posedge clka)
      if (eb) begin
         if (web)
            memory[addrb] <= dinb;
         doutB <= memory[addrb];
      end

endmodule
