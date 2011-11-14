`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:55:53 11/13/2011 
// Design Name: 
// Module Name:    top 
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
module top(
	input clk,
	input reset,
	output[2:0] color, //{R, G, B}
	output hsync,
	output vsync
    );

wire vgaClk;
wire clkfb;
reg we;
reg[15:0] data;
reg[9:0] i;
reg state;
reg[15:0] cycles;
wire full;

always@(posedge clk)
begin
	if (reset)
	begin
		data <= 0;
		i <= 0;
		we <= 0;
		state <= 0;
		cycles <= 0;
		//vgaClk <= 0;
	end
	else begin
		//vgaClk <= ~vgaClk;
		if (i < 255)
		begin
			case(state)
				0:
				begin
					if (!full)
					begin
						i <= i + 1;
						we <= 1;
						state <= 1;
					end
					else
						we <= 0;
						data[15:10] <= 0;
						data[9:7] <= i%8;
					if (i < 120)
						data[6:0] <= i;
					else if (i < 240)
						data[6:0] <= i - 120;
					else
						data[6:0] <= i - 240;
				end
				1:
				begin
					we <= 1;
					data[15:8] <= 0;
					data[7:0] <= 159;
					state <= 0;
				end
			endcase
		end
		else
		begin
			if (cycles >= 50000 && cycles < 50003)
			begin
				we <= 1;
				data[15:0] <= 16'hffff;
				cycles <= cycles + 1;
			end
			else if (cycles > 50002)
			begin
				we <= 0;
			end
			else
			begin
				we <= 0;
				cycles <= cycles + 1;
			end
		end
	end
end

DCM_SP #(
      .CLKDV_DIVIDE(2.0), // Divide by: 1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.5,6.0,6.5
                          //   7.0,7.5,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0 or 16.0
      //.CLKFX_DIVIDE(1),   // Can be any integer from 1 to 32
      //.CLKFX_MULTIPLY(4), // Can be any integer from 2 to 32
      .CLKIN_DIVIDE_BY_2("FALSE"), // TRUE/FALSE to enable CLKIN divide by two feature
      //.CLKIN_PERIOD(0.0),  // Specify period of input clock
      .CLKOUT_PHASE_SHIFT("NONE"), // Specify phase shift of NONE, FIXED or VARIABLE
      .CLK_FEEDBACK("1X"),  // Specify clock feedback of NONE, 1X or 2X
      .DESKEW_ADJUST("SYSTEM_SYNCHRONOUS"), // SOURCE_SYNCHRONOUS, SYSTEM_SYNCHRONOUS or
                                            //   an integer from 0 to 15
      .DLL_FREQUENCY_MODE("LOW"),  // HIGH or LOW frequency mode for DLL
      .DUTY_CYCLE_CORRECTION("TRUE"), // Duty cycle correction, TRUE or FALSE
      .PHASE_SHIFT(0),     // Amount of fixed phase shift from -255 to 255
      .STARTUP_WAIT("TRUE")   // Delay configuration DONE until DCM LOCK, TRUE/FALSE
   ) DCM_SP_inst (
		.CLK0(clkfb),
      .CLKDV(vgaClk),   // Divided DCM CLK out (CLKDV_DIVIDE)
		.CLKFB(clkfb),
      .CLKIN(clk),   // Clock input (from IBUFG, BUFG or DCM)
      .RST(reset)        // DCM asynchronous reset input
   );

 DrawUnit drawunit(
	.clk(clk),
	.vgaClk(vgaClk),
	.reset(reset),
	.we(we),
	.dataIn(data),
	.full(full),
	.color(color), //{R, G, B}
	.hsync(hsync),
	.vsync(vsync)
    );

endmodule
