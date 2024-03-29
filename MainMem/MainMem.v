`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:35:26 11/15/2011 
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
module MainMem(
	input clka,
	input wea, //write enable A
	input web, //write enable B
	input [13:0] addra,
	input [13:0] addrb,
	input [17:0] dina,
	input [17:0] dinb,
	output reg [17:0] douta,
	output reg [17:0] doutb
    );
	

reg wea0;
reg web0;
wire[17:0] douta0;
wire[17:0] doutb0;
reg wea1;
reg web1;
wire[17:0] douta1;
wire[17:0] doutb1;
reg wea2;
reg web2;
wire[17:0] douta2;
wire[17:0] doutb2;
reg wea3;
reg web3;
wire[17:0] douta3;
wire[17:0] doutb3;
reg wea4;
reg web4;
wire[17:0] douta4;
wire[17:0] doutb4;
reg wea5;
reg web5;
wire[17:0] douta5;
wire[17:0] doutb5;
reg wea6;
reg web6;
wire[17:0] douta6;
wire[17:0] doutb6;
reg wea7;
reg web7;
wire[17:0] douta7;
wire[17:0] doutb7;
reg wea8;
reg web8;
wire[17:0] douta8;
wire[17:0] doutb8;
reg wea9;
reg web9;
wire[17:0] douta9;
wire[17:0] doutb9;
reg wea10;
reg web10;
wire[17:0] douta10;
wire[17:0] doutb10;

reg [3:0] addradelayed;
reg [3:0] addrbdelayed;


always@(posedge clka)
begin
	addradelayed <= addra[13:10];
	addrbdelayed <= addrb[13:10];
end

always@(*)
begin
	case(addradelayed)
		0:	douta <= douta0;
		1: douta <= douta1;
		2: douta <= douta2;
		3: douta <= douta3;
		4: douta <= douta4;
		5: douta <= douta5;
		6: douta <= douta6;
		7: douta <= douta7;
		8: douta <= douta8;
		9: douta <= douta9;
		10: douta <= douta10;
		default: douta <= 0;
	endcase
	
	case(addrbdelayed)
		0:	doutb <= doutb0;
		1:	doutb <= doutb1;
		2:	doutb <= doutb2;
		3:	doutb <= doutb3;
		4:	doutb <= doutb4;
		5:	doutb <= doutb5;
		6:	doutb <= doutb6;
		7:	doutb <= doutb7;
		8:	doutb <= doutb8;
		9:	doutb <= doutb9;
		10: doutb <= doutb10;
		default: doutb <= 0;
	endcase

case(addra[13:10])
	0:
	begin
		wea0 <= wea;
		wea1 <= 1'b0;
		wea2 <= 1'b0;
		wea3 <= 1'b0;
		wea4 <= 1'b0;
		wea5 <= 1'b0;
		wea6 <= 1'b0;
		wea7 <= 1'b0;
		wea8 <= 1'b0;
		wea9 <= 1'b0;
		wea10 <= 1'b0;
	end
	1:
	begin
		wea0 <= 1'b0;
		wea1 <= wea;
		wea2 <= 1'b0;
		wea3 <= 1'b0;
		wea4 <= 1'b0;
		wea5 <= 1'b0;
		wea6 <= 1'b0;
		wea7 <= 1'b0;
		wea8 <= 1'b0;
		wea9 <= 1'b0;
		wea10 <= 1'b0;
	end
	2:
	begin
		wea0 <= 1'b0;
		wea1 <= 1'b0;
		wea2 <= wea;
		wea3 <= 1'b0;
		wea4 <= 1'b0;
		wea5 <= 1'b0;
		wea6 <= 1'b0;
		wea7 <= 1'b0;
		wea8 <= 1'b0;
		wea9 <= 1'b0;
		wea10 <= 1'b0;
	end
	3:
	begin
		wea0 <= 1'b0;
		wea1 <= 1'b0;
		wea2 <= 1'b0;
		wea3 <= wea;
		wea4 <= 1'b0;
		wea5 <= 1'b0;
		wea6 <= 1'b0;
		wea7 <= 1'b0;
		wea8 <= 1'b0;
		wea9 <= 1'b0;
		wea10 <= 1'b0;
	end
	4:
	begin
		wea0 <= 1'b0;
		wea1 <= 1'b0;
		wea2 <= 1'b0;
		wea3 <= 1'b0;
		wea4 <= wea;
		wea5 <= 1'b0;
		wea6 <= 1'b0;
		wea7 <= 1'b0;
		wea8 <= 1'b0;
		wea9 <= 1'b0;
		wea10 <= 1'b0;
	end
	5:
	begin
		wea0 <= 1'b0;
		wea1 <= 1'b0;
		wea2 <= 1'b0;
		wea3 <= 1'b0;
		wea4 <= 1'b0;
		wea5 <= wea;
		wea6 <= 1'b0;
		wea7 <= 1'b0;
		wea8 <= 1'b0;
		wea9 <= 1'b0;
		wea10 <= 1'b0;
	end
	6:
	begin
		wea0 <= 1'b0;
		wea1 <= 1'b0;
		wea2 <= 1'b0;
		wea3 <= 1'b0;
		wea4 <= 1'b0;
		wea5 <= 1'b0;
		wea6 <= wea;
		wea7 <= 1'b0;
		wea8 <= 1'b0;
		wea9 <= 1'b0;
		wea10 <= 1'b0;
	end
	7:
	begin
		wea0 <= 1'b0;
		wea1 <= 1'b0;
		wea2 <= 1'b0;
		wea3 <= 1'b0;
		wea4 <= 1'b0;
		wea5 <= 1'b0;
		wea6 <= 1'b0;
		wea7 <= wea;
		wea8 <= 1'b0;
		wea9 <= 1'b0;
		wea10 <= 1'b0;
	end
	8:
	begin
		wea0 <= 1'b0;
		wea1 <= 1'b0;
		wea2 <= 1'b0;
		wea3 <= 1'b0;
		wea4 <= 1'b0;
		wea5 <= 1'b0;
		wea6 <= 1'b0;
		wea7 <= 1'b0;
		wea8 <= wea;
		wea9 <= 1'b0;
		wea10 <= 1'b0;
	end
	9:
	begin
		wea0 <= 1'b0;
		wea1 <= 1'b0;
		wea2 <= 1'b0;
		wea3 <= 1'b0;
		wea4 <= 1'b0;
		wea5 <= 1'b0;
		wea6 <= 1'b0;
		wea7 <= 1'b0;
		wea8 <= 1'b0;
		wea9 <= wea;
		wea10 <= 1'b0;
	end
	10:
	begin
		wea0 <= 1'b0;
		wea1 <= 1'b0;
		wea2 <= 1'b0;
		wea3 <= 1'b0;
		wea4 <= 1'b0;
		wea5 <= 1'b0;
		wea6 <= 1'b0;
		wea7 <= 1'b0;
		wea8 <= 1'b0;
		wea9 <= 1'b0;
		wea10 <= wea;
	end
	
	default:
	begin
		wea0 <= 1'b0;
		wea1 <= 1'b0;
		wea2 <= 1'b0;
		wea3 <= 1'b0;
		wea4 <= 1'b0;
		wea5 <= 1'b0;
		wea6 <= 1'b0;
		wea7 <= 1'b0;
		wea8 <= 1'b0;
		wea9 <= 1'b0;
		wea10 <= 1'b0;	
	end
endcase

case(addrb[13:10])
	0:
	begin
		web0 <= web;
		web1 <= 1'b0;
		web2 <= 1'b0;
		web3 <= 1'b0;
		web4 <= 1'b0;
		web5 <= 1'b0;
		web6 <= 1'b0;
		web7 <= 1'b0;
		web8 <= 1'b0;
		web9 <= 1'b0;
		web10 <= 1'b0;
	end
	1:
	begin
		web0 <= 1'b0;
		web1 <= web;
		web2 <= 1'b0;
		web3 <= 1'b0;
		web4 <= 1'b0;
		web5 <= 1'b0;
		web6 <= 1'b0;
		web7 <= 1'b0;
		web8 <= 1'b0;
		web9 <= 1'b0;
		web10 <= 1'b0;
	end
	2:
	begin
		web0 <= 1'b0;
		web1 <= 1'b0;
		web2 <= web;
		web3 <= 1'b0;
		web4 <= 1'b0;
		web5 <= 1'b0;
		web6 <= 1'b0;
		web7 <= 1'b0;
		web8 <= 1'b0;
		web9 <= 1'b0;
		web10 <= 1'b0;
	end
	3:
	begin
		web0 <= 1'b0;
		web1 <= 1'b0;
		web2 <= 1'b0;
		web3 <= web;
		web4 <= 1'b0;
		web5 <= 1'b0;
		web6 <= 1'b0;
		web7 <= 1'b0;
		web8 <= 1'b0;
		web9 <= 1'b0;
		web10 <= 1'b0;
	end
	4:
	begin
		web0 <= 1'b0;
		web1 <= 1'b0;
		web2 <= 1'b0;
		web3 <= 1'b0;
		web4 <= web;
		web5 <= 1'b0;
		web6 <= 1'b0;
		web7 <= 1'b0;
		web8 <= 1'b0;
		web9 <= 1'b0;
		web10 <= 1'b0;
	end
	5:
	begin
		web0 <= 1'b0;
		web1 <= 1'b0;
		web2 <= 1'b0;
		web3 <= 1'b0;
		web4 <= 1'b0;
		web5 <= web;
		web6 <= 1'b0;
		web7 <= 1'b0;
		web8 <= 1'b0;
		web9 <= 1'b0;
		web10 <= 1'b0;
	end
	6:
	begin
		web0 <= 1'b0;
		web1 <= 1'b0;
		web2 <= 1'b0;
		web3 <= 1'b0;
		web4 <= 1'b0;
		web5 <= 1'b0;
		web6 <= web;
		web7 <= 1'b0;
		web8 <= 1'b0;
		web9 <= 1'b0;
		web10 <= 1'b0;
	end
	7:
	begin
		web0 <= 1'b0;
		web1 <= 1'b0;
		web2 <= 1'b0;
		web3 <= 1'b0;
		web4 <= 1'b0;
		web5 <= 1'b0;
		web6 <= 1'b0;
		web7 <= web;
		web8 <= 1'b0;
		web9 <= 1'b0;
		web10 <= 1'b0;
	end
	8:
	begin
		web0 <= 1'b0;
		web1 <= 1'b0;
		web2 <= 1'b0;
		web3 <= 1'b0;
		web4 <= 1'b0;
		web5 <= 1'b0;
		web6 <= 1'b0;
		web7 <= 1'b0;
		web8 <= web;
		web9 <= 1'b0;
		web10 <= 1'b0;
	end
	9:
	begin
		web0 <= 1'b0;
		web1 <= 1'b0;
		web2 <= 1'b0;
		web3 <= 1'b0;
		web4 <= 1'b0;
		web5 <= 1'b0;
		web6 <= 1'b0;
		web7 <= 1'b0;
		web8 <= 1'b0;
		web9 <= web;
		web10 <= 1'b0;
	end
	10:
	begin
		web0 <= 1'b0;
		web1 <= 1'b0;
		web2 <= 1'b0;
		web3 <= 1'b0;
		web4 <= 1'b0;
		web5 <= 1'b0;
		web6 <= 1'b0;
		web7 <= 1'b0;
		web8 <= 1'b0;
		web9 <= 1'b0;
		web10 <= web;
	end
	
	default:
	begin
		web0 <= 1'b0;
		web1 <= 1'b0;
		web2 <= 1'b0;
		web3 <= 1'b0;
		web4 <= 1'b0;
		web5 <= 1'b0;
		web6 <= 1'b0;
		web7 <= 1'b0;
		web8 <= 1'b0;
		web9 <= 1'b0;
		web10 <= 1'b0;
	end
endcase
end

BlockRam #(.DATA(18), .ADDR(10), .SIZE(1024), .FILE("../init0.txt")) block0(clka, wea0, web0, addra[9:0], addrb[9:0], {2'b0,{dina[15:0]}}, {2'b0,{dinb[15:0]}}, douta0, doutb0);
BlockRam #(.DATA(18), .ADDR(10), .SIZE(1024), .FILE("../init1.txt")) block1(clka, wea1, web1, addra[9:0], addrb[9:0], {2'b0,{dina[15:0]}}, {2'b0,{dinb[15:0]}}, douta1, doutb1);
BlockRam #(.DATA(18), .ADDR(10), .SIZE(1024), .FILE("../init2.txt")) block2(clka, wea2, web2, addra[9:0], addrb[9:0], {2'b0,{dina[15:0]}}, {2'b0,{dinb[15:0]}}, douta2, doutb2);
BlockRam #(.DATA(18), .ADDR(10), .SIZE(1024), .FILE("../init3.txt")) block3(clka, wea3, web3, addra[9:0], addrb[9:0], {2'b0,{dina[15:0]}}, {2'b0,{dinb[15:0]}}, douta3, doutb3);
BlockRam #(.DATA(18), .ADDR(10), .SIZE(1024), .FILE("../init4.txt")) block4(clka, wea4, web4, addra[9:0], addrb[9:0], {2'b0,{dina[15:0]}}, {2'b0,{dinb[15:0]}}, douta4, doutb4);
BlockRam #(.DATA(18), .ADDR(10), .SIZE(1024), .FILE("../init5.txt")) block5(clka, wea5, web5, addra[9:0], addrb[9:0], {2'b0,{dina[15:0]}}, {2'b0,{dinb[15:0]}}, douta5, doutb5);
BlockRam #(.DATA(18), .ADDR(10), .SIZE(1024), .FILE("../init6.txt")) block6(clka, wea6, web6, addra[9:0], addrb[9:0], {2'b0,{dina[15:0]}}, {2'b0,{dinb[15:0]}}, douta6, doutb6);
BlockRam #(.DATA(18), .ADDR(10), .SIZE(1024), .FILE("../init7.txt")) block7(clka, wea7, web7, addra[9:0], addrb[9:0], {2'b0,{dina[15:0]}}, {2'b0,{dinb[15:0]}}, douta7, doutb7);
BlockRam #(.DATA(18), .ADDR(10), .SIZE(1024), .FILE("../init8.txt")) block8(clka, wea8, web8, addra[9:0], addrb[9:0], {2'b0,{dina[15:0]}}, {2'b0,{dinb[15:0]}}, douta8, doutb8);
BlockRam #(.DATA(18), .ADDR(10), .SIZE(1024), .FILE("../init9.txt")) block9(clka, wea9, web9, addra[9:0], addrb[9:0], {2'b0,{dina[15:0]}}, {2'b0,{dinb[15:0]}}, douta9, doutb9);
BlockRam #(.DATA(18), .ADDR(10), .SIZE(1024), .FILE("../init10.txt")) block10(clka, wea10, web10, addra[9:0], addrb[9:0], {2'b0,{dina[15:0]}}, {2'b0,{dinb[15:0]}}, douta10, doutb10);


endmodule
