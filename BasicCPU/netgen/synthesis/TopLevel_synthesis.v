////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.63c
//  \   \         Application: netgen
//  /   /         Filename: TopLevel_synthesis.v
// /___/   /\     Timestamp: Wed Sep 28 17:00:19 2011
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim TopLevel.ngc TopLevel_synthesis.v 
// Device	: xc3s500e-4-fg320
// Input file	: TopLevel.ngc
// Output file	: \\wannsee\users\u0595680\desktop\3710\3710\BasicCPU\netgen\synthesis\TopLevel_synthesis.v
// # of Modules	: 1
// Design Name	: TopLevel
// Xilinx        : C:\Xilinx\12.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module TopLevel (
  BTN_NORTH, LCD_E, LCD_RS, LCD_RW, CLK_50MHZ, SF_D
);
  input BTN_NORTH;
  output LCD_E;
  output LCD_RS;
  output LCD_RW;
  input CLK_50MHZ;
  output [11 : 8] SF_D;
  wire BTN_NORTH_IBUF_17;
  wire CLK_50MHZ_BUFGP_19;
  wire N0;
  wire N1;
  wire N10;
  wire N11;
  wire N12;
  wire N14;
  wire N16;
  wire N18;
  wire N20;
  wire N22;
  wire N24;
  wire N26;
  wire N28;
  wire N30;
  wire N32;
  wire N34;
  wire N36;
  wire N38;
  wire N40;
  wire N42;
  wire N44;
  wire N46;
  wire N48;
  wire N5;
  wire N50;
  wire N52;
  wire N53;
  wire N54;
  wire N55;
  wire N56;
  wire N57;
  wire N58;
  wire N59;
  wire N60;
  wire N61;
  wire \lcdctrl/N0 ;
  wire \lcdctrl/N3 ;
  wire \lcdctrl/done ;
  wire \lcdctrl/mode4 ;
  wire \lcdctrl/rs ;
  wire \lcdctrl/tmp16_and0000 ;
  wire \lcdctrl/wr/LCD_E_141 ;
  wire \lcdctrl/wr/LCD_E_not0001 ;
  wire \lcdctrl/wr/LCD_E_not000127_143 ;
  wire \lcdctrl/wr/LCD_E_not000151_144 ;
  wire \lcdctrl/wr/LCD_E_or0002 ;
  wire \lcdctrl/wr/LCD_E_or000211_146 ;
  wire \lcdctrl/wr/LCD_E_or000223_147 ;
  wire \lcdctrl/wr/LCD_RS_148 ;
  wire \lcdctrl/wr/LCD_RS_and0000 ;
  wire \lcdctrl/wr/Mcount_count ;
  wire \lcdctrl/wr/Mcount_count1 ;
  wire \lcdctrl/wr/Mcount_count10 ;
  wire \lcdctrl/wr/Mcount_count11 ;
  wire \lcdctrl/wr/Mcount_count12 ;
  wire \lcdctrl/wr/Mcount_count13 ;
  wire \lcdctrl/wr/Mcount_count14 ;
  wire \lcdctrl/wr/Mcount_count15 ;
  wire \lcdctrl/wr/Mcount_count16 ;
  wire \lcdctrl/wr/Mcount_count2 ;
  wire \lcdctrl/wr/Mcount_count3 ;
  wire \lcdctrl/wr/Mcount_count4 ;
  wire \lcdctrl/wr/Mcount_count5 ;
  wire \lcdctrl/wr/Mcount_count6 ;
  wire \lcdctrl/wr/Mcount_count7 ;
  wire \lcdctrl/wr/Mcount_count8 ;
  wire \lcdctrl/wr/Mcount_count9 ;
  wire \lcdctrl/wr/N2 ;
  wire \lcdctrl/wr/N3 ;
  wire \lcdctrl/wr/N7 ;
  wire \lcdctrl/wr/SF_D_and0000_207 ;
  wire \lcdctrl/wr/SF_D_mux0000<4>38_209 ;
  wire \lcdctrl/wr/SF_D_mux0000<4>55_210 ;
  wire \lcdctrl/wr/SF_D_mux0000<4>79_211 ;
  wire \lcdctrl/wr/SF_D_mux0000<4>94_212 ;
  wire \lcdctrl/wr/SF_D_mux0000<5>21_214 ;
  wire \lcdctrl/wr/SF_D_mux0000<5>52_215 ;
  wire \lcdctrl/wr/SF_D_mux0000<5>99_216 ;
  wire \lcdctrl/wr/SF_D_mux0000<6>19_218 ;
  wire \lcdctrl/wr/SF_D_mux0000<6>44_219 ;
  wire \lcdctrl/wr/SF_D_mux0000<7>23_221 ;
  wire \lcdctrl/wr/busy_222 ;
  wire \lcdctrl/wr/busy_not0001 ;
  wire \lcdctrl/wr/done13_241 ;
  wire \lcdctrl/wr/done5_242 ;
  wire \lcdctrl/write ;
  wire \magic/initialR_246 ;
  wire \magic/regRead1_252 ;
  wire \magic/regRead2_253 ;
  wire \magic/regWrite_254 ;
  wire \omgbadname/reg0_not0001 ;
  wire \omgwtfbbq/Mcount_count_cy<10>_rt_341 ;
  wire \omgwtfbbq/Mcount_count_cy<11>_rt_343 ;
  wire \omgwtfbbq/Mcount_count_cy<12>_rt_345 ;
  wire \omgwtfbbq/Mcount_count_cy<13>_rt_347 ;
  wire \omgwtfbbq/Mcount_count_cy<14>_rt_349 ;
  wire \omgwtfbbq/Mcount_count_cy<15>_rt_351 ;
  wire \omgwtfbbq/Mcount_count_cy<16>_rt_353 ;
  wire \omgwtfbbq/Mcount_count_cy<17>_rt_355 ;
  wire \omgwtfbbq/Mcount_count_cy<18>_rt_357 ;
  wire \omgwtfbbq/Mcount_count_cy<19>_rt_359 ;
  wire \omgwtfbbq/Mcount_count_cy<1>_rt_361 ;
  wire \omgwtfbbq/Mcount_count_cy<20>_rt_363 ;
  wire \omgwtfbbq/Mcount_count_cy<21>_rt_365 ;
  wire \omgwtfbbq/Mcount_count_cy<22>_rt_367 ;
  wire \omgwtfbbq/Mcount_count_cy<23>_rt_369 ;
  wire \omgwtfbbq/Mcount_count_cy<24>_rt_371 ;
  wire \omgwtfbbq/Mcount_count_cy<25>_rt_373 ;
  wire \omgwtfbbq/Mcount_count_cy<26>_rt_375 ;
  wire \omgwtfbbq/Mcount_count_cy<27>_rt_377 ;
  wire \omgwtfbbq/Mcount_count_cy<28>_rt_379 ;
  wire \omgwtfbbq/Mcount_count_cy<29>_rt_381 ;
  wire \omgwtfbbq/Mcount_count_cy<2>_rt_383 ;
  wire \omgwtfbbq/Mcount_count_cy<30>_rt_385 ;
  wire \omgwtfbbq/Mcount_count_cy<3>_rt_387 ;
  wire \omgwtfbbq/Mcount_count_cy<4>_rt_389 ;
  wire \omgwtfbbq/Mcount_count_cy<5>_rt_391 ;
  wire \omgwtfbbq/Mcount_count_cy<6>_rt_393 ;
  wire \omgwtfbbq/Mcount_count_cy<7>_rt_395 ;
  wire \omgwtfbbq/Mcount_count_cy<8>_rt_397 ;
  wire \omgwtfbbq/Mcount_count_cy<9>_rt_399 ;
  wire \omgwtfbbq/Mcount_count_xor<31>_rt_401 ;
  wire \omgwtfbbq/count_or0000 ;
  wire \omgwtfbbq/outClock_435 ;
  wire \omgwtfbbq/outClock1 ;
  wire \omgwtfbbq/outClock_cmp_eq0000 ;
  wire \omgwtfbbq/outClock_not0001 ;
  wire omgwtfbbq_not0000;
  wire [14 : 0] ABusBuffed;
  wire [0 : 0] BBusBuffed;
  wire [31 : 0] Result;
  wire [0 : 0] \lcdctrl/Madd_ascii_lut ;
  wire [3 : 0] \lcdctrl/nextstate ;
  wire [3 : 0] \lcdctrl/state ;
  wire [15 : 0] \lcdctrl/tmp16 ;
  wire [15 : 0] \lcdctrl/tmp16_mux0000 ;
  wire [15 : 0] \lcdctrl/wr/Mcount_count_cy ;
  wire [16 : 0] \lcdctrl/wr/Mcount_count_lut ;
  wire [11 : 8] \lcdctrl/wr/SF_D ;
  wire [7 : 4] \lcdctrl/wr/SF_D_mux0000 ;
  wire [16 : 0] \lcdctrl/wr/count ;
  wire [1 : 0] \magic/buffCtrl ;
  wire [3 : 0] \magic/nextState ;
  wire [1 : 1] \magic/nextState_mux0000 ;
  wire [3 : 0] \magic/state ;
  wire [14 : 0] \myFirstALU/Madd__old_C_1_cy ;
  wire [15 : 0] \myFirstALU/Madd__old_C_1_lut ;
  wire [15 : 0] \myFirstALU/_old_C_1 ;
  wire [15 : 0] \omgbadname/reg0 ;
  wire [15 : 0] \omgbadname/reg1 ;
  wire [30 : 0] \omgwtfbbq/Mcount_count_cy ;
  wire [0 : 0] \omgwtfbbq/Mcount_count_lut ;
  wire [31 : 0] \omgwtfbbq/count ;
  wire [6 : 0] \omgwtfbbq/outClock_cmp_eq0000_wg_cy ;
  wire [7 : 0] \omgwtfbbq/outClock_cmp_eq0000_wg_lut ;
  wire [15 : 0] writeBusBuffed;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDRE   \omgwtfbbq/outClock  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\omgwtfbbq/outClock_cmp_eq0000 ),
    .D(\omgwtfbbq/outClock_not0001 ),
    .R(omgwtfbbq_not0000),
    .Q(\omgwtfbbq/outClock1 )
  );
  FDR   \omgwtfbbq/count_0  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[0]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [0])
  );
  FDR   \omgwtfbbq/count_1  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[1]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [1])
  );
  FDR   \omgwtfbbq/count_2  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[2]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [2])
  );
  FDR   \omgwtfbbq/count_3  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[3]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [3])
  );
  FDR   \omgwtfbbq/count_4  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[4]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [4])
  );
  FDR   \omgwtfbbq/count_5  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[5]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [5])
  );
  FDR   \omgwtfbbq/count_6  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[6]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [6])
  );
  FDR   \omgwtfbbq/count_7  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[7]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [7])
  );
  FDR   \omgwtfbbq/count_8  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[8]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [8])
  );
  FDR   \omgwtfbbq/count_9  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[9]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [9])
  );
  FDR   \omgwtfbbq/count_10  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[10]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [10])
  );
  FDR   \omgwtfbbq/count_11  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[11]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [11])
  );
  FDR   \omgwtfbbq/count_12  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[12]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [12])
  );
  FDR   \omgwtfbbq/count_13  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[13]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [13])
  );
  FDR   \omgwtfbbq/count_14  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[14]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [14])
  );
  FDR   \omgwtfbbq/count_15  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[15]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [15])
  );
  FDR   \omgwtfbbq/count_16  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[16]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [16])
  );
  FDR   \omgwtfbbq/count_17  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[17]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [17])
  );
  FDR   \omgwtfbbq/count_18  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[18]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [18])
  );
  FDR   \omgwtfbbq/count_19  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[19]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [19])
  );
  FDR   \omgwtfbbq/count_20  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[20]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [20])
  );
  FDR   \omgwtfbbq/count_21  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[21]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [21])
  );
  FDR   \omgwtfbbq/count_22  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[22]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [22])
  );
  FDR   \omgwtfbbq/count_23  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[23]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [23])
  );
  FDR   \omgwtfbbq/count_24  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[24]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [24])
  );
  FDR   \omgwtfbbq/count_25  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[25]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [25])
  );
  FDR   \omgwtfbbq/count_26  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[26]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [26])
  );
  FDR   \omgwtfbbq/count_27  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[27]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [27])
  );
  FDR   \omgwtfbbq/count_28  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[28]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [28])
  );
  FDR   \omgwtfbbq/count_29  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[29]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [29])
  );
  FDR   \omgwtfbbq/count_30  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[30]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [30])
  );
  FDR   \omgwtfbbq/count_31  (
    .C(CLK_50MHZ_BUFGP_19),
    .D(Result[31]),
    .R(\omgwtfbbq/count_or0000 ),
    .Q(\omgwtfbbq/count [31])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\omgwtfbbq/Mcount_count_lut [0]),
    .O(\omgwtfbbq/Mcount_count_cy [0])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<0>  (
    .CI(N0),
    .LI(\omgwtfbbq/Mcount_count_lut [0]),
    .O(Result[0])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<1>  (
    .CI(\omgwtfbbq/Mcount_count_cy [0]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<1>_rt_361 ),
    .O(\omgwtfbbq/Mcount_count_cy [1])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<1>  (
    .CI(\omgwtfbbq/Mcount_count_cy [0]),
    .LI(\omgwtfbbq/Mcount_count_cy<1>_rt_361 ),
    .O(Result[1])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<2>  (
    .CI(\omgwtfbbq/Mcount_count_cy [1]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<2>_rt_383 ),
    .O(\omgwtfbbq/Mcount_count_cy [2])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<2>  (
    .CI(\omgwtfbbq/Mcount_count_cy [1]),
    .LI(\omgwtfbbq/Mcount_count_cy<2>_rt_383 ),
    .O(Result[2])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<3>  (
    .CI(\omgwtfbbq/Mcount_count_cy [2]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<3>_rt_387 ),
    .O(\omgwtfbbq/Mcount_count_cy [3])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<3>  (
    .CI(\omgwtfbbq/Mcount_count_cy [2]),
    .LI(\omgwtfbbq/Mcount_count_cy<3>_rt_387 ),
    .O(Result[3])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<4>  (
    .CI(\omgwtfbbq/Mcount_count_cy [3]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<4>_rt_389 ),
    .O(\omgwtfbbq/Mcount_count_cy [4])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<4>  (
    .CI(\omgwtfbbq/Mcount_count_cy [3]),
    .LI(\omgwtfbbq/Mcount_count_cy<4>_rt_389 ),
    .O(Result[4])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<5>  (
    .CI(\omgwtfbbq/Mcount_count_cy [4]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<5>_rt_391 ),
    .O(\omgwtfbbq/Mcount_count_cy [5])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<5>  (
    .CI(\omgwtfbbq/Mcount_count_cy [4]),
    .LI(\omgwtfbbq/Mcount_count_cy<5>_rt_391 ),
    .O(Result[5])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<6>  (
    .CI(\omgwtfbbq/Mcount_count_cy [5]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<6>_rt_393 ),
    .O(\omgwtfbbq/Mcount_count_cy [6])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<6>  (
    .CI(\omgwtfbbq/Mcount_count_cy [5]),
    .LI(\omgwtfbbq/Mcount_count_cy<6>_rt_393 ),
    .O(Result[6])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<7>  (
    .CI(\omgwtfbbq/Mcount_count_cy [6]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<7>_rt_395 ),
    .O(\omgwtfbbq/Mcount_count_cy [7])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<7>  (
    .CI(\omgwtfbbq/Mcount_count_cy [6]),
    .LI(\omgwtfbbq/Mcount_count_cy<7>_rt_395 ),
    .O(Result[7])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<8>  (
    .CI(\omgwtfbbq/Mcount_count_cy [7]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<8>_rt_397 ),
    .O(\omgwtfbbq/Mcount_count_cy [8])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<8>  (
    .CI(\omgwtfbbq/Mcount_count_cy [7]),
    .LI(\omgwtfbbq/Mcount_count_cy<8>_rt_397 ),
    .O(Result[8])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<9>  (
    .CI(\omgwtfbbq/Mcount_count_cy [8]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<9>_rt_399 ),
    .O(\omgwtfbbq/Mcount_count_cy [9])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<9>  (
    .CI(\omgwtfbbq/Mcount_count_cy [8]),
    .LI(\omgwtfbbq/Mcount_count_cy<9>_rt_399 ),
    .O(Result[9])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<10>  (
    .CI(\omgwtfbbq/Mcount_count_cy [9]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<10>_rt_341 ),
    .O(\omgwtfbbq/Mcount_count_cy [10])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<10>  (
    .CI(\omgwtfbbq/Mcount_count_cy [9]),
    .LI(\omgwtfbbq/Mcount_count_cy<10>_rt_341 ),
    .O(Result[10])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<11>  (
    .CI(\omgwtfbbq/Mcount_count_cy [10]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<11>_rt_343 ),
    .O(\omgwtfbbq/Mcount_count_cy [11])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<11>  (
    .CI(\omgwtfbbq/Mcount_count_cy [10]),
    .LI(\omgwtfbbq/Mcount_count_cy<11>_rt_343 ),
    .O(Result[11])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<12>  (
    .CI(\omgwtfbbq/Mcount_count_cy [11]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<12>_rt_345 ),
    .O(\omgwtfbbq/Mcount_count_cy [12])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<12>  (
    .CI(\omgwtfbbq/Mcount_count_cy [11]),
    .LI(\omgwtfbbq/Mcount_count_cy<12>_rt_345 ),
    .O(Result[12])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<13>  (
    .CI(\omgwtfbbq/Mcount_count_cy [12]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<13>_rt_347 ),
    .O(\omgwtfbbq/Mcount_count_cy [13])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<13>  (
    .CI(\omgwtfbbq/Mcount_count_cy [12]),
    .LI(\omgwtfbbq/Mcount_count_cy<13>_rt_347 ),
    .O(Result[13])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<14>  (
    .CI(\omgwtfbbq/Mcount_count_cy [13]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<14>_rt_349 ),
    .O(\omgwtfbbq/Mcount_count_cy [14])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<14>  (
    .CI(\omgwtfbbq/Mcount_count_cy [13]),
    .LI(\omgwtfbbq/Mcount_count_cy<14>_rt_349 ),
    .O(Result[14])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<15>  (
    .CI(\omgwtfbbq/Mcount_count_cy [14]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<15>_rt_351 ),
    .O(\omgwtfbbq/Mcount_count_cy [15])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<15>  (
    .CI(\omgwtfbbq/Mcount_count_cy [14]),
    .LI(\omgwtfbbq/Mcount_count_cy<15>_rt_351 ),
    .O(Result[15])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<16>  (
    .CI(\omgwtfbbq/Mcount_count_cy [15]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<16>_rt_353 ),
    .O(\omgwtfbbq/Mcount_count_cy [16])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<16>  (
    .CI(\omgwtfbbq/Mcount_count_cy [15]),
    .LI(\omgwtfbbq/Mcount_count_cy<16>_rt_353 ),
    .O(Result[16])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<17>  (
    .CI(\omgwtfbbq/Mcount_count_cy [16]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<17>_rt_355 ),
    .O(\omgwtfbbq/Mcount_count_cy [17])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<17>  (
    .CI(\omgwtfbbq/Mcount_count_cy [16]),
    .LI(\omgwtfbbq/Mcount_count_cy<17>_rt_355 ),
    .O(Result[17])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<18>  (
    .CI(\omgwtfbbq/Mcount_count_cy [17]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<18>_rt_357 ),
    .O(\omgwtfbbq/Mcount_count_cy [18])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<18>  (
    .CI(\omgwtfbbq/Mcount_count_cy [17]),
    .LI(\omgwtfbbq/Mcount_count_cy<18>_rt_357 ),
    .O(Result[18])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<19>  (
    .CI(\omgwtfbbq/Mcount_count_cy [18]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<19>_rt_359 ),
    .O(\omgwtfbbq/Mcount_count_cy [19])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<19>  (
    .CI(\omgwtfbbq/Mcount_count_cy [18]),
    .LI(\omgwtfbbq/Mcount_count_cy<19>_rt_359 ),
    .O(Result[19])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<20>  (
    .CI(\omgwtfbbq/Mcount_count_cy [19]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<20>_rt_363 ),
    .O(\omgwtfbbq/Mcount_count_cy [20])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<20>  (
    .CI(\omgwtfbbq/Mcount_count_cy [19]),
    .LI(\omgwtfbbq/Mcount_count_cy<20>_rt_363 ),
    .O(Result[20])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<21>  (
    .CI(\omgwtfbbq/Mcount_count_cy [20]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<21>_rt_365 ),
    .O(\omgwtfbbq/Mcount_count_cy [21])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<21>  (
    .CI(\omgwtfbbq/Mcount_count_cy [20]),
    .LI(\omgwtfbbq/Mcount_count_cy<21>_rt_365 ),
    .O(Result[21])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<22>  (
    .CI(\omgwtfbbq/Mcount_count_cy [21]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<22>_rt_367 ),
    .O(\omgwtfbbq/Mcount_count_cy [22])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<22>  (
    .CI(\omgwtfbbq/Mcount_count_cy [21]),
    .LI(\omgwtfbbq/Mcount_count_cy<22>_rt_367 ),
    .O(Result[22])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<23>  (
    .CI(\omgwtfbbq/Mcount_count_cy [22]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<23>_rt_369 ),
    .O(\omgwtfbbq/Mcount_count_cy [23])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<23>  (
    .CI(\omgwtfbbq/Mcount_count_cy [22]),
    .LI(\omgwtfbbq/Mcount_count_cy<23>_rt_369 ),
    .O(Result[23])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<24>  (
    .CI(\omgwtfbbq/Mcount_count_cy [23]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<24>_rt_371 ),
    .O(\omgwtfbbq/Mcount_count_cy [24])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<24>  (
    .CI(\omgwtfbbq/Mcount_count_cy [23]),
    .LI(\omgwtfbbq/Mcount_count_cy<24>_rt_371 ),
    .O(Result[24])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<25>  (
    .CI(\omgwtfbbq/Mcount_count_cy [24]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<25>_rt_373 ),
    .O(\omgwtfbbq/Mcount_count_cy [25])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<25>  (
    .CI(\omgwtfbbq/Mcount_count_cy [24]),
    .LI(\omgwtfbbq/Mcount_count_cy<25>_rt_373 ),
    .O(Result[25])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<26>  (
    .CI(\omgwtfbbq/Mcount_count_cy [25]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<26>_rt_375 ),
    .O(\omgwtfbbq/Mcount_count_cy [26])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<26>  (
    .CI(\omgwtfbbq/Mcount_count_cy [25]),
    .LI(\omgwtfbbq/Mcount_count_cy<26>_rt_375 ),
    .O(Result[26])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<27>  (
    .CI(\omgwtfbbq/Mcount_count_cy [26]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<27>_rt_377 ),
    .O(\omgwtfbbq/Mcount_count_cy [27])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<27>  (
    .CI(\omgwtfbbq/Mcount_count_cy [26]),
    .LI(\omgwtfbbq/Mcount_count_cy<27>_rt_377 ),
    .O(Result[27])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<28>  (
    .CI(\omgwtfbbq/Mcount_count_cy [27]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<28>_rt_379 ),
    .O(\omgwtfbbq/Mcount_count_cy [28])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<28>  (
    .CI(\omgwtfbbq/Mcount_count_cy [27]),
    .LI(\omgwtfbbq/Mcount_count_cy<28>_rt_379 ),
    .O(Result[28])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<29>  (
    .CI(\omgwtfbbq/Mcount_count_cy [28]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<29>_rt_381 ),
    .O(\omgwtfbbq/Mcount_count_cy [29])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<29>  (
    .CI(\omgwtfbbq/Mcount_count_cy [28]),
    .LI(\omgwtfbbq/Mcount_count_cy<29>_rt_381 ),
    .O(Result[29])
  );
  MUXCY   \omgwtfbbq/Mcount_count_cy<30>  (
    .CI(\omgwtfbbq/Mcount_count_cy [29]),
    .DI(N0),
    .S(\omgwtfbbq/Mcount_count_cy<30>_rt_385 ),
    .O(\omgwtfbbq/Mcount_count_cy [30])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<30>  (
    .CI(\omgwtfbbq/Mcount_count_cy [29]),
    .LI(\omgwtfbbq/Mcount_count_cy<30>_rt_385 ),
    .O(Result[30])
  );
  XORCY   \omgwtfbbq/Mcount_count_xor<31>  (
    .CI(\omgwtfbbq/Mcount_count_cy [30]),
    .LI(\omgwtfbbq/Mcount_count_xor<31>_rt_401 ),
    .O(Result[31])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<15>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [14]),
    .LI(\myFirstALU/Madd__old_C_1_lut [15]),
    .O(\myFirstALU/_old_C_1 [15])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<14>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [13]),
    .LI(\myFirstALU/Madd__old_C_1_lut [14]),
    .O(\myFirstALU/_old_C_1 [14])
  );
  MUXCY   \myFirstALU/Madd__old_C_1_cy<14>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [13]),
    .DI(ABusBuffed[14]),
    .S(\myFirstALU/Madd__old_C_1_lut [14]),
    .O(\myFirstALU/Madd__old_C_1_cy [14])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<13>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [12]),
    .LI(\myFirstALU/Madd__old_C_1_lut [13]),
    .O(\myFirstALU/_old_C_1 [13])
  );
  MUXCY   \myFirstALU/Madd__old_C_1_cy<13>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [12]),
    .DI(ABusBuffed[13]),
    .S(\myFirstALU/Madd__old_C_1_lut [13]),
    .O(\myFirstALU/Madd__old_C_1_cy [13])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<12>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [11]),
    .LI(\myFirstALU/Madd__old_C_1_lut [12]),
    .O(\myFirstALU/_old_C_1 [12])
  );
  MUXCY   \myFirstALU/Madd__old_C_1_cy<12>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [11]),
    .DI(ABusBuffed[12]),
    .S(\myFirstALU/Madd__old_C_1_lut [12]),
    .O(\myFirstALU/Madd__old_C_1_cy [12])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<11>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [10]),
    .LI(\myFirstALU/Madd__old_C_1_lut [11]),
    .O(\myFirstALU/_old_C_1 [11])
  );
  MUXCY   \myFirstALU/Madd__old_C_1_cy<11>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [10]),
    .DI(ABusBuffed[11]),
    .S(\myFirstALU/Madd__old_C_1_lut [11]),
    .O(\myFirstALU/Madd__old_C_1_cy [11])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<10>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [9]),
    .LI(\myFirstALU/Madd__old_C_1_lut [10]),
    .O(\myFirstALU/_old_C_1 [10])
  );
  MUXCY   \myFirstALU/Madd__old_C_1_cy<10>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [9]),
    .DI(ABusBuffed[10]),
    .S(\myFirstALU/Madd__old_C_1_lut [10]),
    .O(\myFirstALU/Madd__old_C_1_cy [10])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<9>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [8]),
    .LI(\myFirstALU/Madd__old_C_1_lut [9]),
    .O(\myFirstALU/_old_C_1 [9])
  );
  MUXCY   \myFirstALU/Madd__old_C_1_cy<9>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [8]),
    .DI(ABusBuffed[9]),
    .S(\myFirstALU/Madd__old_C_1_lut [9]),
    .O(\myFirstALU/Madd__old_C_1_cy [9])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<8>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [7]),
    .LI(\myFirstALU/Madd__old_C_1_lut [8]),
    .O(\myFirstALU/_old_C_1 [8])
  );
  MUXCY   \myFirstALU/Madd__old_C_1_cy<8>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [7]),
    .DI(ABusBuffed[8]),
    .S(\myFirstALU/Madd__old_C_1_lut [8]),
    .O(\myFirstALU/Madd__old_C_1_cy [8])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<7>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [6]),
    .LI(\myFirstALU/Madd__old_C_1_lut [7]),
    .O(\myFirstALU/_old_C_1 [7])
  );
  MUXCY   \myFirstALU/Madd__old_C_1_cy<7>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [6]),
    .DI(ABusBuffed[7]),
    .S(\myFirstALU/Madd__old_C_1_lut [7]),
    .O(\myFirstALU/Madd__old_C_1_cy [7])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<6>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [5]),
    .LI(\myFirstALU/Madd__old_C_1_lut [6]),
    .O(\myFirstALU/_old_C_1 [6])
  );
  MUXCY   \myFirstALU/Madd__old_C_1_cy<6>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [5]),
    .DI(ABusBuffed[6]),
    .S(\myFirstALU/Madd__old_C_1_lut [6]),
    .O(\myFirstALU/Madd__old_C_1_cy [6])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<5>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [4]),
    .LI(\myFirstALU/Madd__old_C_1_lut [5]),
    .O(\myFirstALU/_old_C_1 [5])
  );
  MUXCY   \myFirstALU/Madd__old_C_1_cy<5>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [4]),
    .DI(ABusBuffed[5]),
    .S(\myFirstALU/Madd__old_C_1_lut [5]),
    .O(\myFirstALU/Madd__old_C_1_cy [5])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<4>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [3]),
    .LI(\myFirstALU/Madd__old_C_1_lut [4]),
    .O(\myFirstALU/_old_C_1 [4])
  );
  MUXCY   \myFirstALU/Madd__old_C_1_cy<4>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [3]),
    .DI(ABusBuffed[4]),
    .S(\myFirstALU/Madd__old_C_1_lut [4]),
    .O(\myFirstALU/Madd__old_C_1_cy [4])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<3>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [2]),
    .LI(\myFirstALU/Madd__old_C_1_lut [3]),
    .O(\myFirstALU/_old_C_1 [3])
  );
  MUXCY   \myFirstALU/Madd__old_C_1_cy<3>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [2]),
    .DI(ABusBuffed[3]),
    .S(\myFirstALU/Madd__old_C_1_lut [3]),
    .O(\myFirstALU/Madd__old_C_1_cy [3])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<2>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [1]),
    .LI(\myFirstALU/Madd__old_C_1_lut [2]),
    .O(\myFirstALU/_old_C_1 [2])
  );
  MUXCY   \myFirstALU/Madd__old_C_1_cy<2>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [1]),
    .DI(ABusBuffed[2]),
    .S(\myFirstALU/Madd__old_C_1_lut [2]),
    .O(\myFirstALU/Madd__old_C_1_cy [2])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<1>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [0]),
    .LI(\myFirstALU/Madd__old_C_1_lut [1]),
    .O(\myFirstALU/_old_C_1 [1])
  );
  MUXCY   \myFirstALU/Madd__old_C_1_cy<1>  (
    .CI(\myFirstALU/Madd__old_C_1_cy [0]),
    .DI(ABusBuffed[1]),
    .S(\myFirstALU/Madd__old_C_1_lut [1]),
    .O(\myFirstALU/Madd__old_C_1_cy [1])
  );
  XORCY   \myFirstALU/Madd__old_C_1_xor<0>  (
    .CI(N0),
    .LI(\myFirstALU/Madd__old_C_1_lut [0]),
    .O(\myFirstALU/_old_C_1 [0])
  );
  MUXCY   \myFirstALU/Madd__old_C_1_cy<0>  (
    .CI(N0),
    .DI(ABusBuffed[0]),
    .S(\myFirstALU/Madd__old_C_1_lut [0]),
    .O(\myFirstALU/Madd__old_C_1_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \myFirstALU/Madd__old_C_1_lut<0>  (
    .I0(BBusBuffed[0]),
    .I1(ABusBuffed[0]),
    .O(\myFirstALU/Madd__old_C_1_lut [0])
  );
  FDRE   \omgbadname/reg1_15  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[15]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [15])
  );
  FDRE   \omgbadname/reg1_14  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[14]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [14])
  );
  FDRE   \omgbadname/reg1_13  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[13]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [13])
  );
  FDRE   \omgbadname/reg1_12  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[12]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [12])
  );
  FDRE   \omgbadname/reg1_11  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[11]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [11])
  );
  FDRE   \omgbadname/reg1_10  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[10]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [10])
  );
  FDRE   \omgbadname/reg1_9  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[9]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [9])
  );
  FDRE   \omgbadname/reg1_8  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[8]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [8])
  );
  FDRE   \omgbadname/reg1_7  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[7]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [7])
  );
  FDRE   \omgbadname/reg1_6  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[6]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [6])
  );
  FDRE   \omgbadname/reg1_5  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[5]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [5])
  );
  FDRE   \omgbadname/reg1_4  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[4]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [4])
  );
  FDRE   \omgbadname/reg1_3  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[3]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [3])
  );
  FDRE   \omgbadname/reg1_2  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[2]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [2])
  );
  FDRE   \omgbadname/reg1_1  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[1]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [1])
  );
  FDRE   \omgbadname/reg1_0  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\magic/regWrite_254 ),
    .D(writeBusBuffed[0]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg1 [0])
  );
  FDRE   \omgbadname/reg0_15  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[15]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [15])
  );
  FDRE   \omgbadname/reg0_14  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[14]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [14])
  );
  FDRE   \omgbadname/reg0_13  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[13]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [13])
  );
  FDRE   \omgbadname/reg0_12  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[12]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [12])
  );
  FDRE   \omgbadname/reg0_11  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[11]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [11])
  );
  FDRE   \omgbadname/reg0_10  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[10]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [10])
  );
  FDRE   \omgbadname/reg0_9  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[9]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [9])
  );
  FDRE   \omgbadname/reg0_8  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[8]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [8])
  );
  FDRE   \omgbadname/reg0_7  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[7]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [7])
  );
  FDRE   \omgbadname/reg0_6  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[6]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [6])
  );
  FDRE   \omgbadname/reg0_5  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[5]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [5])
  );
  FDRE   \omgbadname/reg0_4  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[4]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [4])
  );
  FDRE   \omgbadname/reg0_3  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[3]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [3])
  );
  FDRE   \omgbadname/reg0_2  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[2]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [2])
  );
  FDRE   \omgbadname/reg0_1  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[1]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [1])
  );
  FDRE   \omgbadname/reg0_0  (
    .C(\omgwtfbbq/outClock_435 ),
    .CE(\omgbadname/reg0_not0001 ),
    .D(writeBusBuffed[0]),
    .R(omgwtfbbq_not0000),
    .Q(\omgbadname/reg0 [0])
  );
  FDP   \magic/state_0  (
    .C(\omgwtfbbq/outClock_435 ),
    .D(\magic/nextState [0]),
    .PRE(omgwtfbbq_not0000),
    .Q(\magic/state [0])
  );
  FDC   \magic/state_1  (
    .C(\omgwtfbbq/outClock_435 ),
    .CLR(omgwtfbbq_not0000),
    .D(\magic/nextState [1]),
    .Q(\magic/state [1])
  );
  FDC   \magic/state_2  (
    .C(\omgwtfbbq/outClock_435 ),
    .CLR(omgwtfbbq_not0000),
    .D(\magic/nextState [2]),
    .Q(\magic/state [2])
  );
  FDC   \magic/state_3  (
    .C(\omgwtfbbq/outClock_435 ),
    .CLR(omgwtfbbq_not0000),
    .D(\magic/nextState [3]),
    .Q(\magic/state [3])
  );
  FDP   \magic/nextState_0  (
    .C(\omgwtfbbq/outClock_435 ),
    .D(N0),
    .PRE(omgwtfbbq_not0000),
    .Q(\magic/nextState [0])
  );
  FDC   \magic/nextState_1  (
    .C(\omgwtfbbq/outClock_435 ),
    .CLR(omgwtfbbq_not0000),
    .D(\magic/state [0]),
    .Q(\magic/nextState [1])
  );
  FDC   \magic/nextState_2  (
    .C(\omgwtfbbq/outClock_435 ),
    .CLR(omgwtfbbq_not0000),
    .D(\magic/nextState_mux0000 [1]),
    .Q(\magic/nextState [2])
  );
  FDC   \magic/nextState_3  (
    .C(\omgwtfbbq/outClock_435 ),
    .CLR(omgwtfbbq_not0000),
    .D(\magic/state [2]),
    .Q(\magic/nextState [3])
  );
  FD   \magic/regRead2  (
    .C(\omgwtfbbq/outClock_435 ),
    .D(\magic/state [2]),
    .Q(\magic/regRead2_253 )
  );
  FD   \magic/regRead1  (
    .C(\omgwtfbbq/outClock_435 ),
    .D(\magic/state [3]),
    .Q(\magic/regRead1_252 )
  );
  FD   \magic/initialR  (
    .C(\omgwtfbbq/outClock_435 ),
    .D(\magic/state [1]),
    .Q(\magic/initialR_246 )
  );
  FDE   \lcdctrl/wr/LCD_RS  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/wr/LCD_RS_and0000 ),
    .D(\lcdctrl/rs ),
    .Q(\lcdctrl/wr/LCD_RS_148 )
  );
  FDCE   \lcdctrl/wr/LCD_E  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/wr/LCD_E_not0001 ),
    .CLR(omgwtfbbq_not0000),
    .D(\lcdctrl/wr/LCD_E_or0002 ),
    .Q(\lcdctrl/wr/LCD_E_141 )
  );
  FDCE   \lcdctrl/wr/busy  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/wr/busy_not0001 ),
    .CLR(omgwtfbbq_not0000),
    .D(\lcdctrl/write ),
    .Q(\lcdctrl/wr/busy_222 )
  );
  FDE   \lcdctrl/wr/SF_D_8  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/wr/SF_D_and0000_207 ),
    .D(\lcdctrl/wr/SF_D_mux0000 [4]),
    .Q(\lcdctrl/wr/SF_D [8])
  );
  FDE   \lcdctrl/wr/SF_D_9  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/wr/SF_D_and0000_207 ),
    .D(\lcdctrl/wr/SF_D_mux0000 [5]),
    .Q(\lcdctrl/wr/SF_D [9])
  );
  FDE   \lcdctrl/wr/SF_D_10  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/wr/SF_D_and0000_207 ),
    .D(\lcdctrl/wr/SF_D_mux0000 [6]),
    .Q(\lcdctrl/wr/SF_D [10])
  );
  FDE   \lcdctrl/wr/SF_D_11  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/wr/SF_D_and0000_207 ),
    .D(\lcdctrl/wr/SF_D_mux0000 [7]),
    .Q(\lcdctrl/wr/SF_D [11])
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<0>  (
    .CI(\lcdctrl/wr/busy_222 ),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [0]),
    .O(\lcdctrl/wr/Mcount_count_cy [0])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<0>  (
    .CI(\lcdctrl/wr/busy_222 ),
    .LI(\lcdctrl/wr/Mcount_count_lut [0]),
    .O(\lcdctrl/wr/Mcount_count )
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<1>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [0]),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [1]),
    .O(\lcdctrl/wr/Mcount_count_cy [1])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<1>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [0]),
    .LI(\lcdctrl/wr/Mcount_count_lut [1]),
    .O(\lcdctrl/wr/Mcount_count1 )
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<2>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [1]),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [2]),
    .O(\lcdctrl/wr/Mcount_count_cy [2])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<2>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [1]),
    .LI(\lcdctrl/wr/Mcount_count_lut [2]),
    .O(\lcdctrl/wr/Mcount_count2 )
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<3>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [2]),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [3]),
    .O(\lcdctrl/wr/Mcount_count_cy [3])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<3>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [2]),
    .LI(\lcdctrl/wr/Mcount_count_lut [3]),
    .O(\lcdctrl/wr/Mcount_count3 )
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<4>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [3]),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [4]),
    .O(\lcdctrl/wr/Mcount_count_cy [4])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<4>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [3]),
    .LI(\lcdctrl/wr/Mcount_count_lut [4]),
    .O(\lcdctrl/wr/Mcount_count4 )
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<5>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [4]),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [5]),
    .O(\lcdctrl/wr/Mcount_count_cy [5])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<5>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [4]),
    .LI(\lcdctrl/wr/Mcount_count_lut [5]),
    .O(\lcdctrl/wr/Mcount_count5 )
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<6>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [5]),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [6]),
    .O(\lcdctrl/wr/Mcount_count_cy [6])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<6>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [5]),
    .LI(\lcdctrl/wr/Mcount_count_lut [6]),
    .O(\lcdctrl/wr/Mcount_count6 )
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<7>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [6]),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [7]),
    .O(\lcdctrl/wr/Mcount_count_cy [7])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<7>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [6]),
    .LI(\lcdctrl/wr/Mcount_count_lut [7]),
    .O(\lcdctrl/wr/Mcount_count7 )
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<8>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [7]),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [8]),
    .O(\lcdctrl/wr/Mcount_count_cy [8])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<8>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [7]),
    .LI(\lcdctrl/wr/Mcount_count_lut [8]),
    .O(\lcdctrl/wr/Mcount_count8 )
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<9>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [8]),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [9]),
    .O(\lcdctrl/wr/Mcount_count_cy [9])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<9>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [8]),
    .LI(\lcdctrl/wr/Mcount_count_lut [9]),
    .O(\lcdctrl/wr/Mcount_count9 )
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<10>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [9]),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [10]),
    .O(\lcdctrl/wr/Mcount_count_cy [10])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<10>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [9]),
    .LI(\lcdctrl/wr/Mcount_count_lut [10]),
    .O(\lcdctrl/wr/Mcount_count10 )
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<11>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [10]),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [11]),
    .O(\lcdctrl/wr/Mcount_count_cy [11])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<11>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [10]),
    .LI(\lcdctrl/wr/Mcount_count_lut [11]),
    .O(\lcdctrl/wr/Mcount_count11 )
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<12>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [11]),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [12]),
    .O(\lcdctrl/wr/Mcount_count_cy [12])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<12>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [11]),
    .LI(\lcdctrl/wr/Mcount_count_lut [12]),
    .O(\lcdctrl/wr/Mcount_count12 )
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<13>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [12]),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [13]),
    .O(\lcdctrl/wr/Mcount_count_cy [13])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<13>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [12]),
    .LI(\lcdctrl/wr/Mcount_count_lut [13]),
    .O(\lcdctrl/wr/Mcount_count13 )
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<14>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [13]),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [14]),
    .O(\lcdctrl/wr/Mcount_count_cy [14])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<14>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [13]),
    .LI(\lcdctrl/wr/Mcount_count_lut [14]),
    .O(\lcdctrl/wr/Mcount_count14 )
  );
  MUXCY   \lcdctrl/wr/Mcount_count_cy<15>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [14]),
    .DI(N0),
    .S(\lcdctrl/wr/Mcount_count_lut [15]),
    .O(\lcdctrl/wr/Mcount_count_cy [15])
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<15>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [14]),
    .LI(\lcdctrl/wr/Mcount_count_lut [15]),
    .O(\lcdctrl/wr/Mcount_count15 )
  );
  XORCY   \lcdctrl/wr/Mcount_count_xor<16>  (
    .CI(\lcdctrl/wr/Mcount_count_cy [15]),
    .LI(\lcdctrl/wr/Mcount_count_lut [16]),
    .O(\lcdctrl/wr/Mcount_count16 )
  );
  FDE   \lcdctrl/wr/count_0  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count ),
    .Q(\lcdctrl/wr/count [0])
  );
  FDE   \lcdctrl/wr/count_1  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count1 ),
    .Q(\lcdctrl/wr/count [1])
  );
  FDE   \lcdctrl/wr/count_2  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count2 ),
    .Q(\lcdctrl/wr/count [2])
  );
  FDE   \lcdctrl/wr/count_3  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count3 ),
    .Q(\lcdctrl/wr/count [3])
  );
  FDE   \lcdctrl/wr/count_4  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count4 ),
    .Q(\lcdctrl/wr/count [4])
  );
  FDE   \lcdctrl/wr/count_5  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count5 ),
    .Q(\lcdctrl/wr/count [5])
  );
  FDE   \lcdctrl/wr/count_6  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count6 ),
    .Q(\lcdctrl/wr/count [6])
  );
  FDE   \lcdctrl/wr/count_7  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count7 ),
    .Q(\lcdctrl/wr/count [7])
  );
  FDE   \lcdctrl/wr/count_8  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count8 ),
    .Q(\lcdctrl/wr/count [8])
  );
  FDE   \lcdctrl/wr/count_9  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count9 ),
    .Q(\lcdctrl/wr/count [9])
  );
  FDE   \lcdctrl/wr/count_10  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count10 ),
    .Q(\lcdctrl/wr/count [10])
  );
  FDE   \lcdctrl/wr/count_11  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count11 ),
    .Q(\lcdctrl/wr/count [11])
  );
  FDE   \lcdctrl/wr/count_12  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count12 ),
    .Q(\lcdctrl/wr/count [12])
  );
  FDE   \lcdctrl/wr/count_13  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count13 ),
    .Q(\lcdctrl/wr/count [13])
  );
  FDE   \lcdctrl/wr/count_14  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count14 ),
    .Q(\lcdctrl/wr/count [14])
  );
  FDE   \lcdctrl/wr/count_15  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count15 ),
    .Q(\lcdctrl/wr/count [15])
  );
  FDE   \lcdctrl/wr/count_16  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(BTN_NORTH_IBUF_17),
    .D(\lcdctrl/wr/Mcount_count16 ),
    .Q(\lcdctrl/wr/count [16])
  );
  FDCE   \lcdctrl/state_3  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/done ),
    .CLR(omgwtfbbq_not0000),
    .D(\lcdctrl/nextstate [3]),
    .Q(\lcdctrl/state [3])
  );
  FDCE   \lcdctrl/state_2  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/done ),
    .CLR(omgwtfbbq_not0000),
    .D(\lcdctrl/nextstate [2]),
    .Q(\lcdctrl/state [2])
  );
  FDCE   \lcdctrl/state_1  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/done ),
    .CLR(omgwtfbbq_not0000),
    .D(\lcdctrl/nextstate [1]),
    .Q(\lcdctrl/state [1])
  );
  FDCE   \lcdctrl/state_0  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/done ),
    .CLR(omgwtfbbq_not0000),
    .D(\lcdctrl/nextstate [0]),
    .Q(\lcdctrl/state [0])
  );
  FDE   \lcdctrl/tmp16_15  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [15]),
    .Q(\lcdctrl/tmp16 [15])
  );
  FDE   \lcdctrl/tmp16_14  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [14]),
    .Q(\lcdctrl/tmp16 [14])
  );
  FDE   \lcdctrl/tmp16_13  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [13]),
    .Q(\lcdctrl/tmp16 [13])
  );
  FDE   \lcdctrl/tmp16_12  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [12]),
    .Q(\lcdctrl/tmp16 [12])
  );
  FDE   \lcdctrl/tmp16_11  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [11]),
    .Q(\lcdctrl/tmp16 [11])
  );
  FDE   \lcdctrl/tmp16_10  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [10]),
    .Q(\lcdctrl/tmp16 [10])
  );
  FDE   \lcdctrl/tmp16_9  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [9]),
    .Q(\lcdctrl/tmp16 [9])
  );
  FDE   \lcdctrl/tmp16_8  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [8]),
    .Q(\lcdctrl/tmp16 [8])
  );
  FDE   \lcdctrl/tmp16_7  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [7]),
    .Q(\lcdctrl/tmp16 [7])
  );
  FDE   \lcdctrl/tmp16_6  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [6]),
    .Q(\lcdctrl/tmp16 [6])
  );
  FDE   \lcdctrl/tmp16_5  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [5]),
    .Q(\lcdctrl/tmp16 [5])
  );
  FDE   \lcdctrl/tmp16_4  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [4]),
    .Q(\lcdctrl/tmp16 [4])
  );
  FDE   \lcdctrl/tmp16_3  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [3]),
    .Q(\lcdctrl/tmp16 [3])
  );
  FDE   \lcdctrl/tmp16_2  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [2]),
    .Q(\lcdctrl/tmp16 [2])
  );
  FDE   \lcdctrl/tmp16_1  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [1]),
    .Q(\lcdctrl/tmp16 [1])
  );
  FDE   \lcdctrl/tmp16_0  (
    .C(CLK_50MHZ_BUFGP_19),
    .CE(\lcdctrl/tmp16_and0000 ),
    .D(\lcdctrl/tmp16_mux0000 [0]),
    .Q(\lcdctrl/tmp16 [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \omgwtfbbq/outClock_cmp_eq0000_wg_lut<0>  (
    .I0(\omgwtfbbq/count [8]),
    .I1(\omgwtfbbq/count [9]),
    .I2(\omgwtfbbq/count [7]),
    .I3(\omgwtfbbq/count [10]),
    .O(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \omgwtfbbq/outClock_cmp_eq0000_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [0]),
    .O(\omgwtfbbq/outClock_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \omgwtfbbq/outClock_cmp_eq0000_wg_lut<1>  (
    .I0(\omgwtfbbq/count [11]),
    .I1(\omgwtfbbq/count [12]),
    .I2(\omgwtfbbq/count [6]),
    .I3(\omgwtfbbq/count [13]),
    .O(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \omgwtfbbq/outClock_cmp_eq0000_wg_cy<1>  (
    .CI(\omgwtfbbq/outClock_cmp_eq0000_wg_cy [0]),
    .DI(N0),
    .S(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [1]),
    .O(\omgwtfbbq/outClock_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \omgwtfbbq/outClock_cmp_eq0000_wg_lut<2>  (
    .I0(\omgwtfbbq/count [14]),
    .I1(\omgwtfbbq/count [15]),
    .I2(\omgwtfbbq/count [5]),
    .I3(\omgwtfbbq/count [16]),
    .O(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \omgwtfbbq/outClock_cmp_eq0000_wg_cy<2>  (
    .CI(\omgwtfbbq/outClock_cmp_eq0000_wg_cy [1]),
    .DI(N0),
    .S(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [2]),
    .O(\omgwtfbbq/outClock_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \omgwtfbbq/outClock_cmp_eq0000_wg_lut<3>  (
    .I0(\omgwtfbbq/count [17]),
    .I1(\omgwtfbbq/count [18]),
    .I2(\omgwtfbbq/count [4]),
    .I3(\omgwtfbbq/count [19]),
    .O(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \omgwtfbbq/outClock_cmp_eq0000_wg_cy<3>  (
    .CI(\omgwtfbbq/outClock_cmp_eq0000_wg_cy [2]),
    .DI(N0),
    .S(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [3]),
    .O(\omgwtfbbq/outClock_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \omgwtfbbq/outClock_cmp_eq0000_wg_lut<4>  (
    .I0(\omgwtfbbq/count [20]),
    .I1(\omgwtfbbq/count [21]),
    .I2(\omgwtfbbq/count [3]),
    .I3(\omgwtfbbq/count [22]),
    .O(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \omgwtfbbq/outClock_cmp_eq0000_wg_cy<4>  (
    .CI(\omgwtfbbq/outClock_cmp_eq0000_wg_cy [3]),
    .DI(N0),
    .S(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [4]),
    .O(\omgwtfbbq/outClock_cmp_eq0000_wg_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \omgwtfbbq/outClock_cmp_eq0000_wg_lut<5>  (
    .I0(\omgwtfbbq/count [23]),
    .I1(\omgwtfbbq/count [24]),
    .I2(\omgwtfbbq/count [2]),
    .I3(\omgwtfbbq/count [25]),
    .O(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [5])
  );
  MUXCY   \omgwtfbbq/outClock_cmp_eq0000_wg_cy<5>  (
    .CI(\omgwtfbbq/outClock_cmp_eq0000_wg_cy [4]),
    .DI(N0),
    .S(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [5]),
    .O(\omgwtfbbq/outClock_cmp_eq0000_wg_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \omgwtfbbq/outClock_cmp_eq0000_wg_lut<6>  (
    .I0(\omgwtfbbq/count [26]),
    .I1(\omgwtfbbq/count [27]),
    .I2(\omgwtfbbq/count [1]),
    .I3(\omgwtfbbq/count [28]),
    .O(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [6])
  );
  MUXCY   \omgwtfbbq/outClock_cmp_eq0000_wg_cy<6>  (
    .CI(\omgwtfbbq/outClock_cmp_eq0000_wg_cy [5]),
    .DI(N0),
    .S(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [6]),
    .O(\omgwtfbbq/outClock_cmp_eq0000_wg_cy [6])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \omgwtfbbq/outClock_cmp_eq0000_wg_lut<7>  (
    .I0(\omgwtfbbq/count [29]),
    .I1(\omgwtfbbq/count [30]),
    .I2(\omgwtfbbq/count [0]),
    .I3(\omgwtfbbq/count [31]),
    .O(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [7])
  );
  MUXCY   \omgwtfbbq/outClock_cmp_eq0000_wg_cy<7>  (
    .CI(\omgwtfbbq/outClock_cmp_eq0000_wg_cy [6]),
    .DI(N0),
    .S(\omgwtfbbq/outClock_cmp_eq0000_wg_lut [7]),
    .O(\omgwtfbbq/outClock_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \magic/nextState_mux0000<1>1  (
    .I0(\magic/state [1]),
    .I1(\magic/state [3]),
    .O(\magic/nextState_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \lcdctrl/nextstate<1>1  (
    .I0(\lcdctrl/state [0]),
    .I1(\lcdctrl/state [1]),
    .O(\lcdctrl/nextstate [1])
  );
  LUT4 #(
    .INIT ( 16'h5155 ))
  \lcdctrl/nextstate<0>1  (
    .I0(\lcdctrl/state [0]),
    .I1(\lcdctrl/state [3]),
    .I2(\lcdctrl/state [1]),
    .I3(\lcdctrl/state [2]),
    .O(\lcdctrl/nextstate [0])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \lcdctrl/nextstate<3>1  (
    .I0(\lcdctrl/state [3]),
    .I1(\lcdctrl/state [1]),
    .I2(\lcdctrl/state [0]),
    .I3(\lcdctrl/state [2]),
    .O(\lcdctrl/nextstate [3])
  );
  LUT4 #(
    .INIT ( 16'h3CC4 ))
  \lcdctrl/nextstate<2>1  (
    .I0(\lcdctrl/state [3]),
    .I1(\lcdctrl/state [2]),
    .I2(\lcdctrl/state [0]),
    .I3(\lcdctrl/state [1]),
    .O(\lcdctrl/nextstate [2])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \lcdctrl/wr/LCD_RS_and00001  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(BTN_NORTH_IBUF_17),
    .O(\lcdctrl/wr/LCD_RS_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \lcdctrl/tmp16_mux0000<0>1  (
    .I0(N56),
    .I1(writeBusBuffed[0]),
    .O(\lcdctrl/tmp16_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lcdctrl/tmp16_mux0000<9>1  (
    .I0(\lcdctrl/N0 ),
    .I1(writeBusBuffed[9]),
    .I2(\lcdctrl/tmp16 [5]),
    .O(\lcdctrl/tmp16_mux0000 [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lcdctrl/tmp16_mux0000<8>1  (
    .I0(\lcdctrl/N0 ),
    .I1(writeBusBuffed[8]),
    .I2(\lcdctrl/tmp16 [4]),
    .O(\lcdctrl/tmp16_mux0000 [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lcdctrl/tmp16_mux0000<7>1  (
    .I0(\lcdctrl/N0 ),
    .I1(writeBusBuffed[7]),
    .I2(\lcdctrl/tmp16 [3]),
    .O(\lcdctrl/tmp16_mux0000 [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lcdctrl/tmp16_mux0000<6>1  (
    .I0(\lcdctrl/N0 ),
    .I1(writeBusBuffed[6]),
    .I2(\lcdctrl/tmp16 [2]),
    .O(\lcdctrl/tmp16_mux0000 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lcdctrl/tmp16_mux0000<5>1  (
    .I0(\lcdctrl/N0 ),
    .I1(writeBusBuffed[5]),
    .I2(\lcdctrl/tmp16 [1]),
    .O(\lcdctrl/tmp16_mux0000 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lcdctrl/tmp16_mux0000<4>1  (
    .I0(\lcdctrl/N0 ),
    .I1(writeBusBuffed[4]),
    .I2(\lcdctrl/tmp16 [0]),
    .O(\lcdctrl/tmp16_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lcdctrl/tmp16_mux0000<15>1  (
    .I0(\lcdctrl/N0 ),
    .I1(writeBusBuffed[15]),
    .I2(\lcdctrl/tmp16 [11]),
    .O(\lcdctrl/tmp16_mux0000 [15])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lcdctrl/tmp16_mux0000<14>1  (
    .I0(\lcdctrl/N0 ),
    .I1(writeBusBuffed[14]),
    .I2(\lcdctrl/tmp16 [10]),
    .O(\lcdctrl/tmp16_mux0000 [14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lcdctrl/tmp16_mux0000<13>1  (
    .I0(\lcdctrl/N0 ),
    .I1(writeBusBuffed[13]),
    .I2(\lcdctrl/tmp16 [9]),
    .O(\lcdctrl/tmp16_mux0000 [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lcdctrl/tmp16_mux0000<12>1  (
    .I0(\lcdctrl/N0 ),
    .I1(writeBusBuffed[12]),
    .I2(\lcdctrl/tmp16 [8]),
    .O(\lcdctrl/tmp16_mux0000 [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lcdctrl/tmp16_mux0000<11>1  (
    .I0(\lcdctrl/N0 ),
    .I1(writeBusBuffed[11]),
    .I2(\lcdctrl/tmp16 [7]),
    .O(\lcdctrl/tmp16_mux0000 [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lcdctrl/tmp16_mux0000<10>2  (
    .I0(\lcdctrl/N0 ),
    .I1(writeBusBuffed[10]),
    .I2(\lcdctrl/tmp16 [6]),
    .O(\lcdctrl/tmp16_mux0000 [10])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \lcdctrl/Mmux_lcd_dat821  (
    .I0(\lcdctrl/state [3]),
    .I1(\lcdctrl/state [2]),
    .I2(\lcdctrl/state [1]),
    .I3(\lcdctrl/state [0]),
    .O(\lcdctrl/rs )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \lcdctrl/wr/LCD_E_or000223  (
    .I0(\lcdctrl/wr/count [3]),
    .I1(\lcdctrl/wr/count [5]),
    .I2(\lcdctrl/wr/count [2]),
    .I3(\lcdctrl/wr/count [4]),
    .O(\lcdctrl/wr/LCD_E_or000223_147 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \lcdctrl/wr/LCD_E_or000231  (
    .I0(\lcdctrl/wr/LCD_E_or000211_146 ),
    .I1(\lcdctrl/wr/N3 ),
    .I2(\lcdctrl/wr/LCD_E_or000223_147 ),
    .O(\lcdctrl/wr/LCD_E_or0002 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \lcdctrl/wr/SF_D_and00002_SW0  (
    .I0(\lcdctrl/wr/count [16]),
    .I1(\lcdctrl/wr/count [14]),
    .O(N11)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \lcdctrl/wr/SF_D_and00001  (
    .I0(\lcdctrl/wr/count [9]),
    .I1(\lcdctrl/wr/count [15]),
    .I2(\lcdctrl/wr/count [13]),
    .I3(N58),
    .O(\lcdctrl/wr/N2 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \lcdctrl/wr/done5  (
    .I0(\lcdctrl/wr/count [7]),
    .I1(\lcdctrl/wr/count [4]),
    .I2(N57),
    .O(\lcdctrl/wr/done5_242 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \lcdctrl/wr/done20  (
    .I0(\lcdctrl/wr/done5_242 ),
    .I1(\lcdctrl/wr/N2 ),
    .I2(\lcdctrl/wr/done13_241 ),
    .O(\lcdctrl/done )
  );
  LUT4 #(
    .INIT ( 16'h4240 ))
  \lcdctrl/wr/LCD_E_not000127  (
    .I0(\lcdctrl/wr/count [2]),
    .I1(\lcdctrl/wr/count [3]),
    .I2(\lcdctrl/wr/count [4]),
    .I3(\lcdctrl/mode4 ),
    .O(\lcdctrl/wr/LCD_E_not000127_143 )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \lcdctrl/wr/LCD_E_not000151  (
    .I0(\lcdctrl/wr/count [1]),
    .I1(\lcdctrl/wr/count [6]),
    .I2(\lcdctrl/wr/count [2]),
    .I3(\lcdctrl/wr/count [3]),
    .O(\lcdctrl/wr/LCD_E_not000151_144 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \omgwtfbbq/count_or00001  (
    .I0(BTN_NORTH_IBUF_17),
    .I1(\omgwtfbbq/outClock_cmp_eq0000 ),
    .O(\omgwtfbbq/count_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \lcdctrl/wr/SF_D_mux0000<6>44  (
    .I0(\lcdctrl/state [0]),
    .I1(\lcdctrl/state [1]),
    .I2(\lcdctrl/state [2]),
    .I3(\lcdctrl/state [3]),
    .O(\lcdctrl/wr/SF_D_mux0000<6>44_219 )
  );
  LUT4 #(
    .INIT ( 16'h0905 ))
  \lcdctrl/wr/SF_D_mux0000<4>38  (
    .I0(\lcdctrl/state [2]),
    .I1(\lcdctrl/state [0]),
    .I2(\lcdctrl/state [3]),
    .I3(\lcdctrl/state [1]),
    .O(\lcdctrl/wr/SF_D_mux0000<4>38_209 )
  );
  LUT4 #(
    .INIT ( 16'h0103 ))
  \lcdctrl/wr/SF_D_mux0000<4>94  (
    .I0(\lcdctrl/state [0]),
    .I1(\lcdctrl/state [3]),
    .I2(\lcdctrl/state [2]),
    .I3(\lcdctrl/state [1]),
    .O(\lcdctrl/wr/SF_D_mux0000<4>94_212 )
  );
  LUT4 #(
    .INIT ( 16'hFF32 ))
  \lcdctrl/wr/SF_D_mux0000<4>125  (
    .I0(\lcdctrl/wr/SF_D_mux0000<4>94_212 ),
    .I1(\lcdctrl/wr/busy_222 ),
    .I2(\lcdctrl/wr/SF_D_mux0000<4>79_211 ),
    .I3(\lcdctrl/wr/SF_D_mux0000<4>55_210 ),
    .O(\lcdctrl/wr/SF_D_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'h1113 ))
  \lcdctrl/wr/SF_D_mux0000<5>99  (
    .I0(\lcdctrl/state [2]),
    .I1(\lcdctrl/state [3]),
    .I2(\lcdctrl/state [0]),
    .I3(\lcdctrl/state [1]),
    .O(\lcdctrl/wr/SF_D_mux0000<5>99_216 )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \lcdctrl/wr/SF_D_mux0000<5>149  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/SF_D_mux0000<5>99_216 ),
    .I2(N61),
    .I3(\lcdctrl/wr/SF_D_mux0000<5>52_215 ),
    .O(\lcdctrl/wr/SF_D_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h0602 ))
  \lcdctrl/wr/SF_D_mux0000<7>23  (
    .I0(\lcdctrl/state [2]),
    .I1(\lcdctrl/state [0]),
    .I2(\lcdctrl/state [3]),
    .I3(\lcdctrl/state [1]),
    .O(\lcdctrl/wr/SF_D_mux0000<7>23_221 )
  );
  IBUF   BTN_NORTH_IBUF (
    .I(BTN_NORTH),
    .O(BTN_NORTH_IBUF_17)
  );
  OBUF   LCD_E_OBUF (
    .I(\lcdctrl/wr/LCD_E_141 ),
    .O(LCD_E)
  );
  OBUF   LCD_RS_OBUF (
    .I(\lcdctrl/wr/LCD_RS_148 ),
    .O(LCD_RS)
  );
  OBUF   LCD_RW_OBUF (
    .I(N0),
    .O(LCD_RW)
  );
  OBUF   SF_D_11_OBUF (
    .I(\lcdctrl/wr/SF_D [11]),
    .O(SF_D[11])
  );
  OBUF   SF_D_10_OBUF (
    .I(\lcdctrl/wr/SF_D [10]),
    .O(SF_D[10])
  );
  OBUF   SF_D_9_OBUF (
    .I(\lcdctrl/wr/SF_D [9]),
    .O(SF_D[9])
  );
  OBUF   SF_D_8_OBUF (
    .I(\lcdctrl/wr/SF_D [8]),
    .O(SF_D[8])
  );
  FDS   \magic/regWrite  (
    .C(\omgwtfbbq/outClock_435 ),
    .D(\magic/state [2]),
    .S(\magic/state [1]),
    .Q(\magic/regWrite_254 )
  );
  FDS   \magic/buffCtrl_1  (
    .C(\omgwtfbbq/outClock_435 ),
    .D(\magic/state [3]),
    .S(\magic/state [2]),
    .Q(\magic/buffCtrl [1])
  );
  FDS   \magic/buffCtrl_0  (
    .C(\omgwtfbbq/outClock_435 ),
    .D(\magic/state [1]),
    .S(\magic/state [0]),
    .Q(\magic/buffCtrl [0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<1>_rt  (
    .I0(\omgwtfbbq/count [1]),
    .O(\omgwtfbbq/Mcount_count_cy<1>_rt_361 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<2>_rt  (
    .I0(\omgwtfbbq/count [2]),
    .O(\omgwtfbbq/Mcount_count_cy<2>_rt_383 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<3>_rt  (
    .I0(\omgwtfbbq/count [3]),
    .O(\omgwtfbbq/Mcount_count_cy<3>_rt_387 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<4>_rt  (
    .I0(\omgwtfbbq/count [4]),
    .O(\omgwtfbbq/Mcount_count_cy<4>_rt_389 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<5>_rt  (
    .I0(\omgwtfbbq/count [5]),
    .O(\omgwtfbbq/Mcount_count_cy<5>_rt_391 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<6>_rt  (
    .I0(\omgwtfbbq/count [6]),
    .O(\omgwtfbbq/Mcount_count_cy<6>_rt_393 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<7>_rt  (
    .I0(\omgwtfbbq/count [7]),
    .O(\omgwtfbbq/Mcount_count_cy<7>_rt_395 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<8>_rt  (
    .I0(\omgwtfbbq/count [8]),
    .O(\omgwtfbbq/Mcount_count_cy<8>_rt_397 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<9>_rt  (
    .I0(\omgwtfbbq/count [9]),
    .O(\omgwtfbbq/Mcount_count_cy<9>_rt_399 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<10>_rt  (
    .I0(\omgwtfbbq/count [10]),
    .O(\omgwtfbbq/Mcount_count_cy<10>_rt_341 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<11>_rt  (
    .I0(\omgwtfbbq/count [11]),
    .O(\omgwtfbbq/Mcount_count_cy<11>_rt_343 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<12>_rt  (
    .I0(\omgwtfbbq/count [12]),
    .O(\omgwtfbbq/Mcount_count_cy<12>_rt_345 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<13>_rt  (
    .I0(\omgwtfbbq/count [13]),
    .O(\omgwtfbbq/Mcount_count_cy<13>_rt_347 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<14>_rt  (
    .I0(\omgwtfbbq/count [14]),
    .O(\omgwtfbbq/Mcount_count_cy<14>_rt_349 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<15>_rt  (
    .I0(\omgwtfbbq/count [15]),
    .O(\omgwtfbbq/Mcount_count_cy<15>_rt_351 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<16>_rt  (
    .I0(\omgwtfbbq/count [16]),
    .O(\omgwtfbbq/Mcount_count_cy<16>_rt_353 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<17>_rt  (
    .I0(\omgwtfbbq/count [17]),
    .O(\omgwtfbbq/Mcount_count_cy<17>_rt_355 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<18>_rt  (
    .I0(\omgwtfbbq/count [18]),
    .O(\omgwtfbbq/Mcount_count_cy<18>_rt_357 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<19>_rt  (
    .I0(\omgwtfbbq/count [19]),
    .O(\omgwtfbbq/Mcount_count_cy<19>_rt_359 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<20>_rt  (
    .I0(\omgwtfbbq/count [20]),
    .O(\omgwtfbbq/Mcount_count_cy<20>_rt_363 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<21>_rt  (
    .I0(\omgwtfbbq/count [21]),
    .O(\omgwtfbbq/Mcount_count_cy<21>_rt_365 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<22>_rt  (
    .I0(\omgwtfbbq/count [22]),
    .O(\omgwtfbbq/Mcount_count_cy<22>_rt_367 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<23>_rt  (
    .I0(\omgwtfbbq/count [23]),
    .O(\omgwtfbbq/Mcount_count_cy<23>_rt_369 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<24>_rt  (
    .I0(\omgwtfbbq/count [24]),
    .O(\omgwtfbbq/Mcount_count_cy<24>_rt_371 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<25>_rt  (
    .I0(\omgwtfbbq/count [25]),
    .O(\omgwtfbbq/Mcount_count_cy<25>_rt_373 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<26>_rt  (
    .I0(\omgwtfbbq/count [26]),
    .O(\omgwtfbbq/Mcount_count_cy<26>_rt_375 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<27>_rt  (
    .I0(\omgwtfbbq/count [27]),
    .O(\omgwtfbbq/Mcount_count_cy<27>_rt_377 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<28>_rt  (
    .I0(\omgwtfbbq/count [28]),
    .O(\omgwtfbbq/Mcount_count_cy<28>_rt_379 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<29>_rt  (
    .I0(\omgwtfbbq/count [29]),
    .O(\omgwtfbbq/Mcount_count_cy<29>_rt_381 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_cy<30>_rt  (
    .I0(\omgwtfbbq/count [30]),
    .O(\omgwtfbbq/Mcount_count_cy<30>_rt_385 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \omgwtfbbq/Mcount_count_xor<31>_rt  (
    .I0(\omgwtfbbq/count [31]),
    .O(\omgwtfbbq/Mcount_count_xor<31>_rt_401 )
  );
  LUT4 #(
    .INIT ( 16'hE4FF ))
  \BBusBuffed<0>LogicTrst1  (
    .I0(\magic/regRead2_253 ),
    .I1(\omgbadname/reg0 [0]),
    .I2(\omgbadname/reg1 [0]),
    .I3(\magic/buffCtrl [1]),
    .O(BBusBuffed[0])
  );
  LUT4 #(
    .INIT ( 16'hACFF ))
  \ABusBuffed<0>LogicTrst1  (
    .I0(\omgbadname/reg1 [0]),
    .I1(\omgbadname/reg0 [0]),
    .I2(\magic/regRead1_252 ),
    .I3(\magic/buffCtrl [1]),
    .O(ABusBuffed[0])
  );
  LUT4 #(
    .INIT ( 16'hACFF ))
  \ABusBuffed<1>LogicTrst1  (
    .I0(\omgbadname/reg1 [1]),
    .I1(\omgbadname/reg0 [1]),
    .I2(\magic/regRead1_252 ),
    .I3(\magic/buffCtrl [1]),
    .O(ABusBuffed[1])
  );
  LUT4 #(
    .INIT ( 16'hACFF ))
  \ABusBuffed<2>LogicTrst1  (
    .I0(\omgbadname/reg1 [2]),
    .I1(\omgbadname/reg0 [2]),
    .I2(\magic/regRead1_252 ),
    .I3(\magic/buffCtrl [1]),
    .O(ABusBuffed[2])
  );
  LUT4 #(
    .INIT ( 16'hACFF ))
  \ABusBuffed<3>LogicTrst1  (
    .I0(\omgbadname/reg1 [3]),
    .I1(\omgbadname/reg0 [3]),
    .I2(\magic/regRead1_252 ),
    .I3(\magic/buffCtrl [1]),
    .O(ABusBuffed[3])
  );
  LUT4 #(
    .INIT ( 16'hACFF ))
  \ABusBuffed<4>LogicTrst1  (
    .I0(\omgbadname/reg1 [4]),
    .I1(\omgbadname/reg0 [4]),
    .I2(\magic/regRead1_252 ),
    .I3(\magic/buffCtrl [1]),
    .O(ABusBuffed[4])
  );
  LUT4 #(
    .INIT ( 16'hACFF ))
  \ABusBuffed<5>LogicTrst1  (
    .I0(\omgbadname/reg1 [5]),
    .I1(\omgbadname/reg0 [5]),
    .I2(\magic/regRead1_252 ),
    .I3(\magic/buffCtrl [1]),
    .O(ABusBuffed[5])
  );
  LUT4 #(
    .INIT ( 16'hACFF ))
  \ABusBuffed<6>LogicTrst1  (
    .I0(\omgbadname/reg1 [6]),
    .I1(\omgbadname/reg0 [6]),
    .I2(\magic/regRead1_252 ),
    .I3(\magic/buffCtrl [1]),
    .O(ABusBuffed[6])
  );
  LUT4 #(
    .INIT ( 16'hACFF ))
  \ABusBuffed<7>LogicTrst1  (
    .I0(\omgbadname/reg1 [7]),
    .I1(\omgbadname/reg0 [7]),
    .I2(\magic/regRead1_252 ),
    .I3(\magic/buffCtrl [1]),
    .O(ABusBuffed[7])
  );
  LUT4 #(
    .INIT ( 16'hACFF ))
  \ABusBuffed<8>LogicTrst1  (
    .I0(\omgbadname/reg1 [8]),
    .I1(\omgbadname/reg0 [8]),
    .I2(\magic/regRead1_252 ),
    .I3(\magic/buffCtrl [1]),
    .O(ABusBuffed[8])
  );
  LUT4 #(
    .INIT ( 16'hACFF ))
  \ABusBuffed<9>LogicTrst1  (
    .I0(\omgbadname/reg1 [9]),
    .I1(\omgbadname/reg0 [9]),
    .I2(\magic/regRead1_252 ),
    .I3(\magic/buffCtrl [1]),
    .O(ABusBuffed[9])
  );
  LUT4 #(
    .INIT ( 16'hACFF ))
  \ABusBuffed<10>LogicTrst1  (
    .I0(\omgbadname/reg1 [10]),
    .I1(\omgbadname/reg0 [10]),
    .I2(\magic/regRead1_252 ),
    .I3(\magic/buffCtrl [1]),
    .O(ABusBuffed[10])
  );
  LUT4 #(
    .INIT ( 16'hACFF ))
  \ABusBuffed<11>LogicTrst1  (
    .I0(\omgbadname/reg1 [11]),
    .I1(\omgbadname/reg0 [11]),
    .I2(\magic/regRead1_252 ),
    .I3(\magic/buffCtrl [1]),
    .O(ABusBuffed[11])
  );
  LUT4 #(
    .INIT ( 16'h56AA ))
  \lcdctrl/Madd_ascii_lut<0>1  (
    .I0(\lcdctrl/tmp16 [12]),
    .I1(\lcdctrl/tmp16 [14]),
    .I2(\lcdctrl/tmp16 [13]),
    .I3(\lcdctrl/tmp16 [15]),
    .O(\lcdctrl/Madd_ascii_lut [0])
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \writeBusBuffed<15>LogicTrst1  (
    .I0(\magic/buffCtrl [1]),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [15]),
    .O(writeBusBuffed[15])
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \writeBusBuffed<14>LogicTrst1  (
    .I0(\magic/buffCtrl [1]),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [14]),
    .O(writeBusBuffed[14])
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \writeBusBuffed<13>LogicTrst1  (
    .I0(\magic/buffCtrl [1]),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [13]),
    .O(writeBusBuffed[13])
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \writeBusBuffed<12>LogicTrst1  (
    .I0(\magic/buffCtrl [1]),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [12]),
    .O(writeBusBuffed[12])
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \writeBusBuffed<11>LogicTrst1  (
    .I0(\magic/buffCtrl [1]),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [11]),
    .O(writeBusBuffed[11])
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \writeBusBuffed<10>LogicTrst1  (
    .I0(\magic/buffCtrl [1]),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [10]),
    .O(writeBusBuffed[10])
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \writeBusBuffed<9>LogicTrst1  (
    .I0(\magic/buffCtrl [1]),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [9]),
    .O(writeBusBuffed[9])
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \writeBusBuffed<8>LogicTrst1  (
    .I0(\magic/buffCtrl [1]),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [8]),
    .O(writeBusBuffed[8])
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \writeBusBuffed<7>LogicTrst1  (
    .I0(\magic/buffCtrl [1]),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [7]),
    .O(writeBusBuffed[7])
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \writeBusBuffed<6>LogicTrst1  (
    .I0(\magic/buffCtrl [1]),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [6]),
    .O(writeBusBuffed[6])
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \writeBusBuffed<5>LogicTrst1  (
    .I0(\magic/buffCtrl [1]),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [5]),
    .O(writeBusBuffed[5])
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \writeBusBuffed<4>LogicTrst1  (
    .I0(\magic/buffCtrl [1]),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [4]),
    .O(writeBusBuffed[4])
  );
  LUT4 #(
    .INIT ( 16'hBBB1 ))
  \lcdctrl/wr/SF_D_mux0000<6>82  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(N10),
    .I2(\lcdctrl/wr/SF_D_mux0000<6>19_218 ),
    .I3(\lcdctrl/wr/SF_D_mux0000<6>44_219 ),
    .O(\lcdctrl/wr/SF_D_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hACFF ))
  \ABusBuffed<12>LogicTrst1  (
    .I0(\omgbadname/reg1 [12]),
    .I1(\omgbadname/reg0 [12]),
    .I2(\magic/regRead1_252 ),
    .I3(\magic/buffCtrl [1]),
    .O(ABusBuffed[12])
  );
  LUT4 #(
    .INIT ( 16'hACFF ))
  \ABusBuffed<13>LogicTrst1  (
    .I0(\omgbadname/reg1 [13]),
    .I1(\omgbadname/reg0 [13]),
    .I2(\magic/regRead1_252 ),
    .I3(\magic/buffCtrl [1]),
    .O(ABusBuffed[13])
  );
  LUT4 #(
    .INIT ( 16'hE4FF ))
  \ABusBuffed<14>LogicTrst1  (
    .I0(\magic/regRead1_252 ),
    .I1(\omgbadname/reg0 [14]),
    .I2(\omgbadname/reg1 [14]),
    .I3(\magic/buffCtrl [1]),
    .O(ABusBuffed[14])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \lcdctrl/wr/SF_D_and0000_SW0_SW0  (
    .I0(\lcdctrl/wr/N7 ),
    .I1(\lcdctrl/wr/count [2]),
    .I2(\lcdctrl/wr/count [4]),
    .O(N12)
  );
  LUT4 #(
    .INIT ( 16'hC444 ))
  \lcdctrl/wr/SF_D_and0000  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(BTN_NORTH_IBUF_17),
    .I2(N60),
    .I3(N12),
    .O(\lcdctrl/wr/SF_D_and0000_207 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \lcdctrl/wr/LCD_E_not000175  (
    .I0(\lcdctrl/wr/N3 ),
    .I1(\lcdctrl/wr/busy_222 ),
    .I2(\lcdctrl/wr/count [5]),
    .I3(N14),
    .O(\lcdctrl/wr/LCD_E_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \lcdctrl/wr/SF_D_and00001_SW1  (
    .I0(\lcdctrl/wr/count [15]),
    .I1(\lcdctrl/wr/count [13]),
    .I2(\lcdctrl/wr/count [0]),
    .I3(\lcdctrl/wr/count [7]),
    .O(N16)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myFirstALU/Madd__old_C_1_lut<1>_SW0  (
    .I0(\omgbadname/reg1 [1]),
    .I1(\omgbadname/reg0 [1]),
    .O(N18)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \myFirstALU/Madd__old_C_1_lut<1>  (
    .I0(\magic/regRead2_253 ),
    .I1(\magic/regRead1_252 ),
    .I2(\magic/buffCtrl [1]),
    .I3(N18),
    .O(\myFirstALU/Madd__old_C_1_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myFirstALU/Madd__old_C_1_lut<2>_SW0  (
    .I0(\omgbadname/reg1 [2]),
    .I1(\omgbadname/reg0 [2]),
    .O(N20)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \myFirstALU/Madd__old_C_1_lut<2>  (
    .I0(\magic/regRead2_253 ),
    .I1(\magic/regRead1_252 ),
    .I2(\magic/buffCtrl [1]),
    .I3(N20),
    .O(\myFirstALU/Madd__old_C_1_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myFirstALU/Madd__old_C_1_lut<3>_SW0  (
    .I0(\omgbadname/reg1 [3]),
    .I1(\omgbadname/reg0 [3]),
    .O(N22)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \myFirstALU/Madd__old_C_1_lut<3>  (
    .I0(\magic/regRead2_253 ),
    .I1(\magic/regRead1_252 ),
    .I2(\magic/buffCtrl [1]),
    .I3(N22),
    .O(\myFirstALU/Madd__old_C_1_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myFirstALU/Madd__old_C_1_lut<4>_SW0  (
    .I0(\omgbadname/reg1 [4]),
    .I1(\omgbadname/reg0 [4]),
    .O(N24)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \myFirstALU/Madd__old_C_1_lut<4>  (
    .I0(\magic/regRead2_253 ),
    .I1(\magic/regRead1_252 ),
    .I2(\magic/buffCtrl [1]),
    .I3(N24),
    .O(\myFirstALU/Madd__old_C_1_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myFirstALU/Madd__old_C_1_lut<5>_SW0  (
    .I0(\omgbadname/reg1 [5]),
    .I1(\omgbadname/reg0 [5]),
    .O(N26)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \myFirstALU/Madd__old_C_1_lut<5>  (
    .I0(\magic/regRead2_253 ),
    .I1(\magic/regRead1_252 ),
    .I2(\magic/buffCtrl [1]),
    .I3(N26),
    .O(\myFirstALU/Madd__old_C_1_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myFirstALU/Madd__old_C_1_lut<6>_SW0  (
    .I0(\omgbadname/reg1 [6]),
    .I1(\omgbadname/reg0 [6]),
    .O(N28)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \myFirstALU/Madd__old_C_1_lut<6>  (
    .I0(\magic/regRead2_253 ),
    .I1(\magic/regRead1_252 ),
    .I2(\magic/buffCtrl [1]),
    .I3(N28),
    .O(\myFirstALU/Madd__old_C_1_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myFirstALU/Madd__old_C_1_lut<7>_SW0  (
    .I0(\omgbadname/reg1 [7]),
    .I1(\omgbadname/reg0 [7]),
    .O(N30)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \myFirstALU/Madd__old_C_1_lut<7>  (
    .I0(\magic/regRead2_253 ),
    .I1(\magic/regRead1_252 ),
    .I2(\magic/buffCtrl [1]),
    .I3(N30),
    .O(\myFirstALU/Madd__old_C_1_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myFirstALU/Madd__old_C_1_lut<8>_SW0  (
    .I0(\omgbadname/reg1 [8]),
    .I1(\omgbadname/reg0 [8]),
    .O(N32)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \myFirstALU/Madd__old_C_1_lut<8>  (
    .I0(\magic/regRead2_253 ),
    .I1(\magic/regRead1_252 ),
    .I2(\magic/buffCtrl [1]),
    .I3(N32),
    .O(\myFirstALU/Madd__old_C_1_lut [8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myFirstALU/Madd__old_C_1_lut<9>_SW0  (
    .I0(\omgbadname/reg1 [9]),
    .I1(\omgbadname/reg0 [9]),
    .O(N34)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \myFirstALU/Madd__old_C_1_lut<9>  (
    .I0(\magic/regRead2_253 ),
    .I1(\magic/regRead1_252 ),
    .I2(\magic/buffCtrl [1]),
    .I3(N34),
    .O(\myFirstALU/Madd__old_C_1_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \lcdctrl/tmp16_and00001  (
    .I0(BTN_NORTH_IBUF_17),
    .I1(N59),
    .I2(\lcdctrl/wr/N2 ),
    .I3(\lcdctrl/wr/done5_242 ),
    .O(\lcdctrl/tmp16_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h80FF ))
  \lcdctrl/wr/busy_not00011  (
    .I0(\lcdctrl/wr/done13_241 ),
    .I1(\lcdctrl/wr/done5_242 ),
    .I2(\lcdctrl/wr/N2 ),
    .I3(\lcdctrl/wr/busy_222 ),
    .O(\lcdctrl/wr/busy_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<0>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [0]),
    .O(\lcdctrl/wr/Mcount_count_lut [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<1>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [1]),
    .O(\lcdctrl/wr/Mcount_count_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<2>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [2]),
    .O(\lcdctrl/wr/Mcount_count_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<3>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [3]),
    .O(\lcdctrl/wr/Mcount_count_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<4>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [4]),
    .O(\lcdctrl/wr/Mcount_count_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<5>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [5]),
    .O(\lcdctrl/wr/Mcount_count_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \writeBusBuffed<3>LogicTrst1  (
    .I0(\magic/buffCtrl [1]),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [3]),
    .O(writeBusBuffed[3])
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \writeBusBuffed<2>LogicTrst1  (
    .I0(\magic/buffCtrl [1]),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [2]),
    .O(writeBusBuffed[2])
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \writeBusBuffed<1>LogicTrst1  (
    .I0(\magic/buffCtrl [1]),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [1]),
    .O(writeBusBuffed[1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myFirstALU/Madd__old_C_1_lut<10>_SW0  (
    .I0(\omgbadname/reg1 [10]),
    .I1(\omgbadname/reg0 [10]),
    .O(N36)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \myFirstALU/Madd__old_C_1_lut<10>  (
    .I0(\magic/regRead2_253 ),
    .I1(\magic/regRead1_252 ),
    .I2(\magic/buffCtrl [1]),
    .I3(N36),
    .O(\myFirstALU/Madd__old_C_1_lut [10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myFirstALU/Madd__old_C_1_lut<11>_SW0  (
    .I0(\omgbadname/reg1 [11]),
    .I1(\omgbadname/reg0 [11]),
    .O(N38)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \myFirstALU/Madd__old_C_1_lut<11>  (
    .I0(\magic/regRead2_253 ),
    .I1(\magic/regRead1_252 ),
    .I2(\magic/buffCtrl [1]),
    .I3(N38),
    .O(\myFirstALU/Madd__old_C_1_lut [11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myFirstALU/Madd__old_C_1_lut<12>_SW0  (
    .I0(\omgbadname/reg1 [12]),
    .I1(\omgbadname/reg0 [12]),
    .O(N40)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \myFirstALU/Madd__old_C_1_lut<12>  (
    .I0(\magic/regRead2_253 ),
    .I1(\magic/regRead1_252 ),
    .I2(\magic/buffCtrl [1]),
    .I3(N40),
    .O(\myFirstALU/Madd__old_C_1_lut [12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myFirstALU/Madd__old_C_1_lut<13>_SW0  (
    .I0(\omgbadname/reg1 [13]),
    .I1(\omgbadname/reg0 [13]),
    .O(N42)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \myFirstALU/Madd__old_C_1_lut<13>  (
    .I0(\magic/regRead2_253 ),
    .I1(\magic/regRead1_252 ),
    .I2(\magic/buffCtrl [1]),
    .I3(N42),
    .O(\myFirstALU/Madd__old_C_1_lut [13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myFirstALU/Madd__old_C_1_lut<14>_SW0  (
    .I0(\omgbadname/reg1 [14]),
    .I1(\omgbadname/reg0 [14]),
    .O(N44)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \myFirstALU/Madd__old_C_1_lut<14>  (
    .I0(\magic/regRead2_253 ),
    .I1(\magic/regRead1_252 ),
    .I2(\magic/buffCtrl [1]),
    .I3(N44),
    .O(\myFirstALU/Madd__old_C_1_lut [14])
  );
  LUT4 #(
    .INIT ( 16'hFB51 ))
  \writeBusBuffed<0>LogicTrst  (
    .I0(\magic/buffCtrl [0]),
    .I1(\magic/buffCtrl [1]),
    .I2(\myFirstALU/_old_C_1 [0]),
    .I3(\magic/initialR_246 ),
    .O(writeBusBuffed[0])
  );
  LUT4 #(
    .INIT ( 16'hD2D0 ))
  \lcdctrl/wr/SF_D_mux0000<5>21  (
    .I0(\lcdctrl/tmp16 [15]),
    .I1(\lcdctrl/tmp16 [12]),
    .I2(\lcdctrl/tmp16 [13]),
    .I3(\lcdctrl/tmp16 [14]),
    .O(\lcdctrl/wr/SF_D_mux0000<5>21_214 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myFirstALU/Madd__old_C_1_lut<15>_SW0  (
    .I0(\omgbadname/reg0 [15]),
    .I1(\omgbadname/reg1 [15]),
    .O(N46)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \myFirstALU/Madd__old_C_1_lut<15>  (
    .I0(\magic/regRead1_252 ),
    .I1(\magic/regRead2_253 ),
    .I2(\magic/buffCtrl [1]),
    .I3(N46),
    .O(\myFirstALU/Madd__old_C_1_lut [15])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<6>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [6]),
    .O(\lcdctrl/wr/Mcount_count_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<7>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [7]),
    .O(\lcdctrl/wr/Mcount_count_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<8>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [8]),
    .O(\lcdctrl/wr/Mcount_count_lut [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<9>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [9]),
    .O(\lcdctrl/wr/Mcount_count_lut [9])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<10>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [10]),
    .O(\lcdctrl/wr/Mcount_count_lut [10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<11>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [11]),
    .O(\lcdctrl/wr/Mcount_count_lut [11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<12>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [12]),
    .O(\lcdctrl/wr/Mcount_count_lut [12])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<13>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [13]),
    .O(\lcdctrl/wr/Mcount_count_lut [13])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<14>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [14]),
    .O(\lcdctrl/wr/Mcount_count_lut [14])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<15>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [15]),
    .O(\lcdctrl/wr/Mcount_count_lut [15])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcdctrl/wr/Mcount_count_lut<16>  (
    .I0(\lcdctrl/wr/busy_222 ),
    .I1(\lcdctrl/wr/count [16]),
    .O(\lcdctrl/wr/Mcount_count_lut [16])
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \lcdctrl/Madd_ascii_xor<3>121  (
    .I0(\lcdctrl/tmp16 [13]),
    .I1(\lcdctrl/tmp16 [15]),
    .I2(\lcdctrl/tmp16 [14]),
    .O(\lcdctrl/N3 )
  );
  LUT4 #(
    .INIT ( 16'h9991 ))
  \lcdctrl/wr/LCD_E_or000211  (
    .I0(\lcdctrl/wr/count [6]),
    .I1(\lcdctrl/wr/count [1]),
    .I2(\lcdctrl/state [2]),
    .I3(\lcdctrl/state [3]),
    .O(\lcdctrl/wr/LCD_E_or000211_146 )
  );
  LUT4 #(
    .INIT ( 16'h1011 ))
  \lcdctrl/tmp16_mux0000<3>1  (
    .I0(\lcdctrl/N0 ),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [3]),
    .I3(\magic/buffCtrl [1]),
    .O(\lcdctrl/tmp16_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'h1011 ))
  \lcdctrl/tmp16_mux0000<2>1  (
    .I0(\lcdctrl/N0 ),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [2]),
    .I3(\magic/buffCtrl [1]),
    .O(\lcdctrl/tmp16_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h1011 ))
  \lcdctrl/tmp16_mux0000<1>1  (
    .I0(\lcdctrl/N0 ),
    .I1(\magic/buffCtrl [0]),
    .I2(\myFirstALU/_old_C_1 [1]),
    .I3(\magic/buffCtrl [1]),
    .O(\lcdctrl/tmp16_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \lcdctrl/wr/SF_D_mux0000<6>19_SW0  (
    .I0(\lcdctrl/tmp16 [15]),
    .I1(\lcdctrl/tmp16 [12]),
    .O(N48)
  );
  LUT4 #(
    .INIT ( 16'hA080 ))
  \lcdctrl/wr/SF_D_mux0000<6>19  (
    .I0(\lcdctrl/tmp16 [14]),
    .I1(\lcdctrl/tmp16 [13]),
    .I2(\lcdctrl/rs ),
    .I3(N48),
    .O(\lcdctrl/wr/SF_D_mux0000<6>19_218 )
  );
  LUT4 #(
    .INIT ( 16'h01FF ))
  \lcdctrl/wr/SF_D_mux0000<4>79_SW0  (
    .I0(\lcdctrl/state [2]),
    .I1(\lcdctrl/state [0]),
    .I2(\lcdctrl/state [1]),
    .I3(\lcdctrl/state [3]),
    .O(N50)
  );
  BUFGP   CLK_50MHZ_BUFGP (
    .I(CLK_50MHZ),
    .O(CLK_50MHZ_BUFGP_19)
  );
  BUFG   \omgwtfbbq/outClock_BUFG  (
    .I(\omgwtfbbq/outClock1 ),
    .O(\omgwtfbbq/outClock_435 )
  );
  INV   \omgwtfbbq/Mcount_count_lut<0>_INV_0  (
    .I(\omgwtfbbq/count [0]),
    .O(\omgwtfbbq/Mcount_count_lut [0])
  );
  INV   \omgwtfbbq/outClock_not00011_INV_0  (
    .I(\omgwtfbbq/outClock1 ),
    .O(\omgwtfbbq/outClock_not0001 )
  );
  INV   omgwtfbbq_not00001_INV_0 (
    .I(BTN_NORTH_IBUF_17),
    .O(omgwtfbbq_not0000)
  );
  INV   \omgbadname/reg0_not00011_INV_0  (
    .I(\magic/regWrite_254 ),
    .O(\omgbadname/reg0_not0001 )
  );
  INV   \lcdctrl/write1_INV_0  (
    .I(\lcdctrl/wr/busy_222 ),
    .O(\lcdctrl/write )
  );
  MUXF5   \lcdctrl/wr/SF_D_mux0000<7>85  (
    .I0(N52),
    .I1(N53),
    .S(\lcdctrl/wr/busy_222 ),
    .O(\lcdctrl/wr/SF_D_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \lcdctrl/wr/SF_D_mux0000<7>85_F  (
    .I0(\lcdctrl/state [1]),
    .I1(\lcdctrl/state [0]),
    .I2(\lcdctrl/state [3]),
    .I3(\lcdctrl/state [2]),
    .O(N52)
  );
  LUT4 #(
    .INIT ( 16'hFF60 ))
  \lcdctrl/wr/SF_D_mux0000<7>85_G  (
    .I0(\lcdctrl/tmp16 [15]),
    .I1(\lcdctrl/N3 ),
    .I2(\lcdctrl/rs ),
    .I3(\lcdctrl/wr/SF_D_mux0000<7>23_221 ),
    .O(N53)
  );
  MUXF5   \lcdctrl/wr/SF_D_mux0000<5>52  (
    .I0(N54),
    .I1(N55),
    .S(\lcdctrl/wr/SF_D_mux0000<5>21_214 ),
    .O(\lcdctrl/wr/SF_D_mux0000<5>52_215 )
  );
  LUT4 #(
    .INIT ( 16'h010B ))
  \lcdctrl/wr/SF_D_mux0000<5>52_F  (
    .I0(\lcdctrl/state [0]),
    .I1(\lcdctrl/state [2]),
    .I2(\lcdctrl/state [3]),
    .I3(\lcdctrl/state [1]),
    .O(N54)
  );
  LUT4 #(
    .INIT ( 16'hFE27 ))
  \lcdctrl/wr/SF_D_mux0000<5>52_G  (
    .I0(\lcdctrl/state [0]),
    .I1(\lcdctrl/state [1]),
    .I2(\lcdctrl/state [2]),
    .I3(\lcdctrl/state [3]),
    .O(N55)
  );
  LUT4_D #(
    .INIT ( 16'hFFEF ))
  \lcdctrl/tmp16_mux0000<10>11  (
    .I0(\lcdctrl/state [1]),
    .I1(\lcdctrl/state [0]),
    .I2(\lcdctrl/state [3]),
    .I3(\lcdctrl/state [2]),
    .LO(N56),
    .O(\lcdctrl/N0 )
  );
  LUT4_D #(
    .INIT ( 16'h0008 ))
  \lcdctrl/wr/done11  (
    .I0(\lcdctrl/wr/count [5]),
    .I1(\lcdctrl/wr/count [3]),
    .I2(\lcdctrl/wr/count [1]),
    .I3(\lcdctrl/wr/count [6]),
    .LO(N57),
    .O(\lcdctrl/wr/N7 )
  );
  LUT2_L #(
    .INIT ( 4'hE ))
  \lcdctrl/mode41  (
    .I0(\lcdctrl/state [2]),
    .I1(\lcdctrl/state [3]),
    .LO(\lcdctrl/mode4 )
  );
  LUT4_D #(
    .INIT ( 16'hFFFE ))
  \lcdctrl/wr/SF_D_and00001_SW0  (
    .I0(\lcdctrl/wr/count [12]),
    .I1(\lcdctrl/wr/count [11]),
    .I2(\lcdctrl/wr/count [10]),
    .I3(\lcdctrl/wr/count [8]),
    .LO(N58),
    .O(N5)
  );
  LUT4_D #(
    .INIT ( 16'h0800 ))
  \lcdctrl/wr/done13  (
    .I0(\lcdctrl/wr/count [16]),
    .I1(\lcdctrl/wr/count [0]),
    .I2(\lcdctrl/wr/count [2]),
    .I3(\lcdctrl/wr/count [14]),
    .LO(N59),
    .O(\lcdctrl/wr/done13_241 )
  );
  LUT4_L #(
    .INIT ( 16'hC888 ))
  \lcdctrl/wr/SF_D_mux0000<4>55  (
    .I0(\lcdctrl/wr/SF_D_mux0000<4>38_209 ),
    .I1(\lcdctrl/wr/busy_222 ),
    .I2(\lcdctrl/Madd_ascii_lut [0]),
    .I3(\lcdctrl/rs ),
    .LO(\lcdctrl/wr/SF_D_mux0000<4>55_210 )
  );
  LUT4_D #(
    .INIT ( 16'h0001 ))
  \lcdctrl/wr/SF_D_and00002  (
    .I0(N5),
    .I1(N11),
    .I2(\lcdctrl/wr/count [9]),
    .I3(N16),
    .LO(N60),
    .O(\lcdctrl/wr/N3 )
  );
  LUT4_L #(
    .INIT ( 16'h070F ))
  \lcdctrl/wr/LCD_E_not000172_SW0  (
    .I0(\lcdctrl/wr/count [1]),
    .I1(\lcdctrl/wr/count [6]),
    .I2(\lcdctrl/wr/LCD_E_not000151_144 ),
    .I3(\lcdctrl/wr/LCD_E_not000127_143 ),
    .LO(N14)
  );
  LUT4_L #(
    .INIT ( 16'h1FFF ))
  \lcdctrl/wr/SF_D_mux0000<6>79_SW0  (
    .I0(\lcdctrl/tmp16 [14]),
    .I1(\lcdctrl/tmp16 [13]),
    .I2(\lcdctrl/tmp16 [15]),
    .I3(\lcdctrl/rs ),
    .LO(N10)
  );
  LUT4_D #(
    .INIT ( 16'h1113 ))
  \lcdctrl/wr/SF_D_mux0000<4>79  (
    .I0(\lcdctrl/tmp16 [15]),
    .I1(N50),
    .I2(\lcdctrl/tmp16 [14]),
    .I3(\lcdctrl/tmp16 [13]),
    .LO(N61),
    .O(\lcdctrl/wr/SF_D_mux0000<4>79_211 )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

