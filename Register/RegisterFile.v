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
		input [3:0] readSelect1,
		input [3:0] readSelect2,
		input [3:0] writeSelect,
		input [15:0] writeEnable,
		input reset,
		input [15:0] inputReg,
		output reg [15:0] outputReg1,
		output reg [15:0] outputReg2
		);

        // wires coming out of the registers
		wire [15:0] reg0wire;
		wire [15:0] reg1wire;
		wire [15:0] reg2wire;
		wire [15:0] reg3wire;
		wire [15:0] reg4wire;
		wire [15:0] reg5wire;
		wire [15:0] reg6wire;
		wire [15:0] reg7wire;
		wire [15:0] reg8wire;
		wire [15:0] reg9wire;
		wire [15:0] reg10wire;
		wire [15:0] reg11wire;
		wire [15:0] reg12wire;
		wire [15:0] reg13wire;
		wire [15:0] reg14wire;
		wire [15:0] reg15wire;

        // Register instantiations
		Register reg0(clk, writeEnable[0], reset, inputReg, reg0Wire);
		Register reg1(clk, writeEnable[1], reset, inputReg, reg1Wire);
		Register reg2(clk, writeEnable[2], reset, inputReg, reg2Wire);
		Register reg3(clk, writeEnable[3], reset, inputReg, reg3Wire);
		Register reg4(clk, writeEnable[4], reset, inputReg, reg4Wire);
		Register reg5(clk, writeEnable[5], reset, inputReg, reg5Wire);
		Register reg6(clk, writeEnable[6], reset, inputReg, reg6Wire);
		Register reg7(clk, writeEnable[7], reset, inputReg, reg7Wire);
		Register reg8(clk, writeEnable[8], reset, inputReg, reg8Wire);
		Register reg9(clk, writeEnable[9], reset, inputReg, reg9Wire);
		Register reg10(clk, writeEnable[10], reset, inputReg, reg10Wire);
		Register reg11(clk, writeEnable[11], reset, inputReg, reg11Wire);
		Register reg12(clk, writeEnable[12], reset, inputReg, reg12Wire);
		Register reg13(clk, writeEnable[13], reset, inputReg, reg13Wire);
		Register reg14(clk, writeEnable[14], reset, inputReg, reg14Wire);
		Register reg15(clk, writeEnable[15], reset, inputReg, reg15Wire);


        // read first register
		always@(readSelect1, reg0wire, reg1wire, reg2wire, reg3wire, reg4wire, reg5wire, reg6wire, reg7wire, reg8wire, reg9wire, reg10wire, reg11wire, reg12wire, reg13wire, reg14wire, reg15wire) begin
			case(readSelect1)
				4'd0: begin
				outputReg1 = reg0wire;
				end
				4'd1: begin
				outputReg1 = reg1wire;
				end
				4'd2: begin
				outputReg1 = reg2wire;
				end
				4'd3: begin
				outputReg1 = reg3wire;
				end
				4'd4: begin
				outputReg1 = reg4wire;
				end
				4'd5: begin
				outputReg1 = reg5wire;
				end
				4'd6: begin
				outputReg1 = reg6wire;
				end
				4'd7: begin
				outputReg1 = reg7wire;
				end
				4'd8: begin
				outputReg1 = reg8wire;
				end
				4'd9: begin
				outputReg1 = reg9wire;
				end
				4'd10: begin
				outputReg1 = reg10wire;
				end
				4'd11: begin
				outputReg1 = reg11wire;
				end
				4'd12: begin
				outputReg1 = reg12wire;
				end
				4'd13: begin
				outputReg1 = reg13wire;
				end
				4'd14: begin
				outputReg1 = reg14wire;
				end
				4'd15: begin
				outputReg1 = reg15wire;
				end
			endcase
		end

		// read second register
		always@(readSelect2, reg0wire, reg1wire, reg2wire, reg3wire, reg4wire, reg5wire, reg6wire, reg7wire, reg8wire, reg9wire, reg10wire, reg11wire, reg12wire, reg13wire, reg14wire, reg15wire) begin
			case(readSelect2)
				4'd0: begin
				outputReg2 = reg0wire;
				end
				4'd1: begin
				outputReg2 = reg1wire;
				end
				4'd2: begin
				outputReg2 = reg2wire;
				end
				4'd3: begin
				outputReg2 = reg3wire;
				end
				4'd4: begin
				outputReg2 = reg4wire;
				end
				4'd5: begin
				outputReg2 = reg5wire;
				end
				4'd6: begin
				outputReg2 = reg6wire;
				end
				4'd7: begin
				outputReg2 = reg7wire;
				end
				4'd8: begin
				outputReg2 = reg8wire;
				end
				4'd9: begin
				outputReg2 = reg9wire;
				end
				4'd10: begin
				outputReg2 = reg10wire;
				end
				4'd11: begin
				outputReg2 = reg11wire;
				end
				4'd12: begin
				outputReg2 = reg12wire;
				end
				4'd13: begin
				outputReg2 = reg13wire;
				end
				4'd14: begin
				outputReg2 = reg14wire;
				end
				4'd15: begin
				outputReg2 = reg15wire;
				end
			endcase
		end

endmodule
