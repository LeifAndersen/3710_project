`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:12:37 09/30/2011 
// Design Name: 
// Module Name:    VGA_Controller 
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
module VGA_Controller(
	input clk,  //Expected to be 25MHz.
	input reset,
	input r,
	input g,
	input b,
	//output reg[17:0] fbAddr, //Address into frame buffer.
	output reg[8:0] line,
	output reg[9:0] offset,
	output reg[2:0] color, //{R, G, B}
	output reg hsync,
	output reg vsync
    );

//All parameters are in units of Clocks.
//HSYNC
parameter Ts = 10'd800; //Total line time
parameter Tdisp = 10'd640; //Total horizontal resolution.
parameter Tpw = 10'd96; //The time hsync stays low.
parameter Tfp = 10'd16; //Front porch
parameter Tbp = 10'd48; //Back porch
parameter Tbp_Tpw = 10'd144;
parameter Tbp_Tpw_Tdisp = 10'd784;

//VSYNC
parameter VTs = 20'd416800; //Total line time
parameter VTdisp = 20'd384000; //Total horizontal resolution.
parameter VTpw = 20'd1600; //The time hsync stays low.
parameter VTfp = 20'd8000; //Back porch
parameter VTbp = 20'd23200; //Front porch
parameter VTbp_VTpw = 20'd24800;
parameter VTbp_VTpw_VTdisp = 20'd408800;

reg[9:0] pixCount; 	// 800 (big enuf to hold Ts)
reg[19:0] totalPix; 	// 416,800 (big enough for VTs)
reg Henable;

//Divide input Clk by two to get pixel clock.

//pixCount set to zero to begin. This loop determines when Hsync is high or low.  Assum Hsync starts at 0.
//HSYNC
always@(posedge clk, posedge reset)
begin
	//VSYNC
	if(reset)
		begin
			vsync <= 0;
			hsync <= 0;
			pixCount <= 1;
			totalPix <= 1;
			Henable <= 0;
			color <= 0;
			//fbAddr <= 0;//ADDED THIS
			line <= 0;
			offset <= 0;
		end
	else
	begin	
		case(totalPix)
			VTpw:
			begin
				vsync <= 1;
				totalPix <= totalPix + 1;
			end
			VTbp_VTpw: //Time to start drawing horizontal lines.
			begin
				Henable <= 1;
				totalPix <= totalPix + 1;
			end
			VTbp_VTpw_VTdisp: //Time to stop drawing, just hit the front porch.
			begin
				Henable <= 0;
				hsync <= 0;
				totalPix <= totalPix + 1;
				//fbAddr <= 0;
				line <= 0;
				offset <= 0;
			end
			VTs: //One full Line is complete.
			begin
				vsync <= 0;
				totalPix <= 1;
			end
			default:
				totalPix <= totalPix + 1; //Keep counting
		endcase
		
		//HSYNC
		begin
			case(pixCount)
				Tpw:
				begin
					hsync <= 1;
					pixCount <= pixCount + 1;
				end
				Tbp_Tpw: //Time to start outputting colors, this is pixel 1.
				begin
					if(Henable)
					begin
						color <= {r,g,b};
						//fbAddr <= fbAddr + 1;
						offset <= offset + 1;
					end
					else
						color <= 0;
					pixCount <= pixCount + 1;
				end
				Tbp_Tpw_Tdisp: //Time to stop drawing, just hit the front porch.
				begin
					color <= 0;
					pixCount <= pixCount + 1;
					offset <= 0;
					if (Henable && line != 479)
						line <= line + 1;
				end
				Ts: //One full Line is complete.
				begin
					hsync <= 0;
					pixCount <= 1;
				end
				default:
				begin
					//When to request color from memory:
					if (pixCount >= Tbp_Tpw-1 && pixCount < Tbp_Tpw_Tdisp-1 && Henable)
						begin
							//fbAddr <= fbAddr + 1;
							offset <= offset + 1;
						end					
					//When to output color:
					if (pixCount >= Tbp_Tpw && pixCount < Tbp_Tpw_Tdisp && Henable)
						begin
							color <= {r, g, b};
						end
					pixCount <= pixCount + 1; //Keep counting
				end
			endcase
		end
		
	end
end

endmodule
