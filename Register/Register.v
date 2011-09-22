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
		input [3:0] read_select_1,
		input [3:0] read_select_2,
		input [3:0] write_select,
		input write,
		input reset,
		input [15:0] inputReg,
		output reg [15:0] output_reg_1,
		output reg [15:0] output_reg_2
	);

	reg[15:0] reg0;
	reg[15:0] reg1;
	reg[15:0] reg2;
	reg[15:0] reg3;
	reg[15:0] reg4;
	reg[15:0] reg5;
	reg[15:0] reg6;
	reg[15:0] reg7;
	reg[15:0] reg8;
	reg[15:0] reg9;
	reg[15:0] reg10;
	reg[15:0] reg11;
	reg[15:0] reg12;
	reg[15:0] reg13;
	reg[15:0] reg14;
	reg[15:0] reg15;

	always@(posedge clk) begin
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
	
	always@(*) begin
			case(read_select_1)
				4'd0:output_reg_1 = reg0;
				4'd1:output_reg_1 = reg1;
				4'd2:output_reg_1 = reg2;
				4'd3:output_reg_1 = reg3;
				4'd4:output_reg_1 = reg4;
				4'd5:output_reg_1 = reg5;
				4'd6:output_reg_1 = reg6;
				4'd7:output_reg_1 = reg7;
				4'd8:output_reg_1 = reg8;
				4'd9:output_reg_1 = reg9;
				4'd10:output_reg_1 = reg10;
				4'd11:output_reg_1 = reg11;
				4'd12:output_reg_1 = reg12;
				4'd13:output_reg_1 = reg13;
				4'd14:output_reg_1 = reg14;
				4'd15:output_reg_1 = reg15;
			endcase
			case(read_select_2)
				4'd0:output_reg_2 = reg0;
				4'd1:output_reg_2 = reg1;
				4'd2:output_reg_2 = reg2;
				4'd3:output_reg_2 = reg3;
				4'd4:output_reg_2 = reg4;
				4'd5:output_reg_2 = reg5;
				4'd6:output_reg_2 = reg6;
				4'd7:output_reg_2 = reg7;
				4'd8:output_reg_2 = reg8;
				4'd9:output_reg_2 = reg9;
				4'd10:output_reg_2 = reg10;
				4'd11:output_reg_2 = reg11;
				4'd12:output_reg_2 = reg12;
				4'd13:output_reg_2 = reg13;
				4'd14:output_reg_2 = reg14;
				4'd15:output_reg_2 = reg15;
			endcase
		end
endmodule
