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
		input [3:0] writeSelectEncoded,
		input writeEnableBit,
		input reset,
		input [15:0] inputReg,
		output reg [15:0] outputRegOne,
		output reg [15:0] outputRegTwo
		);

		reg [15:0] writeEnable;

        // wires coming out of the registers
		wire [15:0] regWire0;
		wire [15:0] regWire1;
		wire [15:0] regWire2;
		wire [15:0] regWire3;
		wire [15:0] regWire4;
		wire [15:0] regWire5;
		wire [15:0] regWire6;
		wire [15:0] regWire7;
		wire [15:0] regWire8;
		wire [15:0] regWire9;
		wire [15:0] regWire10;
		wire [15:0] regWire11;
		wire [15:0] regWire12;
		wire [15:0] regWire13;
		wire [15:0] regWire14;
		wire [15:0] regWire15;

		// decode write value
		always@(writeSelectEncoded, writeEnableBit) begin
			case(writeSelectEncoded)
				4'd0: begin
					writeEnable = {16{writeEnableBit}} & 16'd1;
				end
				4'd1: begin
					writeEnable = {16{writeEnableBit}} & 16'd2;
				end
				4'd2: begin
					writeEnable = {16{writeEnableBit}} & 16'd4;
				end
				4'd3: begin
					writeEnable = {16{writeEnableBit}} & 16'd8;
				end
				4'd4: begin
					writeEnable = {16{writeEnableBit}} & 16'd16;
				end
				4'd5: begin
					writeEnable = {16{writeEnableBit}} & 16'd32;
				end
				4'd6: begin
					writeEnable = {16{writeEnableBit}} & 16'd64;
				end
				4'd7: begin
					writeEnable = {16{writeEnableBit}} & 16'd128;
				end
				4'd8: begin
					writeEnable = {16{writeEnableBit}} & 16'd256;
				end
				4'd9: begin
					writeEnable = {16{writeEnableBit}} & 16'd512;
				end
				4'd10: begin
					writeEnable = {16{writeEnableBit}} & 16'd1024;
				end
				4'd11: begin
					writeEnable = {16{writeEnableBit}} & 16'd2048;
				end
				4'd12: begin
					writeEnable = {16{writeEnableBit}} & 16'd4096;
				end
				4'd13: begin
					writeEnable = {16{writeEnableBit}} & 16'd8192;
				end
				4'd14: begin
					writeEnable = {16{writeEnableBit}} & 16'd16384;
				end
				4'd15: begin
					writeEnable = {16{writeEnableBit}} & 16'd36768;
				end
			endcase
		end

        // read first register
		always@(readSelect1, regWire0, regWire1, regWire2, regWire3, regWire4, regWire5, regWire6, regWire7, regWire8, regWire9, regWire10, regWire11, regWire12, regWire13, regWire14, regWire15) begin
			case(readSelect1)
				4'd0: begin
				outputRegOne = regWire0;
				end
				4'd1: begin
				outputRegOne = regWire1;
				end
				4'd2: begin
				outputRegOne = regWire2;
				end
				4'd3: begin
				outputRegOne = regWire3;
				end
				4'd4: begin
				outputRegOne = regWire4;
				end
				4'd5: begin
				outputRegOne = regWire5;
				end
				4'd6: begin
				outputRegOne = regWire6;
				end
				4'd7: begin
				outputRegOne = regWire7;
				end
				4'd8: begin
				outputRegOne = regWire8;
				end
				4'd9: begin
				outputRegOne = regWire9;
				end
				4'd10: begin
				outputRegOne = regWire10;
				end
				4'd11: begin
				outputRegOne = regWire11;
				end
				4'd12: begin
				outputRegOne = regWire12;
				end
				4'd13: begin
				outputRegOne = regWire13;
				end
				4'd14: begin
				outputRegOne = regWire14;
				end
				4'd15: begin
				outputRegOne = regWire15;
				end
			endcase
		end

		// read second register
		always@(readSelect2, regWire0, regWire1, regWire2, regWire3, regWire4, regWire5, regWire6, regWire7, regWire8, regWire9, regWire10, regWire11, regWire12, regWire13, regWire14, regWire15) begin
			case(readSelect2)
				4'd0: begin
				outputRegTwo = regWire0;
				end
				4'd1: begin
				outputRegTwo = regWire1;
				end
				4'd2: begin
				outputRegTwo = regWire2;
				end
				4'd3: begin
				outputRegTwo = regWire3;
				end
				4'd4: begin
				outputRegTwo = regWire4;
				end
				4'd5: begin
				outputRegTwo = regWire5;
				end
				4'd6: begin
				outputRegTwo = regWire6;
				end
				4'd7: begin
				outputRegTwo = regWire7;
				end
				4'd8: begin
				outputRegTwo = regWire8;
				end
				4'd9: begin
				outputRegTwo = regWire9;
				end
				4'd10: begin
				outputRegTwo = regWire10;
				end
				4'd11: begin
				outputRegTwo = regWire11;
				end
				4'd12: begin
				outputRegTwo = regWire12;
				end
				4'd13: begin
				outputRegTwo = regWire13;
				end
				4'd14: begin
				outputRegTwo = regWire14;
				end
				4'd15: begin
				outputRegTwo = regWire15;
				end
			endcase
		end


		 // Register instantiations
		RegisterModule reg0(clk, writeEnable[0], reset, inputReg, regWire0);
		RegisterModule reg1(clk, writeEnable[1], reset, inputReg, regWire1);
		RegisterModule reg2(clk, writeEnable[2], reset, inputReg, regWire2);
		RegisterModule reg3(clk, writeEnable[3], reset, inputReg, regWire3);
		RegisterModule reg4(clk, writeEnable[4], reset, inputReg, regWire4);
		RegisterModule reg5(clk, writeEnable[5], reset, inputReg, regWire5);
		RegisterModule reg6(clk, writeEnable[6], reset, inputReg, regWire6);
		RegisterModule reg7(clk, writeEnable[7], reset, inputReg, regWire7);
		RegisterModule reg8(clk, writeEnable[8], reset, inputReg, regWire8);
		RegisterModule reg9(clk, writeEnable[9], reset, inputReg, regWire9);
		RegisterModule reg10(clk, writeEnable[10], reset, inputReg, regWire10);
		RegisterModule reg11(clk, writeEnable[11], reset, inputReg, regWire11);
		RegisterModule reg12(clk, writeEnable[12], reset, inputReg, regWire12);
		RegisterModule reg13(clk, writeEnable[13], reset, inputReg, regWire13);
		RegisterModule reg14(clk, writeEnable[14], reset, inputReg, regWire14);
		RegisterModule reg15(clk, writeEnable[15], reset, inputReg, regWire15);


endmodule
