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
		input [3:0] A, //read sel 1
		input [3:0] B, //read sel 2
		input [3:0] C, //write sel
		input write,
		input reset,
		input [15:0] inputReg, //write value
		output reg [15:0] outputReg1, //read value, A
		output reg [15:0] outputReg2 //read value, B
	);

	reg[15:0]R[15:0];

always@(*) begin
	case(A)
	4'd0:outputReg1 = R[4'd0];
	4'd1:outputReg1 = R[4'd1];
	4'd2:outputReg1 = R[4'd2];
	4'd3:outputReg1 = R[4'd3];
	4'd4:outputReg1 = R[4'd4];
	4'd5:outputReg1 = R[4'd5];
	4'd6:outputReg1 = R[4'd6];
	4'd7:outputReg1 = R[4'd7];
	4'd8:outputReg1 = R[4'd8];
	4'd9:outputReg1 = R[4'd9];
	4'd10:outputReg1 = R[4'd10];
	4'd11:outputReg1 = R[4'd11];
	4'd12:outputReg1 = R[4'd12];
	4'd13:outputReg1 = R[4'd13];
	4'd14:outputReg1 = R[4'd14];
	default:outputReg1 = R[4'd15];
	endcase

	case(B)
	4'd0:outputReg2 = R[4'd0];
	4'd1:outputReg2 = R[4'd1];
	4'd2:outputReg2 = R[4'd2];
	4'd3:outputReg2 = R[4'd3];
	4'd4:outputReg2 = R[4'd4];
	4'd5:outputReg2 = R[4'd5];
	4'd6:outputReg2 = R[4'd6];
	4'd7:outputReg2 = R[4'd7];
	4'd8:outputReg2 = R[4'd8];
	4'd9:outputReg2 = R[4'd9];
	4'd10:outputReg2 = R[4'd10];
	4'd11:outputReg2 = R[4'd11];
	4'd12:outputReg2 = R[4'd12];
	4'd13:outputReg2 = R[4'd13];
	4'd14:outputReg2 = R[4'd14];
	default:outputReg2 = R[4'd15];
	endcase
end

always@(posedge clk) begin
	if(reset == 1'b1) begin
		R[0] = 0;
		R[1] = 0;
		R[2] = 0;
		R[3] = 0;
		R[4] = 0;
		R[5] = 0;
		R[6] = 0;
		R[7] = 0;
		R[8] = 0;
		R[9] = 0;
		R[10] = 0;
		R[14] = 0;
		R[15] = 0;
	end
	else if(write == 1'b1)
		begin
			R[C] = inputReg;
		end
	end

endmodule
