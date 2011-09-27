`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    17:25:41 09/27/2011
// Design Name:
// Module Name:    RegisterFile
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
module RegisterFile(
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

		wire[15:0] reg0;
		wire[15:0] reg1;
		wire[15:0] reg2;
		wire[15:0] reg3;
		wire[15:0] reg4;
		wire[15:0] reg5;
		wire[15:0] reg6;
		wire[15:0] reg7;
		wire[15:0] reg8;
		wire[15:0] reg9;
		wire[15:0] reg10;
		wire[15:0] reg11;
		wire[15:0] reg12;
		wire[15:0] reg13;
		wire[15:0] reg14;
		wire[15:0] reg15;

		Register registers(clk, write_select, write, reset, inputReg, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15);

		always@(read_select_1, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15) begin
			case(read_select_1)
            4'd0: begin
            output_reg_1 = reg0;
            end
            4'd1: begin
            output_reg_1 = reg1;
            end
            4'd2: begin
            output_reg_1 = reg2;
            end
            4'd3: begin
            output_reg_1 = reg3;
            end
            4'd4: begin
            output_reg_1 = reg4;
            end
            4'd5: begin
            output_reg_1 = reg5;
            end
            4'd6: begin
            output_reg_1 = reg6;
            end
            4'd7: begin
            output_reg_1 = reg7;
            end
            4'd8: begin
            output_reg_1 = reg8;
            end
            4'd9: begin
            output_reg_1 = reg9;
            end
            4'd10: begin
            output_reg_1 = reg10;
            end
            4'd11: begin
            output_reg_1 = reg11;
            end
            4'd12: begin
            output_reg_1 = reg12;
            end
            4'd13: begin
            output_reg_1 = reg13;
            end
            4'd14: begin
            output_reg_1 = reg14;
            end
            4'd15: begin
            output_reg_1 = reg15;
			endcase
		end
		always@(read_select_1, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15) begin
			case(read_select_2)
            4'd0: begin
            output_reg_2 = reg0;
            end
            4'd1: begin
            output_reg_2 = reg1;
            end
            4'd2: begin
            output_reg_2 = reg2;
            end
            4'd3: begin
            output_reg_2 = reg3;
            end
            4'd4: begin
            output_reg_2 = reg4;
            end
            4'd5: begin
            output_reg_2 = reg5;
            end
            4'd6: begin
            output_reg_2 = reg6;
            end
            4'd7: begin
            output_reg_2 = reg7;
            end
            4'd8: begin
            output_reg_2 = reg8;
            end
            4'd9: begin
            output_reg_2 = reg9;
            end
            4'd10: begin
            output_reg_2 = reg10;
            end
            4'd11: begin
            output_reg_2 = reg11;
            end
            4'd12: begin
            output_reg_2 = reg12;
            end
            4'd13: begin
            output_reg_2 = reg13;
            end
            4'd14: begin
            output_reg_2 = reg14;
            end
            4'd15: begin
            output_reg_2 = reg15;
			endcase
		end

endmodule
