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
		input writeEnable,
		input reset,
		input [15:0] inputReg,
		output reg [15:0] outputReg1,
		output reg [15:0] outputReg2
		);

		reg [15:0] reg0;
		reg [15:0] reg1;
		reg [15:0] reg2;
		reg [15:0] reg3;
		reg [15:0] reg4;
		reg [15:0] reg5;
		reg [15:0] reg6;
		reg [15:0] reg7;
		reg [15:0] reg8;
		reg [15:0] reg9;
		reg [15:0] reg10;
		reg [15:0] reg11;
		reg [15:0] reg12;
		reg [15:0] reg13;
		reg [15:0] reg14;
		reg [15:0] reg15;

        // read first register
		always@(readSelect1, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15) begin
			case(readSelect1)
				4'd0: begin
				outputReg1 = reg0;
				end
				4'd1: begin
				outputReg1 = reg1;
				end
				4'd2: begin
				outputReg1 = reg2;
				end
				4'd3: begin
				outputReg1 = reg3;
				end
				4'd4: begin
				outputReg1 = reg4;
				end
				4'd5: begin
				outputReg1 = reg5;
				end
				4'd6: begin
				outputReg1 = reg6;
				end
				4'd7: begin
				outputReg1 = reg7;
				end
				4'd8: begin
				outputReg1 = reg8;
				end
				4'd9: begin
				outputReg1 = reg9;
				end
				4'd10: begin
				outputReg1 = reg10;
				end
				4'd11: begin
				outputReg1 = reg11;
				end
				4'd12: begin
				outputReg1 = reg12;
				end
				4'd13: begin
				outputReg1 = reg13;
				end
				4'd14: begin
				outputReg1 = reg14;
				end
				4'd15: begin
				outputReg1 = reg15;
				end
				default: outputReg1 = 16'dx;
			endcase
		end

		// read second register
		always@(readSelect2, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15) begin
			case(readSelect2)
				4'd0: begin
				outputReg2 = reg0;
				end
				4'd1: begin
				outputReg2 = reg1;
				end
				4'd2: begin
				outputReg2 = reg2;
				end
				4'd3: begin
				outputReg2 = reg3;
				end
				4'd4: begin
				outputReg2 = reg4;
				end
				4'd5: begin
				outputReg2 = reg5;
				end
				4'd6: begin
				outputReg2 = reg6;
				end
				4'd7: begin
				outputReg2 = reg7;
				end
				4'd8: begin
				outputReg2 = reg8;
				end
				4'd9: begin
				outputReg2 = reg9;
				end
				4'd10: begin
				outputReg2 = reg10;
				end
				4'd11: begin
				outputReg2 = reg11;
				end
				4'd12: begin
				outputReg2 = reg12;
				end
				4'd13: begin
				outputReg2 = reg13;
				end
				4'd14: begin
				outputReg2 = reg14;
				end
				4'd15: begin
				outputReg2 = reg15;
				end
				default: outputReg2 = 16'dx;
			endcase
		end

		// write to register
        always@(negedge clk) begin
            if (writeEnable == 1'b1) begin
                case(writeSelect)
                    4'd0:
                    begin
                        reg0 = inputReg;
                    end
                    4'd1:
                    begin
                        reg1 = inputReg;
                    end
                    4'd2:
                    begin
                        reg2 = inputReg;
                    end
                    4'd3:
                    begin
                        reg3 = inputReg;
                    end
                    4'd4:
                    begin
                        reg4 = inputReg;
                    end
                    4'd5:
                    begin
                        reg5 = inputReg;
                    end
                    4'd6:
                    begin
                        reg6 = inputReg;
                    end
                    4'd7:
                    begin
                        reg7 = inputReg;
                    end
                    4'd8:
                    begin
                        reg8 = inputReg;
                    end
                    4'd9:
                    begin
                        reg9 = inputReg;
                    end
                    4'd10:
                    begin
                        reg10 = inputReg;
                    end
                    4'd11:
                    begin
                        reg11 = inputReg;
                    end
                    4'd12:
                    begin
                        reg12 = inputReg;
                    end
                    4'd13:
                    begin
                        reg13 = inputReg;
                    end
                    4'd14:
                    begin
                        reg14 = inputReg;
                    end
                    4'd15:
                    begin
                        reg15 = inputReg;
                    end
                endcase
            end
        end

endmodule
