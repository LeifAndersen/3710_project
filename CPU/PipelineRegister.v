`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:30 11/06/2011 
// Design Name: 
// Module Name:    PipelineRegister 
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
module PipelineRegister(
	input              clk,
	input              reset,
    input              Mem_Read_In,
    output reg         Mem_Read_Out,
    input              Reg_Wr_En_1_In,
    output reg         Reg_Wr_En_1_Out,
    input              Reg_Wr_En_2_In,
    output reg         Reg_Wr_En_2_Out,
    input      [14:12] Buff_Ctrl_In,
    output reg [14:12] Buff_Ctrl_Out,
    input        [3:0] Reg_Wr_Sel_In,
    output reg   [3:0] Reg_Wr_Sel_Out,
	input 	   [15:0]  Mem_Addr_In,
	output reg [15:0]  Mem_Addr_Out
    );

	always@(posedge clk) begin
		if(reset == 1'b1) begin
			Mem_Read_Out     <= 0;
			Reg_Wr_En_1_Out  <= 0;
			Reg_Wr_En_2_Out  <= 0;
			Buff_Ctrl_Out    <= 3'd0;
			Reg_Wr_Sel_Out   <= 4'd0;
			Mem_Addr_Out     <= 16'd0;
		end
		else begin
			Mem_Read_Out     <= Mem_Read_In;
			Reg_Wr_En_1_Out  <= Reg_Wr_En_1_In;
			Reg_Wr_En_2_Out  <= Reg_Wr_En_2_In;
			Buff_Ctrl_Out    <= Buff_Ctrl_In;
			Reg_Wr_Sel_Out   <= Reg_Wr_Sel_In;
			Mem_Addr_Out     <= Mem_Addr_In;
		end
	end

endmodule
