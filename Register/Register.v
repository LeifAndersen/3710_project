`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Potato
// Engineer: 
// 
// Create Date:    16:21:14 09/08/2011 
// Design Name: 
// Module Name:    Register 
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


module Register(
		input clk,
		input [3:0] write_select,
		input write,
		input reset,
		input [15:0] inputReg,
		output	reg[15:0] reg0,
		output	reg[15:0] reg1,
		output	reg[15:0] reg2,
		output	reg[15:0] reg3,
		output	reg[15:0] reg4,
		output	reg[15:0] reg5,
		output	reg[15:0] reg6,
		output	reg[15:0] reg7,
		output	reg[15:0] reg8,
		output	reg[15:0] reg9,
		output	reg[15:0] reg10,
		output	reg[15:0] reg11,
		output	reg[15:0] reg12,
		output	reg[15:0] reg13,
		output	reg[15:0] reg14,
		output	reg[15:0] reg15
		);

	always@(negedge clk) begin
		if(reset == 1'b1) begin
			reg0 = 0;
			reg1 = 0;
			reg2 = 0;
			reg3 = 0;
			reg4 = 0;
			reg5 = 0;
			reg6 = 0;
			reg7 = 0;
			reg8 = 0;
			reg9 = 0;
			reg10 = 0;
			reg11 = 0;
			reg12 = 0;
			reg13 = 0;
			reg14 = 0;
			reg15 = 0;
		end 
		else begin
			if(write == 1'b1) begin
				case(write_select)
					4'd0:reg0 = inputReg;
					4'd1:reg1 = inputReg;
					4'd2:reg2 = inputReg;
					4'd3:reg3 = inputReg;
					4'd4:reg4 = inputReg;
					4'd5:reg5 = inputReg;
					4'd6:reg6 = inputReg;
					4'd7:reg7 = inputReg;
					4'd8:reg8 = inputReg;
					4'd9:reg9 = inputReg;
					4'd10:reg10 = inputReg;
					4'd11:reg11 = inputReg;
					4'd12:reg12 = inputReg;
					4'd13:reg13 = inputReg;
					4'd14:reg14 = inputReg;
					4'd15:reg15 = inputReg;
				endcase
			end
		end
	end
		
endmodule
