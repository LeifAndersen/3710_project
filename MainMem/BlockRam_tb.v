`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:26:40 10/12/2011
// Design Name:   BlockRam
// Module Name:   C:/Users/jhparker/3710/MainMem/BlockRam_tb.v
// Project Name:  MainMem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BlockRam
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BlockRam_tb;

	// Inputs
	reg clka;
	reg wea;
	reg web;
	reg [15:0] addra;
	reg [15:0] addrb;
	reg [17:0] dina;
	reg [17:0] dinb;

	// Outputs
	wire [17:0] douta;
	wire [17:0] doutb;

	// Instantiate the Unit Under Test (UUT)
	BlockRam #(.SIZE(2048)) uut (
		.clka(clka), 
		.wea(wea), 
		.web(web), 
		.addra(addra), 
		.addrb(addrb), 
		.dina(dina), 
		.dinb(dinb), 
		.douta(douta), 
		.doutb(doutb)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		wea = 0;
		web = 0;
		addra = 0;
		addrb = 0;
		dina = 0;
		dinb = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

