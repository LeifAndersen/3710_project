////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.63c
//  \   \         Application: netgen
//  /   /         Filename: Painter_translate.v
// /___/   /\     Timestamp: Sun Nov 13 22:00:39 2011
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim top.ngd Painter_translate.v 
// Device	: 3s500efg320-4
// Input file	: top.ngd
// Output file	: C:\Users\jhparker\3710\Painter\netgen\translate\Painter_translate.v
// # of Modules	: 1
// Design Name	: top
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

module top (
  clk, vsync, reset, hsync, color
);
  input clk;
  output vsync;
  input reset;
  output hsync;
  output [2 : 0] color;
  wire \Mcompar_data_10_cmp_ge0000_cy<0>1 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<0>_rt_5 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<1>1 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<2>1 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<2>_0_rt_10 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<2>_rt_11 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<3>1 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<4>1 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<4>_0_rt_16 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<5>1 ;
  wire \Mcompar_data_10_cmp_ge0000_lut[0] ;
  wire \Mcompar_data_10_cmp_ge0000_lut[1] ;
  wire \Mcompar_data_10_cmp_ge0000_lut<1>1_24 ;
  wire \Mcompar_data_10_cmp_ge0000_lut[3] ;
  wire \Mcompar_data_10_cmp_ge0000_lut<3>1 ;
  wire \Mcompar_data_10_cmp_ge0000_lut[4] ;
  wire \Mcompar_data_10_cmp_ge0000_lut[5] ;
  wire \Mcompar_data_10_cmp_ge0000_lut<5>1 ;
  wire \Mcompar_data_10_cmp_ge0000_lut[6] ;
  wire \Mcompar_data_10_cmp_ge0000_lut<6>1_31 ;
  wire \Mcompar_data_10_cmp_ge0000_lut[7] ;
  wire \Mcompar_data_10_cmp_ge0000_lut[8] ;
  wire \Mcount_cycles_cy<10>_rt_36 ;
  wire \Mcount_cycles_cy<11>_rt_38 ;
  wire \Mcount_cycles_cy<12>_rt_40 ;
  wire \Mcount_cycles_cy<13>_rt_42 ;
  wire \Mcount_cycles_cy<14>_rt_44 ;
  wire \Mcount_cycles_cy<1>_rt_46 ;
  wire \Mcount_cycles_cy<2>_rt_48 ;
  wire \Mcount_cycles_cy<3>_rt_50 ;
  wire \Mcount_cycles_cy<4>_rt_52 ;
  wire \Mcount_cycles_cy<5>_rt_54 ;
  wire \Mcount_cycles_cy<6>_rt_56 ;
  wire \Mcount_cycles_cy<7>_rt_58 ;
  wire \Mcount_cycles_cy<8>_rt_60 ;
  wire \Mcount_cycles_cy<9>_rt_62 ;
  wire \Mcount_cycles_xor<15>_rt_64 ;
  wire \Mcount_i_cy<1>_rt_67 ;
  wire \Mcount_i_cy<2>_rt_69 ;
  wire \Mcount_i_cy<3>_rt_71 ;
  wire \Mcount_i_cy<4>_rt_73 ;
  wire \Mcount_i_cy<5>_rt_75 ;
  wire \Mcount_i_cy<6>_rt_77 ;
  wire \Mcount_i_cy<7>_rt_79 ;
  wire \Mcount_i_cy<8>_rt_81 ;
  wire \Mcount_i_xor<9>_rt_83 ;
  wire N0;
  wire N1;
  wire N101;
  wire N103;
  wire N105;
  wire N107;
  wire N108;
  wire N109;
  wire N11;
  wire N110;
  wire N111;
  wire N112;
  wire N113;
  wire N114;
  wire N115;
  wire N116;
  wire N12;
  wire N13;
  wire N14;
  wire N19;
  wire N21;
  wire N27;
  wire N3;
  wire N32;
  wire N33;
  wire N35;
  wire N37;
  wire N39;
  wire N4;
  wire N45;
  wire N47;
  wire N49;
  wire N51;
  wire N65;
  wire N66;
  wire N68;
  wire N69;
  wire N71;
  wire N72;
  wire N74;
  wire N75;
  wire N77;
  wire N78;
  wire N80;
  wire N81;
  wire N83;
  wire N85;
  wire N87;
  wire N91;
  wire N93;
  wire N95;
  wire N97;
  wire N99;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire clk_BUFGP;
  wire cycles_not0001;
  wire data_0_mux0000;
  wire data_10_and0000;
  wire data_10_cmp_ge0000;
  wire data_10_or0000;
  wire data_1_mux0000;
  wire data_2_mux0000;
  wire data_3_mux0000_195;
  wire data_4_mux0000;
  wire data_5_mux0000_199;
  wire data_6_cmp_lt0000;
  wire data_6_mux0000_202;
  wire data_8_mux0000;
  wire data_9_mux0000;
  wire data_9_not0001;
  wire \drawunit/Madd_rdPtr_cy<10>_rt_211 ;
  wire \drawunit/Madd_rdPtr_cy<11>_rt_213 ;
  wire \drawunit/Madd_rdPtr_cy<12>_rt_215 ;
  wire \drawunit/Madd_rdPtr_cy<13>_rt_217 ;
  wire \drawunit/Madd_rdPtr_cy<8>_rt_226 ;
  wire \drawunit/Madd_rdPtr_cy<9>_rt_228 ;
  wire \drawunit/empty ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<10>_rt_240 ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<12>_rt_243 ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<13>_rt_245 ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<7>_rt_253 ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[0] ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[11] ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[14] ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[1] ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[2] ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[3] ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[4] ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[5] ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[6] ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[8] ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[9] ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<10>_rt_269 ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<12>_rt_272 ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<13>_rt_274 ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<7>_rt_282 ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[0] ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[11] ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[14] ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[1] ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[2] ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[3] ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[4] ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[5] ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[6] ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[8] ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[9] ;
  wire \drawunit/framebuffer/N16 ;
  wire \drawunit/framebuffer/N18 ;
  wire \drawunit/framebuffer/N25 ;
  wire \drawunit/framebuffer/N27 ;
  wire \drawunit/framebuffer/N7 ;
  wire \drawunit/framebuffer/N9 ;
  wire \drawunit/framebuffer/bufferWe_350 ;
  wire \drawunit/framebuffer/bufferWeS_351 ;
  wire \drawunit/framebuffer/bufferWeS_mux0000 ;
  wire \drawunit/framebuffer/bufferWe_cmp_ge0000 ;
  wire \drawunit/framebuffer/bufferWe_cmp_ge0000110_354 ;
  wire \drawunit/framebuffer/bufferWe_cmp_ge000015_355 ;
  wire \drawunit/framebuffer/bufferWe_mux0000 ;
  wire \drawunit/framebuffer/bufferWe_or0000_inv ;
  wire \drawunit/framebuffer/color_cmp_ge0000 ;
  wire \drawunit/framebuffer/color_cmp_ge0000110_407 ;
  wire \drawunit/framebuffer/color_cmp_ge000015_408 ;
  wire \drawunit/framebuffer/inst_LPM_FF_415 ;
  wire \drawunit/framebuffer/reset_inv ;
  wire \drawunit/framebuffer/state_417 ;
  wire \drawunit/framebuffer/state_not0001 ;
  wire \drawunit/framebuffer/write_ctrl_419 ;
  wire \drawunit/framebuffer/write_ctrl1_420 ;
  wire \drawunit/painter/Madd_add0000_addsub0000_cy<10>_rt_423 ;
  wire \drawunit/painter/Madd_add0000_addsub0000_cy<11>_rt_425 ;
  wire \drawunit/painter/Madd_add0000_addsub0000_cy<12>_rt_427 ;
  wire \drawunit/painter/Madd_add0000_addsub0000_cy<13>_rt_429 ;
  wire \drawunit/painter/Madd_add0000_addsub0000_cy<14>_rt_430 ;
  wire \drawunit/painter/Madd_add0000_addsub0000_cy<8>_rt_439 ;
  wire \drawunit/painter/Madd_add0000_addsub0000_cy<9>_rt_441 ;
  wire \drawunit/painter/Madd_add0000_index0000 ;
  wire \drawunit/painter/Msub__sub0000_cy<0>_rt_520 ;
  wire \drawunit/painter/N01 ;
  wire \drawunit/painter/addr_mux0001<1>_mand1 ;
  wire \drawunit/painter/addr_mux0001<2>_mand1 ;
  wire \drawunit/painter/addr_mux0001<3>_mand1 ;
  wire \drawunit/painter/addr_mux0001<4>_mand1 ;
  wire \drawunit/painter/addr_mux0001<5>_mand1 ;
  wire \drawunit/painter/addr_mux0001<6>_mand1 ;
  wire \drawunit/painter/addr_mux0001<7>_mand1 ;
  wire \drawunit/painter/data_not0001 ;
  wire \drawunit/painter/line_not0001 ;
  wire \drawunit/painter/line_not00011_674 ;
  wire \drawunit/painter/newline_675 ;
  wire \drawunit/painter/newline_mux0000 ;
  wire \drawunit/painter/newline_not0001 ;
  wire \drawunit/painter/re_678 ;
  wire \drawunit/painter/re_mux0000 ;
  wire \drawunit/painter/state_FSM_FFd1_688 ;
  wire \drawunit/painter/state_FSM_FFd1-In22_689 ;
  wire \drawunit/painter/state_FSM_FFd1-In25 ;
  wire \drawunit/painter/state_FSM_FFd2_691 ;
  wire \drawunit/painter/state_FSM_FFd2-In12_692 ;
  wire \drawunit/painter/state_FSM_FFd3_693 ;
  wire \drawunit/painter/state_FSM_FFd3-In ;
  wire \drawunit/painter/state_cmp_eq0000 ;
  wire \drawunit/painter/state_cmp_ge0000 ;
  wire \drawunit/painter/state_cmp_le0000 ;
  wire \drawunit/painter/swapBuffersCommand_713 ;
  wire \drawunit/painter/swapBuffersCommand_mux0000 ;
  wire \drawunit/painter/swapBuffersCommand_mux00001_715 ;
  wire \drawunit/painter/swapBuffersCommand_mux00002_716 ;
  wire \drawunit/painter/we_717 ;
  wire \drawunit/painter/we_mux0000 ;
  wire \drawunit/painter/we_mux00001_719 ;
  wire \drawunit/painter/we_mux00002_720 ;
  wire \drawunit/queue/Mcount_rdPtr_cy<1>_rt_742 ;
  wire \drawunit/queue/Mcount_rdPtr_cy<2>_rt_744 ;
  wire \drawunit/queue/Mcount_rdPtr_cy<3>_rt_746 ;
  wire \drawunit/queue/Mcount_rdPtr_cy<4>_rt_748 ;
  wire \drawunit/queue/Mcount_rdPtr_cy<5>_rt_750 ;
  wire \drawunit/queue/Mcount_rdPtr_cy<6>_rt_752 ;
  wire \drawunit/queue/Mcount_rdPtr_cy<7>_rt_754 ;
  wire \drawunit/queue/Mcount_rdPtr_xor<8>_rt_756 ;
  wire \drawunit/queue/Mcount_wrtPtr_cy<1>_rt_759 ;
  wire \drawunit/queue/Mcount_wrtPtr_cy<2>_rt_761 ;
  wire \drawunit/queue/Mcount_wrtPtr_cy<3>_rt_763 ;
  wire \drawunit/queue/Mcount_wrtPtr_cy<4>_rt_765 ;
  wire \drawunit/queue/Mcount_wrtPtr_cy<5>_rt_767 ;
  wire \drawunit/queue/Mcount_wrtPtr_cy<6>_rt_769 ;
  wire \drawunit/queue/Mcount_wrtPtr_cy<7>_rt_771 ;
  wire \drawunit/queue/Mcount_wrtPtr_xor<8>_rt_773 ;
  wire \drawunit/queue/Result<0>1 ;
  wire \drawunit/queue/Result<0>2 ;
  wire \drawunit/queue/Result<1>1 ;
  wire \drawunit/queue/Result<1>2 ;
  wire \drawunit/queue/Result<2>1 ;
  wire \drawunit/queue/Result<2>2 ;
  wire \drawunit/queue/Result<3>1 ;
  wire \drawunit/queue/Result<3>2 ;
  wire \drawunit/queue/Result<4>1 ;
  wire \drawunit/queue/Result<4>2 ;
  wire \drawunit/queue/Result<5>1 ;
  wire \drawunit/queue/Result<5>2 ;
  wire \drawunit/queue/Result<6>1 ;
  wire \drawunit/queue/Result<6>2 ;
  wire \drawunit/queue/Result<7>1 ;
  wire \drawunit/queue/Result<7>2 ;
  wire \drawunit/queue/Result<8>1 ;
  wire \drawunit/queue/Result<8>2 ;
  wire \drawunit/queue/count_not0002 ;
  wire \drawunit/queue/count_not000212_813 ;
  wire \drawunit/queue/count_not0002310 ;
  wire \drawunit/queue/count_not0002341_815 ;
  wire \drawunit/queue/count_not0003_inv ;
  wire \drawunit/queue/delayedWe_849 ;
  wire \drawunit/queue/delayedWe_mux0000 ;
  wire \drawunit/queue/empty12_851 ;
  wire \drawunit/queue/empty37_852 ;
  wire \drawunit/queue/full211 ;
  wire \drawunit/queue/full2111_854 ;
  wire \drawunit/queue/full24_855 ;
  wire \drawunit/queue/state_897 ;
  wire \drawunit/queue/state_mux0000 ;
  wire \drawunit/queue/temp[1] ;
  wire \drawunit/queue/temp[15] ;
  wire \drawunit/queue/temp_15_not0001 ;
  wire \drawunit/queue/temp[17] ;
  wire \drawunit/queue/temp[18] ;
  wire \drawunit/queue/temp[19] ;
  wire \drawunit/queue/temp[2] ;
  wire \drawunit/queue/temp[20] ;
  wire \drawunit/queue/temp[21] ;
  wire \drawunit/queue/temp[22] ;
  wire \drawunit/queue/temp[23] ;
  wire \drawunit/queue/temp[24] ;
  wire \drawunit/queue/temp[25] ;
  wire \drawunit/queue/temp[3] ;
  wire \drawunit/queue/temp[30] ;
  wire \drawunit/queue/temp_31_not0001 ;
  wire \drawunit/queue/temp[4] ;
  wire \drawunit/queue/temp[5] ;
  wire \drawunit/queue/temp[6] ;
  wire \drawunit/queue/temp[7] ;
  wire \drawunit/queue/temp[8] ;
  wire \drawunit/queue/temp[9] ;
  wire \drawunit/swapBuffers_960 ;
  wire \drawunit/swapBuffersCommand_inv ;
  wire \drawunit/swapBuffersOnVsync_962 ;
  wire \drawunit/swapBuffersOnVsync_and0000 ;
  wire \drawunit/swapBuffersOnVsync_not0001 ;
  wire \drawunit/vga_controller/Henable_965 ;
  wire \drawunit/vga_controller/Henable_mux0000 ;
  wire \drawunit/vga_controller/Henable_mux000011_967 ;
  wire \drawunit/vga_controller/Henable_mux000027_968 ;
  wire \drawunit/vga_controller/Henable_mux000061_969 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_cy<1>_rt_972 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_cy<2>_rt_974 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_cy<3>_rt_976 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_cy<4>_rt_978 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_cy<5>_rt_980 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_cy<6>_rt_982 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_cy<7>_rt_984 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_xor<8>_rt_986 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<1>_rt_989 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<2>_rt_991 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<3>_rt_993 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<4>_rt_995 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<5>_rt_997 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<6>_rt_999 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<7>_rt_1001 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<8>_rt_1003 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_xor<9>_rt_1005 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<1>_rt_1008 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<2>_rt_1010 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<3>_rt_1012 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<4>_rt_1014 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<5>_rt_1016 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<6>_rt_1018 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<7>_rt_1020 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<8>_rt_1022 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<9>_rt_1024 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<10>_rt_1027 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<11>_rt_1029 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<12>_rt_1031 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<13>_rt_1033 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<14>_rt_1035 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<15>_rt_1037 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<16>_rt_1039 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<17>_rt_1041 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<18>_rt_1043 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<1>_rt_1045 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<2>_rt_1047 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<3>_rt_1049 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<4>_rt_1051 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<5>_rt_1053 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<6>_rt_1055 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<7>_rt_1057 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<8>_rt_1059 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<9>_rt_1061 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<19>_rt_1063 ;
  wire \drawunit/vga_controller/N11 ;
  wire \drawunit/vga_controller/N111 ;
  wire \drawunit/vga_controller/N13 ;
  wire \drawunit/vga_controller/N14 ;
  wire \drawunit/vga_controller/N16 ;
  wire \drawunit/vga_controller/N17 ;
  wire \drawunit/vga_controller/N18 ;
  wire \drawunit/vga_controller/N19 ;
  wire \drawunit/vga_controller/N2 ;
  wire \drawunit/vga_controller/N22 ;
  wire \drawunit/vga_controller/N34 ;
  wire \drawunit/vga_controller/N35 ;
  wire \drawunit/vga_controller/N39 ;
  wire \drawunit/vga_controller/N40 ;
  wire \drawunit/vga_controller/N43 ;
  wire \drawunit/vga_controller/N7 ;
  wire \drawunit/vga_controller/N8 ;
  wire \drawunit/vga_controller/N9 ;
  wire \drawunit/vga_controller/color_and0000_1085 ;
  wire \drawunit/vga_controller/color_cmp_lt00001 ;
  wire \drawunit/vga_controller/hsync_1090 ;
  wire \drawunit/vga_controller/hsync_and0000 ;
  wire \drawunit/vga_controller/hsync_cmp_eq0002 ;
  wire \drawunit/vga_controller/hsync_cmp_eq0002117 ;
  wire \drawunit/vga_controller/hsync_cmp_eq00021171_1094 ;
  wire \drawunit/vga_controller/hsync_cmp_eq0002132_1095 ;
  wire \drawunit/vga_controller/hsync_cmp_eq000221 ;
  wire \drawunit/vga_controller/hsync_cmp_eq00023 ;
  wire \drawunit/vga_controller/hsync_mux0000_1098 ;
  wire \drawunit/vga_controller/line_cmp_eq000015_1117 ;
  wire \drawunit/vga_controller/line_cmp_eq00006 ;
  wire \drawunit/vga_controller/line_cmp_eq000061_1119 ;
  wire \drawunit/vga_controller/line_not0001_1129 ;
  wire \drawunit/vga_controller/offset_and0000 ;
  wire \drawunit/vga_controller/offset_and000012_1141 ;
  wire \drawunit/vga_controller/offset_and000034_1142 ;
  wire \drawunit/vga_controller/offset_and000044_1143 ;
  wire \drawunit/vga_controller/offset_and00006_1144 ;
  wire \drawunit/vga_controller/offset_mux0000<0>319_1146 ;
  wire \drawunit/vga_controller/offset_mux0000<0>37_1147 ;
  wire \drawunit/vga_controller/pixCount_and0000 ;
  wire \drawunit/vga_controller/pixCount_cmp_eq0000_1188 ;
  wire \drawunit/vga_controller/pixCount_cmp_eq0001_1189 ;
  wire \drawunit/vga_controller/pixCount_cmp_eq0002 ;
  wire \drawunit/vga_controller/pixCount_cmp_eq0003 ;
  wire \drawunit/vga_controller/pixCount_mux0000<9>117_1202 ;
  wire \drawunit/vga_controller/pixCount_mux0000<9>138_1203 ;
  wire \drawunit/vga_controller/pixCount_mux0000<9>154_1204 ;
  wire \drawunit/vga_controller/totalPix_and0000 ;
  wire \drawunit/vga_controller/totalPix_cmp_eq0002_1246 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>1110_1258 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>1111_1259 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>1160_1260 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>1170_1261 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>1194_1262 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>12_1263 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>122_1264 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>133_1265 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>154_1266 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>165_1267 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>188_1268 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>30_1269 ;
  wire \drawunit/vga_controller/vsync_1279 ;
  wire \drawunit/vga_controller/vsync_mux0000 ;
  wire \drawunit/vga_controller/vsync_mux000028_1281 ;
  wire \drawunit/vga_controller/vsync_mux000031_1282 ;
  wire \drawunit/vga_controller/vsync_mux000071_1283 ;
  wire \drawunit/vga_controller/vsync_mux00008_1284 ;
  wire full;
  wire i_not0001;
  wire NlwRenamedSig_IO_reset;
  wire reset_IBUF_1299;
  wire state_1300;
  wire state_cmp_lt0000;
  wire state_cmp_lt0000212_1302;
  wire state_cmp_lt0000225_1303;
  wire state_mux0000;
  wire vgaClk_1305;
  wire vgaClk1;
  wire vgaClk_not0001;
  wire we_1309;
  wire we_mux0000;
  wire \drawunit/vga_controller/totalPix_mux0000<19>1160/O ;
  wire \drawunit/vga_controller/offset_and000052/O ;
  wire \drawunit/framebuffer/color_cmp_ge0000110/O ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>1194_SW0/O ;
  wire \clk_BUFGP/IBUFG_2 ;
  wire GND;
  wire VCC;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[17]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[16]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[15]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[14]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[13]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[12]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[11]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[10]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[9]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[8]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[7]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[6]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[5]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[4]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[3]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[2]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[1]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[0]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[35]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[34]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[33]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[32]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[31]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[30]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[29]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[28]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[27]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[26]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[25]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[24]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[23]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[22]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[21]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[20]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[19]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[18]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[17]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[16]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P[15]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[17]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[16]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[15]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[14]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[13]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[12]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[11]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[10]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[9]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[8]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[7]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[6]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[5]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[4]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[3]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[2]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[1]_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[0]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[17]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[16]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[15]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[14]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[13]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[12]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[11]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[10]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[9]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[8]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[7]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[6]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[5]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[4]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[3]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[2]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[1]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[0]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[35]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[34]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[33]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[32]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[31]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[30]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[29]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[28]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[27]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[26]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[25]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[24]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[23]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[22]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[21]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[20]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[19]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[18]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[17]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[16]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P[15]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[17]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[16]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[15]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[14]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[13]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[12]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[11]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[10]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[9]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[8]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[7]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[6]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[5]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[4]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[3]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[2]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[1]_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[0]_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/blueBuffer/Mram_memory1_DOA[0]_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/blueBuffer/Mram_memory2_DOA[0]_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/greenBuffer/Mram_memory1_DOA[0]_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/greenBuffer/Mram_memory2_DOA[0]_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/redBuffer/Mram_memory1_DOA[0]_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/redBuffer/Mram_memory2_DOA[0]_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/specialBuffer/Mram_memory2_DIB[0]_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/specialBuffer/Mram_memory2_DOA[0]_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DIB[1]_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DIB[0]_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DOA[1]_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DOA[0]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[31]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[30]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[29]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[28]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[27]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[26]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[25]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[24]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[23]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[22]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[21]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[20]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[19]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[18]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[17]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[16]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[15]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[14]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[13]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[12]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[11]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[10]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[9]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[8]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[7]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[6]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[5]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[4]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[3]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[2]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[1]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB[0]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIPB[3]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIPB[2]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIPB[1]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIPB[0]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[31]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[30]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[29]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[28]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[27]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[26]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[25]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[24]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[23]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[22]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[21]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[20]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[19]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[18]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[17]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[16]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[15]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[14]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[13]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[12]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[11]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[10]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[9]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[8]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[7]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[6]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[5]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[4]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[3]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[2]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[1]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA[0]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPA[3]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPA[2]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPA[1]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPA[0]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPB[3]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPB[2]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPB[1]_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPB[0]_UNCONNECTED ;
  wire [8 : 0] Mcompar_data_10_cmp_ge0000_cy;
  wire [14 : 0] Mcount_cycles_cy;
  wire [0 : 0] Mcount_cycles_lut;
  wire [8 : 0] Mcount_i_cy;
  wire [0 : 0] Mcount_i_lut;
  wire [15 : 0] Result;
  wire [15 : 0] cycles;
  wire [10 : 1] data;
  wire [13 : 0] \drawunit/Madd_rdPtr_cy ;
  wire [7 : 0] \drawunit/Madd_rdPtr_lut ;
  wire [13 : 0] \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy ;
  wire [13 : 0] \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy ;
  wire [2 : 0] \drawunit/framebuffer/S ;
  wire [14 : 0] \drawunit/framebuffer/bufferRdPtr ;
  wire [14 : 0] \drawunit/framebuffer/bufferRdPtr_addsub0000 ;
  wire [14 : 0] \drawunit/framebuffer/bufferRdPtr_mux0000 ;
  wire [14 : 0] \drawunit/framebuffer/bufferWrtPtr ;
  wire [14 : 0] \drawunit/framebuffer/bufferWrtPtr_addsub0000 ;
  wire [14 : 0] \drawunit/framebuffer/bufferWrtPtr_mux0000 ;
  wire [2 : 0] \drawunit/framebuffer/color ;
  wire [2 : 0] \drawunit/framebuffer/color_mux0000 ;
  wire [2 : 0] \drawunit/framebuffer/ddataIn ;
  wire [13 : 0] \drawunit/painter/Madd_add0000_addsub0000_cy ;
  wire [7 : 0] \drawunit/painter/Madd_add0000_addsub0000_lut ;
  wire [13 : 0] \drawunit/painter/Madd_addr_addsub0000_cy ;
  wire [7 : 0] \drawunit/painter/Madd_addr_addsub0000_lut ;
  wire [14 : 0] \drawunit/painter/Mcompar_state_cmp_ge0000_cy ;
  wire [15 : 0] \drawunit/painter/Mcompar_state_cmp_ge0000_lut ;
  wire [6 : 0] \drawunit/painter/Mcompar_state_cmp_le0000_cy ;
  wire [7 : 0] \drawunit/painter/Mcompar_state_cmp_le0000_lut ;
  wire [16 : 0] \drawunit/painter/Msub__sub0000_cy ;
  wire [15 : 1] \drawunit/painter/Msub__sub0000_lut ;
  wire [17 : 0] \drawunit/painter/_sub0000 ;
  wire [14 : 0] \drawunit/painter/add0000_addsub0000 ;
  wire [14 : 0] \drawunit/painter/add0000_mult0000 ;
  wire [14 : 0] \drawunit/painter/addr ;
  wire [14 : 0] \drawunit/painter/addr_addsub0000 ;
  wire [14 : 0] \drawunit/painter/addr_mux0000 ;
  wire [0 : 0] \drawunit/painter/addr_mux0001 ;
  wire [14 : 8] \drawunit/painter/addr_mux0002 ;
  wire [2 : 0] \drawunit/painter/data ;
  wire [7 : 0] \drawunit/painter/left ;
  wire [7 : 0] \drawunit/painter/right ;
  wire [6 : 0] \drawunit/painter/state_cmp_eq0000_wg_cy ;
  wire [7 : 0] \drawunit/painter/state_cmp_eq0000_wg_lut ;
  wire [8 : 0] \drawunit/queue/Mcount_count_cy ;
  wire [9 : 0] \drawunit/queue/Mcount_count_lut ;
  wire [7 : 0] \drawunit/queue/Mcount_rdPtr_cy ;
  wire [0 : 0] \drawunit/queue/Mcount_rdPtr_lut ;
  wire [7 : 0] \drawunit/queue/Mcount_wrtPtr_cy ;
  wire [0 : 0] \drawunit/queue/Mcount_wrtPtr_lut ;
  wire [9 : 0] \drawunit/queue/Result ;
  wire [9 : 0] \drawunit/queue/count ;
  wire [31 : 0] \drawunit/queue/dataOut ;
  wire [31 : 0] \drawunit/queue/rdData ;
  wire [8 : 0] \drawunit/queue/rdPtr ;
  wire [8 : 0] \drawunit/queue/wrtPtr ;
  wire [14 : 0] \drawunit/rdPtr ;
  wire [14 : 0] \drawunit/rdPtr_mult0000 ;
  wire [7 : 0] \drawunit/vga_controller/Madd_line_addsub0000_cy ;
  wire [0 : 0] \drawunit/vga_controller/Madd_line_addsub0000_lut ;
  wire [8 : 0] \drawunit/vga_controller/Madd_offset_share0000_cy ;
  wire [0 : 0] \drawunit/vga_controller/Madd_offset_share0000_lut ;
  wire [8 : 0] \drawunit/vga_controller/Madd_pixCount_addsub0000_cy ;
  wire [0 : 0] \drawunit/vga_controller/Madd_pixCount_addsub0000_lut ;
  wire [18 : 0] \drawunit/vga_controller/Madd_totalPix_addsub0000_cy ;
  wire [0 : 0] \drawunit/vga_controller/Madd_totalPix_addsub0000_lut ;
  wire [2 : 0] \drawunit/vga_controller/color ;
  wire [2 : 0] \drawunit/vga_controller/color_mux0000 ;
  wire [8 : 0] \drawunit/vga_controller/line ;
  wire [8 : 0] \drawunit/vga_controller/line_addsub0000 ;
  wire [8 : 0] \drawunit/vga_controller/line_mux0000 ;
  wire [9 : 0] \drawunit/vga_controller/offset ;
  wire [9 : 0] \drawunit/vga_controller/offset_mux0000 ;
  wire [9 : 0] \drawunit/vga_controller/offset_share0000 ;
  wire [9 : 0] \drawunit/vga_controller/pixCount ;
  wire [9 : 0] \drawunit/vga_controller/pixCount_addsub0000 ;
  wire [9 : 0] \drawunit/vga_controller/pixCount_mux0000 ;
  wire [19 : 0] \drawunit/vga_controller/totalPix ;
  wire [19 : 0] \drawunit/vga_controller/totalPix_addsub0000 ;
  wire [19 : 0] \drawunit/vga_controller/totalPix_mux0000 ;
  wire [9 : 0] i;
  assign
    NlwRenamedSig_IO_reset = reset;
  X_ZERO   XST_GND (
    .O(N0)
  );
  X_ONE   XST_VCC (
    .O(N1)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  data_10 (
    .CLK(clk_BUFGP),
    .CE(data_10_and0000),
    .I(N1),
    .SRST(data_10_or0000),
    .O(data[10]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  data_9 (
    .CLK(clk_BUFGP),
    .CE(data_9_not0001),
    .I(data_9_mux0000),
    .SRST(reset_IBUF_1299),
    .O(data[9]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  data_8 (
    .CLK(clk_BUFGP),
    .CE(data_9_not0001),
    .I(data_8_mux0000),
    .SRST(reset_IBUF_1299),
    .O(data[8]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  data_5 (
    .CLK(clk_BUFGP),
    .CE(data_9_not0001),
    .I(data_5_mux0000_199),
    .SRST(reset_IBUF_1299),
    .O(data[5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  data_7 (
    .CLK(clk_BUFGP),
    .CE(data_9_not0001),
    .I(data_0_mux0000),
    .SRST(reset_IBUF_1299),
    .O(data[7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  data_6 (
    .CLK(clk_BUFGP),
    .CE(data_9_not0001),
    .I(data_6_mux0000_202),
    .SRST(reset_IBUF_1299),
    .O(data[6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  data_2 (
    .CLK(clk_BUFGP),
    .CE(data_9_not0001),
    .I(data_2_mux0000),
    .SRST(reset_IBUF_1299),
    .O(data[2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  data_4 (
    .CLK(clk_BUFGP),
    .CE(data_9_not0001),
    .I(data_4_mux0000),
    .SRST(reset_IBUF_1299),
    .O(data[4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  data_3 (
    .CLK(clk_BUFGP),
    .CE(data_9_not0001),
    .I(data_3_mux0000_195),
    .SRST(reset_IBUF_1299),
    .O(data[3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  data_1 (
    .CLK(clk_BUFGP),
    .CE(data_9_not0001),
    .I(data_1_mux0000),
    .SRST(reset_IBUF_1299),
    .O(data[1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  we (
    .CLK(clk_BUFGP),
    .I(we_mux0000),
    .SRST(reset_IBUF_1299),
    .O(we_1309),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  vgaClk (
    .CLK(clk_BUFGP),
    .I(vgaClk_not0001),
    .SRST(reset_IBUF_1299),
    .O(vgaClk1),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state (
    .CLK(clk_BUFGP),
    .CE(state_cmp_lt0000),
    .I(state_mux0000),
    .SRST(reset_IBUF_1299),
    .O(state_1300),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_0 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[0]),
    .SRST(reset_IBUF_1299),
    .O(cycles[0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_1 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[1]),
    .SRST(reset_IBUF_1299),
    .O(cycles[1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_2 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[2]),
    .SRST(reset_IBUF_1299),
    .O(cycles[2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_3 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[3]),
    .SRST(reset_IBUF_1299),
    .O(cycles[3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_4 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[4]),
    .SRST(reset_IBUF_1299),
    .O(cycles[4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_5 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[5]),
    .SRST(reset_IBUF_1299),
    .O(cycles[5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_6 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[6]),
    .SRST(reset_IBUF_1299),
    .O(cycles[6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_7 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[7]),
    .SRST(reset_IBUF_1299),
    .O(cycles[7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_8 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[8]),
    .SRST(reset_IBUF_1299),
    .O(cycles[8]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_9 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[9]),
    .SRST(reset_IBUF_1299),
    .O(cycles[9]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_10 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[10]),
    .SRST(reset_IBUF_1299),
    .O(cycles[10]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_11 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[11]),
    .SRST(reset_IBUF_1299),
    .O(cycles[11]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_12 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[12]),
    .SRST(reset_IBUF_1299),
    .O(cycles[12]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_13 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[13]),
    .SRST(reset_IBUF_1299),
    .O(cycles[13]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_14 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[14]),
    .SRST(reset_IBUF_1299),
    .O(cycles[14]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  cycles_15 (
    .CLK(clk_BUFGP),
    .CE(cycles_not0001),
    .I(Result[15]),
    .SRST(reset_IBUF_1299),
    .O(cycles[15]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  i_0 (
    .CLK(clk_BUFGP),
    .CE(i_not0001),
    .I(\Result<0>1 ),
    .SRST(reset_IBUF_1299),
    .O(i[0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  i_1 (
    .CLK(clk_BUFGP),
    .CE(i_not0001),
    .I(\Result<1>1 ),
    .SRST(reset_IBUF_1299),
    .O(i[1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  i_2 (
    .CLK(clk_BUFGP),
    .CE(i_not0001),
    .I(\Result<2>1 ),
    .SRST(reset_IBUF_1299),
    .O(i[2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  i_3 (
    .CLK(clk_BUFGP),
    .CE(i_not0001),
    .I(\Result<3>1 ),
    .SRST(reset_IBUF_1299),
    .O(i[3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  i_4 (
    .CLK(clk_BUFGP),
    .CE(i_not0001),
    .I(\Result<4>1 ),
    .SRST(reset_IBUF_1299),
    .O(i[4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  i_5 (
    .CLK(clk_BUFGP),
    .CE(i_not0001),
    .I(\Result<5>1 ),
    .SRST(reset_IBUF_1299),
    .O(i[5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  i_6 (
    .CLK(clk_BUFGP),
    .CE(i_not0001),
    .I(\Result<6>1 ),
    .SRST(reset_IBUF_1299),
    .O(i[6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  i_7 (
    .CLK(clk_BUFGP),
    .CE(i_not0001),
    .I(\Result<7>1 ),
    .SRST(reset_IBUF_1299),
    .O(i[7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  i_8 (
    .CLK(clk_BUFGP),
    .CE(i_not0001),
    .I(\Result<8>1 ),
    .SRST(reset_IBUF_1299),
    .O(i[8]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  i_9 (
    .CLK(clk_BUFGP),
    .CE(i_not0001),
    .I(\Result<9>1 ),
    .SRST(reset_IBUF_1299),
    .O(i[9]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<0>  (
    .IB(N1),
    .IA(N0),
    .SEL(\Mcompar_data_10_cmp_ge0000_cy<0>_rt_5 ),
    .O(Mcompar_data_10_cmp_ge0000_cy[0])
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<1>  (
    .IB(Mcompar_data_10_cmp_ge0000_cy[0]),
    .IA(N1),
    .SEL(\Mcompar_data_10_cmp_ge0000_lut[1] ),
    .O(Mcompar_data_10_cmp_ge0000_cy[1])
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<2>  (
    .IB(Mcompar_data_10_cmp_ge0000_cy[1]),
    .IA(N0),
    .SEL(\Mcompar_data_10_cmp_ge0000_cy<2>_rt_11 ),
    .O(Mcompar_data_10_cmp_ge0000_cy[2])
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<3>  (
    .IB(Mcompar_data_10_cmp_ge0000_cy[2]),
    .IA(N1),
    .SEL(\Mcompar_data_10_cmp_ge0000_lut[3] ),
    .O(Mcompar_data_10_cmp_ge0000_cy[3])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_data_10_cmp_ge0000_lut<4>  (
    .ADR0(cycles[8]),
    .ADR1(cycles[9]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[4] )
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<4>  (
    .IB(Mcompar_data_10_cmp_ge0000_cy[3]),
    .IA(N0),
    .SEL(\Mcompar_data_10_cmp_ge0000_lut[4] ),
    .O(Mcompar_data_10_cmp_ge0000_cy[4])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_data_10_cmp_ge0000_lut<5>  (
    .ADR0(cycles[10]),
    .ADR1(cycles[11]),
    .ADR2(cycles[12]),
    .ADR3(cycles[13]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[5] )
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<5>  (
    .IB(Mcompar_data_10_cmp_ge0000_cy[4]),
    .IA(N1),
    .SEL(\Mcompar_data_10_cmp_ge0000_lut[5] ),
    .O(Mcompar_data_10_cmp_ge0000_cy[5])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_data_10_cmp_ge0000_lut<6>  (
    .ADR0(cycles[14]),
    .ADR1(cycles[15]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[6] )
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<6>  (
    .IB(Mcompar_data_10_cmp_ge0000_cy[5]),
    .IA(N0),
    .SEL(\Mcompar_data_10_cmp_ge0000_lut[6] ),
    .O(data_10_cmp_ge0000)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_data_10_cmp_ge0000_lut<0>  (
    .ADR0(cycles[0]),
    .ADR1(cycles[1]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[0] )
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<0>_0  (
    .IB(N1),
    .IA(N0),
    .SEL(\Mcompar_data_10_cmp_ge0000_lut[0] ),
    .O(\Mcompar_data_10_cmp_ge0000_cy<0>1 )
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \Mcompar_data_10_cmp_ge0000_lut<1>1  (
    .ADR0(cycles[2]),
    .ADR1(cycles[3]),
    .O(\Mcompar_data_10_cmp_ge0000_lut<1>1_24 )
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<1>_0  (
    .IB(\Mcompar_data_10_cmp_ge0000_cy<0>1 ),
    .IA(N1),
    .SEL(\Mcompar_data_10_cmp_ge0000_lut<1>1_24 ),
    .O(\Mcompar_data_10_cmp_ge0000_cy<1>1 )
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<2>_0  (
    .IB(\Mcompar_data_10_cmp_ge0000_cy<1>1 ),
    .IA(N0),
    .SEL(\Mcompar_data_10_cmp_ge0000_cy<2>_0_rt_10 ),
    .O(\Mcompar_data_10_cmp_ge0000_cy<2>1 )
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<3>_0  (
    .IB(\Mcompar_data_10_cmp_ge0000_cy<2>1 ),
    .IA(N1),
    .SEL(\Mcompar_data_10_cmp_ge0000_lut<3>1 ),
    .O(\Mcompar_data_10_cmp_ge0000_cy<3>1 )
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<4>_0  (
    .IB(\Mcompar_data_10_cmp_ge0000_cy<3>1 ),
    .IA(N0),
    .SEL(\Mcompar_data_10_cmp_ge0000_cy<4>_0_rt_16 ),
    .O(\Mcompar_data_10_cmp_ge0000_cy<4>1 )
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<5>_0  (
    .IB(\Mcompar_data_10_cmp_ge0000_cy<4>1 ),
    .IA(N1),
    .SEL(\Mcompar_data_10_cmp_ge0000_lut<5>1 ),
    .O(\Mcompar_data_10_cmp_ge0000_cy<5>1 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_data_10_cmp_ge0000_lut<6>1  (
    .ADR0(cycles[8]),
    .ADR1(cycles[9]),
    .O(\Mcompar_data_10_cmp_ge0000_lut<6>1_31 )
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<6>_0  (
    .IB(\Mcompar_data_10_cmp_ge0000_cy<5>1 ),
    .IA(N0),
    .SEL(\Mcompar_data_10_cmp_ge0000_lut<6>1_31 ),
    .O(Mcompar_data_10_cmp_ge0000_cy[6])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_data_10_cmp_ge0000_lut<7>  (
    .ADR0(cycles[10]),
    .ADR1(cycles[11]),
    .ADR2(cycles[12]),
    .ADR3(cycles[13]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[7] )
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<7>  (
    .IB(Mcompar_data_10_cmp_ge0000_cy[6]),
    .IA(N1),
    .SEL(\Mcompar_data_10_cmp_ge0000_lut[7] ),
    .O(Mcompar_data_10_cmp_ge0000_cy[7])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_data_10_cmp_ge0000_lut<8>  (
    .ADR0(cycles[14]),
    .ADR1(cycles[15]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[8] )
  );
  X_MUX2   \Mcompar_data_10_cmp_ge0000_cy<8>  (
    .IB(Mcompar_data_10_cmp_ge0000_cy[7]),
    .IA(N0),
    .SEL(\Mcompar_data_10_cmp_ge0000_lut[8] ),
    .O(Mcompar_data_10_cmp_ge0000_cy[8])
  );
  X_MUX2   \Mcount_cycles_cy<0>  (
    .IB(N0),
    .IA(N1),
    .SEL(Mcount_cycles_lut[0]),
    .O(Mcount_cycles_cy[0])
  );
  X_XOR2   \Mcount_cycles_xor<0>  (
    .I0(N0),
    .I1(Mcount_cycles_lut[0]),
    .O(Result[0])
  );
  X_MUX2   \Mcount_cycles_cy<1>  (
    .IB(Mcount_cycles_cy[0]),
    .IA(N0),
    .SEL(\Mcount_cycles_cy<1>_rt_46 ),
    .O(Mcount_cycles_cy[1])
  );
  X_XOR2   \Mcount_cycles_xor<1>  (
    .I0(Mcount_cycles_cy[0]),
    .I1(\Mcount_cycles_cy<1>_rt_46 ),
    .O(Result[1])
  );
  X_MUX2   \Mcount_cycles_cy<2>  (
    .IB(Mcount_cycles_cy[1]),
    .IA(N0),
    .SEL(\Mcount_cycles_cy<2>_rt_48 ),
    .O(Mcount_cycles_cy[2])
  );
  X_XOR2   \Mcount_cycles_xor<2>  (
    .I0(Mcount_cycles_cy[1]),
    .I1(\Mcount_cycles_cy<2>_rt_48 ),
    .O(Result[2])
  );
  X_MUX2   \Mcount_cycles_cy<3>  (
    .IB(Mcount_cycles_cy[2]),
    .IA(N0),
    .SEL(\Mcount_cycles_cy<3>_rt_50 ),
    .O(Mcount_cycles_cy[3])
  );
  X_XOR2   \Mcount_cycles_xor<3>  (
    .I0(Mcount_cycles_cy[2]),
    .I1(\Mcount_cycles_cy<3>_rt_50 ),
    .O(Result[3])
  );
  X_MUX2   \Mcount_cycles_cy<4>  (
    .IB(Mcount_cycles_cy[3]),
    .IA(N0),
    .SEL(\Mcount_cycles_cy<4>_rt_52 ),
    .O(Mcount_cycles_cy[4])
  );
  X_XOR2   \Mcount_cycles_xor<4>  (
    .I0(Mcount_cycles_cy[3]),
    .I1(\Mcount_cycles_cy<4>_rt_52 ),
    .O(Result[4])
  );
  X_MUX2   \Mcount_cycles_cy<5>  (
    .IB(Mcount_cycles_cy[4]),
    .IA(N0),
    .SEL(\Mcount_cycles_cy<5>_rt_54 ),
    .O(Mcount_cycles_cy[5])
  );
  X_XOR2   \Mcount_cycles_xor<5>  (
    .I0(Mcount_cycles_cy[4]),
    .I1(\Mcount_cycles_cy<5>_rt_54 ),
    .O(Result[5])
  );
  X_MUX2   \Mcount_cycles_cy<6>  (
    .IB(Mcount_cycles_cy[5]),
    .IA(N0),
    .SEL(\Mcount_cycles_cy<6>_rt_56 ),
    .O(Mcount_cycles_cy[6])
  );
  X_XOR2   \Mcount_cycles_xor<6>  (
    .I0(Mcount_cycles_cy[5]),
    .I1(\Mcount_cycles_cy<6>_rt_56 ),
    .O(Result[6])
  );
  X_MUX2   \Mcount_cycles_cy<7>  (
    .IB(Mcount_cycles_cy[6]),
    .IA(N0),
    .SEL(\Mcount_cycles_cy<7>_rt_58 ),
    .O(Mcount_cycles_cy[7])
  );
  X_XOR2   \Mcount_cycles_xor<7>  (
    .I0(Mcount_cycles_cy[6]),
    .I1(\Mcount_cycles_cy<7>_rt_58 ),
    .O(Result[7])
  );
  X_MUX2   \Mcount_cycles_cy<8>  (
    .IB(Mcount_cycles_cy[7]),
    .IA(N0),
    .SEL(\Mcount_cycles_cy<8>_rt_60 ),
    .O(Mcount_cycles_cy[8])
  );
  X_XOR2   \Mcount_cycles_xor<8>  (
    .I0(Mcount_cycles_cy[7]),
    .I1(\Mcount_cycles_cy<8>_rt_60 ),
    .O(Result[8])
  );
  X_MUX2   \Mcount_cycles_cy<9>  (
    .IB(Mcount_cycles_cy[8]),
    .IA(N0),
    .SEL(\Mcount_cycles_cy<9>_rt_62 ),
    .O(Mcount_cycles_cy[9])
  );
  X_XOR2   \Mcount_cycles_xor<9>  (
    .I0(Mcount_cycles_cy[8]),
    .I1(\Mcount_cycles_cy<9>_rt_62 ),
    .O(Result[9])
  );
  X_MUX2   \Mcount_cycles_cy<10>  (
    .IB(Mcount_cycles_cy[9]),
    .IA(N0),
    .SEL(\Mcount_cycles_cy<10>_rt_36 ),
    .O(Mcount_cycles_cy[10])
  );
  X_XOR2   \Mcount_cycles_xor<10>  (
    .I0(Mcount_cycles_cy[9]),
    .I1(\Mcount_cycles_cy<10>_rt_36 ),
    .O(Result[10])
  );
  X_MUX2   \Mcount_cycles_cy<11>  (
    .IB(Mcount_cycles_cy[10]),
    .IA(N0),
    .SEL(\Mcount_cycles_cy<11>_rt_38 ),
    .O(Mcount_cycles_cy[11])
  );
  X_XOR2   \Mcount_cycles_xor<11>  (
    .I0(Mcount_cycles_cy[10]),
    .I1(\Mcount_cycles_cy<11>_rt_38 ),
    .O(Result[11])
  );
  X_MUX2   \Mcount_cycles_cy<12>  (
    .IB(Mcount_cycles_cy[11]),
    .IA(N0),
    .SEL(\Mcount_cycles_cy<12>_rt_40 ),
    .O(Mcount_cycles_cy[12])
  );
  X_XOR2   \Mcount_cycles_xor<12>  (
    .I0(Mcount_cycles_cy[11]),
    .I1(\Mcount_cycles_cy<12>_rt_40 ),
    .O(Result[12])
  );
  X_MUX2   \Mcount_cycles_cy<13>  (
    .IB(Mcount_cycles_cy[12]),
    .IA(N0),
    .SEL(\Mcount_cycles_cy<13>_rt_42 ),
    .O(Mcount_cycles_cy[13])
  );
  X_XOR2   \Mcount_cycles_xor<13>  (
    .I0(Mcount_cycles_cy[12]),
    .I1(\Mcount_cycles_cy<13>_rt_42 ),
    .O(Result[13])
  );
  X_MUX2   \Mcount_cycles_cy<14>  (
    .IB(Mcount_cycles_cy[13]),
    .IA(N0),
    .SEL(\Mcount_cycles_cy<14>_rt_44 ),
    .O(Mcount_cycles_cy[14])
  );
  X_XOR2   \Mcount_cycles_xor<14>  (
    .I0(Mcount_cycles_cy[13]),
    .I1(\Mcount_cycles_cy<14>_rt_44 ),
    .O(Result[14])
  );
  X_XOR2   \Mcount_cycles_xor<15>  (
    .I0(Mcount_cycles_cy[14]),
    .I1(\Mcount_cycles_xor<15>_rt_64 ),
    .O(Result[15])
  );
  X_MUX2   \Mcount_i_cy<0>  (
    .IB(N0),
    .IA(N1),
    .SEL(Mcount_i_lut[0]),
    .O(Mcount_i_cy[0])
  );
  X_XOR2   \Mcount_i_xor<0>  (
    .I0(N0),
    .I1(Mcount_i_lut[0]),
    .O(\Result<0>1 )
  );
  X_MUX2   \Mcount_i_cy<1>  (
    .IB(Mcount_i_cy[0]),
    .IA(N0),
    .SEL(\Mcount_i_cy<1>_rt_67 ),
    .O(Mcount_i_cy[1])
  );
  X_XOR2   \Mcount_i_xor<1>  (
    .I0(Mcount_i_cy[0]),
    .I1(\Mcount_i_cy<1>_rt_67 ),
    .O(\Result<1>1 )
  );
  X_MUX2   \Mcount_i_cy<2>  (
    .IB(Mcount_i_cy[1]),
    .IA(N0),
    .SEL(\Mcount_i_cy<2>_rt_69 ),
    .O(Mcount_i_cy[2])
  );
  X_XOR2   \Mcount_i_xor<2>  (
    .I0(Mcount_i_cy[1]),
    .I1(\Mcount_i_cy<2>_rt_69 ),
    .O(\Result<2>1 )
  );
  X_MUX2   \Mcount_i_cy<3>  (
    .IB(Mcount_i_cy[2]),
    .IA(N0),
    .SEL(\Mcount_i_cy<3>_rt_71 ),
    .O(Mcount_i_cy[3])
  );
  X_XOR2   \Mcount_i_xor<3>  (
    .I0(Mcount_i_cy[2]),
    .I1(\Mcount_i_cy<3>_rt_71 ),
    .O(\Result<3>1 )
  );
  X_MUX2   \Mcount_i_cy<4>  (
    .IB(Mcount_i_cy[3]),
    .IA(N0),
    .SEL(\Mcount_i_cy<4>_rt_73 ),
    .O(Mcount_i_cy[4])
  );
  X_XOR2   \Mcount_i_xor<4>  (
    .I0(Mcount_i_cy[3]),
    .I1(\Mcount_i_cy<4>_rt_73 ),
    .O(\Result<4>1 )
  );
  X_MUX2   \Mcount_i_cy<5>  (
    .IB(Mcount_i_cy[4]),
    .IA(N0),
    .SEL(\Mcount_i_cy<5>_rt_75 ),
    .O(Mcount_i_cy[5])
  );
  X_XOR2   \Mcount_i_xor<5>  (
    .I0(Mcount_i_cy[4]),
    .I1(\Mcount_i_cy<5>_rt_75 ),
    .O(\Result<5>1 )
  );
  X_MUX2   \Mcount_i_cy<6>  (
    .IB(Mcount_i_cy[5]),
    .IA(N0),
    .SEL(\Mcount_i_cy<6>_rt_77 ),
    .O(Mcount_i_cy[6])
  );
  X_XOR2   \Mcount_i_xor<6>  (
    .I0(Mcount_i_cy[5]),
    .I1(\Mcount_i_cy<6>_rt_77 ),
    .O(\Result<6>1 )
  );
  X_MUX2   \Mcount_i_cy<7>  (
    .IB(Mcount_i_cy[6]),
    .IA(N0),
    .SEL(\Mcount_i_cy<7>_rt_79 ),
    .O(Mcount_i_cy[7])
  );
  X_XOR2   \Mcount_i_xor<7>  (
    .I0(Mcount_i_cy[6]),
    .I1(\Mcount_i_cy<7>_rt_79 ),
    .O(\Result<7>1 )
  );
  X_MUX2   \Mcount_i_cy<8>  (
    .IB(Mcount_i_cy[7]),
    .IA(N0),
    .SEL(\Mcount_i_cy<8>_rt_81 ),
    .O(Mcount_i_cy[8])
  );
  X_XOR2   \Mcount_i_xor<8>  (
    .I0(Mcount_i_cy[7]),
    .I1(\Mcount_i_cy<8>_rt_81 ),
    .O(\Result<8>1 )
  );
  X_XOR2   \Mcount_i_xor<9>  (
    .I0(Mcount_i_cy[8]),
    .I1(\Mcount_i_xor<9>_rt_83 ),
    .O(\Result<9>1 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/state  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/swapBuffers_960 ),
    .I(\drawunit/framebuffer/state_not0001 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/framebuffer/state_417 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/ddataIn_0  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/painter/data [0]),
    .O(\drawunit/framebuffer/ddataIn [0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/ddataIn_1  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/painter/data [1]),
    .O(\drawunit/framebuffer/ddataIn [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/ddataIn_2  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/painter/data [2]),
    .O(\drawunit/framebuffer/ddataIn [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWrtPtr_0  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferWrtPtr_mux0000 [0]),
    .O(\drawunit/framebuffer/bufferWrtPtr [0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWrtPtr_1  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferWrtPtr_mux0000 [1]),
    .O(\drawunit/framebuffer/bufferWrtPtr [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWrtPtr_2  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferWrtPtr_mux0000 [2]),
    .O(\drawunit/framebuffer/bufferWrtPtr [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWrtPtr_3  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferWrtPtr_mux0000 [3]),
    .O(\drawunit/framebuffer/bufferWrtPtr [3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWrtPtr_4  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferWrtPtr_mux0000 [4]),
    .O(\drawunit/framebuffer/bufferWrtPtr [4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWrtPtr_5  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferWrtPtr_mux0000 [5]),
    .O(\drawunit/framebuffer/bufferWrtPtr [5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWrtPtr_6  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferWrtPtr_mux0000 [6]),
    .O(\drawunit/framebuffer/bufferWrtPtr [6]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWrtPtr_7  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferWrtPtr_mux0000 [7]),
    .O(\drawunit/framebuffer/bufferWrtPtr [7]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWrtPtr_8  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferWrtPtr_mux0000 [8]),
    .O(\drawunit/framebuffer/bufferWrtPtr [8]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWrtPtr_9  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferWrtPtr_mux0000 [9]),
    .O(\drawunit/framebuffer/bufferWrtPtr [9]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWrtPtr_10  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferWrtPtr_mux0000 [10]),
    .O(\drawunit/framebuffer/bufferWrtPtr [10]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWrtPtr_11  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferWrtPtr_mux0000 [11]),
    .O(\drawunit/framebuffer/bufferWrtPtr [11]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWrtPtr_12  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferWrtPtr_mux0000 [12]),
    .O(\drawunit/framebuffer/bufferWrtPtr [12]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWrtPtr_13  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferWrtPtr_mux0000 [13]),
    .O(\drawunit/framebuffer/bufferWrtPtr [13]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWrtPtr_14  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferWrtPtr_mux0000 [14]),
    .O(\drawunit/framebuffer/bufferWrtPtr [14]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWe  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/bufferWe_or0000_inv ),
    .I(\drawunit/framebuffer/bufferWe_mux0000 ),
    .O(\drawunit/framebuffer/bufferWe_350 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferWeS  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/bufferWe_or0000_inv ),
    .I(\drawunit/framebuffer/bufferWeS_mux0000 ),
    .O(\drawunit/framebuffer/bufferWeS_351 ),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/color_0  (
    .CLK(vgaClk_1305),
    .I(\drawunit/framebuffer/color_mux0000 [0]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/framebuffer/color [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/color_1  (
    .CLK(vgaClk_1305),
    .I(\drawunit/framebuffer/color_mux0000 [1]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/framebuffer/color [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/color_2  (
    .CLK(vgaClk_1305),
    .I(\drawunit/framebuffer/color_mux0000 [2]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/framebuffer/color [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferRdPtr_0  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferRdPtr_mux0000 [0]),
    .O(\drawunit/framebuffer/bufferRdPtr [0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferRdPtr_1  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferRdPtr_mux0000 [1]),
    .O(\drawunit/framebuffer/bufferRdPtr [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferRdPtr_2  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferRdPtr_mux0000 [2]),
    .O(\drawunit/framebuffer/bufferRdPtr [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferRdPtr_3  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferRdPtr_mux0000 [3]),
    .O(\drawunit/framebuffer/bufferRdPtr [3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferRdPtr_4  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferRdPtr_mux0000 [4]),
    .O(\drawunit/framebuffer/bufferRdPtr [4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferRdPtr_5  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferRdPtr_mux0000 [5]),
    .O(\drawunit/framebuffer/bufferRdPtr [5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferRdPtr_6  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferRdPtr_mux0000 [6]),
    .O(\drawunit/framebuffer/bufferRdPtr [6]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferRdPtr_7  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferRdPtr_mux0000 [7]),
    .O(\drawunit/framebuffer/bufferRdPtr [7]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferRdPtr_8  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferRdPtr_mux0000 [8]),
    .O(\drawunit/framebuffer/bufferRdPtr [8]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferRdPtr_9  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferRdPtr_mux0000 [9]),
    .O(\drawunit/framebuffer/bufferRdPtr [9]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferRdPtr_10  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferRdPtr_mux0000 [10]),
    .O(\drawunit/framebuffer/bufferRdPtr [10]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferRdPtr_11  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferRdPtr_mux0000 [11]),
    .O(\drawunit/framebuffer/bufferRdPtr [11]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferRdPtr_12  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferRdPtr_mux0000 [12]),
    .O(\drawunit/framebuffer/bufferRdPtr [12]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferRdPtr_13  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferRdPtr_mux0000 [13]),
    .O(\drawunit/framebuffer/bufferRdPtr [13]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/bufferRdPtr_14  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/framebuffer/bufferRdPtr_mux0000 [14]),
    .O(\drawunit/framebuffer/bufferRdPtr [14]),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/framebuffer/write_ctrl1  (
    .ADR0(\drawunit/framebuffer/bufferWrtPtr [14]),
    .ADR1(\drawunit/framebuffer/bufferWe_350 ),
    .O(\drawunit/framebuffer/write_ctrl1_420 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/framebuffer/inst_LPM_FF  (
    .CLK(vgaClk_1305),
    .I(\drawunit/framebuffer/bufferRdPtr [14]),
    .O(\drawunit/framebuffer/inst_LPM_FF_415 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<0>  (
    .ADR0(\drawunit/painter/addr [0]),
    .ADR1(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[0] )
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<0>  (
    .IB(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .IA(\drawunit/painter/addr [0]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[0] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [0])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<0>  (
    .I0(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .I1(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[0] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [0])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<1>  (
    .ADR0(\drawunit/painter/addr [1]),
    .ADR1(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[1] )
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<1>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [0]),
    .IA(\drawunit/painter/addr [1]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[1] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [1])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<1>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [0]),
    .I1(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[1] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [1])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<2>  (
    .ADR0(\drawunit/painter/addr [2]),
    .ADR1(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[2] )
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<2>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [1]),
    .IA(\drawunit/painter/addr [2]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[2] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [2])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<2>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [1]),
    .I1(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[2] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [2])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<3>  (
    .ADR0(\drawunit/painter/addr [3]),
    .ADR1(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[3] )
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<3>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [2]),
    .IA(\drawunit/painter/addr [3]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[3] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [3])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<3>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [2]),
    .I1(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[3] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [3])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<4>  (
    .ADR0(\drawunit/painter/addr [4]),
    .ADR1(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[4] )
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<4>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [3]),
    .IA(\drawunit/painter/addr [4]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[4] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [4])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<4>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [3]),
    .I1(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[4] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [4])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<5>  (
    .ADR0(\drawunit/painter/addr [5]),
    .ADR1(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[5] )
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<5>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [4]),
    .IA(\drawunit/painter/addr [5]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[5] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [5])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<5>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [4]),
    .I1(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[5] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [5])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<6>  (
    .ADR0(\drawunit/painter/addr [6]),
    .ADR1(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[6] )
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<6>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [5]),
    .IA(\drawunit/painter/addr [6]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[6] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [6])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<6>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [5]),
    .I1(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[6] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [6])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<7>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [6]),
    .IA(N0),
    .SEL(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<7>_rt_282 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [7])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<7>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [6]),
    .I1(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<7>_rt_282 ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [7])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<8>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [7]),
    .IA(\drawunit/painter/addr [8]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[8] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [8])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<8>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [7]),
    .I1(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[8] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [8])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<9>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [8]),
    .IA(\drawunit/painter/addr [9]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[9] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [9])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<9>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [8]),
    .I1(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[9] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [9])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<10>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [9]),
    .IA(N0),
    .SEL(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<10>_rt_269 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [10])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<10>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [9]),
    .I1(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<10>_rt_269 ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [10])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<11>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [10]),
    .IA(\drawunit/painter/addr [11]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[11] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [11])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<11>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [10]),
    .I1(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[11] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [11])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<12>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [11]),
    .IA(N0),
    .SEL(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<12>_rt_272 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [12])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<12>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [11]),
    .I1(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<12>_rt_272 ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [12])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<13>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [12]),
    .IA(N0),
    .SEL(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<13>_rt_274 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [13])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<13>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [12]),
    .I1(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<13>_rt_274 ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [13])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<14>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [13]),
    .I1(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[14] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [14])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<0>  (
    .ADR0(\drawunit/rdPtr [0]),
    .ADR1(\drawunit/framebuffer/color_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[0] )
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<0>  (
    .IB(\drawunit/framebuffer/color_cmp_ge0000 ),
    .IA(\drawunit/rdPtr [0]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[0] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [0])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<0>  (
    .I0(\drawunit/framebuffer/color_cmp_ge0000 ),
    .I1(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[0] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [0])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<1>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [0]),
    .IA(\drawunit/rdPtr [1]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[1] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [1])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<1>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [0]),
    .I1(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[1] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [1])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<2>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [1]),
    .IA(\drawunit/rdPtr [2]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[2] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [2])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<2>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [1]),
    .I1(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[2] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [2])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<3>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [2]),
    .IA(\drawunit/rdPtr [3]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[3] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [3])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<3>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [2]),
    .I1(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[3] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [3])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<4>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [3]),
    .IA(\drawunit/rdPtr [4]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[4] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [4])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<4>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [3]),
    .I1(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[4] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [4])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<5>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [4]),
    .IA(\drawunit/rdPtr [5]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[5] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [5])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<5>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [4]),
    .I1(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[5] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [5])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<6>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [5]),
    .IA(\drawunit/rdPtr [6]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[6] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [6])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<6>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [5]),
    .I1(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[6] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [6])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<7>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [6]),
    .IA(N0),
    .SEL(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<7>_rt_253 ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [7])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<7>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [6]),
    .I1(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<7>_rt_253 ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [7])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<8>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [7]),
    .IA(\drawunit/rdPtr [8]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[8] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [8])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<8>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [7]),
    .I1(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[8] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [8])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<9>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [8]),
    .IA(\drawunit/rdPtr [9]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[9] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [9])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<9>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [8]),
    .I1(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[9] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [9])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<10>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [9]),
    .IA(N0),
    .SEL(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<10>_rt_240 ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [10])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<10>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [9]),
    .I1(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<10>_rt_240 ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [10])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<11>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [10]),
    .IA(\drawunit/rdPtr [11]),
    .SEL(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[11] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [11])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<11>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [10]),
    .I1(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[11] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [11])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<12>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [11]),
    .IA(N0),
    .SEL(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<12>_rt_243 ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [12])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<12>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [11]),
    .I1(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<12>_rt_243 ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [12])
  );
  X_MUX2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<13>  (
    .IB(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [12]),
    .IA(N0),
    .SEL(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<13>_rt_245 ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [13])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<13>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [12]),
    .I1(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<13>_rt_245 ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [13])
  );
  X_XOR2   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<14>  (
    .I0(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [13]),
    .I1(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[14] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [14])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_30  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .I(data[10]),
    .O(\drawunit/queue/temp[30] ),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/state  (
    .CLK(clk_BUFGP),
    .CE(we_1309),
    .I(\drawunit/queue/state_mux0000 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/state_897 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_25  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .I(data[9]),
    .O(\drawunit/queue/temp[25] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_24  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .I(data[8]),
    .O(\drawunit/queue/temp[24] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_23  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .I(data[7]),
    .O(\drawunit/queue/temp[23] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_20  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .I(data[4]),
    .O(\drawunit/queue/temp[20] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_22  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .I(data[6]),
    .O(\drawunit/queue/temp[22] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_21  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .I(data[5]),
    .O(\drawunit/queue/temp[21] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_19  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .I(data[3]),
    .O(\drawunit/queue/temp[19] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_18  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .I(data[2]),
    .O(\drawunit/queue/temp[18] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_15  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .I(data[10]),
    .O(\drawunit/queue/temp[15] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_17  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .I(data[1]),
    .O(\drawunit/queue/temp[17] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_9  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .I(data[9]),
    .O(\drawunit/queue/temp[9] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_8  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .I(data[8]),
    .O(\drawunit/queue/temp[8] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_5  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .I(data[5]),
    .O(\drawunit/queue/temp[5] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_7  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .I(data[7]),
    .O(\drawunit/queue/temp[7] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_6  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .I(data[6]),
    .O(\drawunit/queue/temp[6] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_4  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .I(data[4]),
    .O(\drawunit/queue/temp[4] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_3  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .I(data[3]),
    .O(\drawunit/queue/temp[3] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_2  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .I(data[2]),
    .O(\drawunit/queue/temp[2] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/temp_1  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .I(data[1]),
    .O(\drawunit/queue/temp[1] ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/delayedWe  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/framebuffer/reset_inv ),
    .I(\drawunit/queue/delayedWe_mux0000 ),
    .O(\drawunit/queue/delayedWe_849 ),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_0  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [0]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_1  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [1]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_2  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [2]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_3  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [3]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_4  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [4]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_5  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [5]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_6  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [6]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_7  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [7]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_8  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [8]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [8]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_9  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [9]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [9]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_10  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [10]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [10]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_11  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [11]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [11]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_12  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [12]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [12]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_13  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [13]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [13]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_14  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [14]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [14]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_15  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [15]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [15]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_16  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [16]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [16]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_17  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [17]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [17]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_18  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [18]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [18]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_19  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [19]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [19]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_20  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [20]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [20]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_21  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [21]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [21]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_22  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [22]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [22]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_23  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [23]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [23]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_24  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [24]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [24]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_25  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [25]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [25]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_26  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [26]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [26]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_27  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [27]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [27]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_28  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [28]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [28]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_29  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [29]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [29]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_30  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [30]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [30]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdData_31  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/dataOut [31]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdData [31]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdPtr_0  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/Result<0>2 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdPtr [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdPtr_1  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/Result<1>2 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdPtr [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdPtr_2  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/Result<2>2 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdPtr [2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdPtr_3  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/Result<3>2 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdPtr [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdPtr_4  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/Result<4>2 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdPtr [4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdPtr_5  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/Result<5>2 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdPtr [5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdPtr_6  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/Result<6>2 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdPtr [6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdPtr_7  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/Result<7>2 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdPtr [7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/rdPtr_8  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/re_678 ),
    .I(\drawunit/queue/Result<8>2 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/rdPtr [8]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/wrtPtr_0  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/delayedWe_849 ),
    .I(\drawunit/queue/Result<0>1 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/wrtPtr [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/wrtPtr_1  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/delayedWe_849 ),
    .I(\drawunit/queue/Result<1>1 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/wrtPtr [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/wrtPtr_2  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/delayedWe_849 ),
    .I(\drawunit/queue/Result<2>1 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/wrtPtr [2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/wrtPtr_3  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/delayedWe_849 ),
    .I(\drawunit/queue/Result<3>1 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/wrtPtr [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/wrtPtr_4  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/delayedWe_849 ),
    .I(\drawunit/queue/Result<4>1 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/wrtPtr [4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/wrtPtr_5  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/delayedWe_849 ),
    .I(\drawunit/queue/Result<5>1 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/wrtPtr [5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/wrtPtr_6  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/delayedWe_849 ),
    .I(\drawunit/queue/Result<6>1 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/wrtPtr [6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/wrtPtr_7  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/delayedWe_849 ),
    .I(\drawunit/queue/Result<7>1 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/wrtPtr [7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/wrtPtr_8  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/delayedWe_849 ),
    .I(\drawunit/queue/Result<8>1 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/wrtPtr [8]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/count_0  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/count_not0002 ),
    .I(\drawunit/queue/Result [0]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/count [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/count_1  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/count_not0002 ),
    .I(\drawunit/queue/Result [1]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/count [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/count_2  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/count_not0002 ),
    .I(\drawunit/queue/Result [2]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/count [2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/count_3  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/count_not0002 ),
    .I(\drawunit/queue/Result [3]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/count [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/count_4  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/count_not0002 ),
    .I(\drawunit/queue/Result [4]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/count [4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/count_5  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/count_not0002 ),
    .I(\drawunit/queue/Result [5]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/count [5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/count_6  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/count_not0002 ),
    .I(\drawunit/queue/Result [6]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/count [6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/count_7  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/count_not0002 ),
    .I(\drawunit/queue/Result [7]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/count [7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/count_8  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/count_not0002 ),
    .I(\drawunit/queue/Result [8]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/count [8]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/queue/count_9  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/queue/count_not0002 ),
    .I(\drawunit/queue/Result [9]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/queue/count [9]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_MUX2   \drawunit/queue/Mcount_count_cy<0>  (
    .IB(\drawunit/queue/count_not0003_inv ),
    .IA(\drawunit/queue/count [0]),
    .SEL(\drawunit/queue/Mcount_count_lut [0]),
    .O(\drawunit/queue/Mcount_count_cy [0])
  );
  X_XOR2   \drawunit/queue/Mcount_count_xor<0>  (
    .I0(\drawunit/queue/count_not0003_inv ),
    .I1(\drawunit/queue/Mcount_count_lut [0]),
    .O(\drawunit/queue/Result [0])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<1>  (
    .ADR0(\drawunit/queue/count [1]),
    .ADR1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [1])
  );
  X_MUX2   \drawunit/queue/Mcount_count_cy<1>  (
    .IB(\drawunit/queue/Mcount_count_cy [0]),
    .IA(\drawunit/queue/count [1]),
    .SEL(\drawunit/queue/Mcount_count_lut [1]),
    .O(\drawunit/queue/Mcount_count_cy [1])
  );
  X_XOR2   \drawunit/queue/Mcount_count_xor<1>  (
    .I0(\drawunit/queue/Mcount_count_cy [0]),
    .I1(\drawunit/queue/Mcount_count_lut [1]),
    .O(\drawunit/queue/Result [1])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<2>  (
    .ADR0(\drawunit/queue/count [2]),
    .ADR1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [2])
  );
  X_MUX2   \drawunit/queue/Mcount_count_cy<2>  (
    .IB(\drawunit/queue/Mcount_count_cy [1]),
    .IA(\drawunit/queue/count [2]),
    .SEL(\drawunit/queue/Mcount_count_lut [2]),
    .O(\drawunit/queue/Mcount_count_cy [2])
  );
  X_XOR2   \drawunit/queue/Mcount_count_xor<2>  (
    .I0(\drawunit/queue/Mcount_count_cy [1]),
    .I1(\drawunit/queue/Mcount_count_lut [2]),
    .O(\drawunit/queue/Result [2])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<3>  (
    .ADR0(\drawunit/queue/count [3]),
    .ADR1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [3])
  );
  X_MUX2   \drawunit/queue/Mcount_count_cy<3>  (
    .IB(\drawunit/queue/Mcount_count_cy [2]),
    .IA(\drawunit/queue/count [3]),
    .SEL(\drawunit/queue/Mcount_count_lut [3]),
    .O(\drawunit/queue/Mcount_count_cy [3])
  );
  X_XOR2   \drawunit/queue/Mcount_count_xor<3>  (
    .I0(\drawunit/queue/Mcount_count_cy [2]),
    .I1(\drawunit/queue/Mcount_count_lut [3]),
    .O(\drawunit/queue/Result [3])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<4>  (
    .ADR0(\drawunit/queue/count [4]),
    .ADR1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [4])
  );
  X_MUX2   \drawunit/queue/Mcount_count_cy<4>  (
    .IB(\drawunit/queue/Mcount_count_cy [3]),
    .IA(\drawunit/queue/count [4]),
    .SEL(\drawunit/queue/Mcount_count_lut [4]),
    .O(\drawunit/queue/Mcount_count_cy [4])
  );
  X_XOR2   \drawunit/queue/Mcount_count_xor<4>  (
    .I0(\drawunit/queue/Mcount_count_cy [3]),
    .I1(\drawunit/queue/Mcount_count_lut [4]),
    .O(\drawunit/queue/Result [4])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<5>  (
    .ADR0(\drawunit/queue/count [5]),
    .ADR1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [5])
  );
  X_MUX2   \drawunit/queue/Mcount_count_cy<5>  (
    .IB(\drawunit/queue/Mcount_count_cy [4]),
    .IA(\drawunit/queue/count [5]),
    .SEL(\drawunit/queue/Mcount_count_lut [5]),
    .O(\drawunit/queue/Mcount_count_cy [5])
  );
  X_XOR2   \drawunit/queue/Mcount_count_xor<5>  (
    .I0(\drawunit/queue/Mcount_count_cy [4]),
    .I1(\drawunit/queue/Mcount_count_lut [5]),
    .O(\drawunit/queue/Result [5])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<6>  (
    .ADR0(\drawunit/queue/count [6]),
    .ADR1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [6])
  );
  X_MUX2   \drawunit/queue/Mcount_count_cy<6>  (
    .IB(\drawunit/queue/Mcount_count_cy [5]),
    .IA(\drawunit/queue/count [6]),
    .SEL(\drawunit/queue/Mcount_count_lut [6]),
    .O(\drawunit/queue/Mcount_count_cy [6])
  );
  X_XOR2   \drawunit/queue/Mcount_count_xor<6>  (
    .I0(\drawunit/queue/Mcount_count_cy [5]),
    .I1(\drawunit/queue/Mcount_count_lut [6]),
    .O(\drawunit/queue/Result [6])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<7>  (
    .ADR0(\drawunit/queue/count [7]),
    .ADR1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [7])
  );
  X_MUX2   \drawunit/queue/Mcount_count_cy<7>  (
    .IB(\drawunit/queue/Mcount_count_cy [6]),
    .IA(\drawunit/queue/count [7]),
    .SEL(\drawunit/queue/Mcount_count_lut [7]),
    .O(\drawunit/queue/Mcount_count_cy [7])
  );
  X_XOR2   \drawunit/queue/Mcount_count_xor<7>  (
    .I0(\drawunit/queue/Mcount_count_cy [6]),
    .I1(\drawunit/queue/Mcount_count_lut [7]),
    .O(\drawunit/queue/Result [7])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<8>  (
    .ADR0(\drawunit/queue/count [8]),
    .ADR1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [8])
  );
  X_MUX2   \drawunit/queue/Mcount_count_cy<8>  (
    .IB(\drawunit/queue/Mcount_count_cy [7]),
    .IA(\drawunit/queue/count [8]),
    .SEL(\drawunit/queue/Mcount_count_lut [8]),
    .O(\drawunit/queue/Mcount_count_cy [8])
  );
  X_XOR2   \drawunit/queue/Mcount_count_xor<8>  (
    .I0(\drawunit/queue/Mcount_count_cy [7]),
    .I1(\drawunit/queue/Mcount_count_lut [8]),
    .O(\drawunit/queue/Result [8])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<9>  (
    .ADR0(\drawunit/queue/count [9]),
    .ADR1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [9])
  );
  X_XOR2   \drawunit/queue/Mcount_count_xor<9>  (
    .I0(\drawunit/queue/Mcount_count_cy [8]),
    .I1(\drawunit/queue/Mcount_count_lut [9]),
    .O(\drawunit/queue/Result [9])
  );
  X_MUX2   \drawunit/queue/Mcount_wrtPtr_cy<0>  (
    .IB(N0),
    .IA(N1),
    .SEL(\drawunit/queue/Mcount_wrtPtr_lut [0]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [0])
  );
  X_XOR2   \drawunit/queue/Mcount_wrtPtr_xor<0>  (
    .I0(N0),
    .I1(\drawunit/queue/Mcount_wrtPtr_lut [0]),
    .O(\drawunit/queue/Result<0>1 )
  );
  X_MUX2   \drawunit/queue/Mcount_wrtPtr_cy<1>  (
    .IB(\drawunit/queue/Mcount_wrtPtr_cy [0]),
    .IA(N0),
    .SEL(\drawunit/queue/Mcount_wrtPtr_cy<1>_rt_759 ),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [1])
  );
  X_XOR2   \drawunit/queue/Mcount_wrtPtr_xor<1>  (
    .I0(\drawunit/queue/Mcount_wrtPtr_cy [0]),
    .I1(\drawunit/queue/Mcount_wrtPtr_cy<1>_rt_759 ),
    .O(\drawunit/queue/Result<1>1 )
  );
  X_MUX2   \drawunit/queue/Mcount_wrtPtr_cy<2>  (
    .IB(\drawunit/queue/Mcount_wrtPtr_cy [1]),
    .IA(N0),
    .SEL(\drawunit/queue/Mcount_wrtPtr_cy<2>_rt_761 ),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [2])
  );
  X_XOR2   \drawunit/queue/Mcount_wrtPtr_xor<2>  (
    .I0(\drawunit/queue/Mcount_wrtPtr_cy [1]),
    .I1(\drawunit/queue/Mcount_wrtPtr_cy<2>_rt_761 ),
    .O(\drawunit/queue/Result<2>1 )
  );
  X_MUX2   \drawunit/queue/Mcount_wrtPtr_cy<3>  (
    .IB(\drawunit/queue/Mcount_wrtPtr_cy [2]),
    .IA(N0),
    .SEL(\drawunit/queue/Mcount_wrtPtr_cy<3>_rt_763 ),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [3])
  );
  X_XOR2   \drawunit/queue/Mcount_wrtPtr_xor<3>  (
    .I0(\drawunit/queue/Mcount_wrtPtr_cy [2]),
    .I1(\drawunit/queue/Mcount_wrtPtr_cy<3>_rt_763 ),
    .O(\drawunit/queue/Result<3>1 )
  );
  X_MUX2   \drawunit/queue/Mcount_wrtPtr_cy<4>  (
    .IB(\drawunit/queue/Mcount_wrtPtr_cy [3]),
    .IA(N0),
    .SEL(\drawunit/queue/Mcount_wrtPtr_cy<4>_rt_765 ),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [4])
  );
  X_XOR2   \drawunit/queue/Mcount_wrtPtr_xor<4>  (
    .I0(\drawunit/queue/Mcount_wrtPtr_cy [3]),
    .I1(\drawunit/queue/Mcount_wrtPtr_cy<4>_rt_765 ),
    .O(\drawunit/queue/Result<4>1 )
  );
  X_MUX2   \drawunit/queue/Mcount_wrtPtr_cy<5>  (
    .IB(\drawunit/queue/Mcount_wrtPtr_cy [4]),
    .IA(N0),
    .SEL(\drawunit/queue/Mcount_wrtPtr_cy<5>_rt_767 ),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [5])
  );
  X_XOR2   \drawunit/queue/Mcount_wrtPtr_xor<5>  (
    .I0(\drawunit/queue/Mcount_wrtPtr_cy [4]),
    .I1(\drawunit/queue/Mcount_wrtPtr_cy<5>_rt_767 ),
    .O(\drawunit/queue/Result<5>1 )
  );
  X_MUX2   \drawunit/queue/Mcount_wrtPtr_cy<6>  (
    .IB(\drawunit/queue/Mcount_wrtPtr_cy [5]),
    .IA(N0),
    .SEL(\drawunit/queue/Mcount_wrtPtr_cy<6>_rt_769 ),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [6])
  );
  X_XOR2   \drawunit/queue/Mcount_wrtPtr_xor<6>  (
    .I0(\drawunit/queue/Mcount_wrtPtr_cy [5]),
    .I1(\drawunit/queue/Mcount_wrtPtr_cy<6>_rt_769 ),
    .O(\drawunit/queue/Result<6>1 )
  );
  X_MUX2   \drawunit/queue/Mcount_wrtPtr_cy<7>  (
    .IB(\drawunit/queue/Mcount_wrtPtr_cy [6]),
    .IA(N0),
    .SEL(\drawunit/queue/Mcount_wrtPtr_cy<7>_rt_771 ),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [7])
  );
  X_XOR2   \drawunit/queue/Mcount_wrtPtr_xor<7>  (
    .I0(\drawunit/queue/Mcount_wrtPtr_cy [6]),
    .I1(\drawunit/queue/Mcount_wrtPtr_cy<7>_rt_771 ),
    .O(\drawunit/queue/Result<7>1 )
  );
  X_XOR2   \drawunit/queue/Mcount_wrtPtr_xor<8>  (
    .I0(\drawunit/queue/Mcount_wrtPtr_cy [7]),
    .I1(\drawunit/queue/Mcount_wrtPtr_xor<8>_rt_773 ),
    .O(\drawunit/queue/Result<8>1 )
  );
  X_MUX2   \drawunit/queue/Mcount_rdPtr_cy<0>  (
    .IB(N0),
    .IA(N1),
    .SEL(\drawunit/queue/Mcount_rdPtr_lut [0]),
    .O(\drawunit/queue/Mcount_rdPtr_cy [0])
  );
  X_XOR2   \drawunit/queue/Mcount_rdPtr_xor<0>  (
    .I0(N0),
    .I1(\drawunit/queue/Mcount_rdPtr_lut [0]),
    .O(\drawunit/queue/Result<0>2 )
  );
  X_MUX2   \drawunit/queue/Mcount_rdPtr_cy<1>  (
    .IB(\drawunit/queue/Mcount_rdPtr_cy [0]),
    .IA(N0),
    .SEL(\drawunit/queue/Mcount_rdPtr_cy<1>_rt_742 ),
    .O(\drawunit/queue/Mcount_rdPtr_cy [1])
  );
  X_XOR2   \drawunit/queue/Mcount_rdPtr_xor<1>  (
    .I0(\drawunit/queue/Mcount_rdPtr_cy [0]),
    .I1(\drawunit/queue/Mcount_rdPtr_cy<1>_rt_742 ),
    .O(\drawunit/queue/Result<1>2 )
  );
  X_MUX2   \drawunit/queue/Mcount_rdPtr_cy<2>  (
    .IB(\drawunit/queue/Mcount_rdPtr_cy [1]),
    .IA(N0),
    .SEL(\drawunit/queue/Mcount_rdPtr_cy<2>_rt_744 ),
    .O(\drawunit/queue/Mcount_rdPtr_cy [2])
  );
  X_XOR2   \drawunit/queue/Mcount_rdPtr_xor<2>  (
    .I0(\drawunit/queue/Mcount_rdPtr_cy [1]),
    .I1(\drawunit/queue/Mcount_rdPtr_cy<2>_rt_744 ),
    .O(\drawunit/queue/Result<2>2 )
  );
  X_MUX2   \drawunit/queue/Mcount_rdPtr_cy<3>  (
    .IB(\drawunit/queue/Mcount_rdPtr_cy [2]),
    .IA(N0),
    .SEL(\drawunit/queue/Mcount_rdPtr_cy<3>_rt_746 ),
    .O(\drawunit/queue/Mcount_rdPtr_cy [3])
  );
  X_XOR2   \drawunit/queue/Mcount_rdPtr_xor<3>  (
    .I0(\drawunit/queue/Mcount_rdPtr_cy [2]),
    .I1(\drawunit/queue/Mcount_rdPtr_cy<3>_rt_746 ),
    .O(\drawunit/queue/Result<3>2 )
  );
  X_MUX2   \drawunit/queue/Mcount_rdPtr_cy<4>  (
    .IB(\drawunit/queue/Mcount_rdPtr_cy [3]),
    .IA(N0),
    .SEL(\drawunit/queue/Mcount_rdPtr_cy<4>_rt_748 ),
    .O(\drawunit/queue/Mcount_rdPtr_cy [4])
  );
  X_XOR2   \drawunit/queue/Mcount_rdPtr_xor<4>  (
    .I0(\drawunit/queue/Mcount_rdPtr_cy [3]),
    .I1(\drawunit/queue/Mcount_rdPtr_cy<4>_rt_748 ),
    .O(\drawunit/queue/Result<4>2 )
  );
  X_MUX2   \drawunit/queue/Mcount_rdPtr_cy<5>  (
    .IB(\drawunit/queue/Mcount_rdPtr_cy [4]),
    .IA(N0),
    .SEL(\drawunit/queue/Mcount_rdPtr_cy<5>_rt_750 ),
    .O(\drawunit/queue/Mcount_rdPtr_cy [5])
  );
  X_XOR2   \drawunit/queue/Mcount_rdPtr_xor<5>  (
    .I0(\drawunit/queue/Mcount_rdPtr_cy [4]),
    .I1(\drawunit/queue/Mcount_rdPtr_cy<5>_rt_750 ),
    .O(\drawunit/queue/Result<5>2 )
  );
  X_MUX2   \drawunit/queue/Mcount_rdPtr_cy<6>  (
    .IB(\drawunit/queue/Mcount_rdPtr_cy [5]),
    .IA(N0),
    .SEL(\drawunit/queue/Mcount_rdPtr_cy<6>_rt_752 ),
    .O(\drawunit/queue/Mcount_rdPtr_cy [6])
  );
  X_XOR2   \drawunit/queue/Mcount_rdPtr_xor<6>  (
    .I0(\drawunit/queue/Mcount_rdPtr_cy [5]),
    .I1(\drawunit/queue/Mcount_rdPtr_cy<6>_rt_752 ),
    .O(\drawunit/queue/Result<6>2 )
  );
  X_MUX2   \drawunit/queue/Mcount_rdPtr_cy<7>  (
    .IB(\drawunit/queue/Mcount_rdPtr_cy [6]),
    .IA(N0),
    .SEL(\drawunit/queue/Mcount_rdPtr_cy<7>_rt_754 ),
    .O(\drawunit/queue/Mcount_rdPtr_cy [7])
  );
  X_XOR2   \drawunit/queue/Mcount_rdPtr_xor<7>  (
    .I0(\drawunit/queue/Mcount_rdPtr_cy [6]),
    .I1(\drawunit/queue/Mcount_rdPtr_cy<7>_rt_754 ),
    .O(\drawunit/queue/Result<7>2 )
  );
  X_XOR2   \drawunit/queue/Mcount_rdPtr_xor<8>  (
    .I0(\drawunit/queue/Mcount_rdPtr_cy [7]),
    .I1(\drawunit/queue/Mcount_rdPtr_xor<8>_rt_756 ),
    .O(\drawunit/queue/Result<8>2 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/vsync  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/vsync_mux0000 ),
    .O(\drawunit/vga_controller/vsync_1279 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/hsync  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/hsync_mux0000_1098 ),
    .O(\drawunit/vga_controller/hsync_1090 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/Henable  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/Henable_mux0000 ),
    .O(\drawunit/vga_controller/Henable_965 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/color_0  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/color_mux0000 [0]),
    .O(\drawunit/vga_controller/color [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/color_1  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/color_mux0000 [1]),
    .O(\drawunit/vga_controller/color [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/color_2  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/color_mux0000 [2]),
    .O(\drawunit/vga_controller/color [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/line_0  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/vga_controller/line_not0001_1129 ),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/line_mux0000 [0]),
    .O(\drawunit/vga_controller/line [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/line_1  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/vga_controller/line_not0001_1129 ),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/line_mux0000 [1]),
    .O(\drawunit/vga_controller/line [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/line_2  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/vga_controller/line_not0001_1129 ),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/line_mux0000 [2]),
    .O(\drawunit/vga_controller/line [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/line_3  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/vga_controller/line_not0001_1129 ),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/line_mux0000 [3]),
    .O(\drawunit/vga_controller/line [3]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/line_4  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/vga_controller/line_not0001_1129 ),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/line_mux0000 [4]),
    .O(\drawunit/vga_controller/line [4]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/line_5  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/vga_controller/line_not0001_1129 ),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/line_mux0000 [5]),
    .O(\drawunit/vga_controller/line [5]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/line_6  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/vga_controller/line_not0001_1129 ),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/line_mux0000 [6]),
    .O(\drawunit/vga_controller/line [6]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/line_7  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/vga_controller/line_not0001_1129 ),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/line_mux0000 [7]),
    .O(\drawunit/vga_controller/line [7]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/line_8  (
    .CLK(vgaClk_1305),
    .CE(\drawunit/vga_controller/line_not0001_1129 ),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/line_mux0000 [8]),
    .O(\drawunit/vga_controller/line [8]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/offset_0  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/offset_mux0000 [0]),
    .O(\drawunit/vga_controller/offset [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/offset_1  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/offset_mux0000 [1]),
    .O(\drawunit/vga_controller/offset [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/offset_2  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/offset_mux0000 [2]),
    .O(\drawunit/vga_controller/offset [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/offset_3  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/offset_mux0000 [3]),
    .O(\drawunit/vga_controller/offset [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/offset_4  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/offset_mux0000 [4]),
    .O(\drawunit/vga_controller/offset [4]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/offset_5  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/offset_mux0000 [5]),
    .O(\drawunit/vga_controller/offset [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/offset_6  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/offset_mux0000 [6]),
    .O(\drawunit/vga_controller/offset [6]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/offset_7  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/offset_mux0000 [7]),
    .O(\drawunit/vga_controller/offset [7]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/offset_8  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/offset_mux0000 [8]),
    .O(\drawunit/vga_controller/offset [8]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/offset_9  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/offset_mux0000 [9]),
    .O(\drawunit/vga_controller/offset [9]),
    .CE(VCC),
    .SET(GND)
  );
  X_MUX2   \drawunit/vga_controller/Madd_offset_share0000_cy<0>  (
    .IB(N0),
    .IA(N1),
    .SEL(\drawunit/vga_controller/Madd_offset_share0000_lut [0]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [0])
  );
  X_XOR2   \drawunit/vga_controller/Madd_offset_share0000_xor<0>  (
    .I0(N0),
    .I1(\drawunit/vga_controller/Madd_offset_share0000_lut [0]),
    .O(\drawunit/vga_controller/offset_share0000 [0])
  );
  X_MUX2   \drawunit/vga_controller/Madd_offset_share0000_cy<1>  (
    .IB(\drawunit/vga_controller/Madd_offset_share0000_cy [0]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_offset_share0000_cy<1>_rt_989 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [1])
  );
  X_XOR2   \drawunit/vga_controller/Madd_offset_share0000_xor<1>  (
    .I0(\drawunit/vga_controller/Madd_offset_share0000_cy [0]),
    .I1(\drawunit/vga_controller/Madd_offset_share0000_cy<1>_rt_989 ),
    .O(\drawunit/vga_controller/offset_share0000 [1])
  );
  X_MUX2   \drawunit/vga_controller/Madd_offset_share0000_cy<2>  (
    .IB(\drawunit/vga_controller/Madd_offset_share0000_cy [1]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_offset_share0000_cy<2>_rt_991 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [2])
  );
  X_XOR2   \drawunit/vga_controller/Madd_offset_share0000_xor<2>  (
    .I0(\drawunit/vga_controller/Madd_offset_share0000_cy [1]),
    .I1(\drawunit/vga_controller/Madd_offset_share0000_cy<2>_rt_991 ),
    .O(\drawunit/vga_controller/offset_share0000 [2])
  );
  X_MUX2   \drawunit/vga_controller/Madd_offset_share0000_cy<3>  (
    .IB(\drawunit/vga_controller/Madd_offset_share0000_cy [2]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_offset_share0000_cy<3>_rt_993 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [3])
  );
  X_XOR2   \drawunit/vga_controller/Madd_offset_share0000_xor<3>  (
    .I0(\drawunit/vga_controller/Madd_offset_share0000_cy [2]),
    .I1(\drawunit/vga_controller/Madd_offset_share0000_cy<3>_rt_993 ),
    .O(\drawunit/vga_controller/offset_share0000 [3])
  );
  X_MUX2   \drawunit/vga_controller/Madd_offset_share0000_cy<4>  (
    .IB(\drawunit/vga_controller/Madd_offset_share0000_cy [3]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_offset_share0000_cy<4>_rt_995 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [4])
  );
  X_XOR2   \drawunit/vga_controller/Madd_offset_share0000_xor<4>  (
    .I0(\drawunit/vga_controller/Madd_offset_share0000_cy [3]),
    .I1(\drawunit/vga_controller/Madd_offset_share0000_cy<4>_rt_995 ),
    .O(\drawunit/vga_controller/offset_share0000 [4])
  );
  X_MUX2   \drawunit/vga_controller/Madd_offset_share0000_cy<5>  (
    .IB(\drawunit/vga_controller/Madd_offset_share0000_cy [4]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_offset_share0000_cy<5>_rt_997 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [5])
  );
  X_XOR2   \drawunit/vga_controller/Madd_offset_share0000_xor<5>  (
    .I0(\drawunit/vga_controller/Madd_offset_share0000_cy [4]),
    .I1(\drawunit/vga_controller/Madd_offset_share0000_cy<5>_rt_997 ),
    .O(\drawunit/vga_controller/offset_share0000 [5])
  );
  X_MUX2   \drawunit/vga_controller/Madd_offset_share0000_cy<6>  (
    .IB(\drawunit/vga_controller/Madd_offset_share0000_cy [5]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_offset_share0000_cy<6>_rt_999 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [6])
  );
  X_XOR2   \drawunit/vga_controller/Madd_offset_share0000_xor<6>  (
    .I0(\drawunit/vga_controller/Madd_offset_share0000_cy [5]),
    .I1(\drawunit/vga_controller/Madd_offset_share0000_cy<6>_rt_999 ),
    .O(\drawunit/vga_controller/offset_share0000 [6])
  );
  X_MUX2   \drawunit/vga_controller/Madd_offset_share0000_cy<7>  (
    .IB(\drawunit/vga_controller/Madd_offset_share0000_cy [6]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_offset_share0000_cy<7>_rt_1001 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [7])
  );
  X_XOR2   \drawunit/vga_controller/Madd_offset_share0000_xor<7>  (
    .I0(\drawunit/vga_controller/Madd_offset_share0000_cy [6]),
    .I1(\drawunit/vga_controller/Madd_offset_share0000_cy<7>_rt_1001 ),
    .O(\drawunit/vga_controller/offset_share0000 [7])
  );
  X_MUX2   \drawunit/vga_controller/Madd_offset_share0000_cy<8>  (
    .IB(\drawunit/vga_controller/Madd_offset_share0000_cy [7]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_offset_share0000_cy<8>_rt_1003 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [8])
  );
  X_XOR2   \drawunit/vga_controller/Madd_offset_share0000_xor<8>  (
    .I0(\drawunit/vga_controller/Madd_offset_share0000_cy [7]),
    .I1(\drawunit/vga_controller/Madd_offset_share0000_cy<8>_rt_1003 ),
    .O(\drawunit/vga_controller/offset_share0000 [8])
  );
  X_XOR2   \drawunit/vga_controller/Madd_offset_share0000_xor<9>  (
    .I0(\drawunit/vga_controller/Madd_offset_share0000_cy [8]),
    .I1(\drawunit/vga_controller/Madd_offset_share0000_xor<9>_rt_1005 ),
    .O(\drawunit/vga_controller/offset_share0000 [9])
  );
  X_MUX2   \drawunit/vga_controller/Madd_line_addsub0000_cy<0>  (
    .IB(N0),
    .IA(N1),
    .SEL(\drawunit/vga_controller/Madd_line_addsub0000_lut [0]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [0])
  );
  X_XOR2   \drawunit/vga_controller/Madd_line_addsub0000_xor<0>  (
    .I0(N0),
    .I1(\drawunit/vga_controller/Madd_line_addsub0000_lut [0]),
    .O(\drawunit/vga_controller/line_addsub0000 [0])
  );
  X_MUX2   \drawunit/vga_controller/Madd_line_addsub0000_cy<1>  (
    .IB(\drawunit/vga_controller/Madd_line_addsub0000_cy [0]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_line_addsub0000_cy<1>_rt_972 ),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [1])
  );
  X_XOR2   \drawunit/vga_controller/Madd_line_addsub0000_xor<1>  (
    .I0(\drawunit/vga_controller/Madd_line_addsub0000_cy [0]),
    .I1(\drawunit/vga_controller/Madd_line_addsub0000_cy<1>_rt_972 ),
    .O(\drawunit/vga_controller/line_addsub0000 [1])
  );
  X_MUX2   \drawunit/vga_controller/Madd_line_addsub0000_cy<2>  (
    .IB(\drawunit/vga_controller/Madd_line_addsub0000_cy [1]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_line_addsub0000_cy<2>_rt_974 ),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [2])
  );
  X_XOR2   \drawunit/vga_controller/Madd_line_addsub0000_xor<2>  (
    .I0(\drawunit/vga_controller/Madd_line_addsub0000_cy [1]),
    .I1(\drawunit/vga_controller/Madd_line_addsub0000_cy<2>_rt_974 ),
    .O(\drawunit/vga_controller/line_addsub0000 [2])
  );
  X_MUX2   \drawunit/vga_controller/Madd_line_addsub0000_cy<3>  (
    .IB(\drawunit/vga_controller/Madd_line_addsub0000_cy [2]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_line_addsub0000_cy<3>_rt_976 ),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [3])
  );
  X_XOR2   \drawunit/vga_controller/Madd_line_addsub0000_xor<3>  (
    .I0(\drawunit/vga_controller/Madd_line_addsub0000_cy [2]),
    .I1(\drawunit/vga_controller/Madd_line_addsub0000_cy<3>_rt_976 ),
    .O(\drawunit/vga_controller/line_addsub0000 [3])
  );
  X_MUX2   \drawunit/vga_controller/Madd_line_addsub0000_cy<4>  (
    .IB(\drawunit/vga_controller/Madd_line_addsub0000_cy [3]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_line_addsub0000_cy<4>_rt_978 ),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [4])
  );
  X_XOR2   \drawunit/vga_controller/Madd_line_addsub0000_xor<4>  (
    .I0(\drawunit/vga_controller/Madd_line_addsub0000_cy [3]),
    .I1(\drawunit/vga_controller/Madd_line_addsub0000_cy<4>_rt_978 ),
    .O(\drawunit/vga_controller/line_addsub0000 [4])
  );
  X_MUX2   \drawunit/vga_controller/Madd_line_addsub0000_cy<5>  (
    .IB(\drawunit/vga_controller/Madd_line_addsub0000_cy [4]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_line_addsub0000_cy<5>_rt_980 ),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [5])
  );
  X_XOR2   \drawunit/vga_controller/Madd_line_addsub0000_xor<5>  (
    .I0(\drawunit/vga_controller/Madd_line_addsub0000_cy [4]),
    .I1(\drawunit/vga_controller/Madd_line_addsub0000_cy<5>_rt_980 ),
    .O(\drawunit/vga_controller/line_addsub0000 [5])
  );
  X_MUX2   \drawunit/vga_controller/Madd_line_addsub0000_cy<6>  (
    .IB(\drawunit/vga_controller/Madd_line_addsub0000_cy [5]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_line_addsub0000_cy<6>_rt_982 ),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [6])
  );
  X_XOR2   \drawunit/vga_controller/Madd_line_addsub0000_xor<6>  (
    .I0(\drawunit/vga_controller/Madd_line_addsub0000_cy [5]),
    .I1(\drawunit/vga_controller/Madd_line_addsub0000_cy<6>_rt_982 ),
    .O(\drawunit/vga_controller/line_addsub0000 [6])
  );
  X_MUX2   \drawunit/vga_controller/Madd_line_addsub0000_cy<7>  (
    .IB(\drawunit/vga_controller/Madd_line_addsub0000_cy [6]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_line_addsub0000_cy<7>_rt_984 ),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [7])
  );
  X_XOR2   \drawunit/vga_controller/Madd_line_addsub0000_xor<7>  (
    .I0(\drawunit/vga_controller/Madd_line_addsub0000_cy [6]),
    .I1(\drawunit/vga_controller/Madd_line_addsub0000_cy<7>_rt_984 ),
    .O(\drawunit/vga_controller/line_addsub0000 [7])
  );
  X_XOR2   \drawunit/vga_controller/Madd_line_addsub0000_xor<8>  (
    .I0(\drawunit/vga_controller/Madd_line_addsub0000_cy [7]),
    .I1(\drawunit/vga_controller/Madd_line_addsub0000_xor<8>_rt_986 ),
    .O(\drawunit/vga_controller/line_addsub0000 [8])
  );
  X_MUX2   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<0>  (
    .IB(N0),
    .IA(N1),
    .SEL(\drawunit/vga_controller/Madd_pixCount_addsub0000_lut [0]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [0])
  );
  X_XOR2   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<0>  (
    .I0(N0),
    .I1(\drawunit/vga_controller/Madd_pixCount_addsub0000_lut [0]),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [0])
  );
  X_MUX2   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<1>  (
    .IB(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [0]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<1>_rt_1008 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [1])
  );
  X_XOR2   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<1>  (
    .I0(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [0]),
    .I1(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<1>_rt_1008 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [1])
  );
  X_MUX2   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<2>  (
    .IB(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [1]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<2>_rt_1010 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [2])
  );
  X_XOR2   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<2>  (
    .I0(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [1]),
    .I1(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<2>_rt_1010 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [2])
  );
  X_MUX2   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<3>  (
    .IB(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [2]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<3>_rt_1012 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [3])
  );
  X_XOR2   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<3>  (
    .I0(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [2]),
    .I1(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<3>_rt_1012 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [3])
  );
  X_MUX2   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<4>  (
    .IB(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [3]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<4>_rt_1014 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [4])
  );
  X_XOR2   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<4>  (
    .I0(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [3]),
    .I1(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<4>_rt_1014 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [4])
  );
  X_MUX2   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<5>  (
    .IB(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [4]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<5>_rt_1016 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [5])
  );
  X_XOR2   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<5>  (
    .I0(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [4]),
    .I1(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<5>_rt_1016 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [5])
  );
  X_MUX2   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<6>  (
    .IB(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [5]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<6>_rt_1018 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [6])
  );
  X_XOR2   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<6>  (
    .I0(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [5]),
    .I1(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<6>_rt_1018 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [6])
  );
  X_MUX2   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<7>  (
    .IB(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [6]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<7>_rt_1020 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [7])
  );
  X_XOR2   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<7>  (
    .I0(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [6]),
    .I1(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<7>_rt_1020 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [7])
  );
  X_MUX2   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<8>  (
    .IB(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [7]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<8>_rt_1022 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [8])
  );
  X_XOR2   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<8>  (
    .I0(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [7]),
    .I1(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<8>_rt_1022 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [8])
  );
  X_XOR2   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<9>  (
    .I0(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [8]),
    .I1(\drawunit/vga_controller/Madd_pixCount_addsub0000_xor<9>_rt_1024 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [9])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<0>  (
    .IB(N0),
    .IA(N1),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_lut [0]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [0])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<0>  (
    .I0(N0),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_lut [0]),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [0])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<1>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [0]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<1>_rt_1045 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [1])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<1>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [0]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<1>_rt_1045 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [1])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<2>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [1]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<2>_rt_1047 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [2])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<2>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [1]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<2>_rt_1047 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [2])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<3>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [2]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<3>_rt_1049 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [3])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<3>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [2]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<3>_rt_1049 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [3])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<4>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [3]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<4>_rt_1051 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [4])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<4>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [3]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<4>_rt_1051 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [4])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<5>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [4]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<5>_rt_1053 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [5])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<5>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [4]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<5>_rt_1053 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [5])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<6>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [5]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<6>_rt_1055 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [6])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<6>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [5]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<6>_rt_1055 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [6])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<7>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [6]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<7>_rt_1057 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [7])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<7>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [6]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<7>_rt_1057 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [7])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<8>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [7]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<8>_rt_1059 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [8])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<8>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [7]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<8>_rt_1059 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [8])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<9>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [8]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<9>_rt_1061 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [9])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<9>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [8]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<9>_rt_1061 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [9])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<10>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [9]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<10>_rt_1027 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [10])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<10>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [9]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<10>_rt_1027 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [10])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<11>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [10]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<11>_rt_1029 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [11])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<11>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [10]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<11>_rt_1029 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [11])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<12>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [11]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<12>_rt_1031 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [12])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<12>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [11]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<12>_rt_1031 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [12])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<13>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [12]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<13>_rt_1033 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [13])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<13>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [12]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<13>_rt_1033 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [13])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<14>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [13]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<14>_rt_1035 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [14])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<14>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [13]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<14>_rt_1035 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [14])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<15>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [14]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<15>_rt_1037 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [15])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<15>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [14]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<15>_rt_1037 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [15])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<16>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [15]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<16>_rt_1039 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [16])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<16>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [15]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<16>_rt_1039 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [16])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<17>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [16]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<17>_rt_1041 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [17])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<17>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [16]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<17>_rt_1041 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [17])
  );
  X_MUX2   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<18>  (
    .IB(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [17]),
    .IA(N0),
    .SEL(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<18>_rt_1043 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [18])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<18>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [17]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<18>_rt_1043 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [18])
  );
  X_XOR2   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<19>  (
    .I0(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [18]),
    .I1(\drawunit/vga_controller/Madd_totalPix_addsub0000_xor<19>_rt_1063 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [19])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_19  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [0]),
    .O(\drawunit/vga_controller/totalPix [19]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_18  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [1]),
    .O(\drawunit/vga_controller/totalPix [18]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_16  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [3]),
    .O(\drawunit/vga_controller/totalPix [16]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_15  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [4]),
    .O(\drawunit/vga_controller/totalPix [15]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_17  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [2]),
    .O(\drawunit/vga_controller/totalPix [17]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_14  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [5]),
    .O(\drawunit/vga_controller/totalPix [14]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_13  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [6]),
    .O(\drawunit/vga_controller/totalPix [13]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_11  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [8]),
    .O(\drawunit/vga_controller/totalPix [11]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_10  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [9]),
    .O(\drawunit/vga_controller/totalPix [10]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_12  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [7]),
    .O(\drawunit/vga_controller/totalPix [12]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_9  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [10]),
    .O(\drawunit/vga_controller/totalPix [9]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_8  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [11]),
    .O(\drawunit/vga_controller/totalPix [8]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_6  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [13]),
    .O(\drawunit/vga_controller/totalPix [6]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_5  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [14]),
    .O(\drawunit/vga_controller/totalPix [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_7  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [12]),
    .O(\drawunit/vga_controller/totalPix [7]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_4  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [15]),
    .O(\drawunit/vga_controller/totalPix [4]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_3  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [16]),
    .O(\drawunit/vga_controller/totalPix [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_1  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [18]),
    .O(\drawunit/vga_controller/totalPix [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \drawunit/vga_controller/totalPix_0  (
    .CLK(vgaClk_1305),
    .I(\drawunit/vga_controller/totalPix_mux0000 [19]),
    .SET(reset_IBUF_1299),
    .O(\drawunit/vga_controller/totalPix [0]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/totalPix_2  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/totalPix_mux0000 [17]),
    .O(\drawunit/vga_controller/totalPix [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/pixCount_9  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/pixCount_mux0000 [0]),
    .O(\drawunit/vga_controller/pixCount [9]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/pixCount_8  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/pixCount_mux0000 [1]),
    .O(\drawunit/vga_controller/pixCount [8]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/pixCount_6  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/pixCount_mux0000 [3]),
    .O(\drawunit/vga_controller/pixCount [6]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/pixCount_5  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/pixCount_mux0000 [4]),
    .O(\drawunit/vga_controller/pixCount [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/pixCount_7  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/pixCount_mux0000 [2]),
    .O(\drawunit/vga_controller/pixCount [7]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/pixCount_4  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/pixCount_mux0000 [5]),
    .O(\drawunit/vga_controller/pixCount [4]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/pixCount_3  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/pixCount_mux0000 [6]),
    .O(\drawunit/vga_controller/pixCount [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/pixCount_1  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/pixCount_mux0000 [8]),
    .O(\drawunit/vga_controller/pixCount [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \drawunit/vga_controller/pixCount_0  (
    .CLK(vgaClk_1305),
    .I(\drawunit/vga_controller/pixCount_mux0000 [9]),
    .SET(reset_IBUF_1299),
    .O(\drawunit/vga_controller/pixCount [0]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/vga_controller/pixCount_2  (
    .CLK(vgaClk_1305),
    .RST(reset_IBUF_1299),
    .I(\drawunit/vga_controller/pixCount_mux0000 [7]),
    .O(\drawunit/vga_controller/pixCount [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \drawunit/painter/newline  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/newline_not0001 ),
    .I(\drawunit/painter/newline_mux0000 ),
    .SSET(reset_IBUF_1299),
    .O(\drawunit/painter/newline_675 ),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/addr_0  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/addr_mux0000 [14]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/addr [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/addr_1  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/addr_mux0000 [13]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/addr [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/addr_2  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/addr_mux0000 [12]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/addr [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/addr_3  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/addr_mux0000 [11]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/addr [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/addr_4  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/addr_mux0000 [10]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/addr [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/addr_5  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/addr_mux0000 [9]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/addr [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/addr_6  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/addr_mux0000 [8]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/addr [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/addr_7  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/addr_mux0000 [7]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/addr [7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/addr_8  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/addr_mux0000 [6]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/addr [8]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/addr_9  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/addr_mux0000 [5]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/addr [9]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/addr_10  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/addr_mux0000 [4]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/addr [10]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/addr_11  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/addr_mux0000 [3]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/addr [11]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/addr_12  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/addr_mux0000 [2]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/addr [12]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/addr_13  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/addr_mux0000 [1]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/addr [13]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/addr_14  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/addr_mux0000 [0]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/addr [14]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/data_0  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/data_not0001 ),
    .I(\drawunit/queue/rdData [23]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/data [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/data_1  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/data_not0001 ),
    .I(\drawunit/queue/rdData [24]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/data [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/data_2  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/data_not0001 ),
    .I(\drawunit/queue/rdData [25]),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/data [2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/we  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/we_mux0000 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/we_717 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/re  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/re_mux0000 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/re_678 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/swapBuffersCommand  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/swapBuffersCommand_mux0000 ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/swapBuffersCommand_713 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/left_0  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [8]),
    .O(\drawunit/painter/left [0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/left_1  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [9]),
    .O(\drawunit/painter/left [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/left_2  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [10]),
    .O(\drawunit/painter/left [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/left_3  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [11]),
    .O(\drawunit/painter/left [3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/left_4  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [12]),
    .O(\drawunit/painter/left [4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/left_5  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [13]),
    .O(\drawunit/painter/left [5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/left_6  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [14]),
    .O(\drawunit/painter/left [6]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/left_7  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [15]),
    .O(\drawunit/painter/left [7]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/right_0  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [0]),
    .O(\drawunit/painter/right [0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/right_1  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [1]),
    .O(\drawunit/painter/right [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/right_2  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [2]),
    .O(\drawunit/painter/right [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/right_3  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [3]),
    .O(\drawunit/painter/right [3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/right_4  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [4]),
    .O(\drawunit/painter/right [4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/right_5  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [5]),
    .O(\drawunit/painter/right [5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/right_6  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [6]),
    .O(\drawunit/painter/right [6]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/right_7  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/painter/line_not0001 ),
    .I(\drawunit/queue/rdData [7]),
    .O(\drawunit/painter/right [7]),
    .SET(GND),
    .RST(GND)
  );
  X_MULT18X18SIO #(
    .B_INPUT ( "DIRECT" ),
    .AREG ( 1 ),
    .BREG ( 0 ),
    .PREG ( 0 ))
  \drawunit/painter/Mmult_add0000_mult0000  (
    .CEA(\drawunit/painter/line_not0001 ),
    .CEB(N0),
    .CEP(N0),
    .CLK(clk_BUFGP),
    .RSTA(N0),
    .RSTB(N0),
    .RSTP(N0),
    .A({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, \drawunit/queue/rdData [22], \drawunit/queue/rdData [21], \drawunit/queue/rdData [20], 
\drawunit/queue/rdData [19], \drawunit/queue/rdData [18], \drawunit/queue/rdData [17], \drawunit/queue/rdData [16]}),
    .B({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N1, N0, N1, N0, N0, N0, N0, N0}),
    .BCIN({\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[17]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[16]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[15]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[14]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[13]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[12]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[11]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[10]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[9]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[8]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[7]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[6]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[5]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[4]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[3]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[2]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[1]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN[0]_UNCONNECTED }),
    .P({\NLW_drawunit/painter/Mmult_add0000_mult0000_P[35]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P[34]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P[33]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P[32]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P[31]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P[30]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P[29]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P[28]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P[27]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P[26]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P[25]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P[24]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P[23]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P[22]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P[21]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P[20]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P[19]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P[18]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P[17]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P[16]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P[15]_UNCONNECTED , \drawunit/painter/add0000_mult0000 [14], \drawunit/painter/add0000_mult0000 [13], 
\drawunit/painter/add0000_mult0000 [12], \drawunit/painter/add0000_mult0000 [11], \drawunit/painter/add0000_mult0000 [10], 
\drawunit/painter/add0000_mult0000 [9], \drawunit/painter/add0000_mult0000 [8], \drawunit/painter/add0000_mult0000 [7], 
\drawunit/painter/add0000_mult0000 [6], \drawunit/painter/add0000_mult0000 [5], \drawunit/painter/add0000_mult0000 [4], 
\drawunit/painter/add0000_mult0000 [3], \drawunit/painter/add0000_mult0000 [2], \drawunit/painter/add0000_mult0000 [1], 
\drawunit/painter/add0000_mult0000 [0]}),
    .BCOUT({\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[17]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[16]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[15]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[14]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[13]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[12]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[11]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[10]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[9]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[8]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[7]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[6]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[5]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[4]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[3]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[2]_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[1]_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT[0]_UNCONNECTED })
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<0>  (
    .ADR0(\drawunit/painter/right [0]),
    .ADR1(\drawunit/painter/add0000_mult0000 [0]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [0])
  );
  X_MUX2   \drawunit/painter/Madd_add0000_addsub0000_cy<0>  (
    .IB(N0),
    .IA(\drawunit/painter/add0000_mult0000 [0]),
    .SEL(\drawunit/painter/Madd_add0000_addsub0000_lut [0]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [0])
  );
  X_XOR2   \drawunit/painter/Madd_add0000_addsub0000_xor<0>  (
    .I0(N0),
    .I1(\drawunit/painter/Madd_add0000_addsub0000_lut [0]),
    .O(\drawunit/painter/add0000_addsub0000 [0])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<1>  (
    .ADR0(\drawunit/painter/right [1]),
    .ADR1(\drawunit/painter/add0000_mult0000 [1]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [1])
  );
  X_MUX2   \drawunit/painter/Madd_add0000_addsub0000_cy<1>  (
    .IB(\drawunit/painter/Madd_add0000_addsub0000_cy [0]),
    .IA(\drawunit/painter/add0000_mult0000 [1]),
    .SEL(\drawunit/painter/Madd_add0000_addsub0000_lut [1]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [1])
  );
  X_XOR2   \drawunit/painter/Madd_add0000_addsub0000_xor<1>  (
    .I0(\drawunit/painter/Madd_add0000_addsub0000_cy [0]),
    .I1(\drawunit/painter/Madd_add0000_addsub0000_lut [1]),
    .O(\drawunit/painter/add0000_addsub0000 [1])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<2>  (
    .ADR0(\drawunit/painter/right [2]),
    .ADR1(\drawunit/painter/add0000_mult0000 [2]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [2])
  );
  X_MUX2   \drawunit/painter/Madd_add0000_addsub0000_cy<2>  (
    .IB(\drawunit/painter/Madd_add0000_addsub0000_cy [1]),
    .IA(\drawunit/painter/add0000_mult0000 [2]),
    .SEL(\drawunit/painter/Madd_add0000_addsub0000_lut [2]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [2])
  );
  X_XOR2   \drawunit/painter/Madd_add0000_addsub0000_xor<2>  (
    .I0(\drawunit/painter/Madd_add0000_addsub0000_cy [1]),
    .I1(\drawunit/painter/Madd_add0000_addsub0000_lut [2]),
    .O(\drawunit/painter/add0000_addsub0000 [2])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<3>  (
    .ADR0(\drawunit/painter/right [3]),
    .ADR1(\drawunit/painter/add0000_mult0000 [3]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [3])
  );
  X_MUX2   \drawunit/painter/Madd_add0000_addsub0000_cy<3>  (
    .IB(\drawunit/painter/Madd_add0000_addsub0000_cy [2]),
    .IA(\drawunit/painter/add0000_mult0000 [3]),
    .SEL(\drawunit/painter/Madd_add0000_addsub0000_lut [3]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [3])
  );
  X_XOR2   \drawunit/painter/Madd_add0000_addsub0000_xor<3>  (
    .I0(\drawunit/painter/Madd_add0000_addsub0000_cy [2]),
    .I1(\drawunit/painter/Madd_add0000_addsub0000_lut [3]),
    .O(\drawunit/painter/add0000_addsub0000 [3])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<4>  (
    .ADR0(\drawunit/painter/right [4]),
    .ADR1(\drawunit/painter/add0000_mult0000 [4]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [4])
  );
  X_MUX2   \drawunit/painter/Madd_add0000_addsub0000_cy<4>  (
    .IB(\drawunit/painter/Madd_add0000_addsub0000_cy [3]),
    .IA(\drawunit/painter/add0000_mult0000 [4]),
    .SEL(\drawunit/painter/Madd_add0000_addsub0000_lut [4]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [4])
  );
  X_XOR2   \drawunit/painter/Madd_add0000_addsub0000_xor<4>  (
    .I0(\drawunit/painter/Madd_add0000_addsub0000_cy [3]),
    .I1(\drawunit/painter/Madd_add0000_addsub0000_lut [4]),
    .O(\drawunit/painter/add0000_addsub0000 [4])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<5>  (
    .ADR0(\drawunit/painter/right [5]),
    .ADR1(\drawunit/painter/add0000_mult0000 [5]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [5])
  );
  X_MUX2   \drawunit/painter/Madd_add0000_addsub0000_cy<5>  (
    .IB(\drawunit/painter/Madd_add0000_addsub0000_cy [4]),
    .IA(\drawunit/painter/add0000_mult0000 [5]),
    .SEL(\drawunit/painter/Madd_add0000_addsub0000_lut [5]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [5])
  );
  X_XOR2   \drawunit/painter/Madd_add0000_addsub0000_xor<5>  (
    .I0(\drawunit/painter/Madd_add0000_addsub0000_cy [4]),
    .I1(\drawunit/painter/Madd_add0000_addsub0000_lut [5]),
    .O(\drawunit/painter/add0000_addsub0000 [5])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<6>  (
    .ADR0(\drawunit/painter/right [6]),
    .ADR1(\drawunit/painter/add0000_mult0000 [6]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [6])
  );
  X_MUX2   \drawunit/painter/Madd_add0000_addsub0000_cy<6>  (
    .IB(\drawunit/painter/Madd_add0000_addsub0000_cy [5]),
    .IA(\drawunit/painter/add0000_mult0000 [6]),
    .SEL(\drawunit/painter/Madd_add0000_addsub0000_lut [6]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [6])
  );
  X_XOR2   \drawunit/painter/Madd_add0000_addsub0000_xor<6>  (
    .I0(\drawunit/painter/Madd_add0000_addsub0000_cy [5]),
    .I1(\drawunit/painter/Madd_add0000_addsub0000_lut [6]),
    .O(\drawunit/painter/add0000_addsub0000 [6])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<7>  (
    .ADR0(\drawunit/painter/right [7]),
    .ADR1(\drawunit/painter/add0000_mult0000 [7]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [7])
  );
  X_MUX2   \drawunit/painter/Madd_add0000_addsub0000_cy<7>  (
    .IB(\drawunit/painter/Madd_add0000_addsub0000_cy [6]),
    .IA(\drawunit/painter/add0000_mult0000 [7]),
    .SEL(\drawunit/painter/Madd_add0000_addsub0000_lut [7]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [7])
  );
  X_XOR2   \drawunit/painter/Madd_add0000_addsub0000_xor<7>  (
    .I0(\drawunit/painter/Madd_add0000_addsub0000_cy [6]),
    .I1(\drawunit/painter/Madd_add0000_addsub0000_lut [7]),
    .O(\drawunit/painter/add0000_addsub0000 [7])
  );
  X_MUX2   \drawunit/painter/Madd_add0000_addsub0000_cy<8>  (
    .IB(\drawunit/painter/Madd_add0000_addsub0000_cy [7]),
    .IA(N0),
    .SEL(\drawunit/painter/Madd_add0000_addsub0000_cy<8>_rt_439 ),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [8])
  );
  X_XOR2   \drawunit/painter/Madd_add0000_addsub0000_xor<8>  (
    .I0(\drawunit/painter/Madd_add0000_addsub0000_cy [7]),
    .I1(\drawunit/painter/Madd_add0000_addsub0000_cy<8>_rt_439 ),
    .O(\drawunit/painter/add0000_addsub0000 [8])
  );
  X_MUX2   \drawunit/painter/Madd_add0000_addsub0000_cy<9>  (
    .IB(\drawunit/painter/Madd_add0000_addsub0000_cy [8]),
    .IA(N0),
    .SEL(\drawunit/painter/Madd_add0000_addsub0000_cy<9>_rt_441 ),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [9])
  );
  X_XOR2   \drawunit/painter/Madd_add0000_addsub0000_xor<9>  (
    .I0(\drawunit/painter/Madd_add0000_addsub0000_cy [8]),
    .I1(\drawunit/painter/Madd_add0000_addsub0000_cy<9>_rt_441 ),
    .O(\drawunit/painter/add0000_addsub0000 [9])
  );
  X_MUX2   \drawunit/painter/Madd_add0000_addsub0000_cy<10>  (
    .IB(\drawunit/painter/Madd_add0000_addsub0000_cy [9]),
    .IA(N0),
    .SEL(\drawunit/painter/Madd_add0000_addsub0000_cy<10>_rt_423 ),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [10])
  );
  X_XOR2   \drawunit/painter/Madd_add0000_addsub0000_xor<10>  (
    .I0(\drawunit/painter/Madd_add0000_addsub0000_cy [9]),
    .I1(\drawunit/painter/Madd_add0000_addsub0000_cy<10>_rt_423 ),
    .O(\drawunit/painter/add0000_addsub0000 [10])
  );
  X_MUX2   \drawunit/painter/Madd_add0000_addsub0000_cy<11>  (
    .IB(\drawunit/painter/Madd_add0000_addsub0000_cy [10]),
    .IA(N0),
    .SEL(\drawunit/painter/Madd_add0000_addsub0000_cy<11>_rt_425 ),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [11])
  );
  X_XOR2   \drawunit/painter/Madd_add0000_addsub0000_xor<11>  (
    .I0(\drawunit/painter/Madd_add0000_addsub0000_cy [10]),
    .I1(\drawunit/painter/Madd_add0000_addsub0000_cy<11>_rt_425 ),
    .O(\drawunit/painter/add0000_addsub0000 [11])
  );
  X_MUX2   \drawunit/painter/Madd_add0000_addsub0000_cy<12>  (
    .IB(\drawunit/painter/Madd_add0000_addsub0000_cy [11]),
    .IA(N0),
    .SEL(\drawunit/painter/Madd_add0000_addsub0000_cy<12>_rt_427 ),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [12])
  );
  X_XOR2   \drawunit/painter/Madd_add0000_addsub0000_xor<12>  (
    .I0(\drawunit/painter/Madd_add0000_addsub0000_cy [11]),
    .I1(\drawunit/painter/Madd_add0000_addsub0000_cy<12>_rt_427 ),
    .O(\drawunit/painter/add0000_addsub0000 [12])
  );
  X_MUX2   \drawunit/painter/Madd_add0000_addsub0000_cy<13>  (
    .IB(\drawunit/painter/Madd_add0000_addsub0000_cy [12]),
    .IA(N0),
    .SEL(\drawunit/painter/Madd_add0000_addsub0000_cy<13>_rt_429 ),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [13])
  );
  X_XOR2   \drawunit/painter/Madd_add0000_addsub0000_xor<13>  (
    .I0(\drawunit/painter/Madd_add0000_addsub0000_cy [12]),
    .I1(\drawunit/painter/Madd_add0000_addsub0000_cy<13>_rt_429 ),
    .O(\drawunit/painter/add0000_addsub0000 [13])
  );
  X_MUX2   \drawunit/painter/Madd_add0000_addsub0000_cy<14>  (
    .IB(\drawunit/painter/Madd_add0000_addsub0000_cy [13]),
    .IA(N0),
    .SEL(\drawunit/painter/Madd_add0000_addsub0000_cy<14>_rt_430 ),
    .O(\drawunit/painter/Madd_add0000_index0000 )
  );
  X_XOR2   \drawunit/painter/Madd_add0000_addsub0000_xor<14>  (
    .I0(\drawunit/painter/Madd_add0000_addsub0000_cy [13]),
    .I1(\drawunit/painter/Madd_add0000_addsub0000_cy<14>_rt_430 ),
    .O(\drawunit/painter/add0000_addsub0000 [14])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<0>  (
    .ADR0(\drawunit/painter/left [0]),
    .ADR1(\drawunit/painter/right [0]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [0])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_le0000_cy<0>  (
    .IB(N1),
    .IA(\drawunit/painter/left [0]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_le0000_lut [0]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_cy [0])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<1>  (
    .ADR0(\drawunit/painter/left [1]),
    .ADR1(\drawunit/painter/right [1]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [1])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_le0000_cy<1>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_le0000_cy [0]),
    .IA(\drawunit/painter/left [1]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_le0000_lut [1]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_cy [1])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<2>  (
    .ADR0(\drawunit/painter/left [2]),
    .ADR1(\drawunit/painter/right [2]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [2])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_le0000_cy<2>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_le0000_cy [1]),
    .IA(\drawunit/painter/left [2]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_le0000_lut [2]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_cy [2])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<3>  (
    .ADR0(\drawunit/painter/left [3]),
    .ADR1(\drawunit/painter/right [3]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [3])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_le0000_cy<3>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_le0000_cy [2]),
    .IA(\drawunit/painter/left [3]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_le0000_lut [3]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_cy [3])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<4>  (
    .ADR0(\drawunit/painter/left [4]),
    .ADR1(\drawunit/painter/right [4]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [4])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_le0000_cy<4>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_le0000_cy [3]),
    .IA(\drawunit/painter/left [4]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_le0000_lut [4]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_cy [4])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<5>  (
    .ADR0(\drawunit/painter/left [5]),
    .ADR1(\drawunit/painter/right [5]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [5])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_le0000_cy<5>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_le0000_cy [4]),
    .IA(\drawunit/painter/left [5]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_le0000_lut [5]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_cy [5])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<6>  (
    .ADR0(\drawunit/painter/left [6]),
    .ADR1(\drawunit/painter/right [6]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [6])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_le0000_cy<6>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_le0000_cy [5]),
    .IA(\drawunit/painter/left [6]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_le0000_lut [6]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_cy [6])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<7>  (
    .ADR0(\drawunit/painter/left [7]),
    .ADR1(\drawunit/painter/right [7]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [7])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_le0000_cy<7>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_le0000_cy [6]),
    .IA(\drawunit/painter/left [7]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_le0000_lut [7]),
    .O(\drawunit/painter/state_cmp_le0000 )
  );
  X_MUX2   \drawunit/painter/Madd_addr_addsub0000_cy<0>  (
    .IB(N0),
    .IA(\drawunit/painter/addr_mux0001 [0]),
    .SEL(\drawunit/painter/Madd_addr_addsub0000_lut [0]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [0])
  );
  X_XOR2   \drawunit/painter/Madd_addr_addsub0000_xor<0>  (
    .I0(N0),
    .I1(\drawunit/painter/Madd_addr_addsub0000_lut [0]),
    .O(\drawunit/painter/addr_addsub0000 [0])
  );
  X_AND2   \drawunit/painter/addr_mux0001<1>_mand  (
    .I0(\drawunit/painter/newline_675 ),
    .I1(\drawunit/painter/left [1]),
    .O(\drawunit/painter/addr_mux0001<1>_mand1 )
  );
  X_MUX2   \drawunit/painter/Madd_addr_addsub0000_cy<1>  (
    .IB(\drawunit/painter/Madd_addr_addsub0000_cy [0]),
    .IA(\drawunit/painter/addr_mux0001<1>_mand1 ),
    .SEL(\drawunit/painter/Madd_addr_addsub0000_lut [1]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [1])
  );
  X_XOR2   \drawunit/painter/Madd_addr_addsub0000_xor<1>  (
    .I0(\drawunit/painter/Madd_addr_addsub0000_cy [0]),
    .I1(\drawunit/painter/Madd_addr_addsub0000_lut [1]),
    .O(\drawunit/painter/addr_addsub0000 [1])
  );
  X_AND2   \drawunit/painter/addr_mux0001<2>_mand  (
    .I0(\drawunit/painter/newline_675 ),
    .I1(\drawunit/painter/left [2]),
    .O(\drawunit/painter/addr_mux0001<2>_mand1 )
  );
  X_MUX2   \drawunit/painter/Madd_addr_addsub0000_cy<2>  (
    .IB(\drawunit/painter/Madd_addr_addsub0000_cy [1]),
    .IA(\drawunit/painter/addr_mux0001<2>_mand1 ),
    .SEL(\drawunit/painter/Madd_addr_addsub0000_lut [2]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [2])
  );
  X_XOR2   \drawunit/painter/Madd_addr_addsub0000_xor<2>  (
    .I0(\drawunit/painter/Madd_addr_addsub0000_cy [1]),
    .I1(\drawunit/painter/Madd_addr_addsub0000_lut [2]),
    .O(\drawunit/painter/addr_addsub0000 [2])
  );
  X_AND2   \drawunit/painter/addr_mux0001<3>_mand  (
    .I0(\drawunit/painter/newline_675 ),
    .I1(\drawunit/painter/left [3]),
    .O(\drawunit/painter/addr_mux0001<3>_mand1 )
  );
  X_MUX2   \drawunit/painter/Madd_addr_addsub0000_cy<3>  (
    .IB(\drawunit/painter/Madd_addr_addsub0000_cy [2]),
    .IA(\drawunit/painter/addr_mux0001<3>_mand1 ),
    .SEL(\drawunit/painter/Madd_addr_addsub0000_lut [3]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [3])
  );
  X_XOR2   \drawunit/painter/Madd_addr_addsub0000_xor<3>  (
    .I0(\drawunit/painter/Madd_addr_addsub0000_cy [2]),
    .I1(\drawunit/painter/Madd_addr_addsub0000_lut [3]),
    .O(\drawunit/painter/addr_addsub0000 [3])
  );
  X_AND2   \drawunit/painter/addr_mux0001<4>_mand  (
    .I0(\drawunit/painter/newline_675 ),
    .I1(\drawunit/painter/left [4]),
    .O(\drawunit/painter/addr_mux0001<4>_mand1 )
  );
  X_MUX2   \drawunit/painter/Madd_addr_addsub0000_cy<4>  (
    .IB(\drawunit/painter/Madd_addr_addsub0000_cy [3]),
    .IA(\drawunit/painter/addr_mux0001<4>_mand1 ),
    .SEL(\drawunit/painter/Madd_addr_addsub0000_lut [4]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [4])
  );
  X_XOR2   \drawunit/painter/Madd_addr_addsub0000_xor<4>  (
    .I0(\drawunit/painter/Madd_addr_addsub0000_cy [3]),
    .I1(\drawunit/painter/Madd_addr_addsub0000_lut [4]),
    .O(\drawunit/painter/addr_addsub0000 [4])
  );
  X_AND2   \drawunit/painter/addr_mux0001<5>_mand  (
    .I0(\drawunit/painter/newline_675 ),
    .I1(\drawunit/painter/left [5]),
    .O(\drawunit/painter/addr_mux0001<5>_mand1 )
  );
  X_MUX2   \drawunit/painter/Madd_addr_addsub0000_cy<5>  (
    .IB(\drawunit/painter/Madd_addr_addsub0000_cy [4]),
    .IA(\drawunit/painter/addr_mux0001<5>_mand1 ),
    .SEL(\drawunit/painter/Madd_addr_addsub0000_lut [5]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [5])
  );
  X_XOR2   \drawunit/painter/Madd_addr_addsub0000_xor<5>  (
    .I0(\drawunit/painter/Madd_addr_addsub0000_cy [4]),
    .I1(\drawunit/painter/Madd_addr_addsub0000_lut [5]),
    .O(\drawunit/painter/addr_addsub0000 [5])
  );
  X_AND2   \drawunit/painter/addr_mux0001<6>_mand  (
    .I0(\drawunit/painter/newline_675 ),
    .I1(\drawunit/painter/left [6]),
    .O(\drawunit/painter/addr_mux0001<6>_mand1 )
  );
  X_MUX2   \drawunit/painter/Madd_addr_addsub0000_cy<6>  (
    .IB(\drawunit/painter/Madd_addr_addsub0000_cy [5]),
    .IA(\drawunit/painter/addr_mux0001<6>_mand1 ),
    .SEL(\drawunit/painter/Madd_addr_addsub0000_lut [6]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [6])
  );
  X_XOR2   \drawunit/painter/Madd_addr_addsub0000_xor<6>  (
    .I0(\drawunit/painter/Madd_addr_addsub0000_cy [5]),
    .I1(\drawunit/painter/Madd_addr_addsub0000_lut [6]),
    .O(\drawunit/painter/addr_addsub0000 [6])
  );
  X_AND2   \drawunit/painter/addr_mux0001<7>_mand  (
    .I0(\drawunit/painter/newline_675 ),
    .I1(\drawunit/painter/left [7]),
    .O(\drawunit/painter/addr_mux0001<7>_mand1 )
  );
  X_MUX2   \drawunit/painter/Madd_addr_addsub0000_cy<7>  (
    .IB(\drawunit/painter/Madd_addr_addsub0000_cy [6]),
    .IA(\drawunit/painter/addr_mux0001<7>_mand1 ),
    .SEL(\drawunit/painter/Madd_addr_addsub0000_lut [7]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [7])
  );
  X_XOR2   \drawunit/painter/Madd_addr_addsub0000_xor<7>  (
    .I0(\drawunit/painter/Madd_addr_addsub0000_cy [6]),
    .I1(\drawunit/painter/Madd_addr_addsub0000_lut [7]),
    .O(\drawunit/painter/addr_addsub0000 [7])
  );
  X_MUX2   \drawunit/painter/Madd_addr_addsub0000_cy<8>  (
    .IB(\drawunit/painter/Madd_addr_addsub0000_cy [7]),
    .IA(N0),
    .SEL(\drawunit/painter/addr_mux0002 [8]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [8])
  );
  X_XOR2   \drawunit/painter/Madd_addr_addsub0000_xor<8>  (
    .I0(\drawunit/painter/Madd_addr_addsub0000_cy [7]),
    .I1(\drawunit/painter/addr_mux0002 [8]),
    .O(\drawunit/painter/addr_addsub0000 [8])
  );
  X_MUX2   \drawunit/painter/Madd_addr_addsub0000_cy<9>  (
    .IB(\drawunit/painter/Madd_addr_addsub0000_cy [8]),
    .IA(N0),
    .SEL(\drawunit/painter/addr_mux0002 [9]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [9])
  );
  X_XOR2   \drawunit/painter/Madd_addr_addsub0000_xor<9>  (
    .I0(\drawunit/painter/Madd_addr_addsub0000_cy [8]),
    .I1(\drawunit/painter/addr_mux0002 [9]),
    .O(\drawunit/painter/addr_addsub0000 [9])
  );
  X_MUX2   \drawunit/painter/Madd_addr_addsub0000_cy<10>  (
    .IB(\drawunit/painter/Madd_addr_addsub0000_cy [9]),
    .IA(N0),
    .SEL(\drawunit/painter/addr_mux0002 [10]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [10])
  );
  X_XOR2   \drawunit/painter/Madd_addr_addsub0000_xor<10>  (
    .I0(\drawunit/painter/Madd_addr_addsub0000_cy [9]),
    .I1(\drawunit/painter/addr_mux0002 [10]),
    .O(\drawunit/painter/addr_addsub0000 [10])
  );
  X_MUX2   \drawunit/painter/Madd_addr_addsub0000_cy<11>  (
    .IB(\drawunit/painter/Madd_addr_addsub0000_cy [10]),
    .IA(N0),
    .SEL(\drawunit/painter/addr_mux0002 [11]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [11])
  );
  X_XOR2   \drawunit/painter/Madd_addr_addsub0000_xor<11>  (
    .I0(\drawunit/painter/Madd_addr_addsub0000_cy [10]),
    .I1(\drawunit/painter/addr_mux0002 [11]),
    .O(\drawunit/painter/addr_addsub0000 [11])
  );
  X_MUX2   \drawunit/painter/Madd_addr_addsub0000_cy<12>  (
    .IB(\drawunit/painter/Madd_addr_addsub0000_cy [11]),
    .IA(N0),
    .SEL(\drawunit/painter/addr_mux0002 [12]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [12])
  );
  X_XOR2   \drawunit/painter/Madd_addr_addsub0000_xor<12>  (
    .I0(\drawunit/painter/Madd_addr_addsub0000_cy [11]),
    .I1(\drawunit/painter/addr_mux0002 [12]),
    .O(\drawunit/painter/addr_addsub0000 [12])
  );
  X_MUX2   \drawunit/painter/Madd_addr_addsub0000_cy<13>  (
    .IB(\drawunit/painter/Madd_addr_addsub0000_cy [12]),
    .IA(N0),
    .SEL(\drawunit/painter/addr_mux0002 [13]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [13])
  );
  X_XOR2   \drawunit/painter/Madd_addr_addsub0000_xor<13>  (
    .I0(\drawunit/painter/Madd_addr_addsub0000_cy [12]),
    .I1(\drawunit/painter/addr_mux0002 [13]),
    .O(\drawunit/painter/addr_addsub0000 [13])
  );
  X_XOR2   \drawunit/painter/Madd_addr_addsub0000_xor<14>  (
    .I0(\drawunit/painter/Madd_addr_addsub0000_cy [13]),
    .I1(\drawunit/painter/addr_mux0002 [14]),
    .O(\drawunit/painter/addr_addsub0000 [14])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<0>  (
    .IB(N1),
    .IA(N0),
    .SEL(\drawunit/painter/Msub__sub0000_cy<0>_rt_520 ),
    .O(\drawunit/painter/Msub__sub0000_cy [0])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<0>  (
    .I0(N1),
    .I1(\drawunit/painter/Msub__sub0000_cy<0>_rt_520 ),
    .O(\drawunit/painter/_sub0000 [0])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<1>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [0]),
    .IA(N1),
    .SEL(\drawunit/painter/Msub__sub0000_lut [1]),
    .O(\drawunit/painter/Msub__sub0000_cy [1])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<1>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [0]),
    .I1(\drawunit/painter/Msub__sub0000_lut [1]),
    .O(\drawunit/painter/_sub0000 [1])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<2>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [1]),
    .IA(N1),
    .SEL(\drawunit/painter/Msub__sub0000_lut [2]),
    .O(\drawunit/painter/Msub__sub0000_cy [2])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<2>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [1]),
    .I1(\drawunit/painter/Msub__sub0000_lut [2]),
    .O(\drawunit/painter/_sub0000 [2])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<3>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [2]),
    .IA(N1),
    .SEL(\drawunit/painter/Msub__sub0000_lut [3]),
    .O(\drawunit/painter/Msub__sub0000_cy [3])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<3>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [2]),
    .I1(\drawunit/painter/Msub__sub0000_lut [3]),
    .O(\drawunit/painter/_sub0000 [3])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<4>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [3]),
    .IA(N1),
    .SEL(\drawunit/painter/Msub__sub0000_lut [4]),
    .O(\drawunit/painter/Msub__sub0000_cy [4])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<4>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [3]),
    .I1(\drawunit/painter/Msub__sub0000_lut [4]),
    .O(\drawunit/painter/_sub0000 [4])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<5>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [4]),
    .IA(N1),
    .SEL(\drawunit/painter/Msub__sub0000_lut [5]),
    .O(\drawunit/painter/Msub__sub0000_cy [5])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<5>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [4]),
    .I1(\drawunit/painter/Msub__sub0000_lut [5]),
    .O(\drawunit/painter/_sub0000 [5])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<6>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [5]),
    .IA(N1),
    .SEL(\drawunit/painter/Msub__sub0000_lut [6]),
    .O(\drawunit/painter/Msub__sub0000_cy [6])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<6>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [5]),
    .I1(\drawunit/painter/Msub__sub0000_lut [6]),
    .O(\drawunit/painter/_sub0000 [6])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<7>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [6]),
    .IA(N1),
    .SEL(\drawunit/painter/Msub__sub0000_lut [7]),
    .O(\drawunit/painter/Msub__sub0000_cy [7])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<7>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [6]),
    .I1(\drawunit/painter/Msub__sub0000_lut [7]),
    .O(\drawunit/painter/_sub0000 [7])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<8>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [7]),
    .IA(N1),
    .SEL(\drawunit/painter/Msub__sub0000_lut [8]),
    .O(\drawunit/painter/Msub__sub0000_cy [8])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<8>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [7]),
    .I1(\drawunit/painter/Msub__sub0000_lut [8]),
    .O(\drawunit/painter/_sub0000 [8])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<9>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [8]),
    .IA(N1),
    .SEL(\drawunit/painter/Msub__sub0000_lut [9]),
    .O(\drawunit/painter/Msub__sub0000_cy [9])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<9>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [8]),
    .I1(\drawunit/painter/Msub__sub0000_lut [9]),
    .O(\drawunit/painter/_sub0000 [9])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<10>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [9]),
    .IA(N1),
    .SEL(\drawunit/painter/Msub__sub0000_lut [10]),
    .O(\drawunit/painter/Msub__sub0000_cy [10])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<10>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [9]),
    .I1(\drawunit/painter/Msub__sub0000_lut [10]),
    .O(\drawunit/painter/_sub0000 [10])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<11>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [10]),
    .IA(N1),
    .SEL(\drawunit/painter/Msub__sub0000_lut [11]),
    .O(\drawunit/painter/Msub__sub0000_cy [11])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<11>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [10]),
    .I1(\drawunit/painter/Msub__sub0000_lut [11]),
    .O(\drawunit/painter/_sub0000 [11])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<12>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [11]),
    .IA(N1),
    .SEL(\drawunit/painter/Msub__sub0000_lut [12]),
    .O(\drawunit/painter/Msub__sub0000_cy [12])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<12>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [11]),
    .I1(\drawunit/painter/Msub__sub0000_lut [12]),
    .O(\drawunit/painter/_sub0000 [12])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<13>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [12]),
    .IA(N1),
    .SEL(\drawunit/painter/Msub__sub0000_lut [13]),
    .O(\drawunit/painter/Msub__sub0000_cy [13])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<13>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [12]),
    .I1(\drawunit/painter/Msub__sub0000_lut [13]),
    .O(\drawunit/painter/_sub0000 [13])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<14>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [13]),
    .IA(N1),
    .SEL(\drawunit/painter/Msub__sub0000_lut [14]),
    .O(\drawunit/painter/Msub__sub0000_cy [14])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<14>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [13]),
    .I1(\drawunit/painter/Msub__sub0000_lut [14]),
    .O(\drawunit/painter/_sub0000 [14])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<15>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [14]),
    .IA(N1),
    .SEL(\drawunit/painter/Msub__sub0000_lut [15]),
    .O(\drawunit/painter/Msub__sub0000_cy [15])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<15>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [14]),
    .I1(\drawunit/painter/Msub__sub0000_lut [15]),
    .O(\drawunit/painter/_sub0000 [15])
  );
  X_MUX2   \drawunit/painter/Msub__sub0000_cy<16>  (
    .IB(\drawunit/painter/Msub__sub0000_cy [15]),
    .IA(N0),
    .SEL(N1),
    .O(\drawunit/painter/Msub__sub0000_cy [16])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<16>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [15]),
    .I1(N1),
    .O(\drawunit/painter/_sub0000 [16])
  );
  X_XOR2   \drawunit/painter/Msub__sub0000_xor<17>  (
    .I0(\drawunit/painter/Msub__sub0000_cy [16]),
    .I1(N1),
    .O(\drawunit/painter/_sub0000 [17])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<0>  (
    .ADR0(\drawunit/painter/addr [0]),
    .ADR1(\drawunit/painter/_sub0000 [0]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [0])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<0>  (
    .IB(N1),
    .IA(\drawunit/painter/addr [0]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [0]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [0])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<1>  (
    .ADR0(\drawunit/painter/addr [1]),
    .ADR1(\drawunit/painter/_sub0000 [1]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [1])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<1>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [0]),
    .IA(\drawunit/painter/addr [1]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [1]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [1])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<2>  (
    .ADR0(\drawunit/painter/addr [2]),
    .ADR1(\drawunit/painter/_sub0000 [2]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [2])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<2>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [1]),
    .IA(\drawunit/painter/addr [2]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [2]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [2])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<3>  (
    .ADR0(\drawunit/painter/addr [3]),
    .ADR1(\drawunit/painter/_sub0000 [3]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [3])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<3>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [2]),
    .IA(\drawunit/painter/addr [3]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [3]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [3])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<4>  (
    .ADR0(\drawunit/painter/addr [4]),
    .ADR1(\drawunit/painter/_sub0000 [4]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [4])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<4>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [3]),
    .IA(\drawunit/painter/addr [4]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [4]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [4])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<5>  (
    .ADR0(\drawunit/painter/addr [5]),
    .ADR1(\drawunit/painter/_sub0000 [5]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [5])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<5>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [4]),
    .IA(\drawunit/painter/addr [5]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [5]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [5])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<6>  (
    .ADR0(\drawunit/painter/addr [6]),
    .ADR1(\drawunit/painter/_sub0000 [6]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [6])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<6>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [5]),
    .IA(\drawunit/painter/addr [6]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [6]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [6])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<7>  (
    .ADR0(\drawunit/painter/addr [7]),
    .ADR1(\drawunit/painter/_sub0000 [7]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [7])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<7>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [6]),
    .IA(\drawunit/painter/addr [7]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [7]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [7])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<8>  (
    .ADR0(\drawunit/painter/addr [8]),
    .ADR1(\drawunit/painter/_sub0000 [8]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [8])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<8>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [7]),
    .IA(\drawunit/painter/addr [8]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [8]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [8])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<9>  (
    .ADR0(\drawunit/painter/addr [9]),
    .ADR1(\drawunit/painter/_sub0000 [9]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [9])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<9>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [8]),
    .IA(\drawunit/painter/addr [9]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [9]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [9])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<10>  (
    .ADR0(\drawunit/painter/addr [10]),
    .ADR1(\drawunit/painter/_sub0000 [10]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [10])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<10>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [9]),
    .IA(\drawunit/painter/addr [10]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [10]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [10])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<11>  (
    .ADR0(\drawunit/painter/addr [11]),
    .ADR1(\drawunit/painter/_sub0000 [11]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [11])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<11>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [10]),
    .IA(\drawunit/painter/addr [11]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [11]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [11])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<12>  (
    .ADR0(\drawunit/painter/addr [12]),
    .ADR1(\drawunit/painter/_sub0000 [12]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [12])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<12>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [11]),
    .IA(\drawunit/painter/addr [12]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [12]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [12])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<13>  (
    .ADR0(\drawunit/painter/addr [13]),
    .ADR1(\drawunit/painter/_sub0000 [13]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [13])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<13>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [12]),
    .IA(\drawunit/painter/addr [13]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [13]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [13])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<14>  (
    .ADR0(\drawunit/painter/addr [14]),
    .ADR1(\drawunit/painter/_sub0000 [14]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [14])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<14>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [13]),
    .IA(\drawunit/painter/addr [14]),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [14]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [14])
  );
  X_MUX2   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<15>  (
    .IB(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [14]),
    .IA(N0),
    .SEL(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [15]),
    .O(\drawunit/painter/state_cmp_ge0000 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/state_FSM_FFd3  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/state_FSM_FFd3-In ),
    .SRST(reset_IBUF_1299),
    .O(\drawunit/painter/state_FSM_FFd3_693 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_XOR2   \drawunit/Madd_rdPtr_xor<14>  (
    .I0(\drawunit/Madd_rdPtr_cy [13]),
    .I1(\drawunit/rdPtr_mult0000 [14]),
    .O(\drawunit/rdPtr [14])
  );
  X_XOR2   \drawunit/Madd_rdPtr_xor<13>  (
    .I0(\drawunit/Madd_rdPtr_cy [12]),
    .I1(\drawunit/Madd_rdPtr_cy<13>_rt_217 ),
    .O(\drawunit/rdPtr [13])
  );
  X_MUX2   \drawunit/Madd_rdPtr_cy<13>  (
    .IB(\drawunit/Madd_rdPtr_cy [12]),
    .IA(N0),
    .SEL(\drawunit/Madd_rdPtr_cy<13>_rt_217 ),
    .O(\drawunit/Madd_rdPtr_cy [13])
  );
  X_XOR2   \drawunit/Madd_rdPtr_xor<12>  (
    .I0(\drawunit/Madd_rdPtr_cy [11]),
    .I1(\drawunit/Madd_rdPtr_cy<12>_rt_215 ),
    .O(\drawunit/rdPtr [12])
  );
  X_MUX2   \drawunit/Madd_rdPtr_cy<12>  (
    .IB(\drawunit/Madd_rdPtr_cy [11]),
    .IA(N0),
    .SEL(\drawunit/Madd_rdPtr_cy<12>_rt_215 ),
    .O(\drawunit/Madd_rdPtr_cy [12])
  );
  X_XOR2   \drawunit/Madd_rdPtr_xor<11>  (
    .I0(\drawunit/Madd_rdPtr_cy [10]),
    .I1(\drawunit/Madd_rdPtr_cy<11>_rt_213 ),
    .O(\drawunit/rdPtr [11])
  );
  X_MUX2   \drawunit/Madd_rdPtr_cy<11>  (
    .IB(\drawunit/Madd_rdPtr_cy [10]),
    .IA(N0),
    .SEL(\drawunit/Madd_rdPtr_cy<11>_rt_213 ),
    .O(\drawunit/Madd_rdPtr_cy [11])
  );
  X_XOR2   \drawunit/Madd_rdPtr_xor<10>  (
    .I0(\drawunit/Madd_rdPtr_cy [9]),
    .I1(\drawunit/Madd_rdPtr_cy<10>_rt_211 ),
    .O(\drawunit/rdPtr [10])
  );
  X_MUX2   \drawunit/Madd_rdPtr_cy<10>  (
    .IB(\drawunit/Madd_rdPtr_cy [9]),
    .IA(N0),
    .SEL(\drawunit/Madd_rdPtr_cy<10>_rt_211 ),
    .O(\drawunit/Madd_rdPtr_cy [10])
  );
  X_XOR2   \drawunit/Madd_rdPtr_xor<9>  (
    .I0(\drawunit/Madd_rdPtr_cy [8]),
    .I1(\drawunit/Madd_rdPtr_cy<9>_rt_228 ),
    .O(\drawunit/rdPtr [9])
  );
  X_MUX2   \drawunit/Madd_rdPtr_cy<9>  (
    .IB(\drawunit/Madd_rdPtr_cy [8]),
    .IA(N0),
    .SEL(\drawunit/Madd_rdPtr_cy<9>_rt_228 ),
    .O(\drawunit/Madd_rdPtr_cy [9])
  );
  X_XOR2   \drawunit/Madd_rdPtr_xor<8>  (
    .I0(\drawunit/Madd_rdPtr_cy [7]),
    .I1(\drawunit/Madd_rdPtr_cy<8>_rt_226 ),
    .O(\drawunit/rdPtr [8])
  );
  X_MUX2   \drawunit/Madd_rdPtr_cy<8>  (
    .IB(\drawunit/Madd_rdPtr_cy [7]),
    .IA(N0),
    .SEL(\drawunit/Madd_rdPtr_cy<8>_rt_226 ),
    .O(\drawunit/Madd_rdPtr_cy [8])
  );
  X_XOR2   \drawunit/Madd_rdPtr_xor<7>  (
    .I0(\drawunit/Madd_rdPtr_cy [6]),
    .I1(\drawunit/Madd_rdPtr_lut [7]),
    .O(\drawunit/rdPtr [7])
  );
  X_MUX2   \drawunit/Madd_rdPtr_cy<7>  (
    .IB(\drawunit/Madd_rdPtr_cy [6]),
    .IA(\drawunit/rdPtr_mult0000 [7]),
    .SEL(\drawunit/Madd_rdPtr_lut [7]),
    .O(\drawunit/Madd_rdPtr_cy [7])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<7>  (
    .ADR0(\drawunit/vga_controller/offset [9]),
    .ADR1(\drawunit/rdPtr_mult0000 [7]),
    .O(\drawunit/Madd_rdPtr_lut [7])
  );
  X_XOR2   \drawunit/Madd_rdPtr_xor<6>  (
    .I0(\drawunit/Madd_rdPtr_cy [5]),
    .I1(\drawunit/Madd_rdPtr_lut [6]),
    .O(\drawunit/rdPtr [6])
  );
  X_MUX2   \drawunit/Madd_rdPtr_cy<6>  (
    .IB(\drawunit/Madd_rdPtr_cy [5]),
    .IA(\drawunit/rdPtr_mult0000 [6]),
    .SEL(\drawunit/Madd_rdPtr_lut [6]),
    .O(\drawunit/Madd_rdPtr_cy [6])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<6>  (
    .ADR0(\drawunit/vga_controller/offset [8]),
    .ADR1(\drawunit/rdPtr_mult0000 [6]),
    .O(\drawunit/Madd_rdPtr_lut [6])
  );
  X_XOR2   \drawunit/Madd_rdPtr_xor<5>  (
    .I0(\drawunit/Madd_rdPtr_cy [4]),
    .I1(\drawunit/Madd_rdPtr_lut [5]),
    .O(\drawunit/rdPtr [5])
  );
  X_MUX2   \drawunit/Madd_rdPtr_cy<5>  (
    .IB(\drawunit/Madd_rdPtr_cy [4]),
    .IA(\drawunit/rdPtr_mult0000 [5]),
    .SEL(\drawunit/Madd_rdPtr_lut [5]),
    .O(\drawunit/Madd_rdPtr_cy [5])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<5>  (
    .ADR0(\drawunit/vga_controller/offset [7]),
    .ADR1(\drawunit/rdPtr_mult0000 [5]),
    .O(\drawunit/Madd_rdPtr_lut [5])
  );
  X_XOR2   \drawunit/Madd_rdPtr_xor<4>  (
    .I0(\drawunit/Madd_rdPtr_cy [3]),
    .I1(\drawunit/Madd_rdPtr_lut [4]),
    .O(\drawunit/rdPtr [4])
  );
  X_MUX2   \drawunit/Madd_rdPtr_cy<4>  (
    .IB(\drawunit/Madd_rdPtr_cy [3]),
    .IA(\drawunit/rdPtr_mult0000 [4]),
    .SEL(\drawunit/Madd_rdPtr_lut [4]),
    .O(\drawunit/Madd_rdPtr_cy [4])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<4>  (
    .ADR0(\drawunit/vga_controller/offset [6]),
    .ADR1(\drawunit/rdPtr_mult0000 [4]),
    .O(\drawunit/Madd_rdPtr_lut [4])
  );
  X_XOR2   \drawunit/Madd_rdPtr_xor<3>  (
    .I0(\drawunit/Madd_rdPtr_cy [2]),
    .I1(\drawunit/Madd_rdPtr_lut [3]),
    .O(\drawunit/rdPtr [3])
  );
  X_MUX2   \drawunit/Madd_rdPtr_cy<3>  (
    .IB(\drawunit/Madd_rdPtr_cy [2]),
    .IA(\drawunit/rdPtr_mult0000 [3]),
    .SEL(\drawunit/Madd_rdPtr_lut [3]),
    .O(\drawunit/Madd_rdPtr_cy [3])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<3>  (
    .ADR0(\drawunit/vga_controller/offset [5]),
    .ADR1(\drawunit/rdPtr_mult0000 [3]),
    .O(\drawunit/Madd_rdPtr_lut [3])
  );
  X_XOR2   \drawunit/Madd_rdPtr_xor<2>  (
    .I0(\drawunit/Madd_rdPtr_cy [1]),
    .I1(\drawunit/Madd_rdPtr_lut [2]),
    .O(\drawunit/rdPtr [2])
  );
  X_MUX2   \drawunit/Madd_rdPtr_cy<2>  (
    .IB(\drawunit/Madd_rdPtr_cy [1]),
    .IA(\drawunit/rdPtr_mult0000 [2]),
    .SEL(\drawunit/Madd_rdPtr_lut [2]),
    .O(\drawunit/Madd_rdPtr_cy [2])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<2>  (
    .ADR0(\drawunit/vga_controller/offset [4]),
    .ADR1(\drawunit/rdPtr_mult0000 [2]),
    .O(\drawunit/Madd_rdPtr_lut [2])
  );
  X_XOR2   \drawunit/Madd_rdPtr_xor<1>  (
    .I0(\drawunit/Madd_rdPtr_cy [0]),
    .I1(\drawunit/Madd_rdPtr_lut [1]),
    .O(\drawunit/rdPtr [1])
  );
  X_MUX2   \drawunit/Madd_rdPtr_cy<1>  (
    .IB(\drawunit/Madd_rdPtr_cy [0]),
    .IA(\drawunit/rdPtr_mult0000 [1]),
    .SEL(\drawunit/Madd_rdPtr_lut [1]),
    .O(\drawunit/Madd_rdPtr_cy [1])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<1>  (
    .ADR0(\drawunit/vga_controller/offset [3]),
    .ADR1(\drawunit/rdPtr_mult0000 [1]),
    .O(\drawunit/Madd_rdPtr_lut [1])
  );
  X_XOR2   \drawunit/Madd_rdPtr_xor<0>  (
    .I0(N0),
    .I1(\drawunit/Madd_rdPtr_lut [0]),
    .O(\drawunit/rdPtr [0])
  );
  X_MUX2   \drawunit/Madd_rdPtr_cy<0>  (
    .IB(N0),
    .IA(\drawunit/rdPtr_mult0000 [0]),
    .SEL(\drawunit/Madd_rdPtr_lut [0]),
    .O(\drawunit/Madd_rdPtr_cy [0])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<0>  (
    .ADR0(\drawunit/vga_controller/offset [2]),
    .ADR1(\drawunit/rdPtr_mult0000 [0]),
    .O(\drawunit/Madd_rdPtr_lut [0])
  );
  X_MULT18X18SIO #(
    .B_INPUT ( "DIRECT" ),
    .AREG ( 0 ),
    .BREG ( 0 ),
    .PREG ( 0 ))
  \drawunit/Mmult_rdPtr_mult0000  (
    .CEA(N0),
    .CEB(N0),
    .CEP(N0),
    .CLK(N0),
    .RSTA(N0),
    .RSTB(N0),
    .RSTP(N0),
    .A({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, \drawunit/vga_controller/line [8], \drawunit/vga_controller/line [7], 
\drawunit/vga_controller/line [6], \drawunit/vga_controller/line [5], \drawunit/vga_controller/line [4], \drawunit/vga_controller/line [3], 
\drawunit/vga_controller/line [2]}),
    .B({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N1, N0, N1, N0, N0, N0, N0, N0}),
    .BCIN({\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[17]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[16]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[15]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[14]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[13]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[12]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[11]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[10]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[9]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[8]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[7]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[6]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[5]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[4]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[3]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[2]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[1]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN[0]_UNCONNECTED }),
    .P({\NLW_drawunit/Mmult_rdPtr_mult0000_P[35]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P[34]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P[33]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P[32]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P[31]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P[30]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P[29]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P[28]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P[27]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P[26]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P[25]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P[24]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P[23]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P[22]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P[21]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P[20]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P[19]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P[18]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P[17]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P[16]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P[15]_UNCONNECTED , \drawunit/rdPtr_mult0000 [14], \drawunit/rdPtr_mult0000 [13], \drawunit/rdPtr_mult0000 [12], 
\drawunit/rdPtr_mult0000 [11], \drawunit/rdPtr_mult0000 [10], \drawunit/rdPtr_mult0000 [9], \drawunit/rdPtr_mult0000 [8], \drawunit/rdPtr_mult0000 [7]
, \drawunit/rdPtr_mult0000 [6], \drawunit/rdPtr_mult0000 [5], \drawunit/rdPtr_mult0000 [4], \drawunit/rdPtr_mult0000 [3], \drawunit/rdPtr_mult0000 [2]
, \drawunit/rdPtr_mult0000 [1], \drawunit/rdPtr_mult0000 [0]}),
    .BCOUT({\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[17]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[16]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[15]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[14]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[13]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[12]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[11]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[10]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[9]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[8]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[7]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[6]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[5]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[4]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[3]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[2]_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[1]_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT[0]_UNCONNECTED })
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \drawunit/swapBuffersOnVsync  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/swapBuffersOnVsync_not0001 ),
    .I(N0),
    .SSET(\drawunit/painter/swapBuffersCommand_713 ),
    .O(\drawunit/swapBuffersOnVsync_962 ),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \drawunit/swapBuffers  (
    .CLK(clk_BUFGP),
    .CE(\drawunit/swapBuffersCommand_inv ),
    .I(\drawunit/swapBuffersOnVsync_and0000 ),
    .O(\drawunit/swapBuffers_960 ),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<0>  (
    .ADR0(\drawunit/queue/rdData [8]),
    .ADR1(\drawunit/queue/rdData [9]),
    .ADR2(\drawunit/queue/rdData [7]),
    .ADR3(\drawunit/queue/rdData [10]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [0])
  );
  X_MUX2   \drawunit/painter/state_cmp_eq0000_wg_cy<0>  (
    .IB(N1),
    .IA(N0),
    .SEL(\drawunit/painter/state_cmp_eq0000_wg_lut [0]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_cy [0])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<1>  (
    .ADR0(\drawunit/queue/rdData [11]),
    .ADR1(\drawunit/queue/rdData [12]),
    .ADR2(\drawunit/queue/rdData [6]),
    .ADR3(\drawunit/queue/rdData [13]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [1])
  );
  X_MUX2   \drawunit/painter/state_cmp_eq0000_wg_cy<1>  (
    .IB(\drawunit/painter/state_cmp_eq0000_wg_cy [0]),
    .IA(N0),
    .SEL(\drawunit/painter/state_cmp_eq0000_wg_lut [1]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_cy [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<2>  (
    .ADR0(\drawunit/queue/rdData [14]),
    .ADR1(\drawunit/queue/rdData [15]),
    .ADR2(\drawunit/queue/rdData [5]),
    .ADR3(\drawunit/queue/rdData [16]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [2])
  );
  X_MUX2   \drawunit/painter/state_cmp_eq0000_wg_cy<2>  (
    .IB(\drawunit/painter/state_cmp_eq0000_wg_cy [1]),
    .IA(N0),
    .SEL(\drawunit/painter/state_cmp_eq0000_wg_lut [2]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_cy [2])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<3>  (
    .ADR0(\drawunit/queue/rdData [17]),
    .ADR1(\drawunit/queue/rdData [18]),
    .ADR2(\drawunit/queue/rdData [4]),
    .ADR3(\drawunit/queue/rdData [19]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [3])
  );
  X_MUX2   \drawunit/painter/state_cmp_eq0000_wg_cy<3>  (
    .IB(\drawunit/painter/state_cmp_eq0000_wg_cy [2]),
    .IA(N0),
    .SEL(\drawunit/painter/state_cmp_eq0000_wg_lut [3]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_cy [3])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<4>  (
    .ADR0(\drawunit/queue/rdData [20]),
    .ADR1(\drawunit/queue/rdData [21]),
    .ADR2(\drawunit/queue/rdData [3]),
    .ADR3(\drawunit/queue/rdData [22]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [4])
  );
  X_MUX2   \drawunit/painter/state_cmp_eq0000_wg_cy<4>  (
    .IB(\drawunit/painter/state_cmp_eq0000_wg_cy [3]),
    .IA(N0),
    .SEL(\drawunit/painter/state_cmp_eq0000_wg_lut [4]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_cy [4])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<5>  (
    .ADR0(\drawunit/queue/rdData [23]),
    .ADR1(\drawunit/queue/rdData [24]),
    .ADR2(\drawunit/queue/rdData [2]),
    .ADR3(\drawunit/queue/rdData [25]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [5])
  );
  X_MUX2   \drawunit/painter/state_cmp_eq0000_wg_cy<5>  (
    .IB(\drawunit/painter/state_cmp_eq0000_wg_cy [4]),
    .IA(N0),
    .SEL(\drawunit/painter/state_cmp_eq0000_wg_lut [5]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_cy [5])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<6>  (
    .ADR0(\drawunit/queue/rdData [26]),
    .ADR1(\drawunit/queue/rdData [27]),
    .ADR2(\drawunit/queue/rdData [1]),
    .ADR3(\drawunit/queue/rdData [28]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [6])
  );
  X_MUX2   \drawunit/painter/state_cmp_eq0000_wg_cy<6>  (
    .IB(\drawunit/painter/state_cmp_eq0000_wg_cy [5]),
    .IA(N0),
    .SEL(\drawunit/painter/state_cmp_eq0000_wg_lut [6]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_cy [6])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<7>  (
    .ADR0(\drawunit/queue/rdData [29]),
    .ADR1(\drawunit/queue/rdData [30]),
    .ADR2(\drawunit/queue/rdData [0]),
    .ADR3(\drawunit/queue/rdData [31]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [7])
  );
  X_MUX2   \drawunit/painter/state_cmp_eq0000_wg_cy<7>  (
    .IB(\drawunit/painter/state_cmp_eq0000_wg_cy [6]),
    .IA(N0),
    .SEL(\drawunit/painter/state_cmp_eq0000_wg_lut [7]),
    .O(\drawunit/painter/state_cmp_eq0000 )
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \drawunit/swapBuffersOnVsync_and00001  (
    .ADR0(\drawunit/vga_controller/vsync_1279 ),
    .ADR1(\drawunit/swapBuffersOnVsync_962 ),
    .O(\drawunit/swapBuffersOnVsync_and0000 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/queue/delayedWe_mux00001  (
    .ADR0(we_1309),
    .ADR1(\drawunit/queue/state_897 ),
    .O(\drawunit/queue/delayedWe_mux0000 )
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \drawunit/framebuffer/bufferWe_or0000_inv1  (
    .ADR0(reset_IBUF_1299),
    .ADR1(\drawunit/framebuffer/state_417 ),
    .O(\drawunit/framebuffer/bufferWe_or0000_inv )
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \drawunit/swapBuffersOnVsync_not00011  (
    .ADR0(\drawunit/swapBuffersOnVsync_962 ),
    .ADR1(\drawunit/vga_controller/vsync_1279 ),
    .ADR2(reset_IBUF_1299),
    .O(\drawunit/swapBuffersOnVsync_not0001 )
  );
  X_LUT3 #(
    .INIT ( 8'h02 ))
  \drawunit/queue/temp_31_not00011  (
    .ADR0(we_1309),
    .ADR1(\drawunit/queue/state_897 ),
    .ADR2(reset_IBUF_1299),
    .O(\drawunit/queue/temp_31_not0001 )
  );
  X_LUT3 #(
    .INIT ( 8'h40 ))
  \drawunit/queue/temp_15_not00011  (
    .ADR0(reset_IBUF_1299),
    .ADR1(\drawunit/queue/state_897 ),
    .ADR2(we_1309),
    .O(\drawunit/queue/temp_15_not0001 )
  );
  X_LUT3 #(
    .INIT ( 8'h54 ))
  \drawunit/painter/addr_mux0000<0>11  (
    .ADR0(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR1(\drawunit/painter/state_FSM_FFd3_693 ),
    .ADR2(\drawunit/painter/state_FSM_FFd2_691 ),
    .O(\drawunit/painter/N01 )
  );
  X_LUT2 #(
    .INIT ( 4'hB ))
  \drawunit/painter/newline_mux00001  (
    .ADR0(\drawunit/painter/state_cmp_le0000 ),
    .ADR1(\drawunit/painter/newline_675 ),
    .O(\drawunit/painter/newline_mux0000 )
  );
  X_LUT3 #(
    .INIT ( 8'h51 ))
  \drawunit/painter/state_FSM_FFd3-In1  (
    .ADR0(\drawunit/painter/state_FSM_FFd2_691 ),
    .ADR1(\drawunit/empty ),
    .ADR2(\drawunit/painter/state_FSM_FFd3_693 ),
    .O(\drawunit/painter/state_FSM_FFd3-In )
  );
  X_LUT3 #(
    .INIT ( 8'h75 ))
  data_9_mux00001 (
    .ADR0(state_cmp_lt0000),
    .ADR1(state_1300),
    .ADR2(i[2]),
    .O(data_9_mux0000)
  );
  X_LUT3 #(
    .INIT ( 8'h75 ))
  data_8_mux00001 (
    .ADR0(state_cmp_lt0000),
    .ADR1(state_1300),
    .ADR2(i[1]),
    .O(data_8_mux0000)
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  data_2_mux00001 (
    .ADR0(i[2]),
    .ADR1(state_cmp_lt0000),
    .ADR2(state_1300),
    .O(data_2_mux0000)
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  data_1_mux00001 (
    .ADR0(i[1]),
    .ADR1(state_cmp_lt0000),
    .ADR2(state_1300),
    .O(data_1_mux0000)
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  data_0_mux00001 (
    .ADR0(i[0]),
    .ADR1(state_cmp_lt0000),
    .ADR2(state_1300),
    .O(data_0_mux0000)
  );
  X_LUT4 #(
    .INIT ( 16'h8C8D ))
  \drawunit/painter/re_mux00001  (
    .ADR0(\drawunit/painter/state_FSM_FFd2_691 ),
    .ADR1(\drawunit/painter/re_678 ),
    .ADR2(\drawunit/painter/state_FSM_FFd3_693 ),
    .ADR3(\drawunit/empty ),
    .O(\drawunit/painter/re_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \drawunit/queue/empty12  (
    .ADR0(\drawunit/queue/count [3]),
    .ADR1(\drawunit/queue/count [2]),
    .ADR2(\drawunit/queue/count [1]),
    .ADR3(\drawunit/queue/count [0]),
    .O(\drawunit/queue/empty12_851 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \drawunit/queue/empty37  (
    .ADR0(\drawunit/queue/count [7]),
    .ADR1(\drawunit/queue/count [6]),
    .ADR2(\drawunit/queue/count [5]),
    .ADR3(\drawunit/queue/count [4]),
    .O(\drawunit/queue/empty37_852 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \drawunit/queue/count_not00024  (
    .ADR0(\drawunit/queue/count [7]),
    .ADR1(\drawunit/queue/count [6]),
    .ADR2(\drawunit/queue/count [5]),
    .ADR3(\drawunit/queue/count [4]),
    .O(\drawunit/queue/count_not0002310 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \drawunit/queue/count_not000212  (
    .ADR0(\drawunit/queue/count [3]),
    .ADR1(\drawunit/queue/count [2]),
    .ADR2(\drawunit/queue/count [1]),
    .ADR3(\drawunit/queue/count [0]),
    .O(\drawunit/queue/count_not000212_813 )
  );
  X_LUT3 #(
    .INIT ( 8'h02 ))
  \drawunit/vga_controller/totalPix_cmp_eq000031  (
    .ADR0(\drawunit/vga_controller/totalPix [10]),
    .ADR1(\drawunit/vga_controller/totalPix [7]),
    .ADR2(\drawunit/vga_controller/totalPix [13]),
    .O(\drawunit/vga_controller/N43 )
  );
  X_LUT4 #(
    .INIT ( 16'hFDFF ))
  \drawunit/vga_controller/vsync_mux00008  (
    .ADR0(\drawunit/vga_controller/totalPix [12]),
    .ADR1(\drawunit/vga_controller/totalPix [6]),
    .ADR2(\drawunit/vga_controller/totalPix [9]),
    .ADR3(\drawunit/vga_controller/totalPix [11]),
    .O(\drawunit/vga_controller/vsync_mux00008_1284 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \drawunit/vga_controller/vsync_mux000028  (
    .ADR0(\drawunit/vga_controller/totalPix [5]),
    .ADR1(\drawunit/vga_controller/totalPix [18]),
    .ADR2(\drawunit/vga_controller/totalPix [17]),
    .ADR3(\drawunit/vga_controller/totalPix [14]),
    .O(\drawunit/vga_controller/vsync_mux000028_1281 )
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \drawunit/vga_controller/vsync_mux000031  (
    .ADR0(\drawunit/vga_controller/vsync_mux00008_1284 ),
    .ADR1(\drawunit/vga_controller/N43 ),
    .ADR2(\drawunit/vga_controller/vsync_mux000028_1281 ),
    .O(\drawunit/vga_controller/vsync_mux000031_1282 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAE2 ))
  \drawunit/vga_controller/vsync_mux000078  (
    .ADR0(\drawunit/vga_controller/vsync_1279 ),
    .ADR1(\drawunit/vga_controller/totalPix_and0000 ),
    .ADR2(\drawunit/vga_controller/vsync_mux000071_1283 ),
    .ADR3(\drawunit/vga_controller/vsync_mux000031_1282 ),
    .O(\drawunit/vga_controller/vsync_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  state_cmp_lt0000212 (
    .ADR0(i[7]),
    .ADR1(i[2]),
    .ADR2(i[1]),
    .ADR3(i[0]),
    .O(state_cmp_lt0000212_1302)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  state_cmp_lt0000225 (
    .ADR0(i[6]),
    .ADR1(i[5]),
    .ADR2(i[4]),
    .ADR3(i[3]),
    .O(state_cmp_lt0000225_1303)
  );
  X_LUT3 #(
    .INIT ( 8'h02 ))
  i_not00011 (
    .ADR0(state_cmp_lt0000),
    .ADR1(state_1300),
    .ADR2(full),
    .O(i_not0001)
  );
  X_LUT4 #(
    .INIT ( 16'hFF08 ))
  \drawunit/vga_controller/line_not0001  (
    .ADR0(\drawunit/vga_controller/pixCount_and0000 ),
    .ADR1(\drawunit/vga_controller/pixCount_cmp_eq0002 ),
    .ADR2(N4),
    .ADR3(\drawunit/vga_controller/hsync_cmp_eq0002 ),
    .O(\drawunit/vga_controller/line_not0001_1129 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/queue/full24  (
    .ADR0(\drawunit/queue/count [3]),
    .ADR1(\drawunit/queue/count [4]),
    .ADR2(\drawunit/queue/count [5]),
    .ADR3(\drawunit/queue/count [6]),
    .O(\drawunit/queue/full24_855 )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \drawunit/queue/full222  (
    .ADR0(\drawunit/queue/full24_855 ),
    .ADR1(\drawunit/queue/full211 ),
    .ADR2(\drawunit/queue/count [9]),
    .O(full)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/pixCount_mux0000<8>1  (
    .ADR0(\drawunit/vga_controller/pixCount_addsub0000 [1]),
    .ADR1(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [8])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/pixCount_mux0000<7>1  (
    .ADR0(\drawunit/vga_controller/pixCount_addsub0000 [2]),
    .ADR1(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [7])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/pixCount_mux0000<6>1  (
    .ADR0(\drawunit/vga_controller/pixCount_addsub0000 [3]),
    .ADR1(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [6])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<8>1  (
    .ADR0(\drawunit/vga_controller/line_addsub0000 [8]),
    .ADR1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [8])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<7>1  (
    .ADR0(\drawunit/vga_controller/line_addsub0000 [7]),
    .ADR1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [7])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<6>1  (
    .ADR0(\drawunit/vga_controller/line_addsub0000 [6]),
    .ADR1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [6])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<5>1  (
    .ADR0(\drawunit/vga_controller/line_addsub0000 [5]),
    .ADR1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [5])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<4>1  (
    .ADR0(\drawunit/vga_controller/line_addsub0000 [4]),
    .ADR1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [4])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<3>1  (
    .ADR0(\drawunit/vga_controller/line_addsub0000 [3]),
    .ADR1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [3])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<2>1  (
    .ADR0(\drawunit/vga_controller/line_addsub0000 [2]),
    .ADR1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [2])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<1>1  (
    .ADR0(\drawunit/vga_controller/line_addsub0000 [1]),
    .ADR1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [1])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<0>2  (
    .ADR0(\drawunit/vga_controller/line_addsub0000 [0]),
    .ADR1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [0])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \drawunit/framebuffer/bufferWe_mux00001  (
    .ADR0(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .ADR1(\drawunit/painter/we_717 ),
    .O(\drawunit/framebuffer/bufferWe_mux0000 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/framebuffer/bufferWeS_mux00001  (
    .ADR0(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .ADR1(\drawunit/painter/we_717 ),
    .O(\drawunit/framebuffer/bufferWeS_mux0000 )
  );
  X_LUT3 #(
    .INIT ( 8'h40 ))
  \drawunit/vga_controller/line_cmp_eq000121  (
    .ADR0(\drawunit/vga_controller/pixCount [5]),
    .ADR1(\drawunit/vga_controller/N14 ),
    .ADR2(\drawunit/vga_controller/pixCount [4]),
    .O(\drawunit/vga_controller/pixCount_cmp_eq0002 )
  );
  X_LUT3 #(
    .INIT ( 8'h40 ))
  \drawunit/vga_controller/Henable_mux000021  (
    .ADR0(\drawunit/vga_controller/totalPix [10]),
    .ADR1(\drawunit/vga_controller/N13 ),
    .ADR2(\drawunit/vga_controller/totalPix [14]),
    .O(\drawunit/vga_controller/N40 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA80 ))
  \drawunit/vga_controller/totalPix_mux0000<19>21  (
    .ADR0(\drawunit/vga_controller/totalPix_and0000 ),
    .ADR1(\drawunit/vga_controller/N17 ),
    .ADR2(\drawunit/vga_controller/N40 ),
    .ADR3(\drawunit/vga_controller/totalPix_cmp_eq0002_1246 ),
    .O(\drawunit/vga_controller/N9 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \drawunit/vga_controller/totalPix_cmp_eq000011  (
    .ADR0(\drawunit/vga_controller/totalPix [12]),
    .ADR1(\drawunit/vga_controller/totalPix [18]),
    .ADR2(\drawunit/vga_controller/totalPix [11]),
    .ADR3(\drawunit/vga_controller/totalPix [17]),
    .O(\drawunit/vga_controller/N13 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/pixCount_mux0000<4>1  (
    .ADR0(\drawunit/vga_controller/pixCount_and0000 ),
    .ADR1(\drawunit/vga_controller/pixCount_cmp_eq0000_1188 ),
    .ADR2(\drawunit/vga_controller/pixCount_addsub0000 [5]),
    .ADR3(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [4])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/pixCount_mux0000<3>1  (
    .ADR0(\drawunit/vga_controller/pixCount_and0000 ),
    .ADR1(\drawunit/vga_controller/pixCount_cmp_eq0000_1188 ),
    .ADR2(\drawunit/vga_controller/pixCount_addsub0000 [6]),
    .ADR3(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/pixCount_mux0000<2>1  (
    .ADR0(\drawunit/vga_controller/pixCount_and0000 ),
    .ADR1(\drawunit/vga_controller/pixCount_cmp_eq0001_1189 ),
    .ADR2(\drawunit/vga_controller/pixCount_addsub0000 [7]),
    .ADR3(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/pixCount_mux0000<1>1  (
    .ADR0(\drawunit/vga_controller/pixCount_and0000 ),
    .ADR1(\drawunit/vga_controller/pixCount_cmp_eq0002 ),
    .ADR2(\drawunit/vga_controller/pixCount_addsub0000 [8]),
    .ADR3(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/pixCount_mux0000<0>1  (
    .ADR0(\drawunit/vga_controller/pixCount_and0000 ),
    .ADR1(\drawunit/vga_controller/pixCount_cmp_eq0002 ),
    .ADR2(\drawunit/vga_controller/pixCount_addsub0000 [9]),
    .ADR3(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hBEFF ))
  data_4_mux00001 (
    .ADR0(state_1300),
    .ADR1(N14),
    .ADR2(i[4]),
    .ADR3(state_cmp_lt0000),
    .O(data_4_mux0000)
  );
  X_LUT2 #(
    .INIT ( 4'hB ))
  \drawunit/vga_controller/totalPix_cmp_eq00002_SW0  (
    .ADR0(\drawunit/vga_controller/totalPix [14]),
    .ADR1(\drawunit/vga_controller/N13 ),
    .O(N11)
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/vga_controller/totalPix_cmp_eq00002  (
    .ADR0(\drawunit/vga_controller/totalPix [5]),
    .ADR1(N11),
    .ADR2(\drawunit/vga_controller/totalPix [9]),
    .ADR3(\drawunit/vga_controller/totalPix [6]),
    .O(\drawunit/vga_controller/N34 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/pixCount_mux0000<5>  (
    .ADR0(\drawunit/vga_controller/N111 ),
    .ADR1(\drawunit/vga_controller/pixCount_addsub0000 [4]),
    .ADR2(\drawunit/vga_controller/pixCount_and0000 ),
    .ADR3(N13),
    .O(\drawunit/vga_controller/pixCount_mux0000 [5])
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \drawunit/vga_controller/pixCount_mux0000<9>_SW0  (
    .ADR0(\drawunit/vga_controller/pixCount_cmp_eq0003 ),
    .ADR1(\drawunit/vga_controller/pixCount_cmp_eq0001_1189 ),
    .ADR2(\drawunit/vga_controller/pixCount_cmp_eq0000_1188 ),
    .ADR3(\drawunit/vga_controller/pixCount_cmp_eq0002 ),
    .O(N19)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/pixCount_mux0000<9>  (
    .ADR0(\drawunit/vga_controller/N111 ),
    .ADR1(\drawunit/vga_controller/pixCount_addsub0000 [0]),
    .ADR2(\drawunit/vga_controller/pixCount_and0000 ),
    .ADR3(N19),
    .O(\drawunit/vga_controller/pixCount_mux0000 [9])
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ))
  \drawunit/vga_controller/line_cmp_eq000015  (
    .ADR0(\drawunit/vga_controller/line [4]),
    .ADR1(\drawunit/vga_controller/line [2]),
    .ADR2(\drawunit/vga_controller/line [5]),
    .ADR3(\drawunit/vga_controller/line [3]),
    .O(\drawunit/vga_controller/line_cmp_eq000015_1117 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF7F ))
  \drawunit/vga_controller/Henable_mux000011  (
    .ADR0(\drawunit/vga_controller/totalPix [10]),
    .ADR1(\drawunit/vga_controller/totalPix [12]),
    .ADR2(\drawunit/vga_controller/totalPix [11]),
    .ADR3(\drawunit/vga_controller/totalPix [14]),
    .O(\drawunit/vga_controller/Henable_mux000011_967 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAE2 ))
  \drawunit/vga_controller/Henable_mux000068  (
    .ADR0(\drawunit/vga_controller/Henable_965 ),
    .ADR1(\drawunit/vga_controller/N17 ),
    .ADR2(\drawunit/vga_controller/Henable_mux000061_969 ),
    .ADR3(\drawunit/vga_controller/Henable_mux000027_968 ),
    .O(\drawunit/vga_controller/Henable_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/painter/data_not00011  (
    .ADR0(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR1(\drawunit/painter/state_cmp_eq0000 ),
    .ADR2(\drawunit/painter/state_FSM_FFd3_693 ),
    .ADR3(\drawunit/painter/state_FSM_FFd2_691 ),
    .O(\drawunit/painter/data_not0001 )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \drawunit/vga_controller/totalPix_mux0000<6>1  (
    .ADR0(N113),
    .ADR1(\drawunit/vga_controller/totalPix_addsub0000 [13]),
    .ADR2(\drawunit/vga_controller/N9 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [6])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \drawunit/vga_controller/totalPix_mux0000<14>1  (
    .ADR0(\drawunit/vga_controller/N11 ),
    .ADR1(\drawunit/vga_controller/totalPix_addsub0000 [5]),
    .ADR2(\drawunit/vga_controller/N9 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [14])
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \drawunit/vga_controller/totalPix_mux0000<12>1  (
    .ADR0(\drawunit/vga_controller/N11 ),
    .ADR1(\drawunit/vga_controller/totalPix_addsub0000 [7]),
    .ADR2(\drawunit/vga_controller/N9 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [12])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/totalPix_mux0000<8>1  (
    .ADR0(\drawunit/vga_controller/totalPix_and0000 ),
    .ADR1(\drawunit/vga_controller/totalPix_cmp_eq0002_1246 ),
    .ADR2(\drawunit/vga_controller/N11 ),
    .ADR3(\drawunit/vga_controller/totalPix_addsub0000 [11]),
    .O(\drawunit/vga_controller/totalPix_mux0000 [8])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/totalPix_mux0000<7>1  (
    .ADR0(\drawunit/vga_controller/totalPix_and0000 ),
    .ADR1(\drawunit/vga_controller/totalPix_cmp_eq0002_1246 ),
    .ADR2(\drawunit/vga_controller/N11 ),
    .ADR3(\drawunit/vga_controller/totalPix_addsub0000 [12]),
    .O(\drawunit/vga_controller/totalPix_mux0000 [7])
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ))
  \drawunit/vga_controller/hsync_cmp_eq00022  (
    .ADR0(\drawunit/vga_controller/N35 ),
    .ADR1(\drawunit/vga_controller/totalPix_and0000 ),
    .ADR2(\drawunit/vga_controller/totalPix [14]),
    .ADR3(\drawunit/vga_controller/N17 ),
    .O(\drawunit/vga_controller/hsync_cmp_eq0002 )
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/vga_controller/hsync_and00003  (
    .ADR0(\drawunit/vga_controller/pixCount [4]),
    .ADR1(\drawunit/vga_controller/pixCount [7]),
    .ADR2(\drawunit/vga_controller/pixCount [5]),
    .ADR3(\drawunit/vga_controller/pixCount_and0000 ),
    .O(\drawunit/vga_controller/hsync_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  data_6_cmp_lt0001111 (
    .ADR0(i[4]),
    .ADR1(i[7]),
    .ADR2(i[6]),
    .ADR3(i[5]),
    .O(N3)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/totalPix_mux0000<5>  (
    .ADR0(\drawunit/vga_controller/N11 ),
    .ADR1(\drawunit/vga_controller/totalPix_addsub0000 [14]),
    .ADR2(\drawunit/vga_controller/totalPix_and0000 ),
    .ADR3(N21),
    .O(\drawunit/vga_controller/totalPix_mux0000 [5])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/totalPix_mux0000<10>  (
    .ADR0(\drawunit/vga_controller/N11 ),
    .ADR1(\drawunit/vga_controller/totalPix_addsub0000 [9]),
    .ADR2(\drawunit/vga_controller/totalPix_and0000 ),
    .ADR3(\drawunit/vga_controller/vsync_mux000071_1283 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [10])
  );
  X_LUT4 #(
    .INIT ( 16'hFEEE ))
  \drawunit/vga_controller/totalPix_mux0000<13>  (
    .ADR0(\drawunit/vga_controller/N9 ),
    .ADR1(N27),
    .ADR2(\drawunit/vga_controller/N11 ),
    .ADR3(\drawunit/vga_controller/totalPix_addsub0000 [6]),
    .O(\drawunit/vga_controller/totalPix_mux0000 [13])
  );
  X_LUT4 #(
    .INIT ( 16'hFDFF ))
  \drawunit/vga_controller/hsync_mux0000_SW0  (
    .ADR0(\drawunit/vga_controller/pixCount [6]),
    .ADR1(\drawunit/vga_controller/pixCount [9]),
    .ADR2(\drawunit/vga_controller/pixCount [8]),
    .ADR3(\drawunit/vga_controller/hsync_and0000 ),
    .O(N32)
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ))
  \drawunit/vga_controller/hsync_mux0000_SW1  (
    .ADR0(\drawunit/vga_controller/pixCount [8]),
    .ADR1(\drawunit/vga_controller/pixCount [9]),
    .ADR2(\drawunit/vga_controller/pixCount [6]),
    .ADR3(\drawunit/vga_controller/hsync_and0000 ),
    .O(N33)
  );
  X_LUT4 #(
    .INIT ( 16'h02DF ))
  \drawunit/vga_controller/hsync_mux0000  (
    .ADR0(\drawunit/vga_controller/hsync_1090 ),
    .ADR1(\drawunit/vga_controller/hsync_cmp_eq0002 ),
    .ADR2(N33),
    .ADR3(N32),
    .O(\drawunit/vga_controller/hsync_mux0000_1098 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \drawunit/vga_controller/hsync_cmp_eq0002132  (
    .ADR0(\drawunit/vga_controller/totalPix [3]),
    .ADR1(\drawunit/vga_controller/totalPix [2]),
    .ADR2(\drawunit/vga_controller/totalPix [4]),
    .ADR3(\drawunit/vga_controller/totalPix [8]),
    .O(\drawunit/vga_controller/hsync_cmp_eq0002132_1095 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/hsync_cmp_eq0002133  (
    .ADR0(\drawunit/vga_controller/hsync_cmp_eq0002117 ),
    .ADR1(\drawunit/vga_controller/hsync_cmp_eq0002132_1095 ),
    .O(\drawunit/vga_controller/totalPix_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ))
  \drawunit/vga_controller/totalPix_mux0000<19>12  (
    .ADR0(\drawunit/vga_controller/totalPix [13]),
    .ADR1(\drawunit/vga_controller/totalPix [7]),
    .ADR2(\drawunit/vga_controller/totalPix [14]),
    .ADR3(\drawunit/vga_controller/totalPix [6]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>12_1263 )
  );
  X_LUT4 #(
    .INIT ( 16'h11F1 ))
  \drawunit/vga_controller/totalPix_mux0000<19>1111  (
    .ADR0(\drawunit/vga_controller/totalPix [13]),
    .ADR1(\drawunit/vga_controller/totalPix [10]),
    .ADR2(\drawunit/vga_controller/totalPix [12]),
    .ADR3(\drawunit/vga_controller/totalPix [11]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>1111_1259 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF5D ))
  \drawunit/vga_controller/totalPix_mux0000<19>122  (
    .ADR0(\drawunit/vga_controller/totalPix [6]),
    .ADR1(\drawunit/vga_controller/totalPix [10]),
    .ADR2(\drawunit/vga_controller/totalPix [9]),
    .ADR3(\drawunit/vga_controller/totalPix [11]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>122_1264 )
  );
  X_LUT3 #(
    .INIT ( 8'hF2 ))
  \drawunit/vga_controller/totalPix_mux0000<19>133  (
    .ADR0(\drawunit/vga_controller/totalPix_mux0000<19>122_1264 ),
    .ADR1(\drawunit/vga_controller/totalPix [18]),
    .ADR2(\drawunit/vga_controller/totalPix_mux0000<19>1111_1259 ),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>133_1265 )
  );
  X_LUT3 #(
    .INIT ( 8'h72 ))
  \drawunit/vga_controller/totalPix_mux0000<19>154  (
    .ADR0(\drawunit/vga_controller/totalPix [18]),
    .ADR1(\drawunit/vga_controller/totalPix [7]),
    .ADR2(\drawunit/vga_controller/totalPix [5]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>154_1266 )
  );
  X_LUT3 #(
    .INIT ( 8'h72 ))
  \drawunit/vga_controller/totalPix_mux0000<19>165  (
    .ADR0(\drawunit/vga_controller/totalPix [13]),
    .ADR1(\drawunit/vga_controller/totalPix [12]),
    .ADR2(\drawunit/vga_controller/totalPix [17]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>165_1267 )
  );
  X_LUT4 #(
    .INIT ( 16'h5DFF ))
  \drawunit/vga_controller/totalPix_mux0000<19>188  (
    .ADR0(\drawunit/vga_controller/totalPix [6]),
    .ADR1(\drawunit/vga_controller/totalPix [7]),
    .ADR2(\drawunit/vga_controller/totalPix [17]),
    .ADR3(\drawunit/vga_controller/totalPix [10]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>188_1268 )
  );
  X_LUT4 #(
    .INIT ( 16'h3332 ))
  \drawunit/vga_controller/totalPix_mux0000<19>1110  (
    .ADR0(\drawunit/vga_controller/totalPix_mux0000<19>165_1267 ),
    .ADR1(\drawunit/vga_controller/totalPix [14]),
    .ADR2(\drawunit/vga_controller/totalPix_mux0000<19>188_1268 ),
    .ADR3(\drawunit/vga_controller/totalPix_mux0000<19>154_1266 ),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>1110_1258 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/totalPix_mux0000<2>1  (
    .ADR0(\drawunit/vga_controller/totalPix_and0000 ),
    .ADR1(\drawunit/vga_controller/totalPix_cmp_eq0002_1246 ),
    .ADR2(\drawunit/vga_controller/N11 ),
    .ADR3(\drawunit/vga_controller/totalPix_addsub0000 [17]),
    .O(\drawunit/vga_controller/totalPix_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/totalPix_mux0000<1>1  (
    .ADR0(\drawunit/vga_controller/totalPix_and0000 ),
    .ADR1(\drawunit/vga_controller/totalPix_cmp_eq0002_1246 ),
    .ADR2(\drawunit/vga_controller/N11 ),
    .ADR3(\drawunit/vga_controller/totalPix_addsub0000 [18]),
    .O(\drawunit/vga_controller/totalPix_mux0000 [1])
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  data_6_cmp_lt0000121 (
    .ADR0(i[8]),
    .ADR1(i[9]),
    .O(N12)
  );
  X_LUT3 #(
    .INIT ( 8'h40 ))
  \drawunit/vga_controller/pixCount_cmp_eq00031  (
    .ADR0(\drawunit/vga_controller/pixCount [4]),
    .ADR1(\drawunit/vga_controller/pixCount [5]),
    .ADR2(\drawunit/vga_controller/N14 ),
    .O(\drawunit/vga_controller/pixCount_cmp_eq0003 )
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \drawunit/vga_controller/color_mux0000<0>111  (
    .ADR0(\drawunit/vga_controller/pixCount_cmp_eq0001_1189 ),
    .ADR1(\drawunit/vga_controller/Henable_965 ),
    .ADR2(\drawunit/vga_controller/pixCount_and0000 ),
    .O(\drawunit/vga_controller/N39 )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \drawunit/vga_controller/color_mux0000<0>11  (
    .ADR0(\drawunit/vga_controller/color_and0000_1085 ),
    .ADR1(\drawunit/vga_controller/N111 ),
    .ADR2(\drawunit/vga_controller/N39 ),
    .O(\drawunit/vga_controller/N2 )
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/vga_controller/line_cmp_eq000111  (
    .ADR0(\drawunit/vga_controller/pixCount [6]),
    .ADR1(\drawunit/vga_controller/pixCount [7]),
    .ADR2(\drawunit/vga_controller/pixCount [8]),
    .ADR3(\drawunit/vga_controller/pixCount [9]),
    .O(\drawunit/vga_controller/N14 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/color_mux0000<2>1  (
    .ADR0(\drawunit/vga_controller/N2 ),
    .ADR1(\drawunit/framebuffer/color [2]),
    .ADR2(\drawunit/vga_controller/color [2]),
    .ADR3(\drawunit/vga_controller/N8 ),
    .O(\drawunit/vga_controller/color_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/color_mux0000<1>1  (
    .ADR0(\drawunit/framebuffer/color [1]),
    .ADR1(\drawunit/vga_controller/N2 ),
    .ADR2(\drawunit/vga_controller/color [1]),
    .ADR3(\drawunit/vga_controller/N8 ),
    .O(\drawunit/vga_controller/color_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/color_mux0000<0>1  (
    .ADR0(\drawunit/framebuffer/color [0]),
    .ADR1(\drawunit/vga_controller/N2 ),
    .ADR2(\drawunit/vga_controller/color [0]),
    .ADR3(\drawunit/vga_controller/N8 ),
    .O(\drawunit/vga_controller/color_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h88F8 ))
  \drawunit/vga_controller/color_mux0000<0>2  (
    .ADR0(N35),
    .ADR1(\drawunit/vga_controller/pixCount_and0000 ),
    .ADR2(\drawunit/vga_controller/N111 ),
    .ADR3(\drawunit/vga_controller/color_and0000_1085 ),
    .O(\drawunit/vga_controller/N8 )
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \drawunit/vga_controller/pixCount_cmp_eq0001_SW0  (
    .ADR0(\drawunit/vga_controller/pixCount [8]),
    .ADR1(\drawunit/vga_controller/pixCount [4]),
    .ADR2(\drawunit/vga_controller/pixCount [9]),
    .O(N37)
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ))
  \drawunit/vga_controller/pixCount_cmp_eq0001  (
    .ADR0(\drawunit/vga_controller/pixCount [6]),
    .ADR1(\drawunit/vga_controller/pixCount [5]),
    .ADR2(\drawunit/vga_controller/pixCount [7]),
    .ADR3(N37),
    .O(\drawunit/vga_controller/pixCount_cmp_eq0001_1189 )
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \drawunit/vga_controller/pixCount_cmp_eq0000_SW0  (
    .ADR0(\drawunit/vga_controller/pixCount [4]),
    .ADR1(\drawunit/vga_controller/pixCount [8]),
    .ADR2(\drawunit/vga_controller/pixCount [9]),
    .O(N39)
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/vga_controller/pixCount_cmp_eq0000  (
    .ADR0(\drawunit/vga_controller/pixCount [7]),
    .ADR1(N39),
    .ADR2(\drawunit/vga_controller/pixCount [5]),
    .ADR3(\drawunit/vga_controller/pixCount [6]),
    .O(\drawunit/vga_controller/pixCount_cmp_eq0000_1188 )
  );
  X_LUT2 #(
    .INIT ( 4'hB ))
  \drawunit/painter/addr_mux0001<0>1  (
    .ADR0(\drawunit/painter/left [0]),
    .ADR1(\drawunit/painter/newline_675 ),
    .O(\drawunit/painter/addr_mux0001 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \drawunit/queue/count_not0002341  (
    .ADR0(\drawunit/queue/count [2]),
    .ADR1(\drawunit/queue/count [3]),
    .ADR2(\drawunit/queue/count [8]),
    .ADR3(\drawunit/queue/count [9]),
    .O(\drawunit/queue/count_not0002341_815 )
  );
  X_LUT4 #(
    .INIT ( 16'h5515 ))
  data_4_mux000021 (
    .ADR0(data_6_cmp_lt0000),
    .ADR1(N12),
    .ADR2(N3),
    .ADR3(i[3]),
    .O(N14)
  );
  X_LUT3 #(
    .INIT ( 8'h7F ))
  data_6_mux0000_SW0 (
    .ADR0(i[5]),
    .ADR1(i[4]),
    .ADR2(N14),
    .O(N45)
  );
  X_LUT4 #(
    .INIT ( 16'h5D57 ))
  data_6_mux0000 (
    .ADR0(state_cmp_lt0000),
    .ADR1(i[6]),
    .ADR2(state_1300),
    .ADR3(N45),
    .O(data_6_mux0000_202)
  );
  X_LUT4 #(
    .INIT ( 16'hFEE4 ))
  \drawunit/vga_controller/pixCount_mux0000<9>117  (
    .ADR0(\drawunit/vga_controller/pixCount [8]),
    .ADR1(\drawunit/vga_controller/pixCount [9]),
    .ADR2(\drawunit/vga_controller/pixCount [7]),
    .ADR3(\drawunit/vga_controller/pixCount [6]),
    .O(\drawunit/vga_controller/pixCount_mux0000<9>117_1202 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA02 ))
  \drawunit/vga_controller/pixCount_mux0000<9>138  (
    .ADR0(\drawunit/vga_controller/pixCount [5]),
    .ADR1(\drawunit/vga_controller/pixCount [6]),
    .ADR2(\drawunit/vga_controller/pixCount [9]),
    .ADR3(\drawunit/vga_controller/pixCount [4]),
    .O(\drawunit/vga_controller/pixCount_mux0000<9>138_1203 )
  );
  X_LUT4 #(
    .INIT ( 16'h1113 ))
  \drawunit/vga_controller/pixCount_mux0000<9>154  (
    .ADR0(\drawunit/vga_controller/pixCount [4]),
    .ADR1(\drawunit/vga_controller/pixCount [5]),
    .ADR2(\drawunit/vga_controller/pixCount [7]),
    .ADR3(\drawunit/vga_controller/pixCount [9]),
    .O(\drawunit/vga_controller/pixCount_mux0000<9>154_1204 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFEF ))
  \drawunit/vga_controller/pixCount_mux0000<9>169  (
    .ADR0(\drawunit/vga_controller/pixCount_mux0000<9>138_1203 ),
    .ADR1(\drawunit/vga_controller/pixCount_mux0000<9>117_1202 ),
    .ADR2(\drawunit/vga_controller/pixCount_and0000 ),
    .ADR3(\drawunit/vga_controller/pixCount_mux0000<9>154_1204 ),
    .O(\drawunit/vga_controller/N111 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC74 ))
  we_mux00001 (
    .ADR0(full),
    .ADR1(state_cmp_lt0000),
    .ADR2(data_10_and0000),
    .ADR3(state_1300),
    .O(we_mux0000)
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<0>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [0]),
    .ADR2(\drawunit/painter/addr [0]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [0])
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \drawunit/vga_controller/hsync_and000011  (
    .ADR0(\drawunit/vga_controller/pixCount [0]),
    .ADR1(\drawunit/vga_controller/pixCount [1]),
    .O(\drawunit/vga_controller/N19 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<9>1  (
    .ADR0(\drawunit/vga_controller/N7 ),
    .ADR1(\drawunit/vga_controller/offset_share0000 [9]),
    .ADR2(\drawunit/vga_controller/offset [9]),
    .ADR3(N116),
    .O(\drawunit/vga_controller/offset_mux0000 [9])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<8>1  (
    .ADR0(\drawunit/vga_controller/N7 ),
    .ADR1(\drawunit/vga_controller/offset_share0000 [8]),
    .ADR2(\drawunit/vga_controller/offset [8]),
    .ADR3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [8])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<7>1  (
    .ADR0(\drawunit/vga_controller/N7 ),
    .ADR1(\drawunit/vga_controller/offset_share0000 [7]),
    .ADR2(\drawunit/vga_controller/offset [7]),
    .ADR3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [7])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<6>1  (
    .ADR0(\drawunit/vga_controller/N7 ),
    .ADR1(\drawunit/vga_controller/offset_share0000 [6]),
    .ADR2(\drawunit/vga_controller/offset [6]),
    .ADR3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [6])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<5>1  (
    .ADR0(\drawunit/vga_controller/N7 ),
    .ADR1(\drawunit/vga_controller/offset_share0000 [5]),
    .ADR2(\drawunit/vga_controller/offset [5]),
    .ADR3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [5])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<4>1  (
    .ADR0(\drawunit/vga_controller/N7 ),
    .ADR1(\drawunit/vga_controller/offset_share0000 [4]),
    .ADR2(\drawunit/vga_controller/offset [4]),
    .ADR3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [4])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<3>1  (
    .ADR0(\drawunit/vga_controller/N7 ),
    .ADR1(\drawunit/vga_controller/offset_share0000 [3]),
    .ADR2(\drawunit/vga_controller/offset [3]),
    .ADR3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<2>1  (
    .ADR0(\drawunit/vga_controller/N7 ),
    .ADR1(\drawunit/vga_controller/offset_share0000 [2]),
    .ADR2(\drawunit/vga_controller/offset [2]),
    .ADR3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<1>1  (
    .ADR0(\drawunit/vga_controller/N7 ),
    .ADR1(\drawunit/vga_controller/offset_share0000 [1]),
    .ADR2(\drawunit/vga_controller/offset [1]),
    .ADR3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<0>1  (
    .ADR0(\drawunit/vga_controller/N7 ),
    .ADR1(\drawunit/vga_controller/offset_share0000 [0]),
    .ADR2(\drawunit/vga_controller/offset [0]),
    .ADR3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hFFAE ))
  \drawunit/vga_controller/offset_mux0000<0>37  (
    .ADR0(\drawunit/vga_controller/pixCount_cmp_eq0003 ),
    .ADR1(\drawunit/vga_controller/pixCount_cmp_eq0001_1189 ),
    .ADR2(\drawunit/vga_controller/Henable_965 ),
    .ADR3(\drawunit/vga_controller/pixCount_cmp_eq0000_1188 ),
    .O(\drawunit/vga_controller/offset_mux0000<0>37_1147 )
  );
  X_LUT4 #(
    .INIT ( 16'h88F8 ))
  \drawunit/vga_controller/offset_mux0000<0>319  (
    .ADR0(\drawunit/vga_controller/pixCount_and0000 ),
    .ADR1(\drawunit/vga_controller/offset_mux0000<0>37_1147 ),
    .ADR2(\drawunit/vga_controller/N111 ),
    .ADR3(\drawunit/vga_controller/offset_and0000 ),
    .O(\drawunit/vga_controller/offset_mux0000<0>319_1146 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF80 ))
  \drawunit/vga_controller/offset_and00006  (
    .ADR0(\drawunit/vga_controller/N19 ),
    .ADR1(\drawunit/vga_controller/pixCount [2]),
    .ADR2(\drawunit/vga_controller/pixCount [3]),
    .ADR3(N114),
    .O(\drawunit/vga_controller/offset_and00006_1144 )
  );
  X_LUT4 #(
    .INIT ( 16'h2AAA ))
  \drawunit/vga_controller/offset_and000034  (
    .ADR0(N115),
    .ADR1(\drawunit/vga_controller/pixCount [2]),
    .ADR2(\drawunit/vga_controller/pixCount [3]),
    .ADR3(\drawunit/vga_controller/N19 ),
    .O(\drawunit/vga_controller/offset_and000034_1142 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<1>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [1]),
    .ADR2(\drawunit/painter/addr [1]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [1])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<2>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [2]),
    .ADR2(\drawunit/painter/addr [2]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [2])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<3>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [3]),
    .ADR2(\drawunit/painter/addr [3]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [3])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<4>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [4]),
    .ADR2(\drawunit/painter/addr [4]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [4])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<5>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [5]),
    .ADR2(\drawunit/painter/addr [5]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [5])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<6>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [6]),
    .ADR2(\drawunit/painter/addr [6]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [6])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<7>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [7]),
    .ADR2(\drawunit/painter/addr [7]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [7])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<8>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [8]),
    .ADR2(\drawunit/painter/addr [8]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [8])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<14>1  (
    .ADR0(\drawunit/painter/addr_addsub0000 [0]),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/addr [0]),
    .ADR3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [14])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<9>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [9]),
    .ADR2(\drawunit/painter/addr [9]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [9])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<10>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [10]),
    .ADR2(\drawunit/painter/addr [10]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [10])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<11>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [11]),
    .ADR2(\drawunit/painter/addr [11]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [11])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/painter/addr_mux0002<14>1  (
    .ADR0(\drawunit/painter/newline_675 ),
    .ADR1(\drawunit/painter/addr [14]),
    .ADR2(\drawunit/painter/add0000_mult0000 [14]),
    .O(\drawunit/painter/addr_mux0002 [14])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<12>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [12]),
    .ADR2(\drawunit/painter/addr [12]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [12])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<13>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [13]),
    .ADR2(\drawunit/painter/addr [13]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [13])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<14>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [14]),
    .ADR2(\drawunit/painter/addr [14]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [14])
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/framebuffer/bufferWe_cmp_ge000015  (
    .ADR0(\drawunit/painter/addr [10]),
    .ADR1(\drawunit/painter/addr [7]),
    .ADR2(\drawunit/painter/addr [8]),
    .ADR3(\drawunit/painter/addr [9]),
    .O(\drawunit/framebuffer/bufferWe_cmp_ge000015_355 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/framebuffer/bufferWe_cmp_ge0000110  (
    .ADR0(\drawunit/painter/addr [12]),
    .ADR1(\drawunit/painter/addr [13]),
    .O(\drawunit/framebuffer/bufferWe_cmp_ge0000110_354 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAF8 ))
  \drawunit/framebuffer/bufferWe_cmp_ge0000119  (
    .ADR0(\drawunit/framebuffer/bufferWe_cmp_ge0000110_354 ),
    .ADR1(\drawunit/painter/addr [11]),
    .ADR2(\drawunit/painter/addr [14]),
    .ADR3(\drawunit/framebuffer/bufferWe_cmp_ge000015_355 ),
    .O(\drawunit/framebuffer/bufferWe_cmp_ge0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<13>1  (
    .ADR0(\drawunit/painter/addr_addsub0000 [1]),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/addr [1]),
    .ADR3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [13])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<12>1  (
    .ADR0(\drawunit/painter/addr_addsub0000 [2]),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/addr [2]),
    .ADR3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [12])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<11>1  (
    .ADR0(\drawunit/painter/addr_addsub0000 [3]),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/addr [3]),
    .ADR3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [11])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/painter/addr_mux0002<8>1  (
    .ADR0(\drawunit/painter/newline_675 ),
    .ADR1(\drawunit/painter/addr [8]),
    .ADR2(\drawunit/painter/add0000_mult0000 [8]),
    .O(\drawunit/painter/addr_mux0002 [8])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/painter/addr_mux0002<13>1  (
    .ADR0(\drawunit/painter/newline_675 ),
    .ADR1(\drawunit/painter/addr [13]),
    .ADR2(\drawunit/painter/add0000_mult0000 [13]),
    .O(\drawunit/painter/addr_mux0002 [13])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/painter/addr_mux0002<9>1  (
    .ADR0(\drawunit/painter/newline_675 ),
    .ADR1(\drawunit/painter/addr [9]),
    .ADR2(\drawunit/painter/add0000_mult0000 [9]),
    .O(\drawunit/painter/addr_mux0002 [9])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/painter/addr_mux0002<12>1  (
    .ADR0(\drawunit/painter/newline_675 ),
    .ADR1(\drawunit/painter/addr [12]),
    .ADR2(\drawunit/painter/add0000_mult0000 [12]),
    .O(\drawunit/painter/addr_mux0002 [12])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/painter/addr_mux0002<11>1  (
    .ADR0(\drawunit/painter/newline_675 ),
    .ADR1(\drawunit/painter/addr [11]),
    .ADR2(\drawunit/painter/add0000_mult0000 [11]),
    .O(\drawunit/painter/addr_mux0002 [11])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/painter/addr_mux0002<10>1  (
    .ADR0(\drawunit/painter/newline_675 ),
    .ADR1(\drawunit/painter/addr [10]),
    .ADR2(\drawunit/painter/add0000_mult0000 [10]),
    .O(\drawunit/painter/addr_mux0002 [10])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<10>1  (
    .ADR0(\drawunit/painter/addr_addsub0000 [4]),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/addr [4]),
    .ADR3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [10])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<9>1  (
    .ADR0(\drawunit/painter/addr_addsub0000 [5]),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/addr [5]),
    .ADR3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [9])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<8>1  (
    .ADR0(\drawunit/painter/addr_addsub0000 [6]),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/addr [6]),
    .ADR3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [8])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<7>1  (
    .ADR0(\drawunit/painter/addr_addsub0000 [7]),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/addr [7]),
    .ADR3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [7])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<6>1  (
    .ADR0(\drawunit/painter/addr_addsub0000 [8]),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/addr [8]),
    .ADR3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [6])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<5>1  (
    .ADR0(\drawunit/painter/addr_addsub0000 [9]),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/addr [9]),
    .ADR3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [5])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<4>1  (
    .ADR0(\drawunit/painter/addr_addsub0000 [10]),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/addr [10]),
    .ADR3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [4])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<3>1  (
    .ADR0(\drawunit/painter/addr_addsub0000 [11]),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/addr [11]),
    .ADR3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<2>1  (
    .ADR0(\drawunit/painter/addr_addsub0000 [12]),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/addr [12]),
    .ADR3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<1>1  (
    .ADR0(\drawunit/painter/addr_addsub0000 [13]),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/addr [13]),
    .ADR3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<0>1  (
    .ADR0(\drawunit/painter/addr_addsub0000 [14]),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/addr [14]),
    .ADR3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [0])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/color_mux0000<2>_SW0  (
    .ADR0(\drawunit/framebuffer/inst_LPM_FF_415 ),
    .ADR1(\drawunit/framebuffer/N25 ),
    .ADR2(\drawunit/framebuffer/N27 ),
    .O(N47)
  );
  X_LUT4 #(
    .INIT ( 16'hD8F0 ))
  \drawunit/framebuffer/color_mux0000<2>  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/S [2]),
    .ADR2(N47),
    .ADR3(\drawunit/framebuffer/color_cmp_ge0000 ),
    .O(\drawunit/framebuffer/color_mux0000 [2])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/color_mux0000<1>_SW0  (
    .ADR0(\drawunit/framebuffer/inst_LPM_FF_415 ),
    .ADR1(\drawunit/framebuffer/N16 ),
    .ADR2(\drawunit/framebuffer/N18 ),
    .O(N49)
  );
  X_LUT4 #(
    .INIT ( 16'hD8F0 ))
  \drawunit/framebuffer/color_mux0000<1>  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/S [1]),
    .ADR2(N49),
    .ADR3(\drawunit/framebuffer/color_cmp_ge0000 ),
    .O(\drawunit/framebuffer/color_mux0000 [1])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/color_mux0000<0>_SW0  (
    .ADR0(\drawunit/framebuffer/inst_LPM_FF_415 ),
    .ADR1(\drawunit/framebuffer/N7 ),
    .ADR2(\drawunit/framebuffer/N9 ),
    .O(N51)
  );
  X_LUT4 #(
    .INIT ( 16'hD8F0 ))
  \drawunit/framebuffer/color_mux0000<0>  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/framebuffer/S [0]),
    .ADR2(N51),
    .ADR3(\drawunit/framebuffer/color_cmp_ge0000 ),
    .O(\drawunit/framebuffer/color_mux0000 [0])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<0>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/rdPtr [0]),
    .ADR2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [0]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [0])
  );
  X_LUT3 #(
    .INIT ( 8'hA8 ))
  \drawunit/painter/newline_not00011  (
    .ADR0(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR1(\drawunit/painter/newline_675 ),
    .ADR2(\drawunit/painter/state_cmp_ge0000 ),
    .O(\drawunit/painter/newline_not0001 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<1>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/rdPtr [1]),
    .ADR2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [1]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [1])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<2>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/rdPtr [2]),
    .ADR2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [2]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [2])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<3>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/rdPtr [3]),
    .ADR2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [3]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [3])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<4>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/rdPtr [4]),
    .ADR2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [4]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [4])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<5>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/rdPtr [5]),
    .ADR2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [5]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [5])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<6>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/rdPtr [6]),
    .ADR2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [6]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [6])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<7>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/rdPtr [7]),
    .ADR2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [7]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [7])
  );
  X_LUT3 #(
    .INIT ( 8'h40 ))
  \drawunit/painter/state_FSM_FFd1-In22  (
    .ADR0(\drawunit/painter/state_cmp_eq0000 ),
    .ADR1(\drawunit/painter/state_FSM_FFd3_693 ),
    .ADR2(\drawunit/painter/state_FSM_FFd2_691 ),
    .O(\drawunit/painter/state_FSM_FFd1-In22_689 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF02 ))
  \drawunit/painter/state_FSM_FFd2-In12  (
    .ADR0(\drawunit/painter/state_FSM_FFd2_691 ),
    .ADR1(\drawunit/swapBuffers_960 ),
    .ADR2(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR3(\drawunit/painter/state_FSM_FFd3_693 ),
    .O(\drawunit/painter/state_FSM_FFd2-In12_692 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<8>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/rdPtr [8]),
    .ADR2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [8]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [8])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<9>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/rdPtr [9]),
    .ADR2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [9]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [9])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<10>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/rdPtr [10]),
    .ADR2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [10]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [10])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<11>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/rdPtr [11]),
    .ADR2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [11]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [11])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<12>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/rdPtr [12]),
    .ADR2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [12]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [12])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<13>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/rdPtr [13]),
    .ADR2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [13]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [13])
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<14>1  (
    .ADR0(\drawunit/framebuffer/state_417 ),
    .ADR1(\drawunit/rdPtr [14]),
    .ADR2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [14]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [14])
  );
  X_LUT4 #(
    .INIT ( 16'hFE00 ))
  \drawunit/framebuffer/color_cmp_ge000015  (
    .ADR0(\drawunit/rdPtr [7]),
    .ADR1(\drawunit/rdPtr [8]),
    .ADR2(\drawunit/rdPtr [9]),
    .ADR3(\drawunit/rdPtr [10]),
    .O(\drawunit/framebuffer/color_cmp_ge000015_408 )
  );
  X_LUT4 #(
    .INIT ( 16'hFECC ))
  \drawunit/framebuffer/color_cmp_ge0000119  (
    .ADR0(\drawunit/rdPtr [11]),
    .ADR1(\drawunit/rdPtr [14]),
    .ADR2(\drawunit/framebuffer/color_cmp_ge000015_408 ),
    .ADR3(\drawunit/framebuffer/color_cmp_ge0000110_407 ),
    .O(\drawunit/framebuffer/color_cmp_ge0000 )
  );
  X_BUF   reset_IBUF (
    .I(NlwRenamedSig_IO_reset),
    .O(reset_IBUF_1299)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/state_FSM_FFd2  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/state_FSM_FFd1-In25 ),
    .SRST(reset_IBUF_1299),
    .SSET(\drawunit/painter/state_FSM_FFd2-In12_692 ),
    .O(\drawunit/painter/state_FSM_FFd2_691 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \drawunit/painter/state_FSM_FFd1  (
    .CLK(clk_BUFGP),
    .I(\drawunit/painter/state_FSM_FFd1-In25 ),
    .SRST(reset_IBUF_1299),
    .SSET(\drawunit/painter/state_FSM_FFd1-In22_689 ),
    .O(\drawunit/painter/state_FSM_FFd1_688 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcompar_data_10_cmp_ge0000_cy<0>_rt  (
    .ADR0(cycles[4]),
    .O(\Mcompar_data_10_cmp_ge0000_cy<0>_rt_5 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcompar_data_10_cmp_ge0000_cy<2>_rt  (
    .ADR0(cycles[6]),
    .O(\Mcompar_data_10_cmp_ge0000_cy<2>_rt_11 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcompar_data_10_cmp_ge0000_cy<2>_0_rt  (
    .ADR0(cycles[4]),
    .O(\Mcompar_data_10_cmp_ge0000_cy<2>_0_rt_10 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcompar_data_10_cmp_ge0000_cy<4>_0_rt  (
    .ADR0(cycles[6]),
    .O(\Mcompar_data_10_cmp_ge0000_cy<4>_0_rt_16 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_cycles_cy<1>_rt  (
    .ADR0(cycles[1]),
    .O(\Mcount_cycles_cy<1>_rt_46 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_cycles_cy<2>_rt  (
    .ADR0(cycles[2]),
    .O(\Mcount_cycles_cy<2>_rt_48 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_cycles_cy<3>_rt  (
    .ADR0(cycles[3]),
    .O(\Mcount_cycles_cy<3>_rt_50 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_cycles_cy<4>_rt  (
    .ADR0(cycles[4]),
    .O(\Mcount_cycles_cy<4>_rt_52 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_cycles_cy<5>_rt  (
    .ADR0(cycles[5]),
    .O(\Mcount_cycles_cy<5>_rt_54 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_cycles_cy<6>_rt  (
    .ADR0(cycles[6]),
    .O(\Mcount_cycles_cy<6>_rt_56 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_cycles_cy<7>_rt  (
    .ADR0(cycles[7]),
    .O(\Mcount_cycles_cy<7>_rt_58 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_cycles_cy<8>_rt  (
    .ADR0(cycles[8]),
    .O(\Mcount_cycles_cy<8>_rt_60 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_cycles_cy<9>_rt  (
    .ADR0(cycles[9]),
    .O(\Mcount_cycles_cy<9>_rt_62 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_cycles_cy<10>_rt  (
    .ADR0(cycles[10]),
    .O(\Mcount_cycles_cy<10>_rt_36 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_cycles_cy<11>_rt  (
    .ADR0(cycles[11]),
    .O(\Mcount_cycles_cy<11>_rt_38 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_cycles_cy<12>_rt  (
    .ADR0(cycles[12]),
    .O(\Mcount_cycles_cy<12>_rt_40 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_cycles_cy<13>_rt  (
    .ADR0(cycles[13]),
    .O(\Mcount_cycles_cy<13>_rt_42 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_cycles_cy<14>_rt  (
    .ADR0(cycles[14]),
    .O(\Mcount_cycles_cy<14>_rt_44 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_i_cy<1>_rt  (
    .ADR0(i[1]),
    .O(\Mcount_i_cy<1>_rt_67 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_i_cy<2>_rt  (
    .ADR0(i[2]),
    .O(\Mcount_i_cy<2>_rt_69 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_i_cy<3>_rt  (
    .ADR0(i[3]),
    .O(\Mcount_i_cy<3>_rt_71 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_i_cy<4>_rt  (
    .ADR0(i[4]),
    .O(\Mcount_i_cy<4>_rt_73 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_i_cy<5>_rt  (
    .ADR0(i[5]),
    .O(\Mcount_i_cy<5>_rt_75 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_i_cy<6>_rt  (
    .ADR0(i[6]),
    .O(\Mcount_i_cy<6>_rt_77 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_i_cy<7>_rt  (
    .ADR0(i[7]),
    .O(\Mcount_i_cy<7>_rt_79 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_i_cy<8>_rt  (
    .ADR0(i[8]),
    .O(\Mcount_i_cy<8>_rt_81 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<7>_rt  (
    .ADR0(\drawunit/painter/addr [7]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<7>_rt_282 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<10>_rt  (
    .ADR0(\drawunit/painter/addr [10]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<10>_rt_269 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<12>_rt  (
    .ADR0(\drawunit/painter/addr [12]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<12>_rt_272 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<13>_rt  (
    .ADR0(\drawunit/painter/addr [13]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<13>_rt_274 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<7>_rt  (
    .ADR0(\drawunit/rdPtr [7]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<7>_rt_253 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<10>_rt  (
    .ADR0(\drawunit/rdPtr [10]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<10>_rt_240 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<12>_rt  (
    .ADR0(\drawunit/rdPtr [12]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<12>_rt_243 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<13>_rt  (
    .ADR0(\drawunit/rdPtr [13]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<13>_rt_245 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_wrtPtr_cy<1>_rt  (
    .ADR0(\drawunit/queue/wrtPtr [1]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy<1>_rt_759 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_wrtPtr_cy<2>_rt  (
    .ADR0(\drawunit/queue/wrtPtr [2]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy<2>_rt_761 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_wrtPtr_cy<3>_rt  (
    .ADR0(\drawunit/queue/wrtPtr [3]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy<3>_rt_763 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_wrtPtr_cy<4>_rt  (
    .ADR0(\drawunit/queue/wrtPtr [4]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy<4>_rt_765 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_wrtPtr_cy<5>_rt  (
    .ADR0(\drawunit/queue/wrtPtr [5]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy<5>_rt_767 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_wrtPtr_cy<6>_rt  (
    .ADR0(\drawunit/queue/wrtPtr [6]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy<6>_rt_769 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_wrtPtr_cy<7>_rt  (
    .ADR0(\drawunit/queue/wrtPtr [7]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy<7>_rt_771 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_rdPtr_cy<1>_rt  (
    .ADR0(\drawunit/queue/rdPtr [1]),
    .O(\drawunit/queue/Mcount_rdPtr_cy<1>_rt_742 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_rdPtr_cy<2>_rt  (
    .ADR0(\drawunit/queue/rdPtr [2]),
    .O(\drawunit/queue/Mcount_rdPtr_cy<2>_rt_744 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_rdPtr_cy<3>_rt  (
    .ADR0(\drawunit/queue/rdPtr [3]),
    .O(\drawunit/queue/Mcount_rdPtr_cy<3>_rt_746 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_rdPtr_cy<4>_rt  (
    .ADR0(\drawunit/queue/rdPtr [4]),
    .O(\drawunit/queue/Mcount_rdPtr_cy<4>_rt_748 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_rdPtr_cy<5>_rt  (
    .ADR0(\drawunit/queue/rdPtr [5]),
    .O(\drawunit/queue/Mcount_rdPtr_cy<5>_rt_750 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_rdPtr_cy<6>_rt  (
    .ADR0(\drawunit/queue/rdPtr [6]),
    .O(\drawunit/queue/Mcount_rdPtr_cy<6>_rt_752 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_rdPtr_cy<7>_rt  (
    .ADR0(\drawunit/queue/rdPtr [7]),
    .O(\drawunit/queue/Mcount_rdPtr_cy<7>_rt_754 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<1>_rt  (
    .ADR0(\drawunit/vga_controller/offset [1]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<1>_rt_989 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<2>_rt  (
    .ADR0(\drawunit/vga_controller/offset [2]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<2>_rt_991 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<3>_rt  (
    .ADR0(\drawunit/vga_controller/offset [3]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<3>_rt_993 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<4>_rt  (
    .ADR0(\drawunit/vga_controller/offset [4]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<4>_rt_995 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<5>_rt  (
    .ADR0(\drawunit/vga_controller/offset [5]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<5>_rt_997 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<6>_rt  (
    .ADR0(\drawunit/vga_controller/offset [6]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<6>_rt_999 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<7>_rt  (
    .ADR0(\drawunit/vga_controller/offset [7]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<7>_rt_1001 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<8>_rt  (
    .ADR0(\drawunit/vga_controller/offset [8]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<8>_rt_1003 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_line_addsub0000_cy<1>_rt  (
    .ADR0(\drawunit/vga_controller/line [1]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy<1>_rt_972 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_line_addsub0000_cy<2>_rt  (
    .ADR0(\drawunit/vga_controller/line [2]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy<2>_rt_974 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_line_addsub0000_cy<3>_rt  (
    .ADR0(\drawunit/vga_controller/line [3]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy<3>_rt_976 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_line_addsub0000_cy<4>_rt  (
    .ADR0(\drawunit/vga_controller/line [4]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy<4>_rt_978 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_line_addsub0000_cy<5>_rt  (
    .ADR0(\drawunit/vga_controller/line [5]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy<5>_rt_980 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_line_addsub0000_cy<6>_rt  (
    .ADR0(\drawunit/vga_controller/line [6]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy<6>_rt_982 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_line_addsub0000_cy<7>_rt  (
    .ADR0(\drawunit/vga_controller/line [7]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy<7>_rt_984 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<1>_rt  (
    .ADR0(\drawunit/vga_controller/pixCount [1]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<1>_rt_1008 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<2>_rt  (
    .ADR0(\drawunit/vga_controller/pixCount [2]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<2>_rt_1010 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<3>_rt  (
    .ADR0(\drawunit/vga_controller/pixCount [3]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<3>_rt_1012 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<4>_rt  (
    .ADR0(\drawunit/vga_controller/pixCount [4]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<4>_rt_1014 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<5>_rt  (
    .ADR0(\drawunit/vga_controller/pixCount [5]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<5>_rt_1016 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<6>_rt  (
    .ADR0(\drawunit/vga_controller/pixCount [6]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<6>_rt_1018 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<7>_rt  (
    .ADR0(\drawunit/vga_controller/pixCount [7]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<7>_rt_1020 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<8>_rt  (
    .ADR0(\drawunit/vga_controller/pixCount [8]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<8>_rt_1022 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<1>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [1]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<1>_rt_1045 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<2>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [2]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<2>_rt_1047 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<3>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [3]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<3>_rt_1049 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<4>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [4]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<4>_rt_1051 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<5>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [5]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<5>_rt_1053 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<6>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [6]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<6>_rt_1055 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<7>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [7]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<7>_rt_1057 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<8>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [8]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<8>_rt_1059 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<9>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [9]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<9>_rt_1061 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<10>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [10]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<10>_rt_1027 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<11>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [11]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<11>_rt_1029 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<12>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [12]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<12>_rt_1031 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<13>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [13]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<13>_rt_1033 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<14>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [14]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<14>_rt_1035 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<15>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [15]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<15>_rt_1037 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<16>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [16]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<16>_rt_1039 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<17>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [17]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<17>_rt_1041 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<18>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [18]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<18>_rt_1043 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/painter/Madd_add0000_addsub0000_cy<8>_rt  (
    .ADR0(\drawunit/painter/add0000_mult0000 [8]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy<8>_rt_439 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/painter/Madd_add0000_addsub0000_cy<9>_rt  (
    .ADR0(\drawunit/painter/add0000_mult0000 [9]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy<9>_rt_441 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/painter/Madd_add0000_addsub0000_cy<10>_rt  (
    .ADR0(\drawunit/painter/add0000_mult0000 [10]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy<10>_rt_423 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/painter/Madd_add0000_addsub0000_cy<11>_rt  (
    .ADR0(\drawunit/painter/add0000_mult0000 [11]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy<11>_rt_425 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/painter/Madd_add0000_addsub0000_cy<12>_rt  (
    .ADR0(\drawunit/painter/add0000_mult0000 [12]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy<12>_rt_427 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/painter/Madd_add0000_addsub0000_cy<13>_rt  (
    .ADR0(\drawunit/painter/add0000_mult0000 [13]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy<13>_rt_429 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/painter/Madd_add0000_addsub0000_cy<14>_rt  (
    .ADR0(\drawunit/painter/add0000_mult0000 [14]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy<14>_rt_430 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/painter/Msub__sub0000_cy<0>_rt  (
    .ADR0(\drawunit/painter/add0000_addsub0000 [0]),
    .O(\drawunit/painter/Msub__sub0000_cy<0>_rt_520 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/Madd_rdPtr_cy<13>_rt  (
    .ADR0(\drawunit/rdPtr_mult0000 [13]),
    .O(\drawunit/Madd_rdPtr_cy<13>_rt_217 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/Madd_rdPtr_cy<12>_rt  (
    .ADR0(\drawunit/rdPtr_mult0000 [12]),
    .O(\drawunit/Madd_rdPtr_cy<12>_rt_215 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/Madd_rdPtr_cy<11>_rt  (
    .ADR0(\drawunit/rdPtr_mult0000 [11]),
    .O(\drawunit/Madd_rdPtr_cy<11>_rt_213 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/Madd_rdPtr_cy<10>_rt  (
    .ADR0(\drawunit/rdPtr_mult0000 [10]),
    .O(\drawunit/Madd_rdPtr_cy<10>_rt_211 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/Madd_rdPtr_cy<9>_rt  (
    .ADR0(\drawunit/rdPtr_mult0000 [9]),
    .O(\drawunit/Madd_rdPtr_cy<9>_rt_228 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/Madd_rdPtr_cy<8>_rt  (
    .ADR0(\drawunit/rdPtr_mult0000 [8]),
    .O(\drawunit/Madd_rdPtr_cy<8>_rt_226 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_cycles_xor<15>_rt  (
    .ADR0(cycles[15]),
    .O(\Mcount_cycles_xor<15>_rt_64 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Mcount_i_xor<9>_rt  (
    .ADR0(i[9]),
    .O(\Mcount_i_xor<9>_rt_83 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_wrtPtr_xor<8>_rt  (
    .ADR0(\drawunit/queue/wrtPtr [8]),
    .O(\drawunit/queue/Mcount_wrtPtr_xor<8>_rt_773 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/queue/Mcount_rdPtr_xor<8>_rt  (
    .ADR0(\drawunit/queue/rdPtr [8]),
    .O(\drawunit/queue/Mcount_rdPtr_xor<8>_rt_756 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_offset_share0000_xor<9>_rt  (
    .ADR0(\drawunit/vga_controller/offset [9]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_xor<9>_rt_1005 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_line_addsub0000_xor<8>_rt  (
    .ADR0(\drawunit/vga_controller/line [8]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_xor<8>_rt_986 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<9>_rt  (
    .ADR0(\drawunit/vga_controller/pixCount [9]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_xor<9>_rt_1024 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<19>_rt  (
    .ADR0(\drawunit/vga_controller/totalPix [19]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_xor<19>_rt_1063 ),
    .ADR1(GND)
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<15>  (
    .ADR0(\drawunit/painter/_sub0000 [15]),
    .ADR1(\drawunit/painter/_sub0000 [16]),
    .ADR2(\drawunit/painter/_sub0000 [17]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [15])
  );
  X_LUT4 #(
    .INIT ( 16'h084C ))
  \drawunit/painter/state_FSM_FFd2-In331  (
    .ADR0(\drawunit/painter/newline_675 ),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/state_cmp_le0000 ),
    .ADR3(\drawunit/painter/state_cmp_ge0000 ),
    .O(\drawunit/painter/state_FSM_FFd1-In25 )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<1>_SW0  (
    .ADR0(\drawunit/rdPtr [1]),
    .ADR1(\drawunit/rdPtr [14]),
    .O(N65)
  );
  X_LUT4 #(
    .INIT ( 16'hAA95 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<1>_SW1  (
    .ADR0(\drawunit/rdPtr [1]),
    .ADR1(\drawunit/rdPtr [12]),
    .ADR2(\drawunit/rdPtr [13]),
    .ADR3(\drawunit/rdPtr [14]),
    .O(N66)
  );
  X_LUT4 #(
    .INIT ( 16'h0E1F ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<1>  (
    .ADR0(\drawunit/rdPtr [11]),
    .ADR1(\drawunit/framebuffer/color_cmp_ge000015_408 ),
    .ADR2(N66),
    .ADR3(N65),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[1] )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<2>_SW0  (
    .ADR0(\drawunit/rdPtr [2]),
    .ADR1(\drawunit/rdPtr [14]),
    .O(N68)
  );
  X_LUT4 #(
    .INIT ( 16'hAA95 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<2>_SW1  (
    .ADR0(\drawunit/rdPtr [2]),
    .ADR1(\drawunit/rdPtr [12]),
    .ADR2(\drawunit/rdPtr [13]),
    .ADR3(\drawunit/rdPtr [14]),
    .O(N69)
  );
  X_LUT4 #(
    .INIT ( 16'h0E1F ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<2>  (
    .ADR0(\drawunit/rdPtr [11]),
    .ADR1(\drawunit/framebuffer/color_cmp_ge000015_408 ),
    .ADR2(N69),
    .ADR3(N68),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[2] )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<3>_SW0  (
    .ADR0(\drawunit/rdPtr [3]),
    .ADR1(\drawunit/rdPtr [14]),
    .O(N71)
  );
  X_LUT4 #(
    .INIT ( 16'hAA95 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<3>_SW1  (
    .ADR0(\drawunit/rdPtr [3]),
    .ADR1(\drawunit/rdPtr [12]),
    .ADR2(\drawunit/rdPtr [13]),
    .ADR3(\drawunit/rdPtr [14]),
    .O(N72)
  );
  X_LUT4 #(
    .INIT ( 16'h0E1F ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<3>  (
    .ADR0(\drawunit/rdPtr [11]),
    .ADR1(\drawunit/framebuffer/color_cmp_ge000015_408 ),
    .ADR2(N72),
    .ADR3(N71),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[3] )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<4>_SW0  (
    .ADR0(\drawunit/rdPtr [4]),
    .ADR1(\drawunit/rdPtr [14]),
    .O(N74)
  );
  X_LUT4 #(
    .INIT ( 16'hAA95 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<4>_SW1  (
    .ADR0(\drawunit/rdPtr [4]),
    .ADR1(\drawunit/rdPtr [12]),
    .ADR2(\drawunit/rdPtr [13]),
    .ADR3(\drawunit/rdPtr [14]),
    .O(N75)
  );
  X_LUT4 #(
    .INIT ( 16'h0E1F ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<4>  (
    .ADR0(\drawunit/rdPtr [11]),
    .ADR1(\drawunit/framebuffer/color_cmp_ge000015_408 ),
    .ADR2(N75),
    .ADR3(N74),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[4] )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<5>_SW0  (
    .ADR0(\drawunit/rdPtr [5]),
    .ADR1(\drawunit/rdPtr [14]),
    .O(N77)
  );
  X_LUT4 #(
    .INIT ( 16'hAA95 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<5>_SW1  (
    .ADR0(\drawunit/rdPtr [5]),
    .ADR1(\drawunit/rdPtr [12]),
    .ADR2(\drawunit/rdPtr [13]),
    .ADR3(\drawunit/rdPtr [14]),
    .O(N78)
  );
  X_LUT4 #(
    .INIT ( 16'h0E1F ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<5>  (
    .ADR0(\drawunit/rdPtr [11]),
    .ADR1(\drawunit/framebuffer/color_cmp_ge000015_408 ),
    .ADR2(N78),
    .ADR3(N77),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[5] )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<6>_SW0  (
    .ADR0(\drawunit/rdPtr [6]),
    .ADR1(\drawunit/rdPtr [14]),
    .O(N80)
  );
  X_LUT4 #(
    .INIT ( 16'hAA95 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<6>_SW1  (
    .ADR0(\drawunit/rdPtr [6]),
    .ADR1(\drawunit/rdPtr [12]),
    .ADR2(\drawunit/rdPtr [13]),
    .ADR3(\drawunit/rdPtr [14]),
    .O(N81)
  );
  X_LUT4 #(
    .INIT ( 16'h0E1F ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<6>  (
    .ADR0(\drawunit/rdPtr [11]),
    .ADR1(\drawunit/framebuffer/color_cmp_ge000015_408 ),
    .ADR2(N81),
    .ADR3(N80),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[6] )
  );
  X_LUT4 #(
    .INIT ( 16'h569A ))
  \drawunit/painter/Madd_addr_addsub0000_lut<0>  (
    .ADR0(\drawunit/painter/addr_mux0001 [0]),
    .ADR1(\drawunit/painter/newline_675 ),
    .ADR2(\drawunit/painter/addr [0]),
    .ADR3(\drawunit/painter/add0000_mult0000 [0]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [0])
  );
  X_LUT4 #(
    .INIT ( 16'h7D28 ))
  \drawunit/painter/Madd_addr_addsub0000_lut<7>  (
    .ADR0(\drawunit/painter/newline_675 ),
    .ADR1(\drawunit/painter/add0000_mult0000 [7]),
    .ADR2(\drawunit/painter/left [7]),
    .ADR3(\drawunit/painter/addr [7]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [7])
  );
  X_LUT4 #(
    .INIT ( 16'h7D28 ))
  \drawunit/painter/Madd_addr_addsub0000_lut<1>  (
    .ADR0(\drawunit/painter/newline_675 ),
    .ADR1(\drawunit/painter/add0000_mult0000 [1]),
    .ADR2(\drawunit/painter/left [1]),
    .ADR3(\drawunit/painter/addr [1]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [1])
  );
  X_LUT4 #(
    .INIT ( 16'h7D28 ))
  \drawunit/painter/Madd_addr_addsub0000_lut<6>  (
    .ADR0(\drawunit/painter/newline_675 ),
    .ADR1(\drawunit/painter/add0000_mult0000 [6]),
    .ADR2(\drawunit/painter/left [6]),
    .ADR3(\drawunit/painter/addr [6]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [6])
  );
  X_LUT4 #(
    .INIT ( 16'h7D28 ))
  \drawunit/painter/Madd_addr_addsub0000_lut<2>  (
    .ADR0(\drawunit/painter/newline_675 ),
    .ADR1(\drawunit/painter/add0000_mult0000 [2]),
    .ADR2(\drawunit/painter/left [2]),
    .ADR3(\drawunit/painter/addr [2]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [2])
  );
  X_LUT4 #(
    .INIT ( 16'h7D28 ))
  \drawunit/painter/Madd_addr_addsub0000_lut<3>  (
    .ADR0(\drawunit/painter/newline_675 ),
    .ADR1(\drawunit/painter/add0000_mult0000 [3]),
    .ADR2(\drawunit/painter/left [3]),
    .ADR3(\drawunit/painter/addr [3]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [3])
  );
  X_LUT4 #(
    .INIT ( 16'h7D28 ))
  \drawunit/painter/Madd_addr_addsub0000_lut<4>  (
    .ADR0(\drawunit/painter/newline_675 ),
    .ADR1(\drawunit/painter/add0000_mult0000 [4]),
    .ADR2(\drawunit/painter/left [4]),
    .ADR3(\drawunit/painter/addr [4]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [4])
  );
  X_LUT4 #(
    .INIT ( 16'h7D28 ))
  \drawunit/painter/Madd_addr_addsub0000_lut<5>  (
    .ADR0(\drawunit/painter/newline_675 ),
    .ADR1(\drawunit/painter/add0000_mult0000 [5]),
    .ADR2(\drawunit/painter/left [5]),
    .ADR3(\drawunit/painter/addr [5]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [5])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \drawunit/framebuffer/write_ctrl  (
    .ADR0(\drawunit/framebuffer/bufferWrtPtr [14]),
    .ADR1(\drawunit/framebuffer/bufferWe_350 ),
    .O(\drawunit/framebuffer/write_ctrl_419 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEEE ))
  \drawunit/vga_controller/offset_and000012  (
    .ADR0(\drawunit/vga_controller/pixCount [9]),
    .ADR1(\drawunit/vga_controller/pixCount [8]),
    .ADR2(\drawunit/vga_controller/pixCount [7]),
    .ADR3(\drawunit/vga_controller/offset_and00006_1144 ),
    .O(\drawunit/vga_controller/offset_and000012_1141 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA2A ))
  \drawunit/vga_controller/offset_and000044  (
    .ADR0(\drawunit/vga_controller/Henable_965 ),
    .ADR1(\drawunit/vga_controller/pixCount [9]),
    .ADR2(\drawunit/vga_controller/pixCount [8]),
    .ADR3(\drawunit/vga_controller/offset_and000034_1142 ),
    .O(\drawunit/vga_controller/offset_and000044_1143 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF7F ))
  \drawunit/vga_controller/Henable_mux000027  (
    .ADR0(\drawunit/vga_controller/totalPix [18]),
    .ADR1(\drawunit/vga_controller/totalPix [17]),
    .ADR2(\drawunit/vga_controller/totalPix_and0000 ),
    .ADR3(\drawunit/vga_controller/Henable_mux000011_967 ),
    .O(\drawunit/vga_controller/Henable_mux000027_968 )
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/queue/empty39  (
    .ADR0(\drawunit/queue/count [9]),
    .ADR1(\drawunit/queue/count [8]),
    .ADR2(\drawunit/queue/empty12_851 ),
    .ADR3(\drawunit/queue/empty37_852 ),
    .O(\drawunit/empty )
  );
  X_LUT4 #(
    .INIT ( 16'hB1BF ))
  \drawunit/vga_controller/totalPix_mux0000<19>1170_SW0  (
    .ADR0(\drawunit/vga_controller/totalPix [17]),
    .ADR1(\drawunit/vga_controller/totalPix [7]),
    .ADR2(\drawunit/vga_controller/totalPix [13]),
    .ADR3(\drawunit/vga_controller/totalPix [12]),
    .O(N83)
  );
  X_LUT4 #(
    .INIT ( 16'hFFEF ))
  \drawunit/vga_controller/totalPix_mux0000<19>1170  (
    .ADR0(\drawunit/vga_controller/totalPix_mux0000<19>1160_1260 ),
    .ADR1(\drawunit/vga_controller/totalPix [9]),
    .ADR2(\drawunit/vga_controller/totalPix [5]),
    .ADR3(N83),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>1170_1261 )
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \drawunit/queue/count_not0002330_SW0  (
    .ADR0(\drawunit/queue/count [1]),
    .ADR1(\drawunit/queue/count_not0002310 ),
    .ADR2(\drawunit/queue/count_not0002341_815 ),
    .O(N85)
  );
  X_LUT4 #(
    .INIT ( 16'h2220 ))
  \drawunit/queue/count_not0002330  (
    .ADR0(\drawunit/painter/re_678 ),
    .ADR1(\drawunit/queue/delayedWe_849 ),
    .ADR2(\drawunit/queue/count [0]),
    .ADR3(N85),
    .O(\drawunit/queue/count_not0003_inv )
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \drawunit/queue/count_not000234_SW0  (
    .ADR0(\drawunit/queue/count_not000212_813 ),
    .ADR1(\drawunit/queue/count [9]),
    .ADR2(\drawunit/queue/count_not0002310 ),
    .O(N87)
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<4>1  (
    .ADR0(\drawunit/vga_controller/totalPix_addsub0000 [15]),
    .ADR1(\drawunit/vga_controller/totalPix_mux0000<19>133_1265 ),
    .ADR2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1258 ),
    .ADR3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1262 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [4])
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<3>1  (
    .ADR0(\drawunit/vga_controller/totalPix_addsub0000 [16]),
    .ADR1(\drawunit/vga_controller/totalPix_mux0000<19>133_1265 ),
    .ADR2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1258 ),
    .ADR3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1262 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<18>1  (
    .ADR0(\drawunit/vga_controller/totalPix_addsub0000 [1]),
    .ADR1(\drawunit/vga_controller/totalPix_mux0000<19>133_1265 ),
    .ADR2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1258 ),
    .ADR3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1262 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [18])
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<17>1  (
    .ADR0(\drawunit/vga_controller/totalPix_addsub0000 [2]),
    .ADR1(\drawunit/vga_controller/totalPix_mux0000<19>133_1265 ),
    .ADR2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1258 ),
    .ADR3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1262 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [17])
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<16>1  (
    .ADR0(\drawunit/vga_controller/totalPix_addsub0000 [3]),
    .ADR1(\drawunit/vga_controller/totalPix_mux0000<19>133_1265 ),
    .ADR2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1258 ),
    .ADR3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1262 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [16])
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<15>1  (
    .ADR0(\drawunit/vga_controller/totalPix_addsub0000 [4]),
    .ADR1(\drawunit/vga_controller/totalPix_mux0000<19>133_1265 ),
    .ADR2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1258 ),
    .ADR3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1262 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [15])
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<11>1  (
    .ADR0(\drawunit/vga_controller/totalPix_addsub0000 [8]),
    .ADR1(\drawunit/vga_controller/totalPix_mux0000<19>133_1265 ),
    .ADR2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1258 ),
    .ADR3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1262 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [11])
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<0>1  (
    .ADR0(\drawunit/vga_controller/totalPix_addsub0000 [19]),
    .ADR1(\drawunit/vga_controller/totalPix_mux0000<19>133_1265 ),
    .ADR2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1258 ),
    .ADR3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1262 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [0])
  );
  X_LUT3 #(
    .INIT ( 8'hD5 ))
  \drawunit/vga_controller/line_not0001_SW0  (
    .ADR0(\drawunit/vga_controller/Henable_965 ),
    .ADR1(\drawunit/vga_controller/line_cmp_eq000015_1117 ),
    .ADR2(\drawunit/vga_controller/line_cmp_eq00006 ),
    .O(N4)
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  cycles_not00011 (
    .ADR0(state_cmp_lt0000),
    .ADR1(Mcompar_data_10_cmp_ge0000_cy[8]),
    .O(cycles_not0001)
  );
  X_LUT4 #(
    .INIT ( 16'h0105 ))
  state_mux00001 (
    .ADR0(state_1300),
    .ADR1(\drawunit/queue/full211 ),
    .ADR2(\drawunit/queue/count [9]),
    .ADR3(\drawunit/queue/full24_855 ),
    .O(state_mux0000)
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<19>64_SW0  (
    .ADR0(\drawunit/vga_controller/totalPix_addsub0000 [0]),
    .ADR1(\drawunit/vga_controller/totalPix_mux0000<19>1110_1258 ),
    .ADR2(\drawunit/vga_controller/totalPix_mux0000<19>1194_1262 ),
    .ADR3(\drawunit/vga_controller/totalPix_mux0000<19>133_1265 ),
    .O(N91)
  );
  X_LUT4 #(
    .INIT ( 16'hFEEE ))
  \drawunit/vga_controller/totalPix_mux0000<19>64  (
    .ADR0(\drawunit/vga_controller/N9 ),
    .ADR1(N91),
    .ADR2(\drawunit/vga_controller/totalPix_and0000 ),
    .ADR3(\drawunit/vga_controller/totalPix_mux0000<19>30_1269 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [19])
  );
  X_LUT4 #(
    .INIT ( 16'hFF7F ))
  \drawunit/vga_controller/totalPix_cmp_eq0002_SW1  (
    .ADR0(\drawunit/vga_controller/totalPix [5]),
    .ADR1(\drawunit/vga_controller/totalPix [6]),
    .ADR2(\drawunit/vga_controller/totalPix [7]),
    .ADR3(\drawunit/vga_controller/totalPix [9]),
    .O(N93)
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/vga_controller/totalPix_cmp_eq0002  (
    .ADR0(\drawunit/vga_controller/totalPix [14]),
    .ADR1(N93),
    .ADR2(\drawunit/vga_controller/N35 ),
    .ADR3(\drawunit/vga_controller/totalPix [13]),
    .O(\drawunit/vga_controller/totalPix_cmp_eq0002_1246 )
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  we_mux000021 (
    .ADR0(Mcompar_data_10_cmp_ge0000_cy[8]),
    .ADR1(data_10_cmp_ge0000),
    .O(data_10_and0000)
  );
  X_LUT4 #(
    .INIT ( 16'hFF80 ))
  \drawunit/vga_controller/offset_mux0000<0>21  (
    .ADR0(\drawunit/vga_controller/N111 ),
    .ADR1(\drawunit/vga_controller/offset_and000012_1141 ),
    .ADR2(\drawunit/vga_controller/offset_and000044_1143 ),
    .ADR3(\drawunit/vga_controller/N39 ),
    .O(\drawunit/vga_controller/N7 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \drawunit/vga_controller/hsync_and000021  (
    .ADR0(\drawunit/vga_controller/pixCount [3]),
    .ADR1(\drawunit/vga_controller/pixCount [2]),
    .ADR2(\drawunit/vga_controller/pixCount [0]),
    .ADR3(\drawunit/vga_controller/pixCount [1]),
    .O(\drawunit/vga_controller/pixCount_and0000 )
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \drawunit/vga_controller/Henable_mux000061  (
    .ADR0(\drawunit/vga_controller/hsync_cmp_eq0002117 ),
    .ADR1(\drawunit/vga_controller/hsync_cmp_eq0002132_1095 ),
    .ADR2(\drawunit/vga_controller/N40 ),
    .O(\drawunit/vga_controller/Henable_mux000061_969 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAF8 ))
  data_10_or00001 (
    .ADR0(N12),
    .ADR1(state_cmp_lt0000212_1302),
    .ADR2(reset_IBUF_1299),
    .ADR3(state_cmp_lt0000225_1303),
    .O(data_10_or0000)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/vga_controller/totalPix_mux0000<13>_SW0  (
    .ADR0(\drawunit/vga_controller/hsync_cmp_eq0002117 ),
    .ADR1(\drawunit/vga_controller/hsync_cmp_eq0002132_1095 ),
    .ADR2(\drawunit/vga_controller/N43 ),
    .ADR3(\drawunit/vga_controller/N34 ),
    .O(N27)
  );
  X_LUT4 #(
    .INIT ( 16'hFF08 ))
  \drawunit/vga_controller/color_mux0000<0>2_SW0  (
    .ADR0(\drawunit/vga_controller/N14 ),
    .ADR1(\drawunit/vga_controller/pixCount [5]),
    .ADR2(\drawunit/vga_controller/pixCount [4]),
    .ADR3(\drawunit/vga_controller/pixCount_cmp_eq0000_1188 ),
    .O(N35)
  );
  X_LUT4 #(
    .INIT ( 16'hFF08 ))
  \drawunit/vga_controller/pixCount_mux0000<5>_SW0  (
    .ADR0(\drawunit/vga_controller/pixCount [4]),
    .ADR1(\drawunit/vga_controller/N14 ),
    .ADR2(\drawunit/vga_controller/pixCount [5]),
    .ADR3(\drawunit/vga_controller/pixCount_cmp_eq0001_1189 ),
    .O(N13)
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ))
  \drawunit/vga_controller/totalPix_mux0000<5>_SW0  (
    .ADR0(\drawunit/vga_controller/totalPix [14]),
    .ADR1(\drawunit/vga_controller/N13 ),
    .ADR2(\drawunit/vga_controller/totalPix [10]),
    .ADR3(\drawunit/vga_controller/N17 ),
    .O(N21)
  );
  X_LUT4 #(
    .INIT ( 16'hFAF8 ))
  data_9_not00011 (
    .ADR0(N12),
    .ADR1(state_cmp_lt0000212_1302),
    .ADR2(data_10_and0000),
    .ADR3(state_cmp_lt0000225_1303),
    .O(data_9_not0001)
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/vga_controller/vsync_mux000071  (
    .ADR0(\drawunit/vga_controller/totalPix [7]),
    .ADR1(\drawunit/vga_controller/totalPix [13]),
    .ADR2(\drawunit/vga_controller/N34 ),
    .ADR3(\drawunit/vga_controller/totalPix [10]),
    .O(\drawunit/vga_controller/vsync_mux000071_1283 )
  );
  X_LUT4 #(
    .INIT ( 16'hEBAF ))
  data_5_mux0000_SW1 (
    .ADR0(state_1300),
    .ADR1(i[4]),
    .ADR2(i[5]),
    .ADR3(N14),
    .O(N95)
  );
  X_LUT4 #(
    .INIT ( 16'h57FF ))
  data_5_mux0000 (
    .ADR0(N12),
    .ADR1(state_cmp_lt0000225_1303),
    .ADR2(state_cmp_lt0000212_1302),
    .ADR3(N95),
    .O(data_5_mux0000_199)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  data_6_cmp_lt00001_SW1 (
    .ADR0(i[3]),
    .ADR1(i[4]),
    .ADR2(i[5]),
    .ADR3(i[6]),
    .O(N97)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  data_6_cmp_lt00001 (
    .ADR0(i[7]),
    .ADR1(i[8]),
    .ADR2(i[9]),
    .ADR3(N97),
    .O(data_6_cmp_lt0000)
  );
  X_LUT4 #(
    .INIT ( 16'hFBAE ))
  data_3_mux0000_SW1 (
    .ADR0(state_1300),
    .ADR1(N3),
    .ADR2(data_6_cmp_lt0000),
    .ADR3(i[3]),
    .O(N99)
  );
  X_LUT4 #(
    .INIT ( 16'hABFF ))
  data_3_mux0000 (
    .ADR0(N99),
    .ADR1(state_cmp_lt0000225_1303),
    .ADR2(state_cmp_lt0000212_1302),
    .ADR3(N12),
    .O(data_3_mux0000_195)
  );
  X_LUT4 #(
    .INIT ( 16'hAA80 ))
  \drawunit/vga_controller/totalPix_mux0000<9>_SW1  (
    .ADR0(\drawunit/vga_controller/hsync_cmp_eq0002132_1095 ),
    .ADR1(\drawunit/vga_controller/N34 ),
    .ADR2(\drawunit/vga_controller/N43 ),
    .ADR3(\drawunit/vga_controller/totalPix_cmp_eq0002_1246 ),
    .O(N101)
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/totalPix_mux0000<9>  (
    .ADR0(\drawunit/vga_controller/N11 ),
    .ADR1(\drawunit/vga_controller/totalPix_addsub0000 [10]),
    .ADR2(\drawunit/vga_controller/hsync_cmp_eq0002117 ),
    .ADR3(N101),
    .O(\drawunit/vga_controller/totalPix_mux0000 [9])
  );
  X_LUT4 #(
    .INIT ( 16'h595D ))
  \drawunit/queue/Mcount_count_lut<0>  (
    .ADR0(\drawunit/queue/count [0]),
    .ADR1(\drawunit/painter/re_678 ),
    .ADR2(\drawunit/queue/delayedWe_849 ),
    .ADR3(N85),
    .O(\drawunit/queue/Mcount_count_lut [0])
  );
  X_LUT4 #(
    .INIT ( 16'h1110 ))
  state_cmp_lt0000238 (
    .ADR0(i[8]),
    .ADR1(i[9]),
    .ADR2(state_cmp_lt0000212_1302),
    .ADR3(state_cmp_lt0000225_1303),
    .O(state_cmp_lt0000)
  );
  X_LUT4 #(
    .INIT ( 16'hFFD5 ))
  \drawunit/vga_controller/line_mux0000<0>11_SW0  (
    .ADR0(\drawunit/vga_controller/pixCount_and0000 ),
    .ADR1(\drawunit/vga_controller/line_cmp_eq00006 ),
    .ADR2(\drawunit/vga_controller/line_cmp_eq000015_1117 ),
    .ADR3(\drawunit/vga_controller/pixCount [5]),
    .O(N103)
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ))
  \drawunit/vga_controller/line_mux0000<0>11  (
    .ADR0(\drawunit/vga_controller/pixCount [4]),
    .ADR1(\drawunit/vga_controller/N14 ),
    .ADR2(N103),
    .ADR3(\drawunit/vga_controller/Henable_965 ),
    .O(\drawunit/vga_controller/N18 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAF2 ))
  \drawunit/vga_controller/totalPix_mux0000<19>1194  (
    .ADR0(\drawunit/vga_controller/totalPix [13]),
    .ADR1(\drawunit/vga_controller/totalPix [5]),
    .ADR2(N105),
    .ADR3(\drawunit/vga_controller/totalPix [9]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>1194_1262 )
  );
  X_CKBUF   vgaClk_BUFG (
    .I(vgaClk1),
    .O(vgaClk_1305)
  );
  X_INV   \Mcompar_data_10_cmp_ge0000_lut<1>_INV_0  (
    .I(cycles[5]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[1] )
  );
  X_INV   \Mcompar_data_10_cmp_ge0000_lut<3>_INV_0  (
    .I(cycles[7]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[3] )
  );
  X_INV   \Mcompar_data_10_cmp_ge0000_lut<3>1_INV_0  (
    .I(cycles[5]),
    .O(\Mcompar_data_10_cmp_ge0000_lut<3>1 )
  );
  X_INV   \Mcompar_data_10_cmp_ge0000_lut<5>1_INV_0  (
    .I(cycles[7]),
    .O(\Mcompar_data_10_cmp_ge0000_lut<5>1 )
  );
  X_INV   \Mcount_cycles_lut<0>_INV_0  (
    .I(cycles[0]),
    .O(Mcount_cycles_lut[0])
  );
  X_INV   \Mcount_i_lut<0>_INV_0  (
    .I(i[0]),
    .O(Mcount_i_lut[0])
  );
  X_INV   \drawunit/queue/Mcount_wrtPtr_lut<0>_INV_0  (
    .I(\drawunit/queue/wrtPtr [0]),
    .O(\drawunit/queue/Mcount_wrtPtr_lut [0])
  );
  X_INV   \drawunit/queue/Mcount_rdPtr_lut<0>_INV_0  (
    .I(\drawunit/queue/rdPtr [0]),
    .O(\drawunit/queue/Mcount_rdPtr_lut [0])
  );
  X_INV   \drawunit/vga_controller/Madd_offset_share0000_lut<0>_INV_0  (
    .I(\drawunit/vga_controller/offset [0]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_lut [0])
  );
  X_INV   \drawunit/vga_controller/Madd_line_addsub0000_lut<0>_INV_0  (
    .I(\drawunit/vga_controller/line [0]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_lut [0])
  );
  X_INV   \drawunit/vga_controller/Madd_pixCount_addsub0000_lut<0>_INV_0  (
    .I(\drawunit/vga_controller/pixCount [0]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_lut [0])
  );
  X_INV   \drawunit/vga_controller/Madd_totalPix_addsub0000_lut<0>_INV_0  (
    .I(\drawunit/vga_controller/totalPix [0]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_lut [0])
  );
  X_INV   \drawunit/painter/Msub__sub0000_lut<1>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [1]),
    .O(\drawunit/painter/Msub__sub0000_lut [1])
  );
  X_INV   \drawunit/painter/Msub__sub0000_lut<2>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [2]),
    .O(\drawunit/painter/Msub__sub0000_lut [2])
  );
  X_INV   \drawunit/painter/Msub__sub0000_lut<3>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [3]),
    .O(\drawunit/painter/Msub__sub0000_lut [3])
  );
  X_INV   \drawunit/painter/Msub__sub0000_lut<4>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [4]),
    .O(\drawunit/painter/Msub__sub0000_lut [4])
  );
  X_INV   \drawunit/painter/Msub__sub0000_lut<5>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [5]),
    .O(\drawunit/painter/Msub__sub0000_lut [5])
  );
  X_INV   \drawunit/painter/Msub__sub0000_lut<6>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [6]),
    .O(\drawunit/painter/Msub__sub0000_lut [6])
  );
  X_INV   \drawunit/painter/Msub__sub0000_lut<7>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [7]),
    .O(\drawunit/painter/Msub__sub0000_lut [7])
  );
  X_INV   \drawunit/painter/Msub__sub0000_lut<8>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [8]),
    .O(\drawunit/painter/Msub__sub0000_lut [8])
  );
  X_INV   \drawunit/painter/Msub__sub0000_lut<9>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [9]),
    .O(\drawunit/painter/Msub__sub0000_lut [9])
  );
  X_INV   \drawunit/painter/Msub__sub0000_lut<10>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [10]),
    .O(\drawunit/painter/Msub__sub0000_lut [10])
  );
  X_INV   \drawunit/painter/Msub__sub0000_lut<11>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [11]),
    .O(\drawunit/painter/Msub__sub0000_lut [11])
  );
  X_INV   \drawunit/painter/Msub__sub0000_lut<12>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [12]),
    .O(\drawunit/painter/Msub__sub0000_lut [12])
  );
  X_INV   \drawunit/painter/Msub__sub0000_lut<13>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [13]),
    .O(\drawunit/painter/Msub__sub0000_lut [13])
  );
  X_INV   \drawunit/painter/Msub__sub0000_lut<14>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [14]),
    .O(\drawunit/painter/Msub__sub0000_lut [14])
  );
  X_INV   \drawunit/painter/Msub__sub0000_lut<15>_INV_0  (
    .I(\drawunit/painter/Madd_add0000_index0000 ),
    .O(\drawunit/painter/Msub__sub0000_lut [15])
  );
  X_INV   \drawunit/queue/reset_inv1_INV_0  (
    .I(reset_IBUF_1299),
    .O(\drawunit/framebuffer/reset_inv )
  );
  X_INV   vgaClk_not00011_INV_0 (
    .I(vgaClk1),
    .O(vgaClk_not0001)
  );
  X_INV   \drawunit/queue/state_mux00001_INV_0  (
    .I(\drawunit/queue/state_897 ),
    .O(\drawunit/queue/state_mux0000 )
  );
  X_INV   \drawunit/framebuffer/state_not00011_INV_0  (
    .I(\drawunit/framebuffer/state_417 ),
    .O(\drawunit/framebuffer/state_not0001 )
  );
  X_INV   \drawunit/swapBuffersCommand_inv1_INV_0  (
    .I(\drawunit/painter/swapBuffersCommand_713 ),
    .O(\drawunit/swapBuffersCommand_inv )
  );
  X_INV   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<8>_INV_0  (
    .I(\drawunit/rdPtr [8]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[8] )
  );
  X_INV   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<9>_INV_0  (
    .I(\drawunit/rdPtr [9]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[9] )
  );
  X_INV   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<11>_INV_0  (
    .I(\drawunit/rdPtr [11]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[11] )
  );
  X_INV   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<14>_INV_0  (
    .I(\drawunit/rdPtr [14]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[14] )
  );
  X_INV   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<11>_INV_0  (
    .I(\drawunit/painter/addr [11]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[11] )
  );
  X_INV   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<14>_INV_0  (
    .I(\drawunit/painter/addr [14]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[14] )
  );
  X_INV   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<8>_INV_0  (
    .I(\drawunit/painter/addr [8]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[8] )
  );
  X_INV   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<9>_INV_0  (
    .I(\drawunit/painter/addr [9]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[9] )
  );
  X_MUX2   \drawunit/vga_controller/color_and0000  (
    .IA(N107),
    .IB(N108),
    .SEL(\drawunit/vga_controller/pixCount [8]),
    .O(\drawunit/vga_controller/color_and0000_1085 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA80 ))
  \drawunit/vga_controller/color_and0000_F  (
    .ADR0(\drawunit/vga_controller/Henable_965 ),
    .ADR1(\drawunit/vga_controller/N22 ),
    .ADR2(\drawunit/vga_controller/pixCount [7]),
    .ADR3(\drawunit/vga_controller/pixCount [9]),
    .O(N107)
  );
  X_LUT3 #(
    .INIT ( 8'hA2 ))
  \drawunit/vga_controller/color_and0000_G  (
    .ADR0(\drawunit/vga_controller/Henable_965 ),
    .ADR1(\drawunit/vga_controller/pixCount [9]),
    .ADR2(\drawunit/vga_controller/color_cmp_lt00001 ),
    .O(N108)
  );
  X_MUX2   \drawunit/vga_controller/totalPix_mux0000<19>30  (
    .IA(N109),
    .IB(N110),
    .SEL(\drawunit/vga_controller/totalPix [5]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>30_1269 )
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ))
  \drawunit/vga_controller/totalPix_mux0000<19>30_F  (
    .ADR0(\drawunit/vga_controller/totalPix [6]),
    .ADR1(\drawunit/vga_controller/totalPix [9]),
    .ADR2(N11),
    .ADR3(\drawunit/vga_controller/N43 ),
    .O(N109)
  );
  X_LUT3 #(
    .INIT ( 8'h40 ))
  \drawunit/vga_controller/totalPix_mux0000<19>30_G  (
    .ADR0(\drawunit/vga_controller/totalPix [9]),
    .ADR1(\drawunit/vga_controller/totalPix_mux0000<19>12_1263 ),
    .ADR2(\drawunit/vga_controller/N35 ),
    .O(N110)
  );
  X_MUX2   \drawunit/queue/count_not000245  (
    .IA(N111),
    .IB(N112),
    .SEL(\drawunit/painter/re_678 ),
    .O(\drawunit/queue/count_not0002 )
  );
  X_LUT3 #(
    .INIT ( 8'hA8 ))
  \drawunit/queue/count_not000245_F  (
    .ADR0(\drawunit/queue/delayedWe_849 ),
    .ADR1(\drawunit/queue/count [8]),
    .ADR2(N87),
    .O(N111)
  );
  X_LUT3 #(
    .INIT ( 8'h54 ))
  \drawunit/queue/count_not000245_G  (
    .ADR0(\drawunit/queue/delayedWe_849 ),
    .ADR1(\drawunit/queue/count [0]),
    .ADR2(N85),
    .O(N112)
  );
  X_RAMB16_S1_S1 #(
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ),
    .INIT_A ( 1'h0 ),
    .INIT_B ( 1'h0 ),
    .SRVAL_A ( 1'h0 ),
    .SRVAL_B ( 1'h0 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \drawunit/framebuffer/blueBuffer/Mram_memory1  (
    .CLKA(clk_BUFGP),
    .CLKB(vgaClk_1305),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/write_ctrl_419 ),
    .WEB(N0),
    .ADDRA({\drawunit/framebuffer/bufferWrtPtr [13], \drawunit/framebuffer/bufferWrtPtr [12], \drawunit/framebuffer/bufferWrtPtr [11], 
\drawunit/framebuffer/bufferWrtPtr [10], \drawunit/framebuffer/bufferWrtPtr [9], \drawunit/framebuffer/bufferWrtPtr [8], 
\drawunit/framebuffer/bufferWrtPtr [7], \drawunit/framebuffer/bufferWrtPtr [6], \drawunit/framebuffer/bufferWrtPtr [5], 
\drawunit/framebuffer/bufferWrtPtr [4], \drawunit/framebuffer/bufferWrtPtr [3], \drawunit/framebuffer/bufferWrtPtr [2], 
\drawunit/framebuffer/bufferWrtPtr [1], \drawunit/framebuffer/bufferWrtPtr [0]}),
    .ADDRB({\drawunit/framebuffer/bufferRdPtr [13], \drawunit/framebuffer/bufferRdPtr [12], \drawunit/framebuffer/bufferRdPtr [11], 
\drawunit/framebuffer/bufferRdPtr [10], \drawunit/framebuffer/bufferRdPtr [9], \drawunit/framebuffer/bufferRdPtr [8], 
\drawunit/framebuffer/bufferRdPtr [7], \drawunit/framebuffer/bufferRdPtr [6], \drawunit/framebuffer/bufferRdPtr [5], 
\drawunit/framebuffer/bufferRdPtr [4], \drawunit/framebuffer/bufferRdPtr [3], \drawunit/framebuffer/bufferRdPtr [2], 
\drawunit/framebuffer/bufferRdPtr [1], \drawunit/framebuffer/bufferRdPtr [0]}),
    .DIA({\drawunit/framebuffer/ddataIn [0]}),
    .DIB({N0}),
    .DOA({\NLW_drawunit/framebuffer/blueBuffer/Mram_memory1_DOA[0]_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/N7 })
  );
  X_RAMB16_S1_S1 #(
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ),
    .INIT_A ( 1'h0 ),
    .INIT_B ( 1'h0 ),
    .SRVAL_A ( 1'h0 ),
    .SRVAL_B ( 1'h0 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \drawunit/framebuffer/blueBuffer/Mram_memory2  (
    .CLKA(clk_BUFGP),
    .CLKB(vgaClk_1305),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/write_ctrl1_420 ),
    .WEB(N0),
    .ADDRA({\drawunit/framebuffer/bufferWrtPtr [13], \drawunit/framebuffer/bufferWrtPtr [12], \drawunit/framebuffer/bufferWrtPtr [11], 
\drawunit/framebuffer/bufferWrtPtr [10], \drawunit/framebuffer/bufferWrtPtr [9], \drawunit/framebuffer/bufferWrtPtr [8], 
\drawunit/framebuffer/bufferWrtPtr [7], \drawunit/framebuffer/bufferWrtPtr [6], \drawunit/framebuffer/bufferWrtPtr [5], 
\drawunit/framebuffer/bufferWrtPtr [4], \drawunit/framebuffer/bufferWrtPtr [3], \drawunit/framebuffer/bufferWrtPtr [2], 
\drawunit/framebuffer/bufferWrtPtr [1], \drawunit/framebuffer/bufferWrtPtr [0]}),
    .ADDRB({\drawunit/framebuffer/bufferRdPtr [13], \drawunit/framebuffer/bufferRdPtr [12], \drawunit/framebuffer/bufferRdPtr [11], 
\drawunit/framebuffer/bufferRdPtr [10], \drawunit/framebuffer/bufferRdPtr [9], \drawunit/framebuffer/bufferRdPtr [8], 
\drawunit/framebuffer/bufferRdPtr [7], \drawunit/framebuffer/bufferRdPtr [6], \drawunit/framebuffer/bufferRdPtr [5], 
\drawunit/framebuffer/bufferRdPtr [4], \drawunit/framebuffer/bufferRdPtr [3], \drawunit/framebuffer/bufferRdPtr [2], 
\drawunit/framebuffer/bufferRdPtr [1], \drawunit/framebuffer/bufferRdPtr [0]}),
    .DIA({\drawunit/framebuffer/ddataIn [0]}),
    .DIB({N0}),
    .DOA({\NLW_drawunit/framebuffer/blueBuffer/Mram_memory2_DOA[0]_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/N9 })
  );
  X_RAMB16_S1_S1 #(
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ),
    .INIT_A ( 1'h0 ),
    .INIT_B ( 1'h0 ),
    .SRVAL_A ( 1'h0 ),
    .SRVAL_B ( 1'h0 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \drawunit/framebuffer/greenBuffer/Mram_memory1  (
    .CLKA(clk_BUFGP),
    .CLKB(vgaClk_1305),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/write_ctrl_419 ),
    .WEB(N0),
    .ADDRA({\drawunit/framebuffer/bufferWrtPtr [13], \drawunit/framebuffer/bufferWrtPtr [12], \drawunit/framebuffer/bufferWrtPtr [11], 
\drawunit/framebuffer/bufferWrtPtr [10], \drawunit/framebuffer/bufferWrtPtr [9], \drawunit/framebuffer/bufferWrtPtr [8], 
\drawunit/framebuffer/bufferWrtPtr [7], \drawunit/framebuffer/bufferWrtPtr [6], \drawunit/framebuffer/bufferWrtPtr [5], 
\drawunit/framebuffer/bufferWrtPtr [4], \drawunit/framebuffer/bufferWrtPtr [3], \drawunit/framebuffer/bufferWrtPtr [2], 
\drawunit/framebuffer/bufferWrtPtr [1], \drawunit/framebuffer/bufferWrtPtr [0]}),
    .ADDRB({\drawunit/framebuffer/bufferRdPtr [13], \drawunit/framebuffer/bufferRdPtr [12], \drawunit/framebuffer/bufferRdPtr [11], 
\drawunit/framebuffer/bufferRdPtr [10], \drawunit/framebuffer/bufferRdPtr [9], \drawunit/framebuffer/bufferRdPtr [8], 
\drawunit/framebuffer/bufferRdPtr [7], \drawunit/framebuffer/bufferRdPtr [6], \drawunit/framebuffer/bufferRdPtr [5], 
\drawunit/framebuffer/bufferRdPtr [4], \drawunit/framebuffer/bufferRdPtr [3], \drawunit/framebuffer/bufferRdPtr [2], 
\drawunit/framebuffer/bufferRdPtr [1], \drawunit/framebuffer/bufferRdPtr [0]}),
    .DIA({\drawunit/framebuffer/ddataIn [1]}),
    .DIB({N0}),
    .DOA({\NLW_drawunit/framebuffer/greenBuffer/Mram_memory1_DOA[0]_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/N16 })
  );
  X_RAMB16_S1_S1 #(
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ),
    .INIT_A ( 1'h0 ),
    .INIT_B ( 1'h0 ),
    .SRVAL_A ( 1'h0 ),
    .SRVAL_B ( 1'h0 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \drawunit/framebuffer/greenBuffer/Mram_memory2  (
    .CLKA(clk_BUFGP),
    .CLKB(vgaClk_1305),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/write_ctrl1_420 ),
    .WEB(N0),
    .ADDRA({\drawunit/framebuffer/bufferWrtPtr [13], \drawunit/framebuffer/bufferWrtPtr [12], \drawunit/framebuffer/bufferWrtPtr [11], 
\drawunit/framebuffer/bufferWrtPtr [10], \drawunit/framebuffer/bufferWrtPtr [9], \drawunit/framebuffer/bufferWrtPtr [8], 
\drawunit/framebuffer/bufferWrtPtr [7], \drawunit/framebuffer/bufferWrtPtr [6], \drawunit/framebuffer/bufferWrtPtr [5], 
\drawunit/framebuffer/bufferWrtPtr [4], \drawunit/framebuffer/bufferWrtPtr [3], \drawunit/framebuffer/bufferWrtPtr [2], 
\drawunit/framebuffer/bufferWrtPtr [1], \drawunit/framebuffer/bufferWrtPtr [0]}),
    .ADDRB({\drawunit/framebuffer/bufferRdPtr [13], \drawunit/framebuffer/bufferRdPtr [12], \drawunit/framebuffer/bufferRdPtr [11], 
\drawunit/framebuffer/bufferRdPtr [10], \drawunit/framebuffer/bufferRdPtr [9], \drawunit/framebuffer/bufferRdPtr [8], 
\drawunit/framebuffer/bufferRdPtr [7], \drawunit/framebuffer/bufferRdPtr [6], \drawunit/framebuffer/bufferRdPtr [5], 
\drawunit/framebuffer/bufferRdPtr [4], \drawunit/framebuffer/bufferRdPtr [3], \drawunit/framebuffer/bufferRdPtr [2], 
\drawunit/framebuffer/bufferRdPtr [1], \drawunit/framebuffer/bufferRdPtr [0]}),
    .DIA({\drawunit/framebuffer/ddataIn [1]}),
    .DIB({N0}),
    .DOA({\NLW_drawunit/framebuffer/greenBuffer/Mram_memory2_DOA[0]_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/N18 })
  );
  X_RAMB16_S1_S1 #(
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ),
    .INIT_A ( 1'h0 ),
    .INIT_B ( 1'h0 ),
    .SRVAL_A ( 1'h0 ),
    .SRVAL_B ( 1'h0 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \drawunit/framebuffer/redBuffer/Mram_memory1  (
    .CLKA(clk_BUFGP),
    .CLKB(vgaClk_1305),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/write_ctrl_419 ),
    .WEB(N0),
    .ADDRA({\drawunit/framebuffer/bufferWrtPtr [13], \drawunit/framebuffer/bufferWrtPtr [12], \drawunit/framebuffer/bufferWrtPtr [11], 
\drawunit/framebuffer/bufferWrtPtr [10], \drawunit/framebuffer/bufferWrtPtr [9], \drawunit/framebuffer/bufferWrtPtr [8], 
\drawunit/framebuffer/bufferWrtPtr [7], \drawunit/framebuffer/bufferWrtPtr [6], \drawunit/framebuffer/bufferWrtPtr [5], 
\drawunit/framebuffer/bufferWrtPtr [4], \drawunit/framebuffer/bufferWrtPtr [3], \drawunit/framebuffer/bufferWrtPtr [2], 
\drawunit/framebuffer/bufferWrtPtr [1], \drawunit/framebuffer/bufferWrtPtr [0]}),
    .ADDRB({\drawunit/framebuffer/bufferRdPtr [13], \drawunit/framebuffer/bufferRdPtr [12], \drawunit/framebuffer/bufferRdPtr [11], 
\drawunit/framebuffer/bufferRdPtr [10], \drawunit/framebuffer/bufferRdPtr [9], \drawunit/framebuffer/bufferRdPtr [8], 
\drawunit/framebuffer/bufferRdPtr [7], \drawunit/framebuffer/bufferRdPtr [6], \drawunit/framebuffer/bufferRdPtr [5], 
\drawunit/framebuffer/bufferRdPtr [4], \drawunit/framebuffer/bufferRdPtr [3], \drawunit/framebuffer/bufferRdPtr [2], 
\drawunit/framebuffer/bufferRdPtr [1], \drawunit/framebuffer/bufferRdPtr [0]}),
    .DIA({\drawunit/framebuffer/ddataIn [2]}),
    .DIB({N0}),
    .DOA({\NLW_drawunit/framebuffer/redBuffer/Mram_memory1_DOA[0]_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/N25 })
  );
  X_RAMB16_S1_S1 #(
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ),
    .INIT_A ( 1'h0 ),
    .INIT_B ( 1'h0 ),
    .SRVAL_A ( 1'h0 ),
    .SRVAL_B ( 1'h0 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \drawunit/framebuffer/redBuffer/Mram_memory2  (
    .CLKA(clk_BUFGP),
    .CLKB(vgaClk_1305),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/write_ctrl1_420 ),
    .WEB(N0),
    .ADDRA({\drawunit/framebuffer/bufferWrtPtr [13], \drawunit/framebuffer/bufferWrtPtr [12], \drawunit/framebuffer/bufferWrtPtr [11], 
\drawunit/framebuffer/bufferWrtPtr [10], \drawunit/framebuffer/bufferWrtPtr [9], \drawunit/framebuffer/bufferWrtPtr [8], 
\drawunit/framebuffer/bufferWrtPtr [7], \drawunit/framebuffer/bufferWrtPtr [6], \drawunit/framebuffer/bufferWrtPtr [5], 
\drawunit/framebuffer/bufferWrtPtr [4], \drawunit/framebuffer/bufferWrtPtr [3], \drawunit/framebuffer/bufferWrtPtr [2], 
\drawunit/framebuffer/bufferWrtPtr [1], \drawunit/framebuffer/bufferWrtPtr [0]}),
    .ADDRB({\drawunit/framebuffer/bufferRdPtr [13], \drawunit/framebuffer/bufferRdPtr [12], \drawunit/framebuffer/bufferRdPtr [11], 
\drawunit/framebuffer/bufferRdPtr [10], \drawunit/framebuffer/bufferRdPtr [9], \drawunit/framebuffer/bufferRdPtr [8], 
\drawunit/framebuffer/bufferRdPtr [7], \drawunit/framebuffer/bufferRdPtr [6], \drawunit/framebuffer/bufferRdPtr [5], 
\drawunit/framebuffer/bufferRdPtr [4], \drawunit/framebuffer/bufferRdPtr [3], \drawunit/framebuffer/bufferRdPtr [2], 
\drawunit/framebuffer/bufferRdPtr [1], \drawunit/framebuffer/bufferRdPtr [0]}),
    .DIA({\drawunit/framebuffer/ddataIn [2]}),
    .DIB({N0}),
    .DOA({\NLW_drawunit/framebuffer/redBuffer/Mram_memory2_DOA[0]_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/N27 })
  );
  X_RAMB16_S1_S1 #(
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INIT_A ( 1'h0 ),
    .INIT_B ( 1'h0 ),
    .SRVAL_A ( 1'h0 ),
    .SRVAL_B ( 1'h0 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \drawunit/framebuffer/specialBuffer/Mram_memory2  (
    .CLKA(clk_BUFGP),
    .CLKB(vgaClk_1305),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/bufferWeS_351 ),
    .WEB(N0),
    .ADDRA({N0, \drawunit/framebuffer/bufferWrtPtr [12], \drawunit/framebuffer/bufferWrtPtr [11], \drawunit/framebuffer/bufferWrtPtr [10], 
\drawunit/framebuffer/bufferWrtPtr [9], \drawunit/framebuffer/bufferWrtPtr [8], \drawunit/framebuffer/bufferWrtPtr [7], 
\drawunit/framebuffer/bufferWrtPtr [6], \drawunit/framebuffer/bufferWrtPtr [5], \drawunit/framebuffer/bufferWrtPtr [4], 
\drawunit/framebuffer/bufferWrtPtr [3], \drawunit/framebuffer/bufferWrtPtr [2], \drawunit/framebuffer/bufferWrtPtr [1], 
\drawunit/framebuffer/bufferWrtPtr [0]}),
    .ADDRB({N0, \drawunit/framebuffer/bufferRdPtr [12], \drawunit/framebuffer/bufferRdPtr [11], \drawunit/framebuffer/bufferRdPtr [10], 
\drawunit/framebuffer/bufferRdPtr [9], \drawunit/framebuffer/bufferRdPtr [8], \drawunit/framebuffer/bufferRdPtr [7], 
\drawunit/framebuffer/bufferRdPtr [6], \drawunit/framebuffer/bufferRdPtr [5], \drawunit/framebuffer/bufferRdPtr [4], 
\drawunit/framebuffer/bufferRdPtr [3], \drawunit/framebuffer/bufferRdPtr [2], \drawunit/framebuffer/bufferRdPtr [1], 
\drawunit/framebuffer/bufferRdPtr [0]}),
    .DIA({\drawunit/framebuffer/ddataIn [2]}),
    .DIB({\NLW_drawunit/framebuffer/specialBuffer/Mram_memory2_DIB[0]_UNCONNECTED }),
    .DOA({\NLW_drawunit/framebuffer/specialBuffer/Mram_memory2_DOA[0]_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/S [2]})
  );
  X_RAMB16_S2_S2 #(
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INIT_A ( 2'h0 ),
    .INIT_B ( 2'h0 ),
    .SRVAL_A ( 2'h0 ),
    .SRVAL_B ( 2'h0 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \drawunit/framebuffer/specialBuffer/Mram_memory1  (
    .CLKA(clk_BUFGP),
    .CLKB(vgaClk_1305),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/bufferWeS_351 ),
    .WEB(N0),
    .ADDRA({\drawunit/framebuffer/bufferWrtPtr [12], \drawunit/framebuffer/bufferWrtPtr [11], \drawunit/framebuffer/bufferWrtPtr [10], 
\drawunit/framebuffer/bufferWrtPtr [9], \drawunit/framebuffer/bufferWrtPtr [8], \drawunit/framebuffer/bufferWrtPtr [7], 
\drawunit/framebuffer/bufferWrtPtr [6], \drawunit/framebuffer/bufferWrtPtr [5], \drawunit/framebuffer/bufferWrtPtr [4], 
\drawunit/framebuffer/bufferWrtPtr [3], \drawunit/framebuffer/bufferWrtPtr [2], \drawunit/framebuffer/bufferWrtPtr [1], 
\drawunit/framebuffer/bufferWrtPtr [0]}),
    .ADDRB({\drawunit/framebuffer/bufferRdPtr [12], \drawunit/framebuffer/bufferRdPtr [11], \drawunit/framebuffer/bufferRdPtr [10], 
\drawunit/framebuffer/bufferRdPtr [9], \drawunit/framebuffer/bufferRdPtr [8], \drawunit/framebuffer/bufferRdPtr [7], 
\drawunit/framebuffer/bufferRdPtr [6], \drawunit/framebuffer/bufferRdPtr [5], \drawunit/framebuffer/bufferRdPtr [4], 
\drawunit/framebuffer/bufferRdPtr [3], \drawunit/framebuffer/bufferRdPtr [2], \drawunit/framebuffer/bufferRdPtr [1], 
\drawunit/framebuffer/bufferRdPtr [0]}),
    .DIA({\drawunit/framebuffer/ddataIn [1], \drawunit/framebuffer/ddataIn [0]}),
    .DIB({\NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DIB[1]_UNCONNECTED , 
\NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DIB[0]_UNCONNECTED }),
    .DOA({\NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DOA[1]_UNCONNECTED , 
\NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DOA[0]_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/S [1], \drawunit/framebuffer/S [0]})
  );
  X_RAMB16_S36_S36 #(
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \drawunit/queue/PRAM/Mram_memory  (
    .CLKA(clk_BUFGP),
    .CLKB(clk_BUFGP),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/queue/delayedWe_849 ),
    .WEB(N0),
    .ADDRA({\drawunit/queue/wrtPtr [8], \drawunit/queue/wrtPtr [7], \drawunit/queue/wrtPtr [6], \drawunit/queue/wrtPtr [5], \drawunit/queue/wrtPtr [4]
, \drawunit/queue/wrtPtr [3], \drawunit/queue/wrtPtr [2], \drawunit/queue/wrtPtr [1], \drawunit/queue/wrtPtr [0]}),
    .ADDRB({\drawunit/queue/rdPtr [8], \drawunit/queue/rdPtr [7], \drawunit/queue/rdPtr [6], \drawunit/queue/rdPtr [5], \drawunit/queue/rdPtr [4], 
\drawunit/queue/rdPtr [3], \drawunit/queue/rdPtr [2], \drawunit/queue/rdPtr [1], \drawunit/queue/rdPtr [0]}),
    .DIA({\drawunit/queue/temp[30] , \drawunit/queue/temp[30] , \drawunit/queue/temp[30] , \drawunit/queue/temp[30] , \drawunit/queue/temp[30] , 
\drawunit/queue/temp[30] , \drawunit/queue/temp[25] , \drawunit/queue/temp[24] , \drawunit/queue/temp[23] , \drawunit/queue/temp[22] , 
\drawunit/queue/temp[21] , \drawunit/queue/temp[20] , \drawunit/queue/temp[19] , \drawunit/queue/temp[18] , \drawunit/queue/temp[17] , 
\drawunit/queue/temp[23] , \drawunit/queue/temp[15] , \drawunit/queue/temp[15] , \drawunit/queue/temp[15] , \drawunit/queue/temp[15] , 
\drawunit/queue/temp[15] , \drawunit/queue/temp[15] , \drawunit/queue/temp[9] , \drawunit/queue/temp[8] , \drawunit/queue/temp[7] , 
\drawunit/queue/temp[6] , \drawunit/queue/temp[5] , \drawunit/queue/temp[4] , \drawunit/queue/temp[3] , \drawunit/queue/temp[2] , 
\drawunit/queue/temp[1] , \drawunit/queue/temp[7] }),
    .DIB({\NLW_drawunit/queue/PRAM/Mram_memory_DIB[31]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[30]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB[29]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[28]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB[27]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[26]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB[25]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[24]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB[23]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[22]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB[21]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[20]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB[19]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[18]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB[17]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[16]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB[15]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[14]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB[13]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[12]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB[11]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[10]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB[9]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[8]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB[7]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[6]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB[5]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[4]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB[3]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[2]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB[1]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB[0]_UNCONNECTED }),
    .DIPA({N0, N0, N0, N0}),
    .DIPB({\NLW_drawunit/queue/PRAM/Mram_memory_DIPB[3]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIPB[2]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIPB[1]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIPB[0]_UNCONNECTED }),
    .DOA({\NLW_drawunit/queue/PRAM/Mram_memory_DOA[31]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[30]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA[29]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[28]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA[27]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[26]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA[25]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[24]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA[23]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[22]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA[21]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[20]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA[19]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[18]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA[17]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[16]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA[15]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[14]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA[13]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[12]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA[11]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[10]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA[9]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[8]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA[7]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[6]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA[5]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[4]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA[3]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[2]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA[1]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA[0]_UNCONNECTED }),
    .DOPA({\NLW_drawunit/queue/PRAM/Mram_memory_DOPA[3]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOPA[2]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOPA[1]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOPA[0]_UNCONNECTED }),
    .DOB({\drawunit/queue/dataOut [31], \drawunit/queue/dataOut [30], \drawunit/queue/dataOut [29], \drawunit/queue/dataOut [28], 
\drawunit/queue/dataOut [27], \drawunit/queue/dataOut [26], \drawunit/queue/dataOut [25], \drawunit/queue/dataOut [24], \drawunit/queue/dataOut [23], 
\drawunit/queue/dataOut [22], \drawunit/queue/dataOut [21], \drawunit/queue/dataOut [20], \drawunit/queue/dataOut [19], \drawunit/queue/dataOut [18], 
\drawunit/queue/dataOut [17], \drawunit/queue/dataOut [16], \drawunit/queue/dataOut [15], \drawunit/queue/dataOut [14], \drawunit/queue/dataOut [13], 
\drawunit/queue/dataOut [12], \drawunit/queue/dataOut [11], \drawunit/queue/dataOut [10], \drawunit/queue/dataOut [9], \drawunit/queue/dataOut [8], 
\drawunit/queue/dataOut [7], \drawunit/queue/dataOut [6], \drawunit/queue/dataOut [5], \drawunit/queue/dataOut [4], \drawunit/queue/dataOut [3], 
\drawunit/queue/dataOut [2], \drawunit/queue/dataOut [1], \drawunit/queue/dataOut [0]}),
    .DOPB({\NLW_drawunit/queue/PRAM/Mram_memory_DOPB[3]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOPB[2]_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOPB[1]_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOPB[0]_UNCONNECTED })
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \drawunit/painter/we_mux00001  (
    .ADR0(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR1(\drawunit/painter/state_FSM_FFd3_693 ),
    .ADR2(\drawunit/painter/state_FSM_FFd2_691 ),
    .O(\drawunit/painter/we_mux00001_719 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/painter/we_mux00002  (
    .ADR0(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR1(\drawunit/painter/newline_675 ),
    .O(\drawunit/painter/we_mux00002_720 )
  );
  X_MUX2   \drawunit/painter/we_mux0000_f5  (
    .IA(\drawunit/painter/we_mux00002_720 ),
    .IB(\drawunit/painter/we_mux00001_719 ),
    .SEL(\drawunit/painter/we_717 ),
    .O(\drawunit/painter/we_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/queue/full2111  (
    .ADR0(\drawunit/queue/count [1]),
    .ADR1(\drawunit/queue/count [2]),
    .ADR2(\drawunit/queue/count [0]),
    .ADR3(\drawunit/queue/count [7]),
    .O(\drawunit/queue/full2111_854 )
  );
  X_MUX2   \drawunit/queue/full211_f5  (
    .IA(N0),
    .IB(\drawunit/queue/full2111_854 ),
    .SEL(\drawunit/queue/count [8]),
    .O(\drawunit/queue/full211 )
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/painter/line_not00011  (
    .ADR0(\drawunit/painter/state_cmp_eq0000 ),
    .ADR1(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR2(\drawunit/painter/state_FSM_FFd3_693 ),
    .ADR3(\drawunit/painter/state_FSM_FFd2_691 ),
    .O(\drawunit/painter/line_not00011_674 )
  );
  X_MUX2   \drawunit/painter/line_not0001_f5  (
    .IA(\drawunit/painter/line_not00011_674 ),
    .IB(N0),
    .SEL(reset_IBUF_1299),
    .O(\drawunit/painter/line_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/vga_controller/hsync_cmp_eq000231  (
    .ADR0(\drawunit/vga_controller/totalPix [17]),
    .ADR1(\drawunit/vga_controller/totalPix [12]),
    .ADR2(\drawunit/vga_controller/totalPix [11]),
    .ADR3(\drawunit/vga_controller/totalPix [10]),
    .O(\drawunit/vga_controller/hsync_cmp_eq00023 )
  );
  X_MUX2   \drawunit/vga_controller/hsync_cmp_eq00023_f5  (
    .IA(N0),
    .IB(\drawunit/vga_controller/hsync_cmp_eq00023 ),
    .SEL(\drawunit/vga_controller/totalPix [18]),
    .O(\drawunit/vga_controller/N35 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/vga_controller/line_cmp_eq000061  (
    .ADR0(\drawunit/vga_controller/line [7]),
    .ADR1(\drawunit/vga_controller/line [6]),
    .ADR2(\drawunit/vga_controller/line [1]),
    .ADR3(\drawunit/vga_controller/line [0]),
    .O(\drawunit/vga_controller/line_cmp_eq000061_1119 )
  );
  X_MUX2   \drawunit/vga_controller/line_cmp_eq00006_f5  (
    .IA(N0),
    .IB(\drawunit/vga_controller/line_cmp_eq000061_1119 ),
    .SEL(\drawunit/vga_controller/line [8]),
    .O(\drawunit/vga_controller/line_cmp_eq00006 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/vga_controller/hsync_cmp_eq0002211  (
    .ADR0(\drawunit/vga_controller/totalPix [7]),
    .ADR1(\drawunit/vga_controller/totalPix [6]),
    .ADR2(\drawunit/vga_controller/totalPix [5]),
    .ADR3(\drawunit/vga_controller/totalPix [13]),
    .O(\drawunit/vga_controller/hsync_cmp_eq000221 )
  );
  X_MUX2   \drawunit/vga_controller/hsync_cmp_eq000221_f5  (
    .IA(\drawunit/vga_controller/hsync_cmp_eq000221 ),
    .IB(N0),
    .SEL(\drawunit/vga_controller/totalPix [9]),
    .O(\drawunit/vga_controller/N17 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \drawunit/vga_controller/hsync_cmp_eq00021171  (
    .ADR0(\drawunit/vga_controller/totalPix [15]),
    .ADR1(\drawunit/vga_controller/totalPix [16]),
    .ADR2(\drawunit/vga_controller/totalPix [1]),
    .ADR3(\drawunit/vga_controller/totalPix [0]),
    .O(\drawunit/vga_controller/hsync_cmp_eq00021171_1094 )
  );
  X_MUX2   \drawunit/vga_controller/hsync_cmp_eq0002117_f5  (
    .IA(\drawunit/vga_controller/hsync_cmp_eq00021171_1094 ),
    .IB(N0),
    .SEL(\drawunit/vga_controller/totalPix [19]),
    .O(\drawunit/vga_controller/hsync_cmp_eq0002117 )
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \drawunit/painter/swapBuffersCommand_mux00001  (
    .ADR0(\drawunit/painter/state_FSM_FFd1_688 ),
    .ADR1(\drawunit/painter/state_FSM_FFd2_691 ),
    .ADR2(\drawunit/painter/state_FSM_FFd3_693 ),
    .O(\drawunit/painter/swapBuffersCommand_mux00001_715 )
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \drawunit/painter/swapBuffersCommand_mux00002  (
    .ADR0(\drawunit/painter/state_FSM_FFd2_691 ),
    .ADR1(\drawunit/painter/state_cmp_eq0000 ),
    .ADR2(\drawunit/painter/state_FSM_FFd3_693 ),
    .O(\drawunit/painter/swapBuffersCommand_mux00002_716 )
  );
  X_MUX2   \drawunit/painter/swapBuffersCommand_mux0000_f5  (
    .IA(\drawunit/painter/swapBuffersCommand_mux00002_716 ),
    .IB(\drawunit/painter/swapBuffersCommand_mux00001_715 ),
    .SEL(\drawunit/painter/swapBuffersCommand_713 ),
    .O(\drawunit/painter/swapBuffersCommand_mux0000 )
  );
  X_BUF   \drawunit/vga_controller/totalPix_mux0000<19>1160/LUT3_L_BUF  (
    .I(\drawunit/vga_controller/totalPix_mux0000<19>1160/O ),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>1160_1260 )
  );
  X_LUT3 #(
    .INIT ( 8'hA8 ))
  \drawunit/vga_controller/totalPix_mux0000<19>1160  (
    .ADR0(\drawunit/vga_controller/totalPix [18]),
    .ADR1(\drawunit/vga_controller/totalPix [6]),
    .ADR2(\drawunit/vga_controller/totalPix [7]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>1160/O )
  );
  X_BUF   \drawunit/vga_controller/totalPix_mux0000<19>1205/LUT3_D_BUF  (
    .I(\drawunit/vga_controller/N11 ),
    .O(N113)
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \drawunit/vga_controller/totalPix_mux0000<19>1205  (
    .ADR0(\drawunit/vga_controller/totalPix_mux0000<19>133_1265 ),
    .ADR1(\drawunit/vga_controller/totalPix_mux0000<19>1110_1258 ),
    .ADR2(\drawunit/vga_controller/totalPix_mux0000<19>1194_1262 ),
    .O(\drawunit/vga_controller/N11 )
  );
  X_BUF   \drawunit/vga_controller/color_cmp_ge000021/LUT3_D_BUF  (
    .I(\drawunit/vga_controller/N22 ),
    .O(N114)
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \drawunit/vga_controller/color_cmp_ge000021  (
    .ADR0(\drawunit/vga_controller/pixCount [4]),
    .ADR1(\drawunit/vga_controller/pixCount [5]),
    .ADR2(\drawunit/vga_controller/pixCount [6]),
    .O(\drawunit/vga_controller/N22 )
  );
  X_BUF   \drawunit/vga_controller/offset_cmp_lt0000111/LUT4_D_BUF  (
    .I(\drawunit/vga_controller/color_cmp_lt00001 ),
    .O(N115)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \drawunit/vga_controller/offset_cmp_lt0000111  (
    .ADR0(\drawunit/vga_controller/pixCount [5]),
    .ADR1(\drawunit/vga_controller/pixCount [6]),
    .ADR2(\drawunit/vga_controller/pixCount [7]),
    .ADR3(\drawunit/vga_controller/pixCount [4]),
    .O(\drawunit/vga_controller/color_cmp_lt00001 )
  );
  X_BUF   \drawunit/vga_controller/offset_mux0000<0>326/LUT2_D_BUF  (
    .I(\drawunit/vga_controller/N16 ),
    .O(N116)
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \drawunit/vga_controller/offset_mux0000<0>326  (
    .ADR0(\drawunit/vga_controller/hsync_cmp_eq0002 ),
    .ADR1(\drawunit/vga_controller/offset_mux0000<0>319_1146 ),
    .O(\drawunit/vga_controller/N16 )
  );
  X_BUF   \drawunit/vga_controller/offset_and000052/LUT2_L_BUF  (
    .I(\drawunit/vga_controller/offset_and000052/O ),
    .O(\drawunit/vga_controller/offset_and0000 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/offset_and000052  (
    .ADR0(\drawunit/vga_controller/offset_and000012_1141 ),
    .ADR1(\drawunit/vga_controller/offset_and000044_1143 ),
    .O(\drawunit/vga_controller/offset_and000052/O )
  );
  X_BUF   \drawunit/framebuffer/color_cmp_ge0000110/LUT2_L_BUF  (
    .I(\drawunit/framebuffer/color_cmp_ge0000110/O ),
    .O(\drawunit/framebuffer/color_cmp_ge0000110_407 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/framebuffer/color_cmp_ge0000110  (
    .ADR0(\drawunit/rdPtr [12]),
    .ADR1(\drawunit/rdPtr [13]),
    .O(\drawunit/framebuffer/color_cmp_ge0000110/O )
  );
  X_BUF   \drawunit/vga_controller/totalPix_mux0000<19>1194_SW0/LUT4_L_BUF  (
    .I(\drawunit/vga_controller/totalPix_mux0000<19>1194_SW0/O ),
    .O(N105)
  );
  X_LUT4 #(
    .INIT ( 16'hD5FF ))
  \drawunit/vga_controller/totalPix_mux0000<19>1194_SW0  (
    .ADR0(\drawunit/vga_controller/hsync_cmp_eq0002117 ),
    .ADR1(\drawunit/vga_controller/totalPix_mux0000<19>1170_1261 ),
    .ADR2(\drawunit/vga_controller/totalPix [14]),
    .ADR3(\drawunit/vga_controller/hsync_cmp_eq0002132_1095 ),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>1194_SW0/O )
  );
  X_IPAD #(
    .LOC ( "C9" ))
  clk_1253 (
    .PAD(clk)
  );
  X_OPAD #(
    .LOC ( "G15" ))
  \color<0>  (
    .PAD(color[0])
  );
  X_OPAD #(
    .LOC ( "H15" ))
  \color<1>  (
    .PAD(color[1])
  );
  X_OPAD #(
    .LOC ( "H14" ))
  \color<2>  (
    .PAD(color[2])
  );
  X_OPAD #(
    .LOC ( "F15" ))
  hsync_1257 (
    .PAD(hsync)
  );
  X_IPAD #(
    .LOC ( "V4" ))
  reset_1258 (
    .PAD(NlwRenamedSig_IO_reset)
  );
  X_OPAD #(
    .LOC ( "F14" ))
  vsync_1259 (
    .PAD(vsync)
  );
  X_PD   reset_PULLDOWN (
    .O(NlwRenamedSig_IO_reset)
  );
  X_CKBUF   \clk_BUFGP/BUFG  (
    .I(\clk_BUFGP/IBUFG_2 ),
    .O(clk_BUFGP)
  );
  X_CKBUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk_BUFGP/IBUFG_2 )
  );
  X_OBUF   color_0_OBUF (
    .I(\drawunit/vga_controller/color [0]),
    .O(color[0])
  );
  X_OBUF   color_1_OBUF (
    .I(\drawunit/vga_controller/color [1]),
    .O(color[1])
  );
  X_OBUF   color_2_OBUF (
    .I(\drawunit/vga_controller/color [2]),
    .O(color[2])
  );
  X_OBUF   hsync_OBUF (
    .I(\drawunit/vga_controller/hsync_1090 ),
    .O(hsync)
  );
  X_OBUF   vsync_OBUF (
    .I(\drawunit/vga_controller/vsync_1279 ),
    .O(vsync)
  );
  X_ZERO   NlwBlock_top_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_top_VCC (
    .O(VCC)
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

