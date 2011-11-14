////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.63c
//  \   \         Application: netgen
//  /   /         Filename: Painter_synthesis.v
// /___/   /\     Timestamp: Sun Nov 13 21:55:51 2011
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim top.ngc Painter_synthesis.v 
// Device	: xc3s500e-4-fg320
// Input file	: top.ngc
// Output file	: C:\Users\jhparker\3710\Painter\netgen\synthesis\Painter_synthesis.v
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
  wire \Mcompar_data_10_cmp_ge0000_cy<0>_rt_2 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<1>1 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<2>1 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<2>_0_rt_7 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<2>_rt_8 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<3>1 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<4>1 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<4>_0_rt_13 ;
  wire \Mcompar_data_10_cmp_ge0000_cy<5>1 ;
  wire \Mcompar_data_10_cmp_ge0000_lut[0] ;
  wire \Mcompar_data_10_cmp_ge0000_lut[1] ;
  wire \Mcompar_data_10_cmp_ge0000_lut<1>1_21 ;
  wire \Mcompar_data_10_cmp_ge0000_lut[3] ;
  wire \Mcompar_data_10_cmp_ge0000_lut<3>1 ;
  wire \Mcompar_data_10_cmp_ge0000_lut[4] ;
  wire \Mcompar_data_10_cmp_ge0000_lut[5] ;
  wire \Mcompar_data_10_cmp_ge0000_lut<5>1 ;
  wire \Mcompar_data_10_cmp_ge0000_lut[6] ;
  wire \Mcompar_data_10_cmp_ge0000_lut<6>1_28 ;
  wire \Mcompar_data_10_cmp_ge0000_lut[7] ;
  wire \Mcompar_data_10_cmp_ge0000_lut[8] ;
  wire \Mcount_cycles_cy<10>_rt_33 ;
  wire \Mcount_cycles_cy<11>_rt_35 ;
  wire \Mcount_cycles_cy<12>_rt_37 ;
  wire \Mcount_cycles_cy<13>_rt_39 ;
  wire \Mcount_cycles_cy<14>_rt_41 ;
  wire \Mcount_cycles_cy<1>_rt_43 ;
  wire \Mcount_cycles_cy<2>_rt_45 ;
  wire \Mcount_cycles_cy<3>_rt_47 ;
  wire \Mcount_cycles_cy<4>_rt_49 ;
  wire \Mcount_cycles_cy<5>_rt_51 ;
  wire \Mcount_cycles_cy<6>_rt_53 ;
  wire \Mcount_cycles_cy<7>_rt_55 ;
  wire \Mcount_cycles_cy<8>_rt_57 ;
  wire \Mcount_cycles_cy<9>_rt_59 ;
  wire \Mcount_cycles_xor<15>_rt_61 ;
  wire \Mcount_i_cy<1>_rt_64 ;
  wire \Mcount_i_cy<2>_rt_66 ;
  wire \Mcount_i_cy<3>_rt_68 ;
  wire \Mcount_i_cy<4>_rt_70 ;
  wire \Mcount_i_cy<5>_rt_72 ;
  wire \Mcount_i_cy<6>_rt_74 ;
  wire \Mcount_i_cy<7>_rt_76 ;
  wire \Mcount_i_cy<8>_rt_78 ;
  wire \Mcount_i_xor<9>_rt_80 ;
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
  wire clk_BUFGP_161;
  wire cycles_not0001;
  wire data_0_mux0000;
  wire data_10_and0000;
  wire data_10_cmp_ge0000;
  wire data_10_or0000;
  wire data_1_mux0000;
  wire data_2_mux0000;
  wire data_3_mux0000_192;
  wire data_4_mux0000;
  wire data_5_mux0000_196;
  wire data_6_cmp_lt0000;
  wire data_6_mux0000_199;
  wire data_8_mux0000;
  wire data_9_mux0000;
  wire data_9_not0001;
  wire \drawunit/Madd_rdPtr_cy<10>_rt_208 ;
  wire \drawunit/Madd_rdPtr_cy<11>_rt_210 ;
  wire \drawunit/Madd_rdPtr_cy<12>_rt_212 ;
  wire \drawunit/Madd_rdPtr_cy<13>_rt_214 ;
  wire \drawunit/Madd_rdPtr_cy<8>_rt_223 ;
  wire \drawunit/Madd_rdPtr_cy<9>_rt_225 ;
  wire \drawunit/empty ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<10>_rt_237 ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<12>_rt_240 ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<13>_rt_242 ;
  wire \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<7>_rt_250 ;
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
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<10>_rt_266 ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<12>_rt_269 ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<13>_rt_271 ;
  wire \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<7>_rt_279 ;
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
  wire \drawunit/framebuffer/bufferWe_347 ;
  wire \drawunit/framebuffer/bufferWeS_348 ;
  wire \drawunit/framebuffer/bufferWeS_mux0000 ;
  wire \drawunit/framebuffer/bufferWe_cmp_ge0000 ;
  wire \drawunit/framebuffer/bufferWe_cmp_ge0000110_351 ;
  wire \drawunit/framebuffer/bufferWe_cmp_ge000015_352 ;
  wire \drawunit/framebuffer/bufferWe_mux0000 ;
  wire \drawunit/framebuffer/bufferWe_or0000_inv ;
  wire \drawunit/framebuffer/color_cmp_ge0000 ;
  wire \drawunit/framebuffer/color_cmp_ge0000110_404 ;
  wire \drawunit/framebuffer/color_cmp_ge000015_405 ;
  wire \drawunit/framebuffer/inst_LPM_FF_412 ;
  wire \drawunit/framebuffer/reset_inv ;
  wire \drawunit/framebuffer/state_414 ;
  wire \drawunit/framebuffer/state_not0001 ;
  wire \drawunit/framebuffer/write_ctrl_416 ;
  wire \drawunit/framebuffer/write_ctrl1_417 ;
  wire \drawunit/painter/Madd_add0000_addsub0000_cy<10>_rt_420 ;
  wire \drawunit/painter/Madd_add0000_addsub0000_cy<11>_rt_422 ;
  wire \drawunit/painter/Madd_add0000_addsub0000_cy<12>_rt_424 ;
  wire \drawunit/painter/Madd_add0000_addsub0000_cy<13>_rt_426 ;
  wire \drawunit/painter/Madd_add0000_addsub0000_cy<14>_rt_427 ;
  wire \drawunit/painter/Madd_add0000_addsub0000_cy<8>_rt_436 ;
  wire \drawunit/painter/Madd_add0000_addsub0000_cy<9>_rt_438 ;
  wire \drawunit/painter/Madd_add0000_index0000 ;
  wire \drawunit/painter/Msub__sub0000_cy<0>_rt_517 ;
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
  wire \drawunit/painter/line_not00011_671 ;
  wire \drawunit/painter/newline_672 ;
  wire \drawunit/painter/newline_mux0000 ;
  wire \drawunit/painter/newline_not0001 ;
  wire \drawunit/painter/re_675 ;
  wire \drawunit/painter/re_mux0000 ;
  wire \drawunit/painter/state_FSM_FFd1_685 ;
  wire \drawunit/painter/state_FSM_FFd1-In22_686 ;
  wire \drawunit/painter/state_FSM_FFd1-In25 ;
  wire \drawunit/painter/state_FSM_FFd2_688 ;
  wire \drawunit/painter/state_FSM_FFd2-In12_689 ;
  wire \drawunit/painter/state_FSM_FFd3_690 ;
  wire \drawunit/painter/state_FSM_FFd3-In ;
  wire \drawunit/painter/state_cmp_eq0000 ;
  wire \drawunit/painter/state_cmp_ge0000 ;
  wire \drawunit/painter/state_cmp_le0000 ;
  wire \drawunit/painter/swapBuffersCommand_710 ;
  wire \drawunit/painter/swapBuffersCommand_mux0000 ;
  wire \drawunit/painter/swapBuffersCommand_mux00001_712 ;
  wire \drawunit/painter/swapBuffersCommand_mux00002_713 ;
  wire \drawunit/painter/we_714 ;
  wire \drawunit/painter/we_mux0000 ;
  wire \drawunit/painter/we_mux00001_716 ;
  wire \drawunit/painter/we_mux00002_717 ;
  wire \drawunit/queue/Mcount_rdPtr_cy<1>_rt_739 ;
  wire \drawunit/queue/Mcount_rdPtr_cy<2>_rt_741 ;
  wire \drawunit/queue/Mcount_rdPtr_cy<3>_rt_743 ;
  wire \drawunit/queue/Mcount_rdPtr_cy<4>_rt_745 ;
  wire \drawunit/queue/Mcount_rdPtr_cy<5>_rt_747 ;
  wire \drawunit/queue/Mcount_rdPtr_cy<6>_rt_749 ;
  wire \drawunit/queue/Mcount_rdPtr_cy<7>_rt_751 ;
  wire \drawunit/queue/Mcount_rdPtr_xor<8>_rt_753 ;
  wire \drawunit/queue/Mcount_wrtPtr_cy<1>_rt_756 ;
  wire \drawunit/queue/Mcount_wrtPtr_cy<2>_rt_758 ;
  wire \drawunit/queue/Mcount_wrtPtr_cy<3>_rt_760 ;
  wire \drawunit/queue/Mcount_wrtPtr_cy<4>_rt_762 ;
  wire \drawunit/queue/Mcount_wrtPtr_cy<5>_rt_764 ;
  wire \drawunit/queue/Mcount_wrtPtr_cy<6>_rt_766 ;
  wire \drawunit/queue/Mcount_wrtPtr_cy<7>_rt_768 ;
  wire \drawunit/queue/Mcount_wrtPtr_xor<8>_rt_770 ;
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
  wire \drawunit/queue/count_not000212_810 ;
  wire \drawunit/queue/count_not0002310 ;
  wire \drawunit/queue/count_not0002341_812 ;
  wire \drawunit/queue/count_not0003_inv ;
  wire \drawunit/queue/delayedWe_846 ;
  wire \drawunit/queue/delayedWe_mux0000 ;
  wire \drawunit/queue/empty12_848 ;
  wire \drawunit/queue/empty37_849 ;
  wire \drawunit/queue/full211 ;
  wire \drawunit/queue/full2111_851 ;
  wire \drawunit/queue/full24_852 ;
  wire \drawunit/queue/state_894 ;
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
  wire \drawunit/swapBuffers_957 ;
  wire \drawunit/swapBuffersCommand_inv ;
  wire \drawunit/swapBuffersOnVsync_959 ;
  wire \drawunit/swapBuffersOnVsync_and0000 ;
  wire \drawunit/swapBuffersOnVsync_not0001 ;
  wire \drawunit/vga_controller/Henable_962 ;
  wire \drawunit/vga_controller/Henable_mux0000 ;
  wire \drawunit/vga_controller/Henable_mux000011_964 ;
  wire \drawunit/vga_controller/Henable_mux000027_965 ;
  wire \drawunit/vga_controller/Henable_mux000061_966 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_cy<1>_rt_969 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_cy<2>_rt_971 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_cy<3>_rt_973 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_cy<4>_rt_975 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_cy<5>_rt_977 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_cy<6>_rt_979 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_cy<7>_rt_981 ;
  wire \drawunit/vga_controller/Madd_line_addsub0000_xor<8>_rt_983 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<1>_rt_986 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<2>_rt_988 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<3>_rt_990 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<4>_rt_992 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<5>_rt_994 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<6>_rt_996 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<7>_rt_998 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_cy<8>_rt_1000 ;
  wire \drawunit/vga_controller/Madd_offset_share0000_xor<9>_rt_1002 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<1>_rt_1005 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<2>_rt_1007 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<3>_rt_1009 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<4>_rt_1011 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<5>_rt_1013 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<6>_rt_1015 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<7>_rt_1017 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<8>_rt_1019 ;
  wire \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<9>_rt_1021 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<10>_rt_1024 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<11>_rt_1026 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<12>_rt_1028 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<13>_rt_1030 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<14>_rt_1032 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<15>_rt_1034 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<16>_rt_1036 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<17>_rt_1038 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<18>_rt_1040 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<1>_rt_1042 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<2>_rt_1044 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<3>_rt_1046 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<4>_rt_1048 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<5>_rt_1050 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<6>_rt_1052 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<7>_rt_1054 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<8>_rt_1056 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<9>_rt_1058 ;
  wire \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<19>_rt_1060 ;
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
  wire \drawunit/vga_controller/color_and0000_1082 ;
  wire \drawunit/vga_controller/color_cmp_lt00001 ;
  wire \drawunit/vga_controller/hsync_1087 ;
  wire \drawunit/vga_controller/hsync_and0000 ;
  wire \drawunit/vga_controller/hsync_cmp_eq0002 ;
  wire \drawunit/vga_controller/hsync_cmp_eq0002117 ;
  wire \drawunit/vga_controller/hsync_cmp_eq00021171_1091 ;
  wire \drawunit/vga_controller/hsync_cmp_eq0002132_1092 ;
  wire \drawunit/vga_controller/hsync_cmp_eq000221 ;
  wire \drawunit/vga_controller/hsync_cmp_eq00023 ;
  wire \drawunit/vga_controller/hsync_mux0000_1095 ;
  wire \drawunit/vga_controller/line_cmp_eq000015_1114 ;
  wire \drawunit/vga_controller/line_cmp_eq00006 ;
  wire \drawunit/vga_controller/line_cmp_eq000061_1116 ;
  wire \drawunit/vga_controller/line_not0001_1126 ;
  wire \drawunit/vga_controller/offset_and0000 ;
  wire \drawunit/vga_controller/offset_and000012_1138 ;
  wire \drawunit/vga_controller/offset_and000034_1139 ;
  wire \drawunit/vga_controller/offset_and000044_1140 ;
  wire \drawunit/vga_controller/offset_and00006_1141 ;
  wire \drawunit/vga_controller/offset_mux0000<0>319_1143 ;
  wire \drawunit/vga_controller/offset_mux0000<0>37_1144 ;
  wire \drawunit/vga_controller/pixCount_and0000 ;
  wire \drawunit/vga_controller/pixCount_cmp_eq0000_1185 ;
  wire \drawunit/vga_controller/pixCount_cmp_eq0001_1186 ;
  wire \drawunit/vga_controller/pixCount_cmp_eq0002 ;
  wire \drawunit/vga_controller/pixCount_cmp_eq0003 ;
  wire \drawunit/vga_controller/pixCount_mux0000<9>117_1199 ;
  wire \drawunit/vga_controller/pixCount_mux0000<9>138_1200 ;
  wire \drawunit/vga_controller/pixCount_mux0000<9>154_1201 ;
  wire \drawunit/vga_controller/totalPix_and0000 ;
  wire \drawunit/vga_controller/totalPix_cmp_eq0002_1243 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>1110_1255 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>1111_1256 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>1160_1257 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>1170_1258 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>1194_1259 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>12_1260 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>122_1261 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>133_1262 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>154_1263 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>165_1264 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>188_1265 ;
  wire \drawunit/vga_controller/totalPix_mux0000<19>30_1266 ;
  wire \drawunit/vga_controller/vsync_1276 ;
  wire \drawunit/vga_controller/vsync_mux0000 ;
  wire \drawunit/vga_controller/vsync_mux000028_1278 ;
  wire \drawunit/vga_controller/vsync_mux000031_1279 ;
  wire \drawunit/vga_controller/vsync_mux000071_1280 ;
  wire \drawunit/vga_controller/vsync_mux00008_1281 ;
  wire full;
  wire i_not0001;
  wire reset_IBUF_1296;
  wire state_1297;
  wire state_cmp_lt0000;
  wire state_cmp_lt0000212_1299;
  wire state_cmp_lt0000225_1300;
  wire state_mux0000;
  wire vgaClk_1302;
  wire vgaClk1;
  wire vgaClk_not0001;
  wire we_1306;
  wire we_mux0000;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<17>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<16>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<15>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<14>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<13>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<12>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<11>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<10>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<9>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<8>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<7>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<6>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<5>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<4>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<3>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<2>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<1>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<0>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<35>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<34>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<33>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<32>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<31>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<30>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<29>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<28>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<27>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<26>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<25>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<24>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<23>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<22>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<21>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<20>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<19>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<18>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<17>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<16>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_P<15>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<17>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<16>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<15>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<14>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<13>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<12>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<11>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<10>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<9>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<8>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<7>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<6>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<5>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<4>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<3>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<2>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<1>_UNCONNECTED ;
  wire \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<0>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<17>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<16>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<15>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<14>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<13>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<12>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<11>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<10>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<9>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<8>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<7>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<6>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<5>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<4>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<3>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<2>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<1>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<0>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<35>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<34>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<33>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<32>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<31>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<30>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<29>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<28>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<27>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<26>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<25>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<24>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<23>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<22>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<21>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<20>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<19>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<18>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<17>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<16>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_P<15>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<17>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<16>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<15>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<14>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<13>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<12>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<11>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<10>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<9>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<8>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<7>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<6>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<5>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<4>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<3>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<2>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<1>_UNCONNECTED ;
  wire \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<0>_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/blueBuffer/Mram_memory1_DOA<0>_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/blueBuffer/Mram_memory2_DOA<0>_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/greenBuffer/Mram_memory1_DOA<0>_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/greenBuffer/Mram_memory2_DOA<0>_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/redBuffer/Mram_memory1_DOA<0>_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/redBuffer/Mram_memory2_DOA<0>_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/specialBuffer/Mram_memory2_DIB<0>_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/specialBuffer/Mram_memory2_DOA<0>_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DIB<1>_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DIB<0>_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DOA<1>_UNCONNECTED ;
  wire \NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DOA<0>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<31>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<30>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<29>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<28>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<27>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<26>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<25>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<24>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<23>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<22>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<21>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<20>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<19>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<18>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<17>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<16>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<15>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<14>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<13>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<12>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<11>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<10>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<9>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<8>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<7>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<6>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<5>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<4>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<3>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<2>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<1>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIB<0>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIPB<3>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIPB<2>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIPB<1>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DIPB<0>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<31>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<30>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<29>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<28>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<27>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<26>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<25>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<24>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<23>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<22>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<21>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<20>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<19>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<18>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<17>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<16>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<15>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<14>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<13>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<12>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<11>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<10>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<9>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<8>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<7>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<6>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<5>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<4>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<3>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<2>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<1>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOA<0>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPA<3>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPA<2>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPA<1>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPA<0>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPB<3>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPB<2>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPB<1>_UNCONNECTED ;
  wire \NLW_drawunit/queue/PRAM/Mram_memory_DOPB<0>_UNCONNECTED ;
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
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDRE   data_10 (
    .C(clk_BUFGP_161),
    .CE(data_10_and0000),
    .D(N1),
    .R(data_10_or0000),
    .Q(data[10])
  );
  FDRE   data_9 (
    .C(clk_BUFGP_161),
    .CE(data_9_not0001),
    .D(data_9_mux0000),
    .R(reset_IBUF_1296),
    .Q(data[9])
  );
  FDRE   data_8 (
    .C(clk_BUFGP_161),
    .CE(data_9_not0001),
    .D(data_8_mux0000),
    .R(reset_IBUF_1296),
    .Q(data[8])
  );
  FDRE   data_5 (
    .C(clk_BUFGP_161),
    .CE(data_9_not0001),
    .D(data_5_mux0000_196),
    .R(reset_IBUF_1296),
    .Q(data[5])
  );
  FDRE   data_7 (
    .C(clk_BUFGP_161),
    .CE(data_9_not0001),
    .D(data_0_mux0000),
    .R(reset_IBUF_1296),
    .Q(data[7])
  );
  FDRE   data_6 (
    .C(clk_BUFGP_161),
    .CE(data_9_not0001),
    .D(data_6_mux0000_199),
    .R(reset_IBUF_1296),
    .Q(data[6])
  );
  FDRE   data_2 (
    .C(clk_BUFGP_161),
    .CE(data_9_not0001),
    .D(data_2_mux0000),
    .R(reset_IBUF_1296),
    .Q(data[2])
  );
  FDRE   data_4 (
    .C(clk_BUFGP_161),
    .CE(data_9_not0001),
    .D(data_4_mux0000),
    .R(reset_IBUF_1296),
    .Q(data[4])
  );
  FDRE   data_3 (
    .C(clk_BUFGP_161),
    .CE(data_9_not0001),
    .D(data_3_mux0000_192),
    .R(reset_IBUF_1296),
    .Q(data[3])
  );
  FDRE   data_1 (
    .C(clk_BUFGP_161),
    .CE(data_9_not0001),
    .D(data_1_mux0000),
    .R(reset_IBUF_1296),
    .Q(data[1])
  );
  FDR   we (
    .C(clk_BUFGP_161),
    .D(we_mux0000),
    .R(reset_IBUF_1296),
    .Q(we_1306)
  );
  FDR   vgaClk (
    .C(clk_BUFGP_161),
    .D(vgaClk_not0001),
    .R(reset_IBUF_1296),
    .Q(vgaClk1)
  );
  FDRE   state (
    .C(clk_BUFGP_161),
    .CE(state_cmp_lt0000),
    .D(state_mux0000),
    .R(reset_IBUF_1296),
    .Q(state_1297)
  );
  FDRE   cycles_0 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[0]),
    .R(reset_IBUF_1296),
    .Q(cycles[0])
  );
  FDRE   cycles_1 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[1]),
    .R(reset_IBUF_1296),
    .Q(cycles[1])
  );
  FDRE   cycles_2 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[2]),
    .R(reset_IBUF_1296),
    .Q(cycles[2])
  );
  FDRE   cycles_3 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[3]),
    .R(reset_IBUF_1296),
    .Q(cycles[3])
  );
  FDRE   cycles_4 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[4]),
    .R(reset_IBUF_1296),
    .Q(cycles[4])
  );
  FDRE   cycles_5 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[5]),
    .R(reset_IBUF_1296),
    .Q(cycles[5])
  );
  FDRE   cycles_6 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[6]),
    .R(reset_IBUF_1296),
    .Q(cycles[6])
  );
  FDRE   cycles_7 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[7]),
    .R(reset_IBUF_1296),
    .Q(cycles[7])
  );
  FDRE   cycles_8 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[8]),
    .R(reset_IBUF_1296),
    .Q(cycles[8])
  );
  FDRE   cycles_9 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[9]),
    .R(reset_IBUF_1296),
    .Q(cycles[9])
  );
  FDRE   cycles_10 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[10]),
    .R(reset_IBUF_1296),
    .Q(cycles[10])
  );
  FDRE   cycles_11 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[11]),
    .R(reset_IBUF_1296),
    .Q(cycles[11])
  );
  FDRE   cycles_12 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[12]),
    .R(reset_IBUF_1296),
    .Q(cycles[12])
  );
  FDRE   cycles_13 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[13]),
    .R(reset_IBUF_1296),
    .Q(cycles[13])
  );
  FDRE   cycles_14 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[14]),
    .R(reset_IBUF_1296),
    .Q(cycles[14])
  );
  FDRE   cycles_15 (
    .C(clk_BUFGP_161),
    .CE(cycles_not0001),
    .D(Result[15]),
    .R(reset_IBUF_1296),
    .Q(cycles[15])
  );
  FDRE   i_0 (
    .C(clk_BUFGP_161),
    .CE(i_not0001),
    .D(\Result<0>1 ),
    .R(reset_IBUF_1296),
    .Q(i[0])
  );
  FDRE   i_1 (
    .C(clk_BUFGP_161),
    .CE(i_not0001),
    .D(\Result<1>1 ),
    .R(reset_IBUF_1296),
    .Q(i[1])
  );
  FDRE   i_2 (
    .C(clk_BUFGP_161),
    .CE(i_not0001),
    .D(\Result<2>1 ),
    .R(reset_IBUF_1296),
    .Q(i[2])
  );
  FDRE   i_3 (
    .C(clk_BUFGP_161),
    .CE(i_not0001),
    .D(\Result<3>1 ),
    .R(reset_IBUF_1296),
    .Q(i[3])
  );
  FDRE   i_4 (
    .C(clk_BUFGP_161),
    .CE(i_not0001),
    .D(\Result<4>1 ),
    .R(reset_IBUF_1296),
    .Q(i[4])
  );
  FDRE   i_5 (
    .C(clk_BUFGP_161),
    .CE(i_not0001),
    .D(\Result<5>1 ),
    .R(reset_IBUF_1296),
    .Q(i[5])
  );
  FDRE   i_6 (
    .C(clk_BUFGP_161),
    .CE(i_not0001),
    .D(\Result<6>1 ),
    .R(reset_IBUF_1296),
    .Q(i[6])
  );
  FDRE   i_7 (
    .C(clk_BUFGP_161),
    .CE(i_not0001),
    .D(\Result<7>1 ),
    .R(reset_IBUF_1296),
    .Q(i[7])
  );
  FDRE   i_8 (
    .C(clk_BUFGP_161),
    .CE(i_not0001),
    .D(\Result<8>1 ),
    .R(reset_IBUF_1296),
    .Q(i[8])
  );
  FDRE   i_9 (
    .C(clk_BUFGP_161),
    .CE(i_not0001),
    .D(\Result<9>1 ),
    .R(reset_IBUF_1296),
    .Q(i[9])
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\Mcompar_data_10_cmp_ge0000_cy<0>_rt_2 ),
    .O(Mcompar_data_10_cmp_ge0000_cy[0])
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<1>  (
    .CI(Mcompar_data_10_cmp_ge0000_cy[0]),
    .DI(N1),
    .S(\Mcompar_data_10_cmp_ge0000_lut[1] ),
    .O(Mcompar_data_10_cmp_ge0000_cy[1])
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<2>  (
    .CI(Mcompar_data_10_cmp_ge0000_cy[1]),
    .DI(N0),
    .S(\Mcompar_data_10_cmp_ge0000_cy<2>_rt_8 ),
    .O(Mcompar_data_10_cmp_ge0000_cy[2])
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<3>  (
    .CI(Mcompar_data_10_cmp_ge0000_cy[2]),
    .DI(N1),
    .S(\Mcompar_data_10_cmp_ge0000_lut[3] ),
    .O(Mcompar_data_10_cmp_ge0000_cy[3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_data_10_cmp_ge0000_lut<4>  (
    .I0(cycles[8]),
    .I1(cycles[9]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[4] )
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<4>  (
    .CI(Mcompar_data_10_cmp_ge0000_cy[3]),
    .DI(N0),
    .S(\Mcompar_data_10_cmp_ge0000_lut[4] ),
    .O(Mcompar_data_10_cmp_ge0000_cy[4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_data_10_cmp_ge0000_lut<5>  (
    .I0(cycles[10]),
    .I1(cycles[11]),
    .I2(cycles[12]),
    .I3(cycles[13]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[5] )
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<5>  (
    .CI(Mcompar_data_10_cmp_ge0000_cy[4]),
    .DI(N1),
    .S(\Mcompar_data_10_cmp_ge0000_lut[5] ),
    .O(Mcompar_data_10_cmp_ge0000_cy[5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_data_10_cmp_ge0000_lut<6>  (
    .I0(cycles[14]),
    .I1(cycles[15]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[6] )
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<6>  (
    .CI(Mcompar_data_10_cmp_ge0000_cy[5]),
    .DI(N0),
    .S(\Mcompar_data_10_cmp_ge0000_lut[6] ),
    .O(data_10_cmp_ge0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_data_10_cmp_ge0000_lut<0>  (
    .I0(cycles[0]),
    .I1(cycles[1]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[0] )
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<0>_0  (
    .CI(N1),
    .DI(N0),
    .S(\Mcompar_data_10_cmp_ge0000_lut[0] ),
    .O(\Mcompar_data_10_cmp_ge0000_cy<0>1 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \Mcompar_data_10_cmp_ge0000_lut<1>1  (
    .I0(cycles[2]),
    .I1(cycles[3]),
    .O(\Mcompar_data_10_cmp_ge0000_lut<1>1_21 )
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<1>_0  (
    .CI(\Mcompar_data_10_cmp_ge0000_cy<0>1 ),
    .DI(N1),
    .S(\Mcompar_data_10_cmp_ge0000_lut<1>1_21 ),
    .O(\Mcompar_data_10_cmp_ge0000_cy<1>1 )
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<2>_0  (
    .CI(\Mcompar_data_10_cmp_ge0000_cy<1>1 ),
    .DI(N0),
    .S(\Mcompar_data_10_cmp_ge0000_cy<2>_0_rt_7 ),
    .O(\Mcompar_data_10_cmp_ge0000_cy<2>1 )
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<3>_0  (
    .CI(\Mcompar_data_10_cmp_ge0000_cy<2>1 ),
    .DI(N1),
    .S(\Mcompar_data_10_cmp_ge0000_lut<3>1 ),
    .O(\Mcompar_data_10_cmp_ge0000_cy<3>1 )
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<4>_0  (
    .CI(\Mcompar_data_10_cmp_ge0000_cy<3>1 ),
    .DI(N0),
    .S(\Mcompar_data_10_cmp_ge0000_cy<4>_0_rt_13 ),
    .O(\Mcompar_data_10_cmp_ge0000_cy<4>1 )
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<5>_0  (
    .CI(\Mcompar_data_10_cmp_ge0000_cy<4>1 ),
    .DI(N1),
    .S(\Mcompar_data_10_cmp_ge0000_lut<5>1 ),
    .O(\Mcompar_data_10_cmp_ge0000_cy<5>1 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_data_10_cmp_ge0000_lut<6>1  (
    .I0(cycles[8]),
    .I1(cycles[9]),
    .O(\Mcompar_data_10_cmp_ge0000_lut<6>1_28 )
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<6>_0  (
    .CI(\Mcompar_data_10_cmp_ge0000_cy<5>1 ),
    .DI(N0),
    .S(\Mcompar_data_10_cmp_ge0000_lut<6>1_28 ),
    .O(Mcompar_data_10_cmp_ge0000_cy[6])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_data_10_cmp_ge0000_lut<7>  (
    .I0(cycles[10]),
    .I1(cycles[11]),
    .I2(cycles[12]),
    .I3(cycles[13]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[7] )
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<7>  (
    .CI(Mcompar_data_10_cmp_ge0000_cy[6]),
    .DI(N1),
    .S(\Mcompar_data_10_cmp_ge0000_lut[7] ),
    .O(Mcompar_data_10_cmp_ge0000_cy[7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_data_10_cmp_ge0000_lut<8>  (
    .I0(cycles[14]),
    .I1(cycles[15]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[8] )
  );
  MUXCY   \Mcompar_data_10_cmp_ge0000_cy<8>  (
    .CI(Mcompar_data_10_cmp_ge0000_cy[7]),
    .DI(N0),
    .S(\Mcompar_data_10_cmp_ge0000_lut[8] ),
    .O(Mcompar_data_10_cmp_ge0000_cy[8])
  );
  MUXCY   \Mcount_cycles_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(Mcount_cycles_lut[0]),
    .O(Mcount_cycles_cy[0])
  );
  XORCY   \Mcount_cycles_xor<0>  (
    .CI(N0),
    .LI(Mcount_cycles_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_cycles_cy<1>  (
    .CI(Mcount_cycles_cy[0]),
    .DI(N0),
    .S(\Mcount_cycles_cy<1>_rt_43 ),
    .O(Mcount_cycles_cy[1])
  );
  XORCY   \Mcount_cycles_xor<1>  (
    .CI(Mcount_cycles_cy[0]),
    .LI(\Mcount_cycles_cy<1>_rt_43 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_cycles_cy<2>  (
    .CI(Mcount_cycles_cy[1]),
    .DI(N0),
    .S(\Mcount_cycles_cy<2>_rt_45 ),
    .O(Mcount_cycles_cy[2])
  );
  XORCY   \Mcount_cycles_xor<2>  (
    .CI(Mcount_cycles_cy[1]),
    .LI(\Mcount_cycles_cy<2>_rt_45 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_cycles_cy<3>  (
    .CI(Mcount_cycles_cy[2]),
    .DI(N0),
    .S(\Mcount_cycles_cy<3>_rt_47 ),
    .O(Mcount_cycles_cy[3])
  );
  XORCY   \Mcount_cycles_xor<3>  (
    .CI(Mcount_cycles_cy[2]),
    .LI(\Mcount_cycles_cy<3>_rt_47 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_cycles_cy<4>  (
    .CI(Mcount_cycles_cy[3]),
    .DI(N0),
    .S(\Mcount_cycles_cy<4>_rt_49 ),
    .O(Mcount_cycles_cy[4])
  );
  XORCY   \Mcount_cycles_xor<4>  (
    .CI(Mcount_cycles_cy[3]),
    .LI(\Mcount_cycles_cy<4>_rt_49 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_cycles_cy<5>  (
    .CI(Mcount_cycles_cy[4]),
    .DI(N0),
    .S(\Mcount_cycles_cy<5>_rt_51 ),
    .O(Mcount_cycles_cy[5])
  );
  XORCY   \Mcount_cycles_xor<5>  (
    .CI(Mcount_cycles_cy[4]),
    .LI(\Mcount_cycles_cy<5>_rt_51 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_cycles_cy<6>  (
    .CI(Mcount_cycles_cy[5]),
    .DI(N0),
    .S(\Mcount_cycles_cy<6>_rt_53 ),
    .O(Mcount_cycles_cy[6])
  );
  XORCY   \Mcount_cycles_xor<6>  (
    .CI(Mcount_cycles_cy[5]),
    .LI(\Mcount_cycles_cy<6>_rt_53 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_cycles_cy<7>  (
    .CI(Mcount_cycles_cy[6]),
    .DI(N0),
    .S(\Mcount_cycles_cy<7>_rt_55 ),
    .O(Mcount_cycles_cy[7])
  );
  XORCY   \Mcount_cycles_xor<7>  (
    .CI(Mcount_cycles_cy[6]),
    .LI(\Mcount_cycles_cy<7>_rt_55 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_cycles_cy<8>  (
    .CI(Mcount_cycles_cy[7]),
    .DI(N0),
    .S(\Mcount_cycles_cy<8>_rt_57 ),
    .O(Mcount_cycles_cy[8])
  );
  XORCY   \Mcount_cycles_xor<8>  (
    .CI(Mcount_cycles_cy[7]),
    .LI(\Mcount_cycles_cy<8>_rt_57 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_cycles_cy<9>  (
    .CI(Mcount_cycles_cy[8]),
    .DI(N0),
    .S(\Mcount_cycles_cy<9>_rt_59 ),
    .O(Mcount_cycles_cy[9])
  );
  XORCY   \Mcount_cycles_xor<9>  (
    .CI(Mcount_cycles_cy[8]),
    .LI(\Mcount_cycles_cy<9>_rt_59 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_cycles_cy<10>  (
    .CI(Mcount_cycles_cy[9]),
    .DI(N0),
    .S(\Mcount_cycles_cy<10>_rt_33 ),
    .O(Mcount_cycles_cy[10])
  );
  XORCY   \Mcount_cycles_xor<10>  (
    .CI(Mcount_cycles_cy[9]),
    .LI(\Mcount_cycles_cy<10>_rt_33 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_cycles_cy<11>  (
    .CI(Mcount_cycles_cy[10]),
    .DI(N0),
    .S(\Mcount_cycles_cy<11>_rt_35 ),
    .O(Mcount_cycles_cy[11])
  );
  XORCY   \Mcount_cycles_xor<11>  (
    .CI(Mcount_cycles_cy[10]),
    .LI(\Mcount_cycles_cy<11>_rt_35 ),
    .O(Result[11])
  );
  MUXCY   \Mcount_cycles_cy<12>  (
    .CI(Mcount_cycles_cy[11]),
    .DI(N0),
    .S(\Mcount_cycles_cy<12>_rt_37 ),
    .O(Mcount_cycles_cy[12])
  );
  XORCY   \Mcount_cycles_xor<12>  (
    .CI(Mcount_cycles_cy[11]),
    .LI(\Mcount_cycles_cy<12>_rt_37 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_cycles_cy<13>  (
    .CI(Mcount_cycles_cy[12]),
    .DI(N0),
    .S(\Mcount_cycles_cy<13>_rt_39 ),
    .O(Mcount_cycles_cy[13])
  );
  XORCY   \Mcount_cycles_xor<13>  (
    .CI(Mcount_cycles_cy[12]),
    .LI(\Mcount_cycles_cy<13>_rt_39 ),
    .O(Result[13])
  );
  MUXCY   \Mcount_cycles_cy<14>  (
    .CI(Mcount_cycles_cy[13]),
    .DI(N0),
    .S(\Mcount_cycles_cy<14>_rt_41 ),
    .O(Mcount_cycles_cy[14])
  );
  XORCY   \Mcount_cycles_xor<14>  (
    .CI(Mcount_cycles_cy[13]),
    .LI(\Mcount_cycles_cy<14>_rt_41 ),
    .O(Result[14])
  );
  XORCY   \Mcount_cycles_xor<15>  (
    .CI(Mcount_cycles_cy[14]),
    .LI(\Mcount_cycles_xor<15>_rt_61 ),
    .O(Result[15])
  );
  MUXCY   \Mcount_i_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(Mcount_i_lut[0]),
    .O(Mcount_i_cy[0])
  );
  XORCY   \Mcount_i_xor<0>  (
    .CI(N0),
    .LI(Mcount_i_lut[0]),
    .O(\Result<0>1 )
  );
  MUXCY   \Mcount_i_cy<1>  (
    .CI(Mcount_i_cy[0]),
    .DI(N0),
    .S(\Mcount_i_cy<1>_rt_64 ),
    .O(Mcount_i_cy[1])
  );
  XORCY   \Mcount_i_xor<1>  (
    .CI(Mcount_i_cy[0]),
    .LI(\Mcount_i_cy<1>_rt_64 ),
    .O(\Result<1>1 )
  );
  MUXCY   \Mcount_i_cy<2>  (
    .CI(Mcount_i_cy[1]),
    .DI(N0),
    .S(\Mcount_i_cy<2>_rt_66 ),
    .O(Mcount_i_cy[2])
  );
  XORCY   \Mcount_i_xor<2>  (
    .CI(Mcount_i_cy[1]),
    .LI(\Mcount_i_cy<2>_rt_66 ),
    .O(\Result<2>1 )
  );
  MUXCY   \Mcount_i_cy<3>  (
    .CI(Mcount_i_cy[2]),
    .DI(N0),
    .S(\Mcount_i_cy<3>_rt_68 ),
    .O(Mcount_i_cy[3])
  );
  XORCY   \Mcount_i_xor<3>  (
    .CI(Mcount_i_cy[2]),
    .LI(\Mcount_i_cy<3>_rt_68 ),
    .O(\Result<3>1 )
  );
  MUXCY   \Mcount_i_cy<4>  (
    .CI(Mcount_i_cy[3]),
    .DI(N0),
    .S(\Mcount_i_cy<4>_rt_70 ),
    .O(Mcount_i_cy[4])
  );
  XORCY   \Mcount_i_xor<4>  (
    .CI(Mcount_i_cy[3]),
    .LI(\Mcount_i_cy<4>_rt_70 ),
    .O(\Result<4>1 )
  );
  MUXCY   \Mcount_i_cy<5>  (
    .CI(Mcount_i_cy[4]),
    .DI(N0),
    .S(\Mcount_i_cy<5>_rt_72 ),
    .O(Mcount_i_cy[5])
  );
  XORCY   \Mcount_i_xor<5>  (
    .CI(Mcount_i_cy[4]),
    .LI(\Mcount_i_cy<5>_rt_72 ),
    .O(\Result<5>1 )
  );
  MUXCY   \Mcount_i_cy<6>  (
    .CI(Mcount_i_cy[5]),
    .DI(N0),
    .S(\Mcount_i_cy<6>_rt_74 ),
    .O(Mcount_i_cy[6])
  );
  XORCY   \Mcount_i_xor<6>  (
    .CI(Mcount_i_cy[5]),
    .LI(\Mcount_i_cy<6>_rt_74 ),
    .O(\Result<6>1 )
  );
  MUXCY   \Mcount_i_cy<7>  (
    .CI(Mcount_i_cy[6]),
    .DI(N0),
    .S(\Mcount_i_cy<7>_rt_76 ),
    .O(Mcount_i_cy[7])
  );
  XORCY   \Mcount_i_xor<7>  (
    .CI(Mcount_i_cy[6]),
    .LI(\Mcount_i_cy<7>_rt_76 ),
    .O(\Result<7>1 )
  );
  MUXCY   \Mcount_i_cy<8>  (
    .CI(Mcount_i_cy[7]),
    .DI(N0),
    .S(\Mcount_i_cy<8>_rt_78 ),
    .O(Mcount_i_cy[8])
  );
  XORCY   \Mcount_i_xor<8>  (
    .CI(Mcount_i_cy[7]),
    .LI(\Mcount_i_cy<8>_rt_78 ),
    .O(\Result<8>1 )
  );
  XORCY   \Mcount_i_xor<9>  (
    .CI(Mcount_i_cy[8]),
    .LI(\Mcount_i_xor<9>_rt_80 ),
    .O(\Result<9>1 )
  );
  FDRE   \drawunit/framebuffer/state  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/swapBuffers_957 ),
    .D(\drawunit/framebuffer/state_not0001 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/framebuffer/state_414 )
  );
  FDE   \drawunit/framebuffer/ddataIn_0  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/painter/data [0]),
    .Q(\drawunit/framebuffer/ddataIn [0])
  );
  FDE   \drawunit/framebuffer/ddataIn_1  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/painter/data [1]),
    .Q(\drawunit/framebuffer/ddataIn [1])
  );
  FDE   \drawunit/framebuffer/ddataIn_2  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/painter/data [2]),
    .Q(\drawunit/framebuffer/ddataIn [2])
  );
  FDE   \drawunit/framebuffer/bufferWrtPtr_0  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferWrtPtr_mux0000 [0]),
    .Q(\drawunit/framebuffer/bufferWrtPtr [0])
  );
  FDE   \drawunit/framebuffer/bufferWrtPtr_1  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferWrtPtr_mux0000 [1]),
    .Q(\drawunit/framebuffer/bufferWrtPtr [1])
  );
  FDE   \drawunit/framebuffer/bufferWrtPtr_2  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferWrtPtr_mux0000 [2]),
    .Q(\drawunit/framebuffer/bufferWrtPtr [2])
  );
  FDE   \drawunit/framebuffer/bufferWrtPtr_3  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferWrtPtr_mux0000 [3]),
    .Q(\drawunit/framebuffer/bufferWrtPtr [3])
  );
  FDE   \drawunit/framebuffer/bufferWrtPtr_4  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferWrtPtr_mux0000 [4]),
    .Q(\drawunit/framebuffer/bufferWrtPtr [4])
  );
  FDE   \drawunit/framebuffer/bufferWrtPtr_5  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferWrtPtr_mux0000 [5]),
    .Q(\drawunit/framebuffer/bufferWrtPtr [5])
  );
  FDE   \drawunit/framebuffer/bufferWrtPtr_6  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferWrtPtr_mux0000 [6]),
    .Q(\drawunit/framebuffer/bufferWrtPtr [6])
  );
  FDE   \drawunit/framebuffer/bufferWrtPtr_7  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferWrtPtr_mux0000 [7]),
    .Q(\drawunit/framebuffer/bufferWrtPtr [7])
  );
  FDE   \drawunit/framebuffer/bufferWrtPtr_8  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferWrtPtr_mux0000 [8]),
    .Q(\drawunit/framebuffer/bufferWrtPtr [8])
  );
  FDE   \drawunit/framebuffer/bufferWrtPtr_9  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferWrtPtr_mux0000 [9]),
    .Q(\drawunit/framebuffer/bufferWrtPtr [9])
  );
  FDE   \drawunit/framebuffer/bufferWrtPtr_10  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferWrtPtr_mux0000 [10]),
    .Q(\drawunit/framebuffer/bufferWrtPtr [10])
  );
  FDE   \drawunit/framebuffer/bufferWrtPtr_11  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferWrtPtr_mux0000 [11]),
    .Q(\drawunit/framebuffer/bufferWrtPtr [11])
  );
  FDE   \drawunit/framebuffer/bufferWrtPtr_12  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferWrtPtr_mux0000 [12]),
    .Q(\drawunit/framebuffer/bufferWrtPtr [12])
  );
  FDE   \drawunit/framebuffer/bufferWrtPtr_13  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferWrtPtr_mux0000 [13]),
    .Q(\drawunit/framebuffer/bufferWrtPtr [13])
  );
  FDE   \drawunit/framebuffer/bufferWrtPtr_14  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferWrtPtr_mux0000 [14]),
    .Q(\drawunit/framebuffer/bufferWrtPtr [14])
  );
  FDE   \drawunit/framebuffer/bufferWe  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/bufferWe_or0000_inv ),
    .D(\drawunit/framebuffer/bufferWe_mux0000 ),
    .Q(\drawunit/framebuffer/bufferWe_347 )
  );
  FDE   \drawunit/framebuffer/bufferWeS  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/bufferWe_or0000_inv ),
    .D(\drawunit/framebuffer/bufferWeS_mux0000 ),
    .Q(\drawunit/framebuffer/bufferWeS_348 )
  );
  FDR   \drawunit/framebuffer/color_0  (
    .C(vgaClk_1302),
    .D(\drawunit/framebuffer/color_mux0000 [0]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/framebuffer/color [0])
  );
  FDR   \drawunit/framebuffer/color_1  (
    .C(vgaClk_1302),
    .D(\drawunit/framebuffer/color_mux0000 [1]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/framebuffer/color [1])
  );
  FDR   \drawunit/framebuffer/color_2  (
    .C(vgaClk_1302),
    .D(\drawunit/framebuffer/color_mux0000 [2]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/framebuffer/color [2])
  );
  FDE   \drawunit/framebuffer/bufferRdPtr_0  (
    .C(vgaClk_1302),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferRdPtr_mux0000 [0]),
    .Q(\drawunit/framebuffer/bufferRdPtr [0])
  );
  FDE   \drawunit/framebuffer/bufferRdPtr_1  (
    .C(vgaClk_1302),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferRdPtr_mux0000 [1]),
    .Q(\drawunit/framebuffer/bufferRdPtr [1])
  );
  FDE   \drawunit/framebuffer/bufferRdPtr_2  (
    .C(vgaClk_1302),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferRdPtr_mux0000 [2]),
    .Q(\drawunit/framebuffer/bufferRdPtr [2])
  );
  FDE   \drawunit/framebuffer/bufferRdPtr_3  (
    .C(vgaClk_1302),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferRdPtr_mux0000 [3]),
    .Q(\drawunit/framebuffer/bufferRdPtr [3])
  );
  FDE   \drawunit/framebuffer/bufferRdPtr_4  (
    .C(vgaClk_1302),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferRdPtr_mux0000 [4]),
    .Q(\drawunit/framebuffer/bufferRdPtr [4])
  );
  FDE   \drawunit/framebuffer/bufferRdPtr_5  (
    .C(vgaClk_1302),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferRdPtr_mux0000 [5]),
    .Q(\drawunit/framebuffer/bufferRdPtr [5])
  );
  FDE   \drawunit/framebuffer/bufferRdPtr_6  (
    .C(vgaClk_1302),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferRdPtr_mux0000 [6]),
    .Q(\drawunit/framebuffer/bufferRdPtr [6])
  );
  FDE   \drawunit/framebuffer/bufferRdPtr_7  (
    .C(vgaClk_1302),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferRdPtr_mux0000 [7]),
    .Q(\drawunit/framebuffer/bufferRdPtr [7])
  );
  FDE   \drawunit/framebuffer/bufferRdPtr_8  (
    .C(vgaClk_1302),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferRdPtr_mux0000 [8]),
    .Q(\drawunit/framebuffer/bufferRdPtr [8])
  );
  FDE   \drawunit/framebuffer/bufferRdPtr_9  (
    .C(vgaClk_1302),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferRdPtr_mux0000 [9]),
    .Q(\drawunit/framebuffer/bufferRdPtr [9])
  );
  FDE   \drawunit/framebuffer/bufferRdPtr_10  (
    .C(vgaClk_1302),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferRdPtr_mux0000 [10]),
    .Q(\drawunit/framebuffer/bufferRdPtr [10])
  );
  FDE   \drawunit/framebuffer/bufferRdPtr_11  (
    .C(vgaClk_1302),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferRdPtr_mux0000 [11]),
    .Q(\drawunit/framebuffer/bufferRdPtr [11])
  );
  FDE   \drawunit/framebuffer/bufferRdPtr_12  (
    .C(vgaClk_1302),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferRdPtr_mux0000 [12]),
    .Q(\drawunit/framebuffer/bufferRdPtr [12])
  );
  FDE   \drawunit/framebuffer/bufferRdPtr_13  (
    .C(vgaClk_1302),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferRdPtr_mux0000 [13]),
    .Q(\drawunit/framebuffer/bufferRdPtr [13])
  );
  FDE   \drawunit/framebuffer/bufferRdPtr_14  (
    .C(vgaClk_1302),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/framebuffer/bufferRdPtr_mux0000 [14]),
    .Q(\drawunit/framebuffer/bufferRdPtr [14])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/framebuffer/write_ctrl1  (
    .I0(\drawunit/framebuffer/bufferWrtPtr [14]),
    .I1(\drawunit/framebuffer/bufferWe_347 ),
    .O(\drawunit/framebuffer/write_ctrl1_417 )
  );
  FD   \drawunit/framebuffer/inst_LPM_FF  (
    .C(vgaClk_1302),
    .D(\drawunit/framebuffer/bufferRdPtr [14]),
    .Q(\drawunit/framebuffer/inst_LPM_FF_412 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<0>  (
    .I0(\drawunit/painter/addr [0]),
    .I1(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[0] )
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<0>  (
    .CI(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .DI(\drawunit/painter/addr [0]),
    .S(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[0] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [0])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<0>  (
    .CI(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .LI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[0] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<1>  (
    .I0(\drawunit/painter/addr [1]),
    .I1(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[1] )
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<1>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [0]),
    .DI(\drawunit/painter/addr [1]),
    .S(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[1] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [1])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<1>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [0]),
    .LI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[1] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<2>  (
    .I0(\drawunit/painter/addr [2]),
    .I1(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[2] )
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<2>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [1]),
    .DI(\drawunit/painter/addr [2]),
    .S(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[2] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [2])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<2>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [1]),
    .LI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[2] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<3>  (
    .I0(\drawunit/painter/addr [3]),
    .I1(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[3] )
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<3>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [2]),
    .DI(\drawunit/painter/addr [3]),
    .S(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[3] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [3])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<3>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [2]),
    .LI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[3] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<4>  (
    .I0(\drawunit/painter/addr [4]),
    .I1(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[4] )
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<4>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [3]),
    .DI(\drawunit/painter/addr [4]),
    .S(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[4] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [4])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<4>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [3]),
    .LI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[4] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<5>  (
    .I0(\drawunit/painter/addr [5]),
    .I1(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[5] )
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<5>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [4]),
    .DI(\drawunit/painter/addr [5]),
    .S(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[5] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [5])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<5>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [4]),
    .LI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[5] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<6>  (
    .I0(\drawunit/painter/addr [6]),
    .I1(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[6] )
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<6>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [5]),
    .DI(\drawunit/painter/addr [6]),
    .S(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[6] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [6])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<6>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [5]),
    .LI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[6] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [6])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<7>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [6]),
    .DI(N0),
    .S(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<7>_rt_279 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [7])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<7>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [6]),
    .LI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<7>_rt_279 ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [7])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<8>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [7]),
    .DI(\drawunit/painter/addr [8]),
    .S(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[8] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [8])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<8>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [7]),
    .LI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[8] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [8])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<9>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [8]),
    .DI(\drawunit/painter/addr [9]),
    .S(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[9] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [9])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<9>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [8]),
    .LI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[9] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [9])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<10>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [9]),
    .DI(N0),
    .S(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<10>_rt_266 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [10])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<10>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [9]),
    .LI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<10>_rt_266 ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [10])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<11>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [10]),
    .DI(\drawunit/painter/addr [11]),
    .S(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[11] ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [11])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<11>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [10]),
    .LI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[11] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [11])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<12>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [11]),
    .DI(N0),
    .S(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<12>_rt_269 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [12])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<12>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [11]),
    .LI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<12>_rt_269 ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [12])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<13>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [12]),
    .DI(N0),
    .S(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<13>_rt_271 ),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [13])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<13>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [12]),
    .LI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<13>_rt_271 ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [13])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_xor<14>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy [13]),
    .LI(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[14] ),
    .O(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<0>  (
    .I0(\drawunit/rdPtr [0]),
    .I1(\drawunit/framebuffer/color_cmp_ge0000 ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[0] )
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<0>  (
    .CI(\drawunit/framebuffer/color_cmp_ge0000 ),
    .DI(\drawunit/rdPtr [0]),
    .S(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[0] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [0])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<0>  (
    .CI(\drawunit/framebuffer/color_cmp_ge0000 ),
    .LI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[0] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [0])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<1>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [0]),
    .DI(\drawunit/rdPtr [1]),
    .S(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[1] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [1])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<1>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [0]),
    .LI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[1] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [1])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<2>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [1]),
    .DI(\drawunit/rdPtr [2]),
    .S(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[2] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [2])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<2>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [1]),
    .LI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[2] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [2])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<3>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [2]),
    .DI(\drawunit/rdPtr [3]),
    .S(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[3] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [3])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<3>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [2]),
    .LI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[3] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [3])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<4>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [3]),
    .DI(\drawunit/rdPtr [4]),
    .S(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[4] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [4])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<4>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [3]),
    .LI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[4] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [4])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<5>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [4]),
    .DI(\drawunit/rdPtr [5]),
    .S(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[5] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [5])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<5>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [4]),
    .LI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[5] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [5])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<6>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [5]),
    .DI(\drawunit/rdPtr [6]),
    .S(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[6] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [6])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<6>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [5]),
    .LI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[6] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [6])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<7>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [6]),
    .DI(N0),
    .S(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<7>_rt_250 ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [7])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<7>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [6]),
    .LI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<7>_rt_250 ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [7])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<8>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [7]),
    .DI(\drawunit/rdPtr [8]),
    .S(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[8] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [8])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<8>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [7]),
    .LI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[8] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [8])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<9>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [8]),
    .DI(\drawunit/rdPtr [9]),
    .S(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[9] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [9])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<9>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [8]),
    .LI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[9] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [9])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<10>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [9]),
    .DI(N0),
    .S(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<10>_rt_237 ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [10])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<10>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [9]),
    .LI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<10>_rt_237 ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [10])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<11>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [10]),
    .DI(\drawunit/rdPtr [11]),
    .S(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[11] ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [11])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<11>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [10]),
    .LI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[11] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [11])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<12>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [11]),
    .DI(N0),
    .S(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<12>_rt_240 ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [12])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<12>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [11]),
    .LI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<12>_rt_240 ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [12])
  );
  MUXCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<13>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [12]),
    .DI(N0),
    .S(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<13>_rt_242 ),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [13])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<13>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [12]),
    .LI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<13>_rt_242 ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [13])
  );
  XORCY   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_xor<14>  (
    .CI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy [13]),
    .LI(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[14] ),
    .O(\drawunit/framebuffer/bufferRdPtr_addsub0000 [14])
  );
  FDE   \drawunit/queue/temp_30  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .D(data[10]),
    .Q(\drawunit/queue/temp[30] )
  );
  FDRE   \drawunit/queue/state  (
    .C(clk_BUFGP_161),
    .CE(we_1306),
    .D(\drawunit/queue/state_mux0000 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/state_894 )
  );
  FDE   \drawunit/queue/temp_25  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .D(data[9]),
    .Q(\drawunit/queue/temp[25] )
  );
  FDE   \drawunit/queue/temp_24  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .D(data[8]),
    .Q(\drawunit/queue/temp[24] )
  );
  FDE   \drawunit/queue/temp_23  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .D(data[7]),
    .Q(\drawunit/queue/temp[23] )
  );
  FDE   \drawunit/queue/temp_20  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .D(data[4]),
    .Q(\drawunit/queue/temp[20] )
  );
  FDE   \drawunit/queue/temp_22  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .D(data[6]),
    .Q(\drawunit/queue/temp[22] )
  );
  FDE   \drawunit/queue/temp_21  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .D(data[5]),
    .Q(\drawunit/queue/temp[21] )
  );
  FDE   \drawunit/queue/temp_19  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .D(data[3]),
    .Q(\drawunit/queue/temp[19] )
  );
  FDE   \drawunit/queue/temp_18  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .D(data[2]),
    .Q(\drawunit/queue/temp[18] )
  );
  FDE   \drawunit/queue/temp_15  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .D(data[10]),
    .Q(\drawunit/queue/temp[15] )
  );
  FDE   \drawunit/queue/temp_17  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_31_not0001 ),
    .D(data[1]),
    .Q(\drawunit/queue/temp[17] )
  );
  FDE   \drawunit/queue/temp_9  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .D(data[9]),
    .Q(\drawunit/queue/temp[9] )
  );
  FDE   \drawunit/queue/temp_8  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .D(data[8]),
    .Q(\drawunit/queue/temp[8] )
  );
  FDE   \drawunit/queue/temp_5  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .D(data[5]),
    .Q(\drawunit/queue/temp[5] )
  );
  FDE   \drawunit/queue/temp_7  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .D(data[7]),
    .Q(\drawunit/queue/temp[7] )
  );
  FDE   \drawunit/queue/temp_6  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .D(data[6]),
    .Q(\drawunit/queue/temp[6] )
  );
  FDE   \drawunit/queue/temp_4  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .D(data[4]),
    .Q(\drawunit/queue/temp[4] )
  );
  FDE   \drawunit/queue/temp_3  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .D(data[3]),
    .Q(\drawunit/queue/temp[3] )
  );
  FDE   \drawunit/queue/temp_2  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .D(data[2]),
    .Q(\drawunit/queue/temp[2] )
  );
  FDE   \drawunit/queue/temp_1  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/temp_15_not0001 ),
    .D(data[1]),
    .Q(\drawunit/queue/temp[1] )
  );
  FDE   \drawunit/queue/delayedWe  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/framebuffer/reset_inv ),
    .D(\drawunit/queue/delayedWe_mux0000 ),
    .Q(\drawunit/queue/delayedWe_846 )
  );
  FDRE   \drawunit/queue/rdData_0  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [0]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [0])
  );
  FDRE   \drawunit/queue/rdData_1  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [1]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [1])
  );
  FDRE   \drawunit/queue/rdData_2  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [2]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [2])
  );
  FDRE   \drawunit/queue/rdData_3  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [3]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [3])
  );
  FDRE   \drawunit/queue/rdData_4  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [4]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [4])
  );
  FDRE   \drawunit/queue/rdData_5  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [5]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [5])
  );
  FDRE   \drawunit/queue/rdData_6  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [6]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [6])
  );
  FDRE   \drawunit/queue/rdData_7  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [7]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [7])
  );
  FDRE   \drawunit/queue/rdData_8  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [8]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [8])
  );
  FDRE   \drawunit/queue/rdData_9  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [9]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [9])
  );
  FDRE   \drawunit/queue/rdData_10  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [10]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [10])
  );
  FDRE   \drawunit/queue/rdData_11  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [11]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [11])
  );
  FDRE   \drawunit/queue/rdData_12  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [12]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [12])
  );
  FDRE   \drawunit/queue/rdData_13  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [13]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [13])
  );
  FDRE   \drawunit/queue/rdData_14  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [14]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [14])
  );
  FDRE   \drawunit/queue/rdData_15  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [15]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [15])
  );
  FDRE   \drawunit/queue/rdData_16  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [16]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [16])
  );
  FDRE   \drawunit/queue/rdData_17  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [17]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [17])
  );
  FDRE   \drawunit/queue/rdData_18  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [18]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [18])
  );
  FDRE   \drawunit/queue/rdData_19  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [19]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [19])
  );
  FDRE   \drawunit/queue/rdData_20  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [20]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [20])
  );
  FDRE   \drawunit/queue/rdData_21  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [21]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [21])
  );
  FDRE   \drawunit/queue/rdData_22  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [22]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [22])
  );
  FDRE   \drawunit/queue/rdData_23  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [23]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [23])
  );
  FDRE   \drawunit/queue/rdData_24  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [24]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [24])
  );
  FDRE   \drawunit/queue/rdData_25  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [25]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [25])
  );
  FDRE   \drawunit/queue/rdData_26  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [26]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [26])
  );
  FDRE   \drawunit/queue/rdData_27  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [27]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [27])
  );
  FDRE   \drawunit/queue/rdData_28  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [28]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [28])
  );
  FDRE   \drawunit/queue/rdData_29  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [29]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [29])
  );
  FDRE   \drawunit/queue/rdData_30  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [30]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [30])
  );
  FDRE   \drawunit/queue/rdData_31  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/dataOut [31]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdData [31])
  );
  FDRE   \drawunit/queue/rdPtr_0  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/Result<0>2 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdPtr [0])
  );
  FDRE   \drawunit/queue/rdPtr_1  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/Result<1>2 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdPtr [1])
  );
  FDRE   \drawunit/queue/rdPtr_2  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/Result<2>2 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdPtr [2])
  );
  FDRE   \drawunit/queue/rdPtr_3  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/Result<3>2 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdPtr [3])
  );
  FDRE   \drawunit/queue/rdPtr_4  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/Result<4>2 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdPtr [4])
  );
  FDRE   \drawunit/queue/rdPtr_5  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/Result<5>2 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdPtr [5])
  );
  FDRE   \drawunit/queue/rdPtr_6  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/Result<6>2 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdPtr [6])
  );
  FDRE   \drawunit/queue/rdPtr_7  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/Result<7>2 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdPtr [7])
  );
  FDRE   \drawunit/queue/rdPtr_8  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/re_675 ),
    .D(\drawunit/queue/Result<8>2 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/rdPtr [8])
  );
  FDRE   \drawunit/queue/wrtPtr_0  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/delayedWe_846 ),
    .D(\drawunit/queue/Result<0>1 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/wrtPtr [0])
  );
  FDRE   \drawunit/queue/wrtPtr_1  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/delayedWe_846 ),
    .D(\drawunit/queue/Result<1>1 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/wrtPtr [1])
  );
  FDRE   \drawunit/queue/wrtPtr_2  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/delayedWe_846 ),
    .D(\drawunit/queue/Result<2>1 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/wrtPtr [2])
  );
  FDRE   \drawunit/queue/wrtPtr_3  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/delayedWe_846 ),
    .D(\drawunit/queue/Result<3>1 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/wrtPtr [3])
  );
  FDRE   \drawunit/queue/wrtPtr_4  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/delayedWe_846 ),
    .D(\drawunit/queue/Result<4>1 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/wrtPtr [4])
  );
  FDRE   \drawunit/queue/wrtPtr_5  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/delayedWe_846 ),
    .D(\drawunit/queue/Result<5>1 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/wrtPtr [5])
  );
  FDRE   \drawunit/queue/wrtPtr_6  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/delayedWe_846 ),
    .D(\drawunit/queue/Result<6>1 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/wrtPtr [6])
  );
  FDRE   \drawunit/queue/wrtPtr_7  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/delayedWe_846 ),
    .D(\drawunit/queue/Result<7>1 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/wrtPtr [7])
  );
  FDRE   \drawunit/queue/wrtPtr_8  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/delayedWe_846 ),
    .D(\drawunit/queue/Result<8>1 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/wrtPtr [8])
  );
  FDRE   \drawunit/queue/count_0  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/count_not0002 ),
    .D(\drawunit/queue/Result [0]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/count [0])
  );
  FDRE   \drawunit/queue/count_1  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/count_not0002 ),
    .D(\drawunit/queue/Result [1]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/count [1])
  );
  FDRE   \drawunit/queue/count_2  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/count_not0002 ),
    .D(\drawunit/queue/Result [2]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/count [2])
  );
  FDRE   \drawunit/queue/count_3  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/count_not0002 ),
    .D(\drawunit/queue/Result [3]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/count [3])
  );
  FDRE   \drawunit/queue/count_4  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/count_not0002 ),
    .D(\drawunit/queue/Result [4]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/count [4])
  );
  FDRE   \drawunit/queue/count_5  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/count_not0002 ),
    .D(\drawunit/queue/Result [5]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/count [5])
  );
  FDRE   \drawunit/queue/count_6  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/count_not0002 ),
    .D(\drawunit/queue/Result [6]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/count [6])
  );
  FDRE   \drawunit/queue/count_7  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/count_not0002 ),
    .D(\drawunit/queue/Result [7]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/count [7])
  );
  FDRE   \drawunit/queue/count_8  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/count_not0002 ),
    .D(\drawunit/queue/Result [8]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/count [8])
  );
  FDRE   \drawunit/queue/count_9  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/queue/count_not0002 ),
    .D(\drawunit/queue/Result [9]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/queue/count [9])
  );
  MUXCY   \drawunit/queue/Mcount_count_cy<0>  (
    .CI(\drawunit/queue/count_not0003_inv ),
    .DI(\drawunit/queue/count [0]),
    .S(\drawunit/queue/Mcount_count_lut [0]),
    .O(\drawunit/queue/Mcount_count_cy [0])
  );
  XORCY   \drawunit/queue/Mcount_count_xor<0>  (
    .CI(\drawunit/queue/count_not0003_inv ),
    .LI(\drawunit/queue/Mcount_count_lut [0]),
    .O(\drawunit/queue/Result [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<1>  (
    .I0(\drawunit/queue/count [1]),
    .I1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [1])
  );
  MUXCY   \drawunit/queue/Mcount_count_cy<1>  (
    .CI(\drawunit/queue/Mcount_count_cy [0]),
    .DI(\drawunit/queue/count [1]),
    .S(\drawunit/queue/Mcount_count_lut [1]),
    .O(\drawunit/queue/Mcount_count_cy [1])
  );
  XORCY   \drawunit/queue/Mcount_count_xor<1>  (
    .CI(\drawunit/queue/Mcount_count_cy [0]),
    .LI(\drawunit/queue/Mcount_count_lut [1]),
    .O(\drawunit/queue/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<2>  (
    .I0(\drawunit/queue/count [2]),
    .I1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [2])
  );
  MUXCY   \drawunit/queue/Mcount_count_cy<2>  (
    .CI(\drawunit/queue/Mcount_count_cy [1]),
    .DI(\drawunit/queue/count [2]),
    .S(\drawunit/queue/Mcount_count_lut [2]),
    .O(\drawunit/queue/Mcount_count_cy [2])
  );
  XORCY   \drawunit/queue/Mcount_count_xor<2>  (
    .CI(\drawunit/queue/Mcount_count_cy [1]),
    .LI(\drawunit/queue/Mcount_count_lut [2]),
    .O(\drawunit/queue/Result [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<3>  (
    .I0(\drawunit/queue/count [3]),
    .I1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [3])
  );
  MUXCY   \drawunit/queue/Mcount_count_cy<3>  (
    .CI(\drawunit/queue/Mcount_count_cy [2]),
    .DI(\drawunit/queue/count [3]),
    .S(\drawunit/queue/Mcount_count_lut [3]),
    .O(\drawunit/queue/Mcount_count_cy [3])
  );
  XORCY   \drawunit/queue/Mcount_count_xor<3>  (
    .CI(\drawunit/queue/Mcount_count_cy [2]),
    .LI(\drawunit/queue/Mcount_count_lut [3]),
    .O(\drawunit/queue/Result [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<4>  (
    .I0(\drawunit/queue/count [4]),
    .I1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [4])
  );
  MUXCY   \drawunit/queue/Mcount_count_cy<4>  (
    .CI(\drawunit/queue/Mcount_count_cy [3]),
    .DI(\drawunit/queue/count [4]),
    .S(\drawunit/queue/Mcount_count_lut [4]),
    .O(\drawunit/queue/Mcount_count_cy [4])
  );
  XORCY   \drawunit/queue/Mcount_count_xor<4>  (
    .CI(\drawunit/queue/Mcount_count_cy [3]),
    .LI(\drawunit/queue/Mcount_count_lut [4]),
    .O(\drawunit/queue/Result [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<5>  (
    .I0(\drawunit/queue/count [5]),
    .I1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [5])
  );
  MUXCY   \drawunit/queue/Mcount_count_cy<5>  (
    .CI(\drawunit/queue/Mcount_count_cy [4]),
    .DI(\drawunit/queue/count [5]),
    .S(\drawunit/queue/Mcount_count_lut [5]),
    .O(\drawunit/queue/Mcount_count_cy [5])
  );
  XORCY   \drawunit/queue/Mcount_count_xor<5>  (
    .CI(\drawunit/queue/Mcount_count_cy [4]),
    .LI(\drawunit/queue/Mcount_count_lut [5]),
    .O(\drawunit/queue/Result [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<6>  (
    .I0(\drawunit/queue/count [6]),
    .I1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [6])
  );
  MUXCY   \drawunit/queue/Mcount_count_cy<6>  (
    .CI(\drawunit/queue/Mcount_count_cy [5]),
    .DI(\drawunit/queue/count [6]),
    .S(\drawunit/queue/Mcount_count_lut [6]),
    .O(\drawunit/queue/Mcount_count_cy [6])
  );
  XORCY   \drawunit/queue/Mcount_count_xor<6>  (
    .CI(\drawunit/queue/Mcount_count_cy [5]),
    .LI(\drawunit/queue/Mcount_count_lut [6]),
    .O(\drawunit/queue/Result [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<7>  (
    .I0(\drawunit/queue/count [7]),
    .I1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [7])
  );
  MUXCY   \drawunit/queue/Mcount_count_cy<7>  (
    .CI(\drawunit/queue/Mcount_count_cy [6]),
    .DI(\drawunit/queue/count [7]),
    .S(\drawunit/queue/Mcount_count_lut [7]),
    .O(\drawunit/queue/Mcount_count_cy [7])
  );
  XORCY   \drawunit/queue/Mcount_count_xor<7>  (
    .CI(\drawunit/queue/Mcount_count_cy [6]),
    .LI(\drawunit/queue/Mcount_count_lut [7]),
    .O(\drawunit/queue/Result [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<8>  (
    .I0(\drawunit/queue/count [8]),
    .I1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [8])
  );
  MUXCY   \drawunit/queue/Mcount_count_cy<8>  (
    .CI(\drawunit/queue/Mcount_count_cy [7]),
    .DI(\drawunit/queue/count [8]),
    .S(\drawunit/queue/Mcount_count_lut [8]),
    .O(\drawunit/queue/Mcount_count_cy [8])
  );
  XORCY   \drawunit/queue/Mcount_count_xor<8>  (
    .CI(\drawunit/queue/Mcount_count_cy [7]),
    .LI(\drawunit/queue/Mcount_count_lut [8]),
    .O(\drawunit/queue/Result [8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/queue/Mcount_count_lut<9>  (
    .I0(\drawunit/queue/count [9]),
    .I1(\drawunit/queue/count_not0003_inv ),
    .O(\drawunit/queue/Mcount_count_lut [9])
  );
  XORCY   \drawunit/queue/Mcount_count_xor<9>  (
    .CI(\drawunit/queue/Mcount_count_cy [8]),
    .LI(\drawunit/queue/Mcount_count_lut [9]),
    .O(\drawunit/queue/Result [9])
  );
  MUXCY   \drawunit/queue/Mcount_wrtPtr_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\drawunit/queue/Mcount_wrtPtr_lut [0]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [0])
  );
  XORCY   \drawunit/queue/Mcount_wrtPtr_xor<0>  (
    .CI(N0),
    .LI(\drawunit/queue/Mcount_wrtPtr_lut [0]),
    .O(\drawunit/queue/Result<0>1 )
  );
  MUXCY   \drawunit/queue/Mcount_wrtPtr_cy<1>  (
    .CI(\drawunit/queue/Mcount_wrtPtr_cy [0]),
    .DI(N0),
    .S(\drawunit/queue/Mcount_wrtPtr_cy<1>_rt_756 ),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [1])
  );
  XORCY   \drawunit/queue/Mcount_wrtPtr_xor<1>  (
    .CI(\drawunit/queue/Mcount_wrtPtr_cy [0]),
    .LI(\drawunit/queue/Mcount_wrtPtr_cy<1>_rt_756 ),
    .O(\drawunit/queue/Result<1>1 )
  );
  MUXCY   \drawunit/queue/Mcount_wrtPtr_cy<2>  (
    .CI(\drawunit/queue/Mcount_wrtPtr_cy [1]),
    .DI(N0),
    .S(\drawunit/queue/Mcount_wrtPtr_cy<2>_rt_758 ),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [2])
  );
  XORCY   \drawunit/queue/Mcount_wrtPtr_xor<2>  (
    .CI(\drawunit/queue/Mcount_wrtPtr_cy [1]),
    .LI(\drawunit/queue/Mcount_wrtPtr_cy<2>_rt_758 ),
    .O(\drawunit/queue/Result<2>1 )
  );
  MUXCY   \drawunit/queue/Mcount_wrtPtr_cy<3>  (
    .CI(\drawunit/queue/Mcount_wrtPtr_cy [2]),
    .DI(N0),
    .S(\drawunit/queue/Mcount_wrtPtr_cy<3>_rt_760 ),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [3])
  );
  XORCY   \drawunit/queue/Mcount_wrtPtr_xor<3>  (
    .CI(\drawunit/queue/Mcount_wrtPtr_cy [2]),
    .LI(\drawunit/queue/Mcount_wrtPtr_cy<3>_rt_760 ),
    .O(\drawunit/queue/Result<3>1 )
  );
  MUXCY   \drawunit/queue/Mcount_wrtPtr_cy<4>  (
    .CI(\drawunit/queue/Mcount_wrtPtr_cy [3]),
    .DI(N0),
    .S(\drawunit/queue/Mcount_wrtPtr_cy<4>_rt_762 ),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [4])
  );
  XORCY   \drawunit/queue/Mcount_wrtPtr_xor<4>  (
    .CI(\drawunit/queue/Mcount_wrtPtr_cy [3]),
    .LI(\drawunit/queue/Mcount_wrtPtr_cy<4>_rt_762 ),
    .O(\drawunit/queue/Result<4>1 )
  );
  MUXCY   \drawunit/queue/Mcount_wrtPtr_cy<5>  (
    .CI(\drawunit/queue/Mcount_wrtPtr_cy [4]),
    .DI(N0),
    .S(\drawunit/queue/Mcount_wrtPtr_cy<5>_rt_764 ),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [5])
  );
  XORCY   \drawunit/queue/Mcount_wrtPtr_xor<5>  (
    .CI(\drawunit/queue/Mcount_wrtPtr_cy [4]),
    .LI(\drawunit/queue/Mcount_wrtPtr_cy<5>_rt_764 ),
    .O(\drawunit/queue/Result<5>1 )
  );
  MUXCY   \drawunit/queue/Mcount_wrtPtr_cy<6>  (
    .CI(\drawunit/queue/Mcount_wrtPtr_cy [5]),
    .DI(N0),
    .S(\drawunit/queue/Mcount_wrtPtr_cy<6>_rt_766 ),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [6])
  );
  XORCY   \drawunit/queue/Mcount_wrtPtr_xor<6>  (
    .CI(\drawunit/queue/Mcount_wrtPtr_cy [5]),
    .LI(\drawunit/queue/Mcount_wrtPtr_cy<6>_rt_766 ),
    .O(\drawunit/queue/Result<6>1 )
  );
  MUXCY   \drawunit/queue/Mcount_wrtPtr_cy<7>  (
    .CI(\drawunit/queue/Mcount_wrtPtr_cy [6]),
    .DI(N0),
    .S(\drawunit/queue/Mcount_wrtPtr_cy<7>_rt_768 ),
    .O(\drawunit/queue/Mcount_wrtPtr_cy [7])
  );
  XORCY   \drawunit/queue/Mcount_wrtPtr_xor<7>  (
    .CI(\drawunit/queue/Mcount_wrtPtr_cy [6]),
    .LI(\drawunit/queue/Mcount_wrtPtr_cy<7>_rt_768 ),
    .O(\drawunit/queue/Result<7>1 )
  );
  XORCY   \drawunit/queue/Mcount_wrtPtr_xor<8>  (
    .CI(\drawunit/queue/Mcount_wrtPtr_cy [7]),
    .LI(\drawunit/queue/Mcount_wrtPtr_xor<8>_rt_770 ),
    .O(\drawunit/queue/Result<8>1 )
  );
  MUXCY   \drawunit/queue/Mcount_rdPtr_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\drawunit/queue/Mcount_rdPtr_lut [0]),
    .O(\drawunit/queue/Mcount_rdPtr_cy [0])
  );
  XORCY   \drawunit/queue/Mcount_rdPtr_xor<0>  (
    .CI(N0),
    .LI(\drawunit/queue/Mcount_rdPtr_lut [0]),
    .O(\drawunit/queue/Result<0>2 )
  );
  MUXCY   \drawunit/queue/Mcount_rdPtr_cy<1>  (
    .CI(\drawunit/queue/Mcount_rdPtr_cy [0]),
    .DI(N0),
    .S(\drawunit/queue/Mcount_rdPtr_cy<1>_rt_739 ),
    .O(\drawunit/queue/Mcount_rdPtr_cy [1])
  );
  XORCY   \drawunit/queue/Mcount_rdPtr_xor<1>  (
    .CI(\drawunit/queue/Mcount_rdPtr_cy [0]),
    .LI(\drawunit/queue/Mcount_rdPtr_cy<1>_rt_739 ),
    .O(\drawunit/queue/Result<1>2 )
  );
  MUXCY   \drawunit/queue/Mcount_rdPtr_cy<2>  (
    .CI(\drawunit/queue/Mcount_rdPtr_cy [1]),
    .DI(N0),
    .S(\drawunit/queue/Mcount_rdPtr_cy<2>_rt_741 ),
    .O(\drawunit/queue/Mcount_rdPtr_cy [2])
  );
  XORCY   \drawunit/queue/Mcount_rdPtr_xor<2>  (
    .CI(\drawunit/queue/Mcount_rdPtr_cy [1]),
    .LI(\drawunit/queue/Mcount_rdPtr_cy<2>_rt_741 ),
    .O(\drawunit/queue/Result<2>2 )
  );
  MUXCY   \drawunit/queue/Mcount_rdPtr_cy<3>  (
    .CI(\drawunit/queue/Mcount_rdPtr_cy [2]),
    .DI(N0),
    .S(\drawunit/queue/Mcount_rdPtr_cy<3>_rt_743 ),
    .O(\drawunit/queue/Mcount_rdPtr_cy [3])
  );
  XORCY   \drawunit/queue/Mcount_rdPtr_xor<3>  (
    .CI(\drawunit/queue/Mcount_rdPtr_cy [2]),
    .LI(\drawunit/queue/Mcount_rdPtr_cy<3>_rt_743 ),
    .O(\drawunit/queue/Result<3>2 )
  );
  MUXCY   \drawunit/queue/Mcount_rdPtr_cy<4>  (
    .CI(\drawunit/queue/Mcount_rdPtr_cy [3]),
    .DI(N0),
    .S(\drawunit/queue/Mcount_rdPtr_cy<4>_rt_745 ),
    .O(\drawunit/queue/Mcount_rdPtr_cy [4])
  );
  XORCY   \drawunit/queue/Mcount_rdPtr_xor<4>  (
    .CI(\drawunit/queue/Mcount_rdPtr_cy [3]),
    .LI(\drawunit/queue/Mcount_rdPtr_cy<4>_rt_745 ),
    .O(\drawunit/queue/Result<4>2 )
  );
  MUXCY   \drawunit/queue/Mcount_rdPtr_cy<5>  (
    .CI(\drawunit/queue/Mcount_rdPtr_cy [4]),
    .DI(N0),
    .S(\drawunit/queue/Mcount_rdPtr_cy<5>_rt_747 ),
    .O(\drawunit/queue/Mcount_rdPtr_cy [5])
  );
  XORCY   \drawunit/queue/Mcount_rdPtr_xor<5>  (
    .CI(\drawunit/queue/Mcount_rdPtr_cy [4]),
    .LI(\drawunit/queue/Mcount_rdPtr_cy<5>_rt_747 ),
    .O(\drawunit/queue/Result<5>2 )
  );
  MUXCY   \drawunit/queue/Mcount_rdPtr_cy<6>  (
    .CI(\drawunit/queue/Mcount_rdPtr_cy [5]),
    .DI(N0),
    .S(\drawunit/queue/Mcount_rdPtr_cy<6>_rt_749 ),
    .O(\drawunit/queue/Mcount_rdPtr_cy [6])
  );
  XORCY   \drawunit/queue/Mcount_rdPtr_xor<6>  (
    .CI(\drawunit/queue/Mcount_rdPtr_cy [5]),
    .LI(\drawunit/queue/Mcount_rdPtr_cy<6>_rt_749 ),
    .O(\drawunit/queue/Result<6>2 )
  );
  MUXCY   \drawunit/queue/Mcount_rdPtr_cy<7>  (
    .CI(\drawunit/queue/Mcount_rdPtr_cy [6]),
    .DI(N0),
    .S(\drawunit/queue/Mcount_rdPtr_cy<7>_rt_751 ),
    .O(\drawunit/queue/Mcount_rdPtr_cy [7])
  );
  XORCY   \drawunit/queue/Mcount_rdPtr_xor<7>  (
    .CI(\drawunit/queue/Mcount_rdPtr_cy [6]),
    .LI(\drawunit/queue/Mcount_rdPtr_cy<7>_rt_751 ),
    .O(\drawunit/queue/Result<7>2 )
  );
  XORCY   \drawunit/queue/Mcount_rdPtr_xor<8>  (
    .CI(\drawunit/queue/Mcount_rdPtr_cy [7]),
    .LI(\drawunit/queue/Mcount_rdPtr_xor<8>_rt_753 ),
    .O(\drawunit/queue/Result<8>2 )
  );
  FDC   \drawunit/vga_controller/vsync  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/vsync_mux0000 ),
    .Q(\drawunit/vga_controller/vsync_1276 )
  );
  FDC   \drawunit/vga_controller/hsync  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/hsync_mux0000_1095 ),
    .Q(\drawunit/vga_controller/hsync_1087 )
  );
  FDC   \drawunit/vga_controller/Henable  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/Henable_mux0000 ),
    .Q(\drawunit/vga_controller/Henable_962 )
  );
  FDC   \drawunit/vga_controller/color_0  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/color_mux0000 [0]),
    .Q(\drawunit/vga_controller/color [0])
  );
  FDC   \drawunit/vga_controller/color_1  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/color_mux0000 [1]),
    .Q(\drawunit/vga_controller/color [1])
  );
  FDC   \drawunit/vga_controller/color_2  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/color_mux0000 [2]),
    .Q(\drawunit/vga_controller/color [2])
  );
  FDCE   \drawunit/vga_controller/line_0  (
    .C(vgaClk_1302),
    .CE(\drawunit/vga_controller/line_not0001_1126 ),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/line_mux0000 [0]),
    .Q(\drawunit/vga_controller/line [0])
  );
  FDCE   \drawunit/vga_controller/line_1  (
    .C(vgaClk_1302),
    .CE(\drawunit/vga_controller/line_not0001_1126 ),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/line_mux0000 [1]),
    .Q(\drawunit/vga_controller/line [1])
  );
  FDCE   \drawunit/vga_controller/line_2  (
    .C(vgaClk_1302),
    .CE(\drawunit/vga_controller/line_not0001_1126 ),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/line_mux0000 [2]),
    .Q(\drawunit/vga_controller/line [2])
  );
  FDCE   \drawunit/vga_controller/line_3  (
    .C(vgaClk_1302),
    .CE(\drawunit/vga_controller/line_not0001_1126 ),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/line_mux0000 [3]),
    .Q(\drawunit/vga_controller/line [3])
  );
  FDCE   \drawunit/vga_controller/line_4  (
    .C(vgaClk_1302),
    .CE(\drawunit/vga_controller/line_not0001_1126 ),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/line_mux0000 [4]),
    .Q(\drawunit/vga_controller/line [4])
  );
  FDCE   \drawunit/vga_controller/line_5  (
    .C(vgaClk_1302),
    .CE(\drawunit/vga_controller/line_not0001_1126 ),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/line_mux0000 [5]),
    .Q(\drawunit/vga_controller/line [5])
  );
  FDCE   \drawunit/vga_controller/line_6  (
    .C(vgaClk_1302),
    .CE(\drawunit/vga_controller/line_not0001_1126 ),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/line_mux0000 [6]),
    .Q(\drawunit/vga_controller/line [6])
  );
  FDCE   \drawunit/vga_controller/line_7  (
    .C(vgaClk_1302),
    .CE(\drawunit/vga_controller/line_not0001_1126 ),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/line_mux0000 [7]),
    .Q(\drawunit/vga_controller/line [7])
  );
  FDCE   \drawunit/vga_controller/line_8  (
    .C(vgaClk_1302),
    .CE(\drawunit/vga_controller/line_not0001_1126 ),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/line_mux0000 [8]),
    .Q(\drawunit/vga_controller/line [8])
  );
  FDC   \drawunit/vga_controller/offset_0  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/offset_mux0000 [0]),
    .Q(\drawunit/vga_controller/offset [0])
  );
  FDC   \drawunit/vga_controller/offset_1  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/offset_mux0000 [1]),
    .Q(\drawunit/vga_controller/offset [1])
  );
  FDC   \drawunit/vga_controller/offset_2  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/offset_mux0000 [2]),
    .Q(\drawunit/vga_controller/offset [2])
  );
  FDC   \drawunit/vga_controller/offset_3  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/offset_mux0000 [3]),
    .Q(\drawunit/vga_controller/offset [3])
  );
  FDC   \drawunit/vga_controller/offset_4  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/offset_mux0000 [4]),
    .Q(\drawunit/vga_controller/offset [4])
  );
  FDC   \drawunit/vga_controller/offset_5  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/offset_mux0000 [5]),
    .Q(\drawunit/vga_controller/offset [5])
  );
  FDC   \drawunit/vga_controller/offset_6  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/offset_mux0000 [6]),
    .Q(\drawunit/vga_controller/offset [6])
  );
  FDC   \drawunit/vga_controller/offset_7  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/offset_mux0000 [7]),
    .Q(\drawunit/vga_controller/offset [7])
  );
  FDC   \drawunit/vga_controller/offset_8  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/offset_mux0000 [8]),
    .Q(\drawunit/vga_controller/offset [8])
  );
  FDC   \drawunit/vga_controller/offset_9  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/offset_mux0000 [9]),
    .Q(\drawunit/vga_controller/offset [9])
  );
  MUXCY   \drawunit/vga_controller/Madd_offset_share0000_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\drawunit/vga_controller/Madd_offset_share0000_lut [0]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [0])
  );
  XORCY   \drawunit/vga_controller/Madd_offset_share0000_xor<0>  (
    .CI(N0),
    .LI(\drawunit/vga_controller/Madd_offset_share0000_lut [0]),
    .O(\drawunit/vga_controller/offset_share0000 [0])
  );
  MUXCY   \drawunit/vga_controller/Madd_offset_share0000_cy<1>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [0]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_offset_share0000_cy<1>_rt_986 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [1])
  );
  XORCY   \drawunit/vga_controller/Madd_offset_share0000_xor<1>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [0]),
    .LI(\drawunit/vga_controller/Madd_offset_share0000_cy<1>_rt_986 ),
    .O(\drawunit/vga_controller/offset_share0000 [1])
  );
  MUXCY   \drawunit/vga_controller/Madd_offset_share0000_cy<2>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [1]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_offset_share0000_cy<2>_rt_988 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [2])
  );
  XORCY   \drawunit/vga_controller/Madd_offset_share0000_xor<2>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [1]),
    .LI(\drawunit/vga_controller/Madd_offset_share0000_cy<2>_rt_988 ),
    .O(\drawunit/vga_controller/offset_share0000 [2])
  );
  MUXCY   \drawunit/vga_controller/Madd_offset_share0000_cy<3>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [2]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_offset_share0000_cy<3>_rt_990 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [3])
  );
  XORCY   \drawunit/vga_controller/Madd_offset_share0000_xor<3>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [2]),
    .LI(\drawunit/vga_controller/Madd_offset_share0000_cy<3>_rt_990 ),
    .O(\drawunit/vga_controller/offset_share0000 [3])
  );
  MUXCY   \drawunit/vga_controller/Madd_offset_share0000_cy<4>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [3]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_offset_share0000_cy<4>_rt_992 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [4])
  );
  XORCY   \drawunit/vga_controller/Madd_offset_share0000_xor<4>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [3]),
    .LI(\drawunit/vga_controller/Madd_offset_share0000_cy<4>_rt_992 ),
    .O(\drawunit/vga_controller/offset_share0000 [4])
  );
  MUXCY   \drawunit/vga_controller/Madd_offset_share0000_cy<5>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [4]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_offset_share0000_cy<5>_rt_994 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [5])
  );
  XORCY   \drawunit/vga_controller/Madd_offset_share0000_xor<5>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [4]),
    .LI(\drawunit/vga_controller/Madd_offset_share0000_cy<5>_rt_994 ),
    .O(\drawunit/vga_controller/offset_share0000 [5])
  );
  MUXCY   \drawunit/vga_controller/Madd_offset_share0000_cy<6>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [5]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_offset_share0000_cy<6>_rt_996 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [6])
  );
  XORCY   \drawunit/vga_controller/Madd_offset_share0000_xor<6>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [5]),
    .LI(\drawunit/vga_controller/Madd_offset_share0000_cy<6>_rt_996 ),
    .O(\drawunit/vga_controller/offset_share0000 [6])
  );
  MUXCY   \drawunit/vga_controller/Madd_offset_share0000_cy<7>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [6]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_offset_share0000_cy<7>_rt_998 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [7])
  );
  XORCY   \drawunit/vga_controller/Madd_offset_share0000_xor<7>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [6]),
    .LI(\drawunit/vga_controller/Madd_offset_share0000_cy<7>_rt_998 ),
    .O(\drawunit/vga_controller/offset_share0000 [7])
  );
  MUXCY   \drawunit/vga_controller/Madd_offset_share0000_cy<8>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [7]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_offset_share0000_cy<8>_rt_1000 ),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy [8])
  );
  XORCY   \drawunit/vga_controller/Madd_offset_share0000_xor<8>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [7]),
    .LI(\drawunit/vga_controller/Madd_offset_share0000_cy<8>_rt_1000 ),
    .O(\drawunit/vga_controller/offset_share0000 [8])
  );
  XORCY   \drawunit/vga_controller/Madd_offset_share0000_xor<9>  (
    .CI(\drawunit/vga_controller/Madd_offset_share0000_cy [8]),
    .LI(\drawunit/vga_controller/Madd_offset_share0000_xor<9>_rt_1002 ),
    .O(\drawunit/vga_controller/offset_share0000 [9])
  );
  MUXCY   \drawunit/vga_controller/Madd_line_addsub0000_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\drawunit/vga_controller/Madd_line_addsub0000_lut [0]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [0])
  );
  XORCY   \drawunit/vga_controller/Madd_line_addsub0000_xor<0>  (
    .CI(N0),
    .LI(\drawunit/vga_controller/Madd_line_addsub0000_lut [0]),
    .O(\drawunit/vga_controller/line_addsub0000 [0])
  );
  MUXCY   \drawunit/vga_controller/Madd_line_addsub0000_cy<1>  (
    .CI(\drawunit/vga_controller/Madd_line_addsub0000_cy [0]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_line_addsub0000_cy<1>_rt_969 ),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [1])
  );
  XORCY   \drawunit/vga_controller/Madd_line_addsub0000_xor<1>  (
    .CI(\drawunit/vga_controller/Madd_line_addsub0000_cy [0]),
    .LI(\drawunit/vga_controller/Madd_line_addsub0000_cy<1>_rt_969 ),
    .O(\drawunit/vga_controller/line_addsub0000 [1])
  );
  MUXCY   \drawunit/vga_controller/Madd_line_addsub0000_cy<2>  (
    .CI(\drawunit/vga_controller/Madd_line_addsub0000_cy [1]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_line_addsub0000_cy<2>_rt_971 ),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [2])
  );
  XORCY   \drawunit/vga_controller/Madd_line_addsub0000_xor<2>  (
    .CI(\drawunit/vga_controller/Madd_line_addsub0000_cy [1]),
    .LI(\drawunit/vga_controller/Madd_line_addsub0000_cy<2>_rt_971 ),
    .O(\drawunit/vga_controller/line_addsub0000 [2])
  );
  MUXCY   \drawunit/vga_controller/Madd_line_addsub0000_cy<3>  (
    .CI(\drawunit/vga_controller/Madd_line_addsub0000_cy [2]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_line_addsub0000_cy<3>_rt_973 ),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [3])
  );
  XORCY   \drawunit/vga_controller/Madd_line_addsub0000_xor<3>  (
    .CI(\drawunit/vga_controller/Madd_line_addsub0000_cy [2]),
    .LI(\drawunit/vga_controller/Madd_line_addsub0000_cy<3>_rt_973 ),
    .O(\drawunit/vga_controller/line_addsub0000 [3])
  );
  MUXCY   \drawunit/vga_controller/Madd_line_addsub0000_cy<4>  (
    .CI(\drawunit/vga_controller/Madd_line_addsub0000_cy [3]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_line_addsub0000_cy<4>_rt_975 ),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [4])
  );
  XORCY   \drawunit/vga_controller/Madd_line_addsub0000_xor<4>  (
    .CI(\drawunit/vga_controller/Madd_line_addsub0000_cy [3]),
    .LI(\drawunit/vga_controller/Madd_line_addsub0000_cy<4>_rt_975 ),
    .O(\drawunit/vga_controller/line_addsub0000 [4])
  );
  MUXCY   \drawunit/vga_controller/Madd_line_addsub0000_cy<5>  (
    .CI(\drawunit/vga_controller/Madd_line_addsub0000_cy [4]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_line_addsub0000_cy<5>_rt_977 ),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [5])
  );
  XORCY   \drawunit/vga_controller/Madd_line_addsub0000_xor<5>  (
    .CI(\drawunit/vga_controller/Madd_line_addsub0000_cy [4]),
    .LI(\drawunit/vga_controller/Madd_line_addsub0000_cy<5>_rt_977 ),
    .O(\drawunit/vga_controller/line_addsub0000 [5])
  );
  MUXCY   \drawunit/vga_controller/Madd_line_addsub0000_cy<6>  (
    .CI(\drawunit/vga_controller/Madd_line_addsub0000_cy [5]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_line_addsub0000_cy<6>_rt_979 ),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [6])
  );
  XORCY   \drawunit/vga_controller/Madd_line_addsub0000_xor<6>  (
    .CI(\drawunit/vga_controller/Madd_line_addsub0000_cy [5]),
    .LI(\drawunit/vga_controller/Madd_line_addsub0000_cy<6>_rt_979 ),
    .O(\drawunit/vga_controller/line_addsub0000 [6])
  );
  MUXCY   \drawunit/vga_controller/Madd_line_addsub0000_cy<7>  (
    .CI(\drawunit/vga_controller/Madd_line_addsub0000_cy [6]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_line_addsub0000_cy<7>_rt_981 ),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy [7])
  );
  XORCY   \drawunit/vga_controller/Madd_line_addsub0000_xor<7>  (
    .CI(\drawunit/vga_controller/Madd_line_addsub0000_cy [6]),
    .LI(\drawunit/vga_controller/Madd_line_addsub0000_cy<7>_rt_981 ),
    .O(\drawunit/vga_controller/line_addsub0000 [7])
  );
  XORCY   \drawunit/vga_controller/Madd_line_addsub0000_xor<8>  (
    .CI(\drawunit/vga_controller/Madd_line_addsub0000_cy [7]),
    .LI(\drawunit/vga_controller/Madd_line_addsub0000_xor<8>_rt_983 ),
    .O(\drawunit/vga_controller/line_addsub0000 [8])
  );
  MUXCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\drawunit/vga_controller/Madd_pixCount_addsub0000_lut [0]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [0])
  );
  XORCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<0>  (
    .CI(N0),
    .LI(\drawunit/vga_controller/Madd_pixCount_addsub0000_lut [0]),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [0])
  );
  MUXCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<1>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [0]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<1>_rt_1005 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [1])
  );
  XORCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<1>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [0]),
    .LI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<1>_rt_1005 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [1])
  );
  MUXCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<2>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [1]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<2>_rt_1007 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [2])
  );
  XORCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<2>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [1]),
    .LI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<2>_rt_1007 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [2])
  );
  MUXCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<3>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [2]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<3>_rt_1009 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [3])
  );
  XORCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<3>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [2]),
    .LI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<3>_rt_1009 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [3])
  );
  MUXCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<4>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [3]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<4>_rt_1011 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [4])
  );
  XORCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<4>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [3]),
    .LI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<4>_rt_1011 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [4])
  );
  MUXCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<5>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [4]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<5>_rt_1013 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [5])
  );
  XORCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<5>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [4]),
    .LI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<5>_rt_1013 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [5])
  );
  MUXCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<6>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [5]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<6>_rt_1015 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [6])
  );
  XORCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<6>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [5]),
    .LI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<6>_rt_1015 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [6])
  );
  MUXCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<7>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [6]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<7>_rt_1017 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [7])
  );
  XORCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<7>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [6]),
    .LI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<7>_rt_1017 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [7])
  );
  MUXCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<8>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [7]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<8>_rt_1019 ),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [8])
  );
  XORCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<8>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [7]),
    .LI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<8>_rt_1019 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [8])
  );
  XORCY   \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<9>  (
    .CI(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy [8]),
    .LI(\drawunit/vga_controller/Madd_pixCount_addsub0000_xor<9>_rt_1021 ),
    .O(\drawunit/vga_controller/pixCount_addsub0000 [9])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_lut [0]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [0])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<0>  (
    .CI(N0),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_lut [0]),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [0])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<1>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [0]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<1>_rt_1042 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [1])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<1>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [0]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<1>_rt_1042 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [1])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<2>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [1]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<2>_rt_1044 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [2])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<2>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [1]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<2>_rt_1044 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [2])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<3>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [2]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<3>_rt_1046 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [3])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<3>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [2]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<3>_rt_1046 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [3])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<4>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [3]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<4>_rt_1048 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [4])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<4>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [3]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<4>_rt_1048 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [4])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<5>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [4]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<5>_rt_1050 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [5])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<5>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [4]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<5>_rt_1050 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [5])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<6>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [5]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<6>_rt_1052 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [6])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<6>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [5]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<6>_rt_1052 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [6])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<7>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [6]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<7>_rt_1054 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [7])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<7>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [6]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<7>_rt_1054 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [7])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<8>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [7]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<8>_rt_1056 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [8])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<8>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [7]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<8>_rt_1056 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [8])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<9>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [8]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<9>_rt_1058 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [9])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<9>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [8]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<9>_rt_1058 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [9])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<10>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [9]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<10>_rt_1024 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [10])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<10>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [9]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<10>_rt_1024 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [10])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<11>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [10]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<11>_rt_1026 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [11])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<11>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [10]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<11>_rt_1026 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [11])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<12>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [11]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<12>_rt_1028 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [12])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<12>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [11]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<12>_rt_1028 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [12])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<13>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [12]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<13>_rt_1030 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [13])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<13>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [12]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<13>_rt_1030 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [13])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<14>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [13]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<14>_rt_1032 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [14])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<14>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [13]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<14>_rt_1032 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [14])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<15>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [14]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<15>_rt_1034 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [15])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<15>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [14]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<15>_rt_1034 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [15])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<16>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [15]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<16>_rt_1036 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [16])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<16>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [15]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<16>_rt_1036 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [16])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<17>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [16]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<17>_rt_1038 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [17])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<17>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [16]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<17>_rt_1038 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [17])
  );
  MUXCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<18>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [17]),
    .DI(N0),
    .S(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<18>_rt_1040 ),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [18])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<18>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [17]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<18>_rt_1040 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [18])
  );
  XORCY   \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<19>  (
    .CI(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy [18]),
    .LI(\drawunit/vga_controller/Madd_totalPix_addsub0000_xor<19>_rt_1060 ),
    .O(\drawunit/vga_controller/totalPix_addsub0000 [19])
  );
  FDC   \drawunit/vga_controller/totalPix_19  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [0]),
    .Q(\drawunit/vga_controller/totalPix [19])
  );
  FDC   \drawunit/vga_controller/totalPix_18  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [1]),
    .Q(\drawunit/vga_controller/totalPix [18])
  );
  FDC   \drawunit/vga_controller/totalPix_16  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [3]),
    .Q(\drawunit/vga_controller/totalPix [16])
  );
  FDC   \drawunit/vga_controller/totalPix_15  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [4]),
    .Q(\drawunit/vga_controller/totalPix [15])
  );
  FDC   \drawunit/vga_controller/totalPix_17  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [2]),
    .Q(\drawunit/vga_controller/totalPix [17])
  );
  FDC   \drawunit/vga_controller/totalPix_14  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [5]),
    .Q(\drawunit/vga_controller/totalPix [14])
  );
  FDC   \drawunit/vga_controller/totalPix_13  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [6]),
    .Q(\drawunit/vga_controller/totalPix [13])
  );
  FDC   \drawunit/vga_controller/totalPix_11  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [8]),
    .Q(\drawunit/vga_controller/totalPix [11])
  );
  FDC   \drawunit/vga_controller/totalPix_10  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [9]),
    .Q(\drawunit/vga_controller/totalPix [10])
  );
  FDC   \drawunit/vga_controller/totalPix_12  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [7]),
    .Q(\drawunit/vga_controller/totalPix [12])
  );
  FDC   \drawunit/vga_controller/totalPix_9  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [10]),
    .Q(\drawunit/vga_controller/totalPix [9])
  );
  FDC   \drawunit/vga_controller/totalPix_8  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [11]),
    .Q(\drawunit/vga_controller/totalPix [8])
  );
  FDC   \drawunit/vga_controller/totalPix_6  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [13]),
    .Q(\drawunit/vga_controller/totalPix [6])
  );
  FDC   \drawunit/vga_controller/totalPix_5  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [14]),
    .Q(\drawunit/vga_controller/totalPix [5])
  );
  FDC   \drawunit/vga_controller/totalPix_7  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [12]),
    .Q(\drawunit/vga_controller/totalPix [7])
  );
  FDC   \drawunit/vga_controller/totalPix_4  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [15]),
    .Q(\drawunit/vga_controller/totalPix [4])
  );
  FDC   \drawunit/vga_controller/totalPix_3  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [16]),
    .Q(\drawunit/vga_controller/totalPix [3])
  );
  FDC   \drawunit/vga_controller/totalPix_1  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [18]),
    .Q(\drawunit/vga_controller/totalPix [1])
  );
  FDP   \drawunit/vga_controller/totalPix_0  (
    .C(vgaClk_1302),
    .D(\drawunit/vga_controller/totalPix_mux0000 [19]),
    .PRE(reset_IBUF_1296),
    .Q(\drawunit/vga_controller/totalPix [0])
  );
  FDC   \drawunit/vga_controller/totalPix_2  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/totalPix_mux0000 [17]),
    .Q(\drawunit/vga_controller/totalPix [2])
  );
  FDC   \drawunit/vga_controller/pixCount_9  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/pixCount_mux0000 [0]),
    .Q(\drawunit/vga_controller/pixCount [9])
  );
  FDC   \drawunit/vga_controller/pixCount_8  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/pixCount_mux0000 [1]),
    .Q(\drawunit/vga_controller/pixCount [8])
  );
  FDC   \drawunit/vga_controller/pixCount_6  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/pixCount_mux0000 [3]),
    .Q(\drawunit/vga_controller/pixCount [6])
  );
  FDC   \drawunit/vga_controller/pixCount_5  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/pixCount_mux0000 [4]),
    .Q(\drawunit/vga_controller/pixCount [5])
  );
  FDC   \drawunit/vga_controller/pixCount_7  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/pixCount_mux0000 [2]),
    .Q(\drawunit/vga_controller/pixCount [7])
  );
  FDC   \drawunit/vga_controller/pixCount_4  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/pixCount_mux0000 [5]),
    .Q(\drawunit/vga_controller/pixCount [4])
  );
  FDC   \drawunit/vga_controller/pixCount_3  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/pixCount_mux0000 [6]),
    .Q(\drawunit/vga_controller/pixCount [3])
  );
  FDC   \drawunit/vga_controller/pixCount_1  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/pixCount_mux0000 [8]),
    .Q(\drawunit/vga_controller/pixCount [1])
  );
  FDP   \drawunit/vga_controller/pixCount_0  (
    .C(vgaClk_1302),
    .D(\drawunit/vga_controller/pixCount_mux0000 [9]),
    .PRE(reset_IBUF_1296),
    .Q(\drawunit/vga_controller/pixCount [0])
  );
  FDC   \drawunit/vga_controller/pixCount_2  (
    .C(vgaClk_1302),
    .CLR(reset_IBUF_1296),
    .D(\drawunit/vga_controller/pixCount_mux0000 [7]),
    .Q(\drawunit/vga_controller/pixCount [2])
  );
  FDSE   \drawunit/painter/newline  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/newline_not0001 ),
    .D(\drawunit/painter/newline_mux0000 ),
    .S(reset_IBUF_1296),
    .Q(\drawunit/painter/newline_672 )
  );
  FDR   \drawunit/painter/addr_0  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/addr_mux0000 [14]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/addr [0])
  );
  FDR   \drawunit/painter/addr_1  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/addr_mux0000 [13]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/addr [1])
  );
  FDR   \drawunit/painter/addr_2  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/addr_mux0000 [12]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/addr [2])
  );
  FDR   \drawunit/painter/addr_3  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/addr_mux0000 [11]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/addr [3])
  );
  FDR   \drawunit/painter/addr_4  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/addr_mux0000 [10]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/addr [4])
  );
  FDR   \drawunit/painter/addr_5  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/addr_mux0000 [9]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/addr [5])
  );
  FDR   \drawunit/painter/addr_6  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/addr_mux0000 [8]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/addr [6])
  );
  FDR   \drawunit/painter/addr_7  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/addr_mux0000 [7]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/addr [7])
  );
  FDR   \drawunit/painter/addr_8  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/addr_mux0000 [6]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/addr [8])
  );
  FDR   \drawunit/painter/addr_9  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/addr_mux0000 [5]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/addr [9])
  );
  FDR   \drawunit/painter/addr_10  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/addr_mux0000 [4]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/addr [10])
  );
  FDR   \drawunit/painter/addr_11  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/addr_mux0000 [3]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/addr [11])
  );
  FDR   \drawunit/painter/addr_12  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/addr_mux0000 [2]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/addr [12])
  );
  FDR   \drawunit/painter/addr_13  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/addr_mux0000 [1]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/addr [13])
  );
  FDR   \drawunit/painter/addr_14  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/addr_mux0000 [0]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/addr [14])
  );
  FDRE   \drawunit/painter/data_0  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/data_not0001 ),
    .D(\drawunit/queue/rdData [23]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/data [0])
  );
  FDRE   \drawunit/painter/data_1  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/data_not0001 ),
    .D(\drawunit/queue/rdData [24]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/data [1])
  );
  FDRE   \drawunit/painter/data_2  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/data_not0001 ),
    .D(\drawunit/queue/rdData [25]),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/data [2])
  );
  FDR   \drawunit/painter/we  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/we_mux0000 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/we_714 )
  );
  FDR   \drawunit/painter/re  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/re_mux0000 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/re_675 )
  );
  FDR   \drawunit/painter/swapBuffersCommand  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/swapBuffersCommand_mux0000 ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/swapBuffersCommand_710 )
  );
  FDE   \drawunit/painter/left_0  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [8]),
    .Q(\drawunit/painter/left [0])
  );
  FDE   \drawunit/painter/left_1  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [9]),
    .Q(\drawunit/painter/left [1])
  );
  FDE   \drawunit/painter/left_2  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [10]),
    .Q(\drawunit/painter/left [2])
  );
  FDE   \drawunit/painter/left_3  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [11]),
    .Q(\drawunit/painter/left [3])
  );
  FDE   \drawunit/painter/left_4  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [12]),
    .Q(\drawunit/painter/left [4])
  );
  FDE   \drawunit/painter/left_5  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [13]),
    .Q(\drawunit/painter/left [5])
  );
  FDE   \drawunit/painter/left_6  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [14]),
    .Q(\drawunit/painter/left [6])
  );
  FDE   \drawunit/painter/left_7  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [15]),
    .Q(\drawunit/painter/left [7])
  );
  FDE   \drawunit/painter/right_0  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [0]),
    .Q(\drawunit/painter/right [0])
  );
  FDE   \drawunit/painter/right_1  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [1]),
    .Q(\drawunit/painter/right [1])
  );
  FDE   \drawunit/painter/right_2  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [2]),
    .Q(\drawunit/painter/right [2])
  );
  FDE   \drawunit/painter/right_3  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [3]),
    .Q(\drawunit/painter/right [3])
  );
  FDE   \drawunit/painter/right_4  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [4]),
    .Q(\drawunit/painter/right [4])
  );
  FDE   \drawunit/painter/right_5  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [5]),
    .Q(\drawunit/painter/right [5])
  );
  FDE   \drawunit/painter/right_6  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [6]),
    .Q(\drawunit/painter/right [6])
  );
  FDE   \drawunit/painter/right_7  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/painter/line_not0001 ),
    .D(\drawunit/queue/rdData [7]),
    .Q(\drawunit/painter/right [7])
  );
  MULT18X18SIO #(
    .B_INPUT ( "DIRECT" ),
    .AREG ( 1 ),
    .BREG ( 0 ),
    .PREG ( 0 ))
  \drawunit/painter/Mmult_add0000_mult0000  (
    .CEA(\drawunit/painter/line_not0001 ),
    .CEB(N0),
    .CEP(N0),
    .CLK(clk_BUFGP_161),
    .RSTA(N0),
    .RSTB(N0),
    .RSTP(N0),
    .A({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, \drawunit/queue/rdData [22], \drawunit/queue/rdData [21], \drawunit/queue/rdData [20], 
\drawunit/queue/rdData [19], \drawunit/queue/rdData [18], \drawunit/queue/rdData [17], \drawunit/queue/rdData [16]}),
    .B({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N1, N0, N1, N0, N0, N0, N0, N0}),
    .BCIN({\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<17>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<16>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<15>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<14>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<13>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<12>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<11>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<10>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<9>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<8>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<7>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<6>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<5>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<4>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<3>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<2>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<1>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCIN<0>_UNCONNECTED }),
    .P({\NLW_drawunit/painter/Mmult_add0000_mult0000_P<35>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P<34>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P<33>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P<32>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P<31>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P<30>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P<29>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P<28>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P<27>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P<26>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P<25>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P<24>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P<23>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P<22>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P<21>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P<20>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P<19>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P<18>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P<17>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_P<16>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_P<15>_UNCONNECTED , \drawunit/painter/add0000_mult0000 [14], \drawunit/painter/add0000_mult0000 [13], 
\drawunit/painter/add0000_mult0000 [12], \drawunit/painter/add0000_mult0000 [11], \drawunit/painter/add0000_mult0000 [10], 
\drawunit/painter/add0000_mult0000 [9], \drawunit/painter/add0000_mult0000 [8], \drawunit/painter/add0000_mult0000 [7], 
\drawunit/painter/add0000_mult0000 [6], \drawunit/painter/add0000_mult0000 [5], \drawunit/painter/add0000_mult0000 [4], 
\drawunit/painter/add0000_mult0000 [3], \drawunit/painter/add0000_mult0000 [2], \drawunit/painter/add0000_mult0000 [1], 
\drawunit/painter/add0000_mult0000 [0]}),
    .BCOUT({\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<17>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<16>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<15>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<14>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<13>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<12>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<11>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<10>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<9>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<8>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<7>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<6>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<5>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<4>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<3>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<2>_UNCONNECTED , 
\NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<1>_UNCONNECTED , \NLW_drawunit/painter/Mmult_add0000_mult0000_BCOUT<0>_UNCONNECTED })
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<0>  (
    .I0(\drawunit/painter/right [0]),
    .I1(\drawunit/painter/add0000_mult0000 [0]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [0])
  );
  MUXCY   \drawunit/painter/Madd_add0000_addsub0000_cy<0>  (
    .CI(N0),
    .DI(\drawunit/painter/add0000_mult0000 [0]),
    .S(\drawunit/painter/Madd_add0000_addsub0000_lut [0]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [0])
  );
  XORCY   \drawunit/painter/Madd_add0000_addsub0000_xor<0>  (
    .CI(N0),
    .LI(\drawunit/painter/Madd_add0000_addsub0000_lut [0]),
    .O(\drawunit/painter/add0000_addsub0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<1>  (
    .I0(\drawunit/painter/right [1]),
    .I1(\drawunit/painter/add0000_mult0000 [1]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [1])
  );
  MUXCY   \drawunit/painter/Madd_add0000_addsub0000_cy<1>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [0]),
    .DI(\drawunit/painter/add0000_mult0000 [1]),
    .S(\drawunit/painter/Madd_add0000_addsub0000_lut [1]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [1])
  );
  XORCY   \drawunit/painter/Madd_add0000_addsub0000_xor<1>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [0]),
    .LI(\drawunit/painter/Madd_add0000_addsub0000_lut [1]),
    .O(\drawunit/painter/add0000_addsub0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<2>  (
    .I0(\drawunit/painter/right [2]),
    .I1(\drawunit/painter/add0000_mult0000 [2]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [2])
  );
  MUXCY   \drawunit/painter/Madd_add0000_addsub0000_cy<2>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [1]),
    .DI(\drawunit/painter/add0000_mult0000 [2]),
    .S(\drawunit/painter/Madd_add0000_addsub0000_lut [2]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [2])
  );
  XORCY   \drawunit/painter/Madd_add0000_addsub0000_xor<2>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [1]),
    .LI(\drawunit/painter/Madd_add0000_addsub0000_lut [2]),
    .O(\drawunit/painter/add0000_addsub0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<3>  (
    .I0(\drawunit/painter/right [3]),
    .I1(\drawunit/painter/add0000_mult0000 [3]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [3])
  );
  MUXCY   \drawunit/painter/Madd_add0000_addsub0000_cy<3>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [2]),
    .DI(\drawunit/painter/add0000_mult0000 [3]),
    .S(\drawunit/painter/Madd_add0000_addsub0000_lut [3]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [3])
  );
  XORCY   \drawunit/painter/Madd_add0000_addsub0000_xor<3>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [2]),
    .LI(\drawunit/painter/Madd_add0000_addsub0000_lut [3]),
    .O(\drawunit/painter/add0000_addsub0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<4>  (
    .I0(\drawunit/painter/right [4]),
    .I1(\drawunit/painter/add0000_mult0000 [4]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [4])
  );
  MUXCY   \drawunit/painter/Madd_add0000_addsub0000_cy<4>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [3]),
    .DI(\drawunit/painter/add0000_mult0000 [4]),
    .S(\drawunit/painter/Madd_add0000_addsub0000_lut [4]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [4])
  );
  XORCY   \drawunit/painter/Madd_add0000_addsub0000_xor<4>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [3]),
    .LI(\drawunit/painter/Madd_add0000_addsub0000_lut [4]),
    .O(\drawunit/painter/add0000_addsub0000 [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<5>  (
    .I0(\drawunit/painter/right [5]),
    .I1(\drawunit/painter/add0000_mult0000 [5]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [5])
  );
  MUXCY   \drawunit/painter/Madd_add0000_addsub0000_cy<5>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [4]),
    .DI(\drawunit/painter/add0000_mult0000 [5]),
    .S(\drawunit/painter/Madd_add0000_addsub0000_lut [5]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [5])
  );
  XORCY   \drawunit/painter/Madd_add0000_addsub0000_xor<5>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [4]),
    .LI(\drawunit/painter/Madd_add0000_addsub0000_lut [5]),
    .O(\drawunit/painter/add0000_addsub0000 [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<6>  (
    .I0(\drawunit/painter/right [6]),
    .I1(\drawunit/painter/add0000_mult0000 [6]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [6])
  );
  MUXCY   \drawunit/painter/Madd_add0000_addsub0000_cy<6>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [5]),
    .DI(\drawunit/painter/add0000_mult0000 [6]),
    .S(\drawunit/painter/Madd_add0000_addsub0000_lut [6]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [6])
  );
  XORCY   \drawunit/painter/Madd_add0000_addsub0000_xor<6>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [5]),
    .LI(\drawunit/painter/Madd_add0000_addsub0000_lut [6]),
    .O(\drawunit/painter/add0000_addsub0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/painter/Madd_add0000_addsub0000_lut<7>  (
    .I0(\drawunit/painter/right [7]),
    .I1(\drawunit/painter/add0000_mult0000 [7]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_lut [7])
  );
  MUXCY   \drawunit/painter/Madd_add0000_addsub0000_cy<7>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [6]),
    .DI(\drawunit/painter/add0000_mult0000 [7]),
    .S(\drawunit/painter/Madd_add0000_addsub0000_lut [7]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [7])
  );
  XORCY   \drawunit/painter/Madd_add0000_addsub0000_xor<7>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [6]),
    .LI(\drawunit/painter/Madd_add0000_addsub0000_lut [7]),
    .O(\drawunit/painter/add0000_addsub0000 [7])
  );
  MUXCY   \drawunit/painter/Madd_add0000_addsub0000_cy<8>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [7]),
    .DI(N0),
    .S(\drawunit/painter/Madd_add0000_addsub0000_cy<8>_rt_436 ),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [8])
  );
  XORCY   \drawunit/painter/Madd_add0000_addsub0000_xor<8>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [7]),
    .LI(\drawunit/painter/Madd_add0000_addsub0000_cy<8>_rt_436 ),
    .O(\drawunit/painter/add0000_addsub0000 [8])
  );
  MUXCY   \drawunit/painter/Madd_add0000_addsub0000_cy<9>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [8]),
    .DI(N0),
    .S(\drawunit/painter/Madd_add0000_addsub0000_cy<9>_rt_438 ),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [9])
  );
  XORCY   \drawunit/painter/Madd_add0000_addsub0000_xor<9>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [8]),
    .LI(\drawunit/painter/Madd_add0000_addsub0000_cy<9>_rt_438 ),
    .O(\drawunit/painter/add0000_addsub0000 [9])
  );
  MUXCY   \drawunit/painter/Madd_add0000_addsub0000_cy<10>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [9]),
    .DI(N0),
    .S(\drawunit/painter/Madd_add0000_addsub0000_cy<10>_rt_420 ),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [10])
  );
  XORCY   \drawunit/painter/Madd_add0000_addsub0000_xor<10>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [9]),
    .LI(\drawunit/painter/Madd_add0000_addsub0000_cy<10>_rt_420 ),
    .O(\drawunit/painter/add0000_addsub0000 [10])
  );
  MUXCY   \drawunit/painter/Madd_add0000_addsub0000_cy<11>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [10]),
    .DI(N0),
    .S(\drawunit/painter/Madd_add0000_addsub0000_cy<11>_rt_422 ),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [11])
  );
  XORCY   \drawunit/painter/Madd_add0000_addsub0000_xor<11>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [10]),
    .LI(\drawunit/painter/Madd_add0000_addsub0000_cy<11>_rt_422 ),
    .O(\drawunit/painter/add0000_addsub0000 [11])
  );
  MUXCY   \drawunit/painter/Madd_add0000_addsub0000_cy<12>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [11]),
    .DI(N0),
    .S(\drawunit/painter/Madd_add0000_addsub0000_cy<12>_rt_424 ),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [12])
  );
  XORCY   \drawunit/painter/Madd_add0000_addsub0000_xor<12>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [11]),
    .LI(\drawunit/painter/Madd_add0000_addsub0000_cy<12>_rt_424 ),
    .O(\drawunit/painter/add0000_addsub0000 [12])
  );
  MUXCY   \drawunit/painter/Madd_add0000_addsub0000_cy<13>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [12]),
    .DI(N0),
    .S(\drawunit/painter/Madd_add0000_addsub0000_cy<13>_rt_426 ),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy [13])
  );
  XORCY   \drawunit/painter/Madd_add0000_addsub0000_xor<13>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [12]),
    .LI(\drawunit/painter/Madd_add0000_addsub0000_cy<13>_rt_426 ),
    .O(\drawunit/painter/add0000_addsub0000 [13])
  );
  MUXCY   \drawunit/painter/Madd_add0000_addsub0000_cy<14>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [13]),
    .DI(N0),
    .S(\drawunit/painter/Madd_add0000_addsub0000_cy<14>_rt_427 ),
    .O(\drawunit/painter/Madd_add0000_index0000 )
  );
  XORCY   \drawunit/painter/Madd_add0000_addsub0000_xor<14>  (
    .CI(\drawunit/painter/Madd_add0000_addsub0000_cy [13]),
    .LI(\drawunit/painter/Madd_add0000_addsub0000_cy<14>_rt_427 ),
    .O(\drawunit/painter/add0000_addsub0000 [14])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<0>  (
    .I0(\drawunit/painter/left [0]),
    .I1(\drawunit/painter/right [0]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [0])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_le0000_cy<0>  (
    .CI(N1),
    .DI(\drawunit/painter/left [0]),
    .S(\drawunit/painter/Mcompar_state_cmp_le0000_lut [0]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<1>  (
    .I0(\drawunit/painter/left [1]),
    .I1(\drawunit/painter/right [1]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [1])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_le0000_cy<1>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_le0000_cy [0]),
    .DI(\drawunit/painter/left [1]),
    .S(\drawunit/painter/Mcompar_state_cmp_le0000_lut [1]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<2>  (
    .I0(\drawunit/painter/left [2]),
    .I1(\drawunit/painter/right [2]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [2])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_le0000_cy<2>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_le0000_cy [1]),
    .DI(\drawunit/painter/left [2]),
    .S(\drawunit/painter/Mcompar_state_cmp_le0000_lut [2]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<3>  (
    .I0(\drawunit/painter/left [3]),
    .I1(\drawunit/painter/right [3]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [3])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_le0000_cy<3>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_le0000_cy [2]),
    .DI(\drawunit/painter/left [3]),
    .S(\drawunit/painter/Mcompar_state_cmp_le0000_lut [3]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<4>  (
    .I0(\drawunit/painter/left [4]),
    .I1(\drawunit/painter/right [4]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [4])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_le0000_cy<4>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_le0000_cy [3]),
    .DI(\drawunit/painter/left [4]),
    .S(\drawunit/painter/Mcompar_state_cmp_le0000_lut [4]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<5>  (
    .I0(\drawunit/painter/left [5]),
    .I1(\drawunit/painter/right [5]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [5])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_le0000_cy<5>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_le0000_cy [4]),
    .DI(\drawunit/painter/left [5]),
    .S(\drawunit/painter/Mcompar_state_cmp_le0000_lut [5]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<6>  (
    .I0(\drawunit/painter/left [6]),
    .I1(\drawunit/painter/right [6]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [6])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_le0000_cy<6>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_le0000_cy [5]),
    .DI(\drawunit/painter/left [6]),
    .S(\drawunit/painter/Mcompar_state_cmp_le0000_lut [6]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_le0000_lut<7>  (
    .I0(\drawunit/painter/left [7]),
    .I1(\drawunit/painter/right [7]),
    .O(\drawunit/painter/Mcompar_state_cmp_le0000_lut [7])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_le0000_cy<7>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_le0000_cy [6]),
    .DI(\drawunit/painter/left [7]),
    .S(\drawunit/painter/Mcompar_state_cmp_le0000_lut [7]),
    .O(\drawunit/painter/state_cmp_le0000 )
  );
  MUXCY   \drawunit/painter/Madd_addr_addsub0000_cy<0>  (
    .CI(N0),
    .DI(\drawunit/painter/addr_mux0001 [0]),
    .S(\drawunit/painter/Madd_addr_addsub0000_lut [0]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [0])
  );
  XORCY   \drawunit/painter/Madd_addr_addsub0000_xor<0>  (
    .CI(N0),
    .LI(\drawunit/painter/Madd_addr_addsub0000_lut [0]),
    .O(\drawunit/painter/addr_addsub0000 [0])
  );
  MULT_AND   \drawunit/painter/addr_mux0001<1>_mand  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/left [1]),
    .LO(\drawunit/painter/addr_mux0001<1>_mand1 )
  );
  MUXCY   \drawunit/painter/Madd_addr_addsub0000_cy<1>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [0]),
    .DI(\drawunit/painter/addr_mux0001<1>_mand1 ),
    .S(\drawunit/painter/Madd_addr_addsub0000_lut [1]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [1])
  );
  XORCY   \drawunit/painter/Madd_addr_addsub0000_xor<1>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [0]),
    .LI(\drawunit/painter/Madd_addr_addsub0000_lut [1]),
    .O(\drawunit/painter/addr_addsub0000 [1])
  );
  MULT_AND   \drawunit/painter/addr_mux0001<2>_mand  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/left [2]),
    .LO(\drawunit/painter/addr_mux0001<2>_mand1 )
  );
  MUXCY   \drawunit/painter/Madd_addr_addsub0000_cy<2>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [1]),
    .DI(\drawunit/painter/addr_mux0001<2>_mand1 ),
    .S(\drawunit/painter/Madd_addr_addsub0000_lut [2]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [2])
  );
  XORCY   \drawunit/painter/Madd_addr_addsub0000_xor<2>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [1]),
    .LI(\drawunit/painter/Madd_addr_addsub0000_lut [2]),
    .O(\drawunit/painter/addr_addsub0000 [2])
  );
  MULT_AND   \drawunit/painter/addr_mux0001<3>_mand  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/left [3]),
    .LO(\drawunit/painter/addr_mux0001<3>_mand1 )
  );
  MUXCY   \drawunit/painter/Madd_addr_addsub0000_cy<3>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [2]),
    .DI(\drawunit/painter/addr_mux0001<3>_mand1 ),
    .S(\drawunit/painter/Madd_addr_addsub0000_lut [3]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [3])
  );
  XORCY   \drawunit/painter/Madd_addr_addsub0000_xor<3>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [2]),
    .LI(\drawunit/painter/Madd_addr_addsub0000_lut [3]),
    .O(\drawunit/painter/addr_addsub0000 [3])
  );
  MULT_AND   \drawunit/painter/addr_mux0001<4>_mand  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/left [4]),
    .LO(\drawunit/painter/addr_mux0001<4>_mand1 )
  );
  MUXCY   \drawunit/painter/Madd_addr_addsub0000_cy<4>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [3]),
    .DI(\drawunit/painter/addr_mux0001<4>_mand1 ),
    .S(\drawunit/painter/Madd_addr_addsub0000_lut [4]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [4])
  );
  XORCY   \drawunit/painter/Madd_addr_addsub0000_xor<4>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [3]),
    .LI(\drawunit/painter/Madd_addr_addsub0000_lut [4]),
    .O(\drawunit/painter/addr_addsub0000 [4])
  );
  MULT_AND   \drawunit/painter/addr_mux0001<5>_mand  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/left [5]),
    .LO(\drawunit/painter/addr_mux0001<5>_mand1 )
  );
  MUXCY   \drawunit/painter/Madd_addr_addsub0000_cy<5>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [4]),
    .DI(\drawunit/painter/addr_mux0001<5>_mand1 ),
    .S(\drawunit/painter/Madd_addr_addsub0000_lut [5]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [5])
  );
  XORCY   \drawunit/painter/Madd_addr_addsub0000_xor<5>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [4]),
    .LI(\drawunit/painter/Madd_addr_addsub0000_lut [5]),
    .O(\drawunit/painter/addr_addsub0000 [5])
  );
  MULT_AND   \drawunit/painter/addr_mux0001<6>_mand  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/left [6]),
    .LO(\drawunit/painter/addr_mux0001<6>_mand1 )
  );
  MUXCY   \drawunit/painter/Madd_addr_addsub0000_cy<6>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [5]),
    .DI(\drawunit/painter/addr_mux0001<6>_mand1 ),
    .S(\drawunit/painter/Madd_addr_addsub0000_lut [6]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [6])
  );
  XORCY   \drawunit/painter/Madd_addr_addsub0000_xor<6>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [5]),
    .LI(\drawunit/painter/Madd_addr_addsub0000_lut [6]),
    .O(\drawunit/painter/addr_addsub0000 [6])
  );
  MULT_AND   \drawunit/painter/addr_mux0001<7>_mand  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/left [7]),
    .LO(\drawunit/painter/addr_mux0001<7>_mand1 )
  );
  MUXCY   \drawunit/painter/Madd_addr_addsub0000_cy<7>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [6]),
    .DI(\drawunit/painter/addr_mux0001<7>_mand1 ),
    .S(\drawunit/painter/Madd_addr_addsub0000_lut [7]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [7])
  );
  XORCY   \drawunit/painter/Madd_addr_addsub0000_xor<7>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [6]),
    .LI(\drawunit/painter/Madd_addr_addsub0000_lut [7]),
    .O(\drawunit/painter/addr_addsub0000 [7])
  );
  MUXCY   \drawunit/painter/Madd_addr_addsub0000_cy<8>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [7]),
    .DI(N0),
    .S(\drawunit/painter/addr_mux0002 [8]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [8])
  );
  XORCY   \drawunit/painter/Madd_addr_addsub0000_xor<8>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [7]),
    .LI(\drawunit/painter/addr_mux0002 [8]),
    .O(\drawunit/painter/addr_addsub0000 [8])
  );
  MUXCY   \drawunit/painter/Madd_addr_addsub0000_cy<9>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [8]),
    .DI(N0),
    .S(\drawunit/painter/addr_mux0002 [9]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [9])
  );
  XORCY   \drawunit/painter/Madd_addr_addsub0000_xor<9>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [8]),
    .LI(\drawunit/painter/addr_mux0002 [9]),
    .O(\drawunit/painter/addr_addsub0000 [9])
  );
  MUXCY   \drawunit/painter/Madd_addr_addsub0000_cy<10>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [9]),
    .DI(N0),
    .S(\drawunit/painter/addr_mux0002 [10]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [10])
  );
  XORCY   \drawunit/painter/Madd_addr_addsub0000_xor<10>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [9]),
    .LI(\drawunit/painter/addr_mux0002 [10]),
    .O(\drawunit/painter/addr_addsub0000 [10])
  );
  MUXCY   \drawunit/painter/Madd_addr_addsub0000_cy<11>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [10]),
    .DI(N0),
    .S(\drawunit/painter/addr_mux0002 [11]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [11])
  );
  XORCY   \drawunit/painter/Madd_addr_addsub0000_xor<11>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [10]),
    .LI(\drawunit/painter/addr_mux0002 [11]),
    .O(\drawunit/painter/addr_addsub0000 [11])
  );
  MUXCY   \drawunit/painter/Madd_addr_addsub0000_cy<12>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [11]),
    .DI(N0),
    .S(\drawunit/painter/addr_mux0002 [12]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [12])
  );
  XORCY   \drawunit/painter/Madd_addr_addsub0000_xor<12>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [11]),
    .LI(\drawunit/painter/addr_mux0002 [12]),
    .O(\drawunit/painter/addr_addsub0000 [12])
  );
  MUXCY   \drawunit/painter/Madd_addr_addsub0000_cy<13>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [12]),
    .DI(N0),
    .S(\drawunit/painter/addr_mux0002 [13]),
    .O(\drawunit/painter/Madd_addr_addsub0000_cy [13])
  );
  XORCY   \drawunit/painter/Madd_addr_addsub0000_xor<13>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [12]),
    .LI(\drawunit/painter/addr_mux0002 [13]),
    .O(\drawunit/painter/addr_addsub0000 [13])
  );
  XORCY   \drawunit/painter/Madd_addr_addsub0000_xor<14>  (
    .CI(\drawunit/painter/Madd_addr_addsub0000_cy [13]),
    .LI(\drawunit/painter/addr_mux0002 [14]),
    .O(\drawunit/painter/addr_addsub0000 [14])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\drawunit/painter/Msub__sub0000_cy<0>_rt_517 ),
    .O(\drawunit/painter/Msub__sub0000_cy [0])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<0>  (
    .CI(N1),
    .LI(\drawunit/painter/Msub__sub0000_cy<0>_rt_517 ),
    .O(\drawunit/painter/_sub0000 [0])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<1>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [0]),
    .DI(N1),
    .S(\drawunit/painter/Msub__sub0000_lut [1]),
    .O(\drawunit/painter/Msub__sub0000_cy [1])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<1>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [0]),
    .LI(\drawunit/painter/Msub__sub0000_lut [1]),
    .O(\drawunit/painter/_sub0000 [1])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<2>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [1]),
    .DI(N1),
    .S(\drawunit/painter/Msub__sub0000_lut [2]),
    .O(\drawunit/painter/Msub__sub0000_cy [2])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<2>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [1]),
    .LI(\drawunit/painter/Msub__sub0000_lut [2]),
    .O(\drawunit/painter/_sub0000 [2])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<3>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [2]),
    .DI(N1),
    .S(\drawunit/painter/Msub__sub0000_lut [3]),
    .O(\drawunit/painter/Msub__sub0000_cy [3])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<3>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [2]),
    .LI(\drawunit/painter/Msub__sub0000_lut [3]),
    .O(\drawunit/painter/_sub0000 [3])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<4>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [3]),
    .DI(N1),
    .S(\drawunit/painter/Msub__sub0000_lut [4]),
    .O(\drawunit/painter/Msub__sub0000_cy [4])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<4>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [3]),
    .LI(\drawunit/painter/Msub__sub0000_lut [4]),
    .O(\drawunit/painter/_sub0000 [4])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<5>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [4]),
    .DI(N1),
    .S(\drawunit/painter/Msub__sub0000_lut [5]),
    .O(\drawunit/painter/Msub__sub0000_cy [5])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<5>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [4]),
    .LI(\drawunit/painter/Msub__sub0000_lut [5]),
    .O(\drawunit/painter/_sub0000 [5])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<6>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [5]),
    .DI(N1),
    .S(\drawunit/painter/Msub__sub0000_lut [6]),
    .O(\drawunit/painter/Msub__sub0000_cy [6])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<6>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [5]),
    .LI(\drawunit/painter/Msub__sub0000_lut [6]),
    .O(\drawunit/painter/_sub0000 [6])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<7>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [6]),
    .DI(N1),
    .S(\drawunit/painter/Msub__sub0000_lut [7]),
    .O(\drawunit/painter/Msub__sub0000_cy [7])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<7>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [6]),
    .LI(\drawunit/painter/Msub__sub0000_lut [7]),
    .O(\drawunit/painter/_sub0000 [7])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<8>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [7]),
    .DI(N1),
    .S(\drawunit/painter/Msub__sub0000_lut [8]),
    .O(\drawunit/painter/Msub__sub0000_cy [8])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<8>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [7]),
    .LI(\drawunit/painter/Msub__sub0000_lut [8]),
    .O(\drawunit/painter/_sub0000 [8])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<9>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [8]),
    .DI(N1),
    .S(\drawunit/painter/Msub__sub0000_lut [9]),
    .O(\drawunit/painter/Msub__sub0000_cy [9])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<9>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [8]),
    .LI(\drawunit/painter/Msub__sub0000_lut [9]),
    .O(\drawunit/painter/_sub0000 [9])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<10>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [9]),
    .DI(N1),
    .S(\drawunit/painter/Msub__sub0000_lut [10]),
    .O(\drawunit/painter/Msub__sub0000_cy [10])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<10>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [9]),
    .LI(\drawunit/painter/Msub__sub0000_lut [10]),
    .O(\drawunit/painter/_sub0000 [10])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<11>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [10]),
    .DI(N1),
    .S(\drawunit/painter/Msub__sub0000_lut [11]),
    .O(\drawunit/painter/Msub__sub0000_cy [11])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<11>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [10]),
    .LI(\drawunit/painter/Msub__sub0000_lut [11]),
    .O(\drawunit/painter/_sub0000 [11])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<12>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [11]),
    .DI(N1),
    .S(\drawunit/painter/Msub__sub0000_lut [12]),
    .O(\drawunit/painter/Msub__sub0000_cy [12])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<12>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [11]),
    .LI(\drawunit/painter/Msub__sub0000_lut [12]),
    .O(\drawunit/painter/_sub0000 [12])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<13>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [12]),
    .DI(N1),
    .S(\drawunit/painter/Msub__sub0000_lut [13]),
    .O(\drawunit/painter/Msub__sub0000_cy [13])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<13>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [12]),
    .LI(\drawunit/painter/Msub__sub0000_lut [13]),
    .O(\drawunit/painter/_sub0000 [13])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<14>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [13]),
    .DI(N1),
    .S(\drawunit/painter/Msub__sub0000_lut [14]),
    .O(\drawunit/painter/Msub__sub0000_cy [14])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<14>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [13]),
    .LI(\drawunit/painter/Msub__sub0000_lut [14]),
    .O(\drawunit/painter/_sub0000 [14])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<15>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [14]),
    .DI(N1),
    .S(\drawunit/painter/Msub__sub0000_lut [15]),
    .O(\drawunit/painter/Msub__sub0000_cy [15])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<15>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [14]),
    .LI(\drawunit/painter/Msub__sub0000_lut [15]),
    .O(\drawunit/painter/_sub0000 [15])
  );
  MUXCY   \drawunit/painter/Msub__sub0000_cy<16>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [15]),
    .DI(N0),
    .S(N1),
    .O(\drawunit/painter/Msub__sub0000_cy [16])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<16>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [15]),
    .LI(N1),
    .O(\drawunit/painter/_sub0000 [16])
  );
  XORCY   \drawunit/painter/Msub__sub0000_xor<17>  (
    .CI(\drawunit/painter/Msub__sub0000_cy [16]),
    .LI(N1),
    .O(\drawunit/painter/_sub0000 [17])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<0>  (
    .I0(\drawunit/painter/addr [0]),
    .I1(\drawunit/painter/_sub0000 [0]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [0])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<0>  (
    .CI(N1),
    .DI(\drawunit/painter/addr [0]),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [0]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<1>  (
    .I0(\drawunit/painter/addr [1]),
    .I1(\drawunit/painter/_sub0000 [1]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [1])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<1>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [0]),
    .DI(\drawunit/painter/addr [1]),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [1]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<2>  (
    .I0(\drawunit/painter/addr [2]),
    .I1(\drawunit/painter/_sub0000 [2]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [2])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<2>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [1]),
    .DI(\drawunit/painter/addr [2]),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [2]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<3>  (
    .I0(\drawunit/painter/addr [3]),
    .I1(\drawunit/painter/_sub0000 [3]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [3])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<3>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [2]),
    .DI(\drawunit/painter/addr [3]),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [3]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<4>  (
    .I0(\drawunit/painter/addr [4]),
    .I1(\drawunit/painter/_sub0000 [4]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [4])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<4>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [3]),
    .DI(\drawunit/painter/addr [4]),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [4]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<5>  (
    .I0(\drawunit/painter/addr [5]),
    .I1(\drawunit/painter/_sub0000 [5]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [5])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<5>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [4]),
    .DI(\drawunit/painter/addr [5]),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [5]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<6>  (
    .I0(\drawunit/painter/addr [6]),
    .I1(\drawunit/painter/_sub0000 [6]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [6])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<6>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [5]),
    .DI(\drawunit/painter/addr [6]),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [6]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<7>  (
    .I0(\drawunit/painter/addr [7]),
    .I1(\drawunit/painter/_sub0000 [7]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [7])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<7>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [6]),
    .DI(\drawunit/painter/addr [7]),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [7]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<8>  (
    .I0(\drawunit/painter/addr [8]),
    .I1(\drawunit/painter/_sub0000 [8]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [8])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<8>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [7]),
    .DI(\drawunit/painter/addr [8]),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [8]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<9>  (
    .I0(\drawunit/painter/addr [9]),
    .I1(\drawunit/painter/_sub0000 [9]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [9])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<9>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [8]),
    .DI(\drawunit/painter/addr [9]),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [9]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<10>  (
    .I0(\drawunit/painter/addr [10]),
    .I1(\drawunit/painter/_sub0000 [10]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [10])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<10>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [9]),
    .DI(\drawunit/painter/addr [10]),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [10]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<11>  (
    .I0(\drawunit/painter/addr [11]),
    .I1(\drawunit/painter/_sub0000 [11]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [11])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<11>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [10]),
    .DI(\drawunit/painter/addr [11]),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [11]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<12>  (
    .I0(\drawunit/painter/addr [12]),
    .I1(\drawunit/painter/_sub0000 [12]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [12])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<12>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [11]),
    .DI(\drawunit/painter/addr [12]),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [12]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<13>  (
    .I0(\drawunit/painter/addr [13]),
    .I1(\drawunit/painter/_sub0000 [13]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [13])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<13>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [12]),
    .DI(\drawunit/painter/addr [13]),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [13]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<14>  (
    .I0(\drawunit/painter/addr [14]),
    .I1(\drawunit/painter/_sub0000 [14]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [14])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<14>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [13]),
    .DI(\drawunit/painter/addr [14]),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [14]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [14])
  );
  MUXCY   \drawunit/painter/Mcompar_state_cmp_ge0000_cy<15>  (
    .CI(\drawunit/painter/Mcompar_state_cmp_ge0000_cy [14]),
    .DI(N0),
    .S(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [15]),
    .O(\drawunit/painter/state_cmp_ge0000 )
  );
  FDR   \drawunit/painter/state_FSM_FFd3  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/state_FSM_FFd3-In ),
    .R(reset_IBUF_1296),
    .Q(\drawunit/painter/state_FSM_FFd3_690 )
  );
  XORCY   \drawunit/Madd_rdPtr_xor<14>  (
    .CI(\drawunit/Madd_rdPtr_cy [13]),
    .LI(\drawunit/rdPtr_mult0000 [14]),
    .O(\drawunit/rdPtr [14])
  );
  XORCY   \drawunit/Madd_rdPtr_xor<13>  (
    .CI(\drawunit/Madd_rdPtr_cy [12]),
    .LI(\drawunit/Madd_rdPtr_cy<13>_rt_214 ),
    .O(\drawunit/rdPtr [13])
  );
  MUXCY   \drawunit/Madd_rdPtr_cy<13>  (
    .CI(\drawunit/Madd_rdPtr_cy [12]),
    .DI(N0),
    .S(\drawunit/Madd_rdPtr_cy<13>_rt_214 ),
    .O(\drawunit/Madd_rdPtr_cy [13])
  );
  XORCY   \drawunit/Madd_rdPtr_xor<12>  (
    .CI(\drawunit/Madd_rdPtr_cy [11]),
    .LI(\drawunit/Madd_rdPtr_cy<12>_rt_212 ),
    .O(\drawunit/rdPtr [12])
  );
  MUXCY   \drawunit/Madd_rdPtr_cy<12>  (
    .CI(\drawunit/Madd_rdPtr_cy [11]),
    .DI(N0),
    .S(\drawunit/Madd_rdPtr_cy<12>_rt_212 ),
    .O(\drawunit/Madd_rdPtr_cy [12])
  );
  XORCY   \drawunit/Madd_rdPtr_xor<11>  (
    .CI(\drawunit/Madd_rdPtr_cy [10]),
    .LI(\drawunit/Madd_rdPtr_cy<11>_rt_210 ),
    .O(\drawunit/rdPtr [11])
  );
  MUXCY   \drawunit/Madd_rdPtr_cy<11>  (
    .CI(\drawunit/Madd_rdPtr_cy [10]),
    .DI(N0),
    .S(\drawunit/Madd_rdPtr_cy<11>_rt_210 ),
    .O(\drawunit/Madd_rdPtr_cy [11])
  );
  XORCY   \drawunit/Madd_rdPtr_xor<10>  (
    .CI(\drawunit/Madd_rdPtr_cy [9]),
    .LI(\drawunit/Madd_rdPtr_cy<10>_rt_208 ),
    .O(\drawunit/rdPtr [10])
  );
  MUXCY   \drawunit/Madd_rdPtr_cy<10>  (
    .CI(\drawunit/Madd_rdPtr_cy [9]),
    .DI(N0),
    .S(\drawunit/Madd_rdPtr_cy<10>_rt_208 ),
    .O(\drawunit/Madd_rdPtr_cy [10])
  );
  XORCY   \drawunit/Madd_rdPtr_xor<9>  (
    .CI(\drawunit/Madd_rdPtr_cy [8]),
    .LI(\drawunit/Madd_rdPtr_cy<9>_rt_225 ),
    .O(\drawunit/rdPtr [9])
  );
  MUXCY   \drawunit/Madd_rdPtr_cy<9>  (
    .CI(\drawunit/Madd_rdPtr_cy [8]),
    .DI(N0),
    .S(\drawunit/Madd_rdPtr_cy<9>_rt_225 ),
    .O(\drawunit/Madd_rdPtr_cy [9])
  );
  XORCY   \drawunit/Madd_rdPtr_xor<8>  (
    .CI(\drawunit/Madd_rdPtr_cy [7]),
    .LI(\drawunit/Madd_rdPtr_cy<8>_rt_223 ),
    .O(\drawunit/rdPtr [8])
  );
  MUXCY   \drawunit/Madd_rdPtr_cy<8>  (
    .CI(\drawunit/Madd_rdPtr_cy [7]),
    .DI(N0),
    .S(\drawunit/Madd_rdPtr_cy<8>_rt_223 ),
    .O(\drawunit/Madd_rdPtr_cy [8])
  );
  XORCY   \drawunit/Madd_rdPtr_xor<7>  (
    .CI(\drawunit/Madd_rdPtr_cy [6]),
    .LI(\drawunit/Madd_rdPtr_lut [7]),
    .O(\drawunit/rdPtr [7])
  );
  MUXCY   \drawunit/Madd_rdPtr_cy<7>  (
    .CI(\drawunit/Madd_rdPtr_cy [6]),
    .DI(\drawunit/rdPtr_mult0000 [7]),
    .S(\drawunit/Madd_rdPtr_lut [7]),
    .O(\drawunit/Madd_rdPtr_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<7>  (
    .I0(\drawunit/vga_controller/offset [9]),
    .I1(\drawunit/rdPtr_mult0000 [7]),
    .O(\drawunit/Madd_rdPtr_lut [7])
  );
  XORCY   \drawunit/Madd_rdPtr_xor<6>  (
    .CI(\drawunit/Madd_rdPtr_cy [5]),
    .LI(\drawunit/Madd_rdPtr_lut [6]),
    .O(\drawunit/rdPtr [6])
  );
  MUXCY   \drawunit/Madd_rdPtr_cy<6>  (
    .CI(\drawunit/Madd_rdPtr_cy [5]),
    .DI(\drawunit/rdPtr_mult0000 [6]),
    .S(\drawunit/Madd_rdPtr_lut [6]),
    .O(\drawunit/Madd_rdPtr_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<6>  (
    .I0(\drawunit/vga_controller/offset [8]),
    .I1(\drawunit/rdPtr_mult0000 [6]),
    .O(\drawunit/Madd_rdPtr_lut [6])
  );
  XORCY   \drawunit/Madd_rdPtr_xor<5>  (
    .CI(\drawunit/Madd_rdPtr_cy [4]),
    .LI(\drawunit/Madd_rdPtr_lut [5]),
    .O(\drawunit/rdPtr [5])
  );
  MUXCY   \drawunit/Madd_rdPtr_cy<5>  (
    .CI(\drawunit/Madd_rdPtr_cy [4]),
    .DI(\drawunit/rdPtr_mult0000 [5]),
    .S(\drawunit/Madd_rdPtr_lut [5]),
    .O(\drawunit/Madd_rdPtr_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<5>  (
    .I0(\drawunit/vga_controller/offset [7]),
    .I1(\drawunit/rdPtr_mult0000 [5]),
    .O(\drawunit/Madd_rdPtr_lut [5])
  );
  XORCY   \drawunit/Madd_rdPtr_xor<4>  (
    .CI(\drawunit/Madd_rdPtr_cy [3]),
    .LI(\drawunit/Madd_rdPtr_lut [4]),
    .O(\drawunit/rdPtr [4])
  );
  MUXCY   \drawunit/Madd_rdPtr_cy<4>  (
    .CI(\drawunit/Madd_rdPtr_cy [3]),
    .DI(\drawunit/rdPtr_mult0000 [4]),
    .S(\drawunit/Madd_rdPtr_lut [4]),
    .O(\drawunit/Madd_rdPtr_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<4>  (
    .I0(\drawunit/vga_controller/offset [6]),
    .I1(\drawunit/rdPtr_mult0000 [4]),
    .O(\drawunit/Madd_rdPtr_lut [4])
  );
  XORCY   \drawunit/Madd_rdPtr_xor<3>  (
    .CI(\drawunit/Madd_rdPtr_cy [2]),
    .LI(\drawunit/Madd_rdPtr_lut [3]),
    .O(\drawunit/rdPtr [3])
  );
  MUXCY   \drawunit/Madd_rdPtr_cy<3>  (
    .CI(\drawunit/Madd_rdPtr_cy [2]),
    .DI(\drawunit/rdPtr_mult0000 [3]),
    .S(\drawunit/Madd_rdPtr_lut [3]),
    .O(\drawunit/Madd_rdPtr_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<3>  (
    .I0(\drawunit/vga_controller/offset [5]),
    .I1(\drawunit/rdPtr_mult0000 [3]),
    .O(\drawunit/Madd_rdPtr_lut [3])
  );
  XORCY   \drawunit/Madd_rdPtr_xor<2>  (
    .CI(\drawunit/Madd_rdPtr_cy [1]),
    .LI(\drawunit/Madd_rdPtr_lut [2]),
    .O(\drawunit/rdPtr [2])
  );
  MUXCY   \drawunit/Madd_rdPtr_cy<2>  (
    .CI(\drawunit/Madd_rdPtr_cy [1]),
    .DI(\drawunit/rdPtr_mult0000 [2]),
    .S(\drawunit/Madd_rdPtr_lut [2]),
    .O(\drawunit/Madd_rdPtr_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<2>  (
    .I0(\drawunit/vga_controller/offset [4]),
    .I1(\drawunit/rdPtr_mult0000 [2]),
    .O(\drawunit/Madd_rdPtr_lut [2])
  );
  XORCY   \drawunit/Madd_rdPtr_xor<1>  (
    .CI(\drawunit/Madd_rdPtr_cy [0]),
    .LI(\drawunit/Madd_rdPtr_lut [1]),
    .O(\drawunit/rdPtr [1])
  );
  MUXCY   \drawunit/Madd_rdPtr_cy<1>  (
    .CI(\drawunit/Madd_rdPtr_cy [0]),
    .DI(\drawunit/rdPtr_mult0000 [1]),
    .S(\drawunit/Madd_rdPtr_lut [1]),
    .O(\drawunit/Madd_rdPtr_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<1>  (
    .I0(\drawunit/vga_controller/offset [3]),
    .I1(\drawunit/rdPtr_mult0000 [1]),
    .O(\drawunit/Madd_rdPtr_lut [1])
  );
  XORCY   \drawunit/Madd_rdPtr_xor<0>  (
    .CI(N0),
    .LI(\drawunit/Madd_rdPtr_lut [0]),
    .O(\drawunit/rdPtr [0])
  );
  MUXCY   \drawunit/Madd_rdPtr_cy<0>  (
    .CI(N0),
    .DI(\drawunit/rdPtr_mult0000 [0]),
    .S(\drawunit/Madd_rdPtr_lut [0]),
    .O(\drawunit/Madd_rdPtr_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \drawunit/Madd_rdPtr_lut<0>  (
    .I0(\drawunit/vga_controller/offset [2]),
    .I1(\drawunit/rdPtr_mult0000 [0]),
    .O(\drawunit/Madd_rdPtr_lut [0])
  );
  MULT18X18SIO #(
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
    .BCIN({\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<17>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<16>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<15>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<14>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<13>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<12>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<11>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<10>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<9>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<8>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<7>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<6>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<5>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<4>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<3>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<2>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<1>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCIN<0>_UNCONNECTED }),
    .P({\NLW_drawunit/Mmult_rdPtr_mult0000_P<35>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P<34>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P<33>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P<32>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P<31>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P<30>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P<29>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P<28>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P<27>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P<26>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P<25>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P<24>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P<23>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P<22>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P<21>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P<20>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P<19>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P<18>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P<17>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_P<16>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_P<15>_UNCONNECTED , \drawunit/rdPtr_mult0000 [14], \drawunit/rdPtr_mult0000 [13], \drawunit/rdPtr_mult0000 [12], 
\drawunit/rdPtr_mult0000 [11], \drawunit/rdPtr_mult0000 [10], \drawunit/rdPtr_mult0000 [9], \drawunit/rdPtr_mult0000 [8], \drawunit/rdPtr_mult0000 [7]
, \drawunit/rdPtr_mult0000 [6], \drawunit/rdPtr_mult0000 [5], \drawunit/rdPtr_mult0000 [4], \drawunit/rdPtr_mult0000 [3], \drawunit/rdPtr_mult0000 [2]
, \drawunit/rdPtr_mult0000 [1], \drawunit/rdPtr_mult0000 [0]}),
    .BCOUT({\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<17>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<16>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<15>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<14>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<13>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<12>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<11>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<10>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<9>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<8>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<7>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<6>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<5>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<4>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<3>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<2>_UNCONNECTED , 
\NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<1>_UNCONNECTED , \NLW_drawunit/Mmult_rdPtr_mult0000_BCOUT<0>_UNCONNECTED })
  );
  FDSE   \drawunit/swapBuffersOnVsync  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/swapBuffersOnVsync_not0001 ),
    .D(N0),
    .S(\drawunit/painter/swapBuffersCommand_710 ),
    .Q(\drawunit/swapBuffersOnVsync_959 )
  );
  FDE   \drawunit/swapBuffers  (
    .C(clk_BUFGP_161),
    .CE(\drawunit/swapBuffersCommand_inv ),
    .D(\drawunit/swapBuffersOnVsync_and0000 ),
    .Q(\drawunit/swapBuffers_957 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<0>  (
    .I0(\drawunit/queue/rdData [8]),
    .I1(\drawunit/queue/rdData [9]),
    .I2(\drawunit/queue/rdData [7]),
    .I3(\drawunit/queue/rdData [10]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \drawunit/painter/state_cmp_eq0000_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\drawunit/painter/state_cmp_eq0000_wg_lut [0]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<1>  (
    .I0(\drawunit/queue/rdData [11]),
    .I1(\drawunit/queue/rdData [12]),
    .I2(\drawunit/queue/rdData [6]),
    .I3(\drawunit/queue/rdData [13]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \drawunit/painter/state_cmp_eq0000_wg_cy<1>  (
    .CI(\drawunit/painter/state_cmp_eq0000_wg_cy [0]),
    .DI(N0),
    .S(\drawunit/painter/state_cmp_eq0000_wg_lut [1]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<2>  (
    .I0(\drawunit/queue/rdData [14]),
    .I1(\drawunit/queue/rdData [15]),
    .I2(\drawunit/queue/rdData [5]),
    .I3(\drawunit/queue/rdData [16]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \drawunit/painter/state_cmp_eq0000_wg_cy<2>  (
    .CI(\drawunit/painter/state_cmp_eq0000_wg_cy [1]),
    .DI(N0),
    .S(\drawunit/painter/state_cmp_eq0000_wg_lut [2]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<3>  (
    .I0(\drawunit/queue/rdData [17]),
    .I1(\drawunit/queue/rdData [18]),
    .I2(\drawunit/queue/rdData [4]),
    .I3(\drawunit/queue/rdData [19]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \drawunit/painter/state_cmp_eq0000_wg_cy<3>  (
    .CI(\drawunit/painter/state_cmp_eq0000_wg_cy [2]),
    .DI(N0),
    .S(\drawunit/painter/state_cmp_eq0000_wg_lut [3]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<4>  (
    .I0(\drawunit/queue/rdData [20]),
    .I1(\drawunit/queue/rdData [21]),
    .I2(\drawunit/queue/rdData [3]),
    .I3(\drawunit/queue/rdData [22]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \drawunit/painter/state_cmp_eq0000_wg_cy<4>  (
    .CI(\drawunit/painter/state_cmp_eq0000_wg_cy [3]),
    .DI(N0),
    .S(\drawunit/painter/state_cmp_eq0000_wg_lut [4]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<5>  (
    .I0(\drawunit/queue/rdData [23]),
    .I1(\drawunit/queue/rdData [24]),
    .I2(\drawunit/queue/rdData [2]),
    .I3(\drawunit/queue/rdData [25]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [5])
  );
  MUXCY   \drawunit/painter/state_cmp_eq0000_wg_cy<5>  (
    .CI(\drawunit/painter/state_cmp_eq0000_wg_cy [4]),
    .DI(N0),
    .S(\drawunit/painter/state_cmp_eq0000_wg_lut [5]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<6>  (
    .I0(\drawunit/queue/rdData [26]),
    .I1(\drawunit/queue/rdData [27]),
    .I2(\drawunit/queue/rdData [1]),
    .I3(\drawunit/queue/rdData [28]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [6])
  );
  MUXCY   \drawunit/painter/state_cmp_eq0000_wg_cy<6>  (
    .CI(\drawunit/painter/state_cmp_eq0000_wg_cy [5]),
    .DI(N0),
    .S(\drawunit/painter/state_cmp_eq0000_wg_lut [6]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_cy [6])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/painter/state_cmp_eq0000_wg_lut<7>  (
    .I0(\drawunit/queue/rdData [29]),
    .I1(\drawunit/queue/rdData [30]),
    .I2(\drawunit/queue/rdData [0]),
    .I3(\drawunit/queue/rdData [31]),
    .O(\drawunit/painter/state_cmp_eq0000_wg_lut [7])
  );
  MUXCY   \drawunit/painter/state_cmp_eq0000_wg_cy<7>  (
    .CI(\drawunit/painter/state_cmp_eq0000_wg_cy [6]),
    .DI(N0),
    .S(\drawunit/painter/state_cmp_eq0000_wg_lut [7]),
    .O(\drawunit/painter/state_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \drawunit/swapBuffersOnVsync_and00001  (
    .I0(\drawunit/vga_controller/vsync_1276 ),
    .I1(\drawunit/swapBuffersOnVsync_959 ),
    .O(\drawunit/swapBuffersOnVsync_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/queue/delayedWe_mux00001  (
    .I0(we_1306),
    .I1(\drawunit/queue/state_894 ),
    .O(\drawunit/queue/delayedWe_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \drawunit/framebuffer/bufferWe_or0000_inv1  (
    .I0(reset_IBUF_1296),
    .I1(\drawunit/framebuffer/state_414 ),
    .O(\drawunit/framebuffer/bufferWe_or0000_inv )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \drawunit/swapBuffersOnVsync_not00011  (
    .I0(\drawunit/swapBuffersOnVsync_959 ),
    .I1(\drawunit/vga_controller/vsync_1276 ),
    .I2(reset_IBUF_1296),
    .O(\drawunit/swapBuffersOnVsync_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \drawunit/queue/temp_31_not00011  (
    .I0(we_1306),
    .I1(\drawunit/queue/state_894 ),
    .I2(reset_IBUF_1296),
    .O(\drawunit/queue/temp_31_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \drawunit/queue/temp_15_not00011  (
    .I0(reset_IBUF_1296),
    .I1(\drawunit/queue/state_894 ),
    .I2(we_1306),
    .O(\drawunit/queue/temp_15_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \drawunit/painter/addr_mux0000<0>11  (
    .I0(\drawunit/painter/state_FSM_FFd1_685 ),
    .I1(\drawunit/painter/state_FSM_FFd3_690 ),
    .I2(\drawunit/painter/state_FSM_FFd2_688 ),
    .O(\drawunit/painter/N01 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \drawunit/painter/newline_mux00001  (
    .I0(\drawunit/painter/state_cmp_le0000 ),
    .I1(\drawunit/painter/newline_672 ),
    .O(\drawunit/painter/newline_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'h51 ))
  \drawunit/painter/state_FSM_FFd3-In1  (
    .I0(\drawunit/painter/state_FSM_FFd2_688 ),
    .I1(\drawunit/empty ),
    .I2(\drawunit/painter/state_FSM_FFd3_690 ),
    .O(\drawunit/painter/state_FSM_FFd3-In )
  );
  LUT3 #(
    .INIT ( 8'h75 ))
  data_9_mux00001 (
    .I0(state_cmp_lt0000),
    .I1(state_1297),
    .I2(i[2]),
    .O(data_9_mux0000)
  );
  LUT3 #(
    .INIT ( 8'h75 ))
  data_8_mux00001 (
    .I0(state_cmp_lt0000),
    .I1(state_1297),
    .I2(i[1]),
    .O(data_8_mux0000)
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  data_2_mux00001 (
    .I0(i[2]),
    .I1(state_cmp_lt0000),
    .I2(state_1297),
    .O(data_2_mux0000)
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  data_1_mux00001 (
    .I0(i[1]),
    .I1(state_cmp_lt0000),
    .I2(state_1297),
    .O(data_1_mux0000)
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  data_0_mux00001 (
    .I0(i[0]),
    .I1(state_cmp_lt0000),
    .I2(state_1297),
    .O(data_0_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h8C8D ))
  \drawunit/painter/re_mux00001  (
    .I0(\drawunit/painter/state_FSM_FFd2_688 ),
    .I1(\drawunit/painter/re_675 ),
    .I2(\drawunit/painter/state_FSM_FFd3_690 ),
    .I3(\drawunit/empty ),
    .O(\drawunit/painter/re_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \drawunit/queue/empty12  (
    .I0(\drawunit/queue/count [3]),
    .I1(\drawunit/queue/count [2]),
    .I2(\drawunit/queue/count [1]),
    .I3(\drawunit/queue/count [0]),
    .O(\drawunit/queue/empty12_848 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \drawunit/queue/empty37  (
    .I0(\drawunit/queue/count [7]),
    .I1(\drawunit/queue/count [6]),
    .I2(\drawunit/queue/count [5]),
    .I3(\drawunit/queue/count [4]),
    .O(\drawunit/queue/empty37_849 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \drawunit/queue/count_not00024  (
    .I0(\drawunit/queue/count [7]),
    .I1(\drawunit/queue/count [6]),
    .I2(\drawunit/queue/count [5]),
    .I3(\drawunit/queue/count [4]),
    .O(\drawunit/queue/count_not0002310 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \drawunit/queue/count_not000212  (
    .I0(\drawunit/queue/count [3]),
    .I1(\drawunit/queue/count [2]),
    .I2(\drawunit/queue/count [1]),
    .I3(\drawunit/queue/count [0]),
    .O(\drawunit/queue/count_not000212_810 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \drawunit/vga_controller/totalPix_cmp_eq000031  (
    .I0(\drawunit/vga_controller/totalPix [10]),
    .I1(\drawunit/vga_controller/totalPix [7]),
    .I2(\drawunit/vga_controller/totalPix [13]),
    .O(\drawunit/vga_controller/N43 )
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \drawunit/vga_controller/vsync_mux00008  (
    .I0(\drawunit/vga_controller/totalPix [12]),
    .I1(\drawunit/vga_controller/totalPix [6]),
    .I2(\drawunit/vga_controller/totalPix [9]),
    .I3(\drawunit/vga_controller/totalPix [11]),
    .O(\drawunit/vga_controller/vsync_mux00008_1281 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \drawunit/vga_controller/vsync_mux000028  (
    .I0(\drawunit/vga_controller/totalPix [5]),
    .I1(\drawunit/vga_controller/totalPix [18]),
    .I2(\drawunit/vga_controller/totalPix [17]),
    .I3(\drawunit/vga_controller/totalPix [14]),
    .O(\drawunit/vga_controller/vsync_mux000028_1278 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \drawunit/vga_controller/vsync_mux000031  (
    .I0(\drawunit/vga_controller/vsync_mux00008_1281 ),
    .I1(\drawunit/vga_controller/N43 ),
    .I2(\drawunit/vga_controller/vsync_mux000028_1278 ),
    .O(\drawunit/vga_controller/vsync_mux000031_1279 )
  );
  LUT4 #(
    .INIT ( 16'hEAE2 ))
  \drawunit/vga_controller/vsync_mux000078  (
    .I0(\drawunit/vga_controller/vsync_1276 ),
    .I1(\drawunit/vga_controller/totalPix_and0000 ),
    .I2(\drawunit/vga_controller/vsync_mux000071_1280 ),
    .I3(\drawunit/vga_controller/vsync_mux000031_1279 ),
    .O(\drawunit/vga_controller/vsync_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  state_cmp_lt0000212 (
    .I0(i[7]),
    .I1(i[2]),
    .I2(i[1]),
    .I3(i[0]),
    .O(state_cmp_lt0000212_1299)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  state_cmp_lt0000225 (
    .I0(i[6]),
    .I1(i[5]),
    .I2(i[4]),
    .I3(i[3]),
    .O(state_cmp_lt0000225_1300)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  i_not00011 (
    .I0(state_cmp_lt0000),
    .I1(state_1297),
    .I2(full),
    .O(i_not0001)
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  \drawunit/vga_controller/line_not0001  (
    .I0(\drawunit/vga_controller/pixCount_and0000 ),
    .I1(\drawunit/vga_controller/pixCount_cmp_eq0002 ),
    .I2(N4),
    .I3(\drawunit/vga_controller/hsync_cmp_eq0002 ),
    .O(\drawunit/vga_controller/line_not0001_1126 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/queue/full24  (
    .I0(\drawunit/queue/count [3]),
    .I1(\drawunit/queue/count [4]),
    .I2(\drawunit/queue/count [5]),
    .I3(\drawunit/queue/count [6]),
    .O(\drawunit/queue/full24_852 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \drawunit/queue/full222  (
    .I0(\drawunit/queue/full24_852 ),
    .I1(\drawunit/queue/full211 ),
    .I2(\drawunit/queue/count [9]),
    .O(full)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/pixCount_mux0000<8>1  (
    .I0(\drawunit/vga_controller/pixCount_addsub0000 [1]),
    .I1(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/pixCount_mux0000<7>1  (
    .I0(\drawunit/vga_controller/pixCount_addsub0000 [2]),
    .I1(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/pixCount_mux0000<6>1  (
    .I0(\drawunit/vga_controller/pixCount_addsub0000 [3]),
    .I1(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<8>1  (
    .I0(\drawunit/vga_controller/line_addsub0000 [8]),
    .I1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<7>1  (
    .I0(\drawunit/vga_controller/line_addsub0000 [7]),
    .I1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<6>1  (
    .I0(\drawunit/vga_controller/line_addsub0000 [6]),
    .I1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<5>1  (
    .I0(\drawunit/vga_controller/line_addsub0000 [5]),
    .I1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<4>1  (
    .I0(\drawunit/vga_controller/line_addsub0000 [4]),
    .I1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<3>1  (
    .I0(\drawunit/vga_controller/line_addsub0000 [3]),
    .I1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<2>1  (
    .I0(\drawunit/vga_controller/line_addsub0000 [2]),
    .I1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<1>1  (
    .I0(\drawunit/vga_controller/line_addsub0000 [1]),
    .I1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/line_mux0000<0>2  (
    .I0(\drawunit/vga_controller/line_addsub0000 [0]),
    .I1(\drawunit/vga_controller/N18 ),
    .O(\drawunit/vga_controller/line_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \drawunit/framebuffer/bufferWe_mux00001  (
    .I0(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .I1(\drawunit/painter/we_714 ),
    .O(\drawunit/framebuffer/bufferWe_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/framebuffer/bufferWeS_mux00001  (
    .I0(\drawunit/framebuffer/bufferWe_cmp_ge0000 ),
    .I1(\drawunit/painter/we_714 ),
    .O(\drawunit/framebuffer/bufferWeS_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \drawunit/vga_controller/line_cmp_eq000121  (
    .I0(\drawunit/vga_controller/pixCount [5]),
    .I1(\drawunit/vga_controller/N14 ),
    .I2(\drawunit/vga_controller/pixCount [4]),
    .O(\drawunit/vga_controller/pixCount_cmp_eq0002 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \drawunit/vga_controller/Henable_mux000021  (
    .I0(\drawunit/vga_controller/totalPix [10]),
    .I1(\drawunit/vga_controller/N13 ),
    .I2(\drawunit/vga_controller/totalPix [14]),
    .O(\drawunit/vga_controller/N40 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \drawunit/vga_controller/totalPix_mux0000<19>21  (
    .I0(\drawunit/vga_controller/totalPix_and0000 ),
    .I1(\drawunit/vga_controller/N17 ),
    .I2(\drawunit/vga_controller/N40 ),
    .I3(\drawunit/vga_controller/totalPix_cmp_eq0002_1243 ),
    .O(\drawunit/vga_controller/N9 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \drawunit/vga_controller/totalPix_cmp_eq000011  (
    .I0(\drawunit/vga_controller/totalPix [12]),
    .I1(\drawunit/vga_controller/totalPix [18]),
    .I2(\drawunit/vga_controller/totalPix [11]),
    .I3(\drawunit/vga_controller/totalPix [17]),
    .O(\drawunit/vga_controller/N13 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/pixCount_mux0000<4>1  (
    .I0(\drawunit/vga_controller/pixCount_and0000 ),
    .I1(\drawunit/vga_controller/pixCount_cmp_eq0000_1185 ),
    .I2(\drawunit/vga_controller/pixCount_addsub0000 [5]),
    .I3(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/pixCount_mux0000<3>1  (
    .I0(\drawunit/vga_controller/pixCount_and0000 ),
    .I1(\drawunit/vga_controller/pixCount_cmp_eq0000_1185 ),
    .I2(\drawunit/vga_controller/pixCount_addsub0000 [6]),
    .I3(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/pixCount_mux0000<2>1  (
    .I0(\drawunit/vga_controller/pixCount_and0000 ),
    .I1(\drawunit/vga_controller/pixCount_cmp_eq0001_1186 ),
    .I2(\drawunit/vga_controller/pixCount_addsub0000 [7]),
    .I3(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/pixCount_mux0000<1>1  (
    .I0(\drawunit/vga_controller/pixCount_and0000 ),
    .I1(\drawunit/vga_controller/pixCount_cmp_eq0002 ),
    .I2(\drawunit/vga_controller/pixCount_addsub0000 [8]),
    .I3(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/pixCount_mux0000<0>1  (
    .I0(\drawunit/vga_controller/pixCount_and0000 ),
    .I1(\drawunit/vga_controller/pixCount_cmp_eq0002 ),
    .I2(\drawunit/vga_controller/pixCount_addsub0000 [9]),
    .I3(\drawunit/vga_controller/N111 ),
    .O(\drawunit/vga_controller/pixCount_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hBEFF ))
  data_4_mux00001 (
    .I0(state_1297),
    .I1(N14),
    .I2(i[4]),
    .I3(state_cmp_lt0000),
    .O(data_4_mux0000)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \drawunit/vga_controller/totalPix_cmp_eq00002_SW0  (
    .I0(\drawunit/vga_controller/totalPix [14]),
    .I1(\drawunit/vga_controller/N13 ),
    .O(N11)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/vga_controller/totalPix_cmp_eq00002  (
    .I0(\drawunit/vga_controller/totalPix [5]),
    .I1(N11),
    .I2(\drawunit/vga_controller/totalPix [9]),
    .I3(\drawunit/vga_controller/totalPix [6]),
    .O(\drawunit/vga_controller/N34 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/pixCount_mux0000<5>  (
    .I0(\drawunit/vga_controller/N111 ),
    .I1(\drawunit/vga_controller/pixCount_addsub0000 [4]),
    .I2(\drawunit/vga_controller/pixCount_and0000 ),
    .I3(N13),
    .O(\drawunit/vga_controller/pixCount_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \drawunit/vga_controller/pixCount_mux0000<9>_SW0  (
    .I0(\drawunit/vga_controller/pixCount_cmp_eq0003 ),
    .I1(\drawunit/vga_controller/pixCount_cmp_eq0001_1186 ),
    .I2(\drawunit/vga_controller/pixCount_cmp_eq0000_1185 ),
    .I3(\drawunit/vga_controller/pixCount_cmp_eq0002 ),
    .O(N19)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/pixCount_mux0000<9>  (
    .I0(\drawunit/vga_controller/N111 ),
    .I1(\drawunit/vga_controller/pixCount_addsub0000 [0]),
    .I2(\drawunit/vga_controller/pixCount_and0000 ),
    .I3(N19),
    .O(\drawunit/vga_controller/pixCount_mux0000 [9])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \drawunit/vga_controller/line_cmp_eq000015  (
    .I0(\drawunit/vga_controller/line [4]),
    .I1(\drawunit/vga_controller/line [2]),
    .I2(\drawunit/vga_controller/line [5]),
    .I3(\drawunit/vga_controller/line [3]),
    .O(\drawunit/vga_controller/line_cmp_eq000015_1114 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  \drawunit/vga_controller/Henable_mux000011  (
    .I0(\drawunit/vga_controller/totalPix [10]),
    .I1(\drawunit/vga_controller/totalPix [12]),
    .I2(\drawunit/vga_controller/totalPix [11]),
    .I3(\drawunit/vga_controller/totalPix [14]),
    .O(\drawunit/vga_controller/Henable_mux000011_964 )
  );
  LUT4 #(
    .INIT ( 16'hEAE2 ))
  \drawunit/vga_controller/Henable_mux000068  (
    .I0(\drawunit/vga_controller/Henable_962 ),
    .I1(\drawunit/vga_controller/N17 ),
    .I2(\drawunit/vga_controller/Henable_mux000061_966 ),
    .I3(\drawunit/vga_controller/Henable_mux000027_965 ),
    .O(\drawunit/vga_controller/Henable_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/painter/data_not00011  (
    .I0(\drawunit/painter/state_FSM_FFd1_685 ),
    .I1(\drawunit/painter/state_cmp_eq0000 ),
    .I2(\drawunit/painter/state_FSM_FFd3_690 ),
    .I3(\drawunit/painter/state_FSM_FFd2_688 ),
    .O(\drawunit/painter/data_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \drawunit/vga_controller/totalPix_mux0000<6>1  (
    .I0(N113),
    .I1(\drawunit/vga_controller/totalPix_addsub0000 [13]),
    .I2(\drawunit/vga_controller/N9 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [6])
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \drawunit/vga_controller/totalPix_mux0000<14>1  (
    .I0(\drawunit/vga_controller/N11 ),
    .I1(\drawunit/vga_controller/totalPix_addsub0000 [5]),
    .I2(\drawunit/vga_controller/N9 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [14])
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \drawunit/vga_controller/totalPix_mux0000<12>1  (
    .I0(\drawunit/vga_controller/N11 ),
    .I1(\drawunit/vga_controller/totalPix_addsub0000 [7]),
    .I2(\drawunit/vga_controller/N9 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [12])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/totalPix_mux0000<8>1  (
    .I0(\drawunit/vga_controller/totalPix_and0000 ),
    .I1(\drawunit/vga_controller/totalPix_cmp_eq0002_1243 ),
    .I2(\drawunit/vga_controller/N11 ),
    .I3(\drawunit/vga_controller/totalPix_addsub0000 [11]),
    .O(\drawunit/vga_controller/totalPix_mux0000 [8])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/totalPix_mux0000<7>1  (
    .I0(\drawunit/vga_controller/totalPix_and0000 ),
    .I1(\drawunit/vga_controller/totalPix_cmp_eq0002_1243 ),
    .I2(\drawunit/vga_controller/N11 ),
    .I3(\drawunit/vga_controller/totalPix_addsub0000 [12]),
    .O(\drawunit/vga_controller/totalPix_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \drawunit/vga_controller/hsync_cmp_eq00022  (
    .I0(\drawunit/vga_controller/N35 ),
    .I1(\drawunit/vga_controller/totalPix_and0000 ),
    .I2(\drawunit/vga_controller/totalPix [14]),
    .I3(\drawunit/vga_controller/N17 ),
    .O(\drawunit/vga_controller/hsync_cmp_eq0002 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/vga_controller/hsync_and00003  (
    .I0(\drawunit/vga_controller/pixCount [4]),
    .I1(\drawunit/vga_controller/pixCount [7]),
    .I2(\drawunit/vga_controller/pixCount [5]),
    .I3(\drawunit/vga_controller/pixCount_and0000 ),
    .O(\drawunit/vga_controller/hsync_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  data_6_cmp_lt0001111 (
    .I0(i[4]),
    .I1(i[7]),
    .I2(i[6]),
    .I3(i[5]),
    .O(N3)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/totalPix_mux0000<5>  (
    .I0(\drawunit/vga_controller/N11 ),
    .I1(\drawunit/vga_controller/totalPix_addsub0000 [14]),
    .I2(\drawunit/vga_controller/totalPix_and0000 ),
    .I3(N21),
    .O(\drawunit/vga_controller/totalPix_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/totalPix_mux0000<10>  (
    .I0(\drawunit/vga_controller/N11 ),
    .I1(\drawunit/vga_controller/totalPix_addsub0000 [9]),
    .I2(\drawunit/vga_controller/totalPix_and0000 ),
    .I3(\drawunit/vga_controller/vsync_mux000071_1280 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [10])
  );
  LUT4 #(
    .INIT ( 16'hFEEE ))
  \drawunit/vga_controller/totalPix_mux0000<13>  (
    .I0(\drawunit/vga_controller/N9 ),
    .I1(N27),
    .I2(\drawunit/vga_controller/N11 ),
    .I3(\drawunit/vga_controller/totalPix_addsub0000 [6]),
    .O(\drawunit/vga_controller/totalPix_mux0000 [13])
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \drawunit/vga_controller/hsync_mux0000_SW0  (
    .I0(\drawunit/vga_controller/pixCount [6]),
    .I1(\drawunit/vga_controller/pixCount [9]),
    .I2(\drawunit/vga_controller/pixCount [8]),
    .I3(\drawunit/vga_controller/hsync_and0000 ),
    .O(N32)
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \drawunit/vga_controller/hsync_mux0000_SW1  (
    .I0(\drawunit/vga_controller/pixCount [8]),
    .I1(\drawunit/vga_controller/pixCount [9]),
    .I2(\drawunit/vga_controller/pixCount [6]),
    .I3(\drawunit/vga_controller/hsync_and0000 ),
    .O(N33)
  );
  LUT4 #(
    .INIT ( 16'h02DF ))
  \drawunit/vga_controller/hsync_mux0000  (
    .I0(\drawunit/vga_controller/hsync_1087 ),
    .I1(\drawunit/vga_controller/hsync_cmp_eq0002 ),
    .I2(N33),
    .I3(N32),
    .O(\drawunit/vga_controller/hsync_mux0000_1095 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \drawunit/vga_controller/hsync_cmp_eq0002132  (
    .I0(\drawunit/vga_controller/totalPix [3]),
    .I1(\drawunit/vga_controller/totalPix [2]),
    .I2(\drawunit/vga_controller/totalPix [4]),
    .I3(\drawunit/vga_controller/totalPix [8]),
    .O(\drawunit/vga_controller/hsync_cmp_eq0002132_1092 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/hsync_cmp_eq0002133  (
    .I0(\drawunit/vga_controller/hsync_cmp_eq0002117 ),
    .I1(\drawunit/vga_controller/hsync_cmp_eq0002132_1092 ),
    .O(\drawunit/vga_controller/totalPix_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \drawunit/vga_controller/totalPix_mux0000<19>12  (
    .I0(\drawunit/vga_controller/totalPix [13]),
    .I1(\drawunit/vga_controller/totalPix [7]),
    .I2(\drawunit/vga_controller/totalPix [14]),
    .I3(\drawunit/vga_controller/totalPix [6]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>12_1260 )
  );
  LUT4 #(
    .INIT ( 16'h11F1 ))
  \drawunit/vga_controller/totalPix_mux0000<19>1111  (
    .I0(\drawunit/vga_controller/totalPix [13]),
    .I1(\drawunit/vga_controller/totalPix [10]),
    .I2(\drawunit/vga_controller/totalPix [12]),
    .I3(\drawunit/vga_controller/totalPix [11]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>1111_1256 )
  );
  LUT4 #(
    .INIT ( 16'hFF5D ))
  \drawunit/vga_controller/totalPix_mux0000<19>122  (
    .I0(\drawunit/vga_controller/totalPix [6]),
    .I1(\drawunit/vga_controller/totalPix [10]),
    .I2(\drawunit/vga_controller/totalPix [9]),
    .I3(\drawunit/vga_controller/totalPix [11]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>122_1261 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \drawunit/vga_controller/totalPix_mux0000<19>133  (
    .I0(\drawunit/vga_controller/totalPix_mux0000<19>122_1261 ),
    .I1(\drawunit/vga_controller/totalPix [18]),
    .I2(\drawunit/vga_controller/totalPix_mux0000<19>1111_1256 ),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>133_1262 )
  );
  LUT3 #(
    .INIT ( 8'h72 ))
  \drawunit/vga_controller/totalPix_mux0000<19>154  (
    .I0(\drawunit/vga_controller/totalPix [18]),
    .I1(\drawunit/vga_controller/totalPix [7]),
    .I2(\drawunit/vga_controller/totalPix [5]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>154_1263 )
  );
  LUT3 #(
    .INIT ( 8'h72 ))
  \drawunit/vga_controller/totalPix_mux0000<19>165  (
    .I0(\drawunit/vga_controller/totalPix [13]),
    .I1(\drawunit/vga_controller/totalPix [12]),
    .I2(\drawunit/vga_controller/totalPix [17]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>165_1264 )
  );
  LUT4 #(
    .INIT ( 16'h5DFF ))
  \drawunit/vga_controller/totalPix_mux0000<19>188  (
    .I0(\drawunit/vga_controller/totalPix [6]),
    .I1(\drawunit/vga_controller/totalPix [7]),
    .I2(\drawunit/vga_controller/totalPix [17]),
    .I3(\drawunit/vga_controller/totalPix [10]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>188_1265 )
  );
  LUT4 #(
    .INIT ( 16'h3332 ))
  \drawunit/vga_controller/totalPix_mux0000<19>1110  (
    .I0(\drawunit/vga_controller/totalPix_mux0000<19>165_1264 ),
    .I1(\drawunit/vga_controller/totalPix [14]),
    .I2(\drawunit/vga_controller/totalPix_mux0000<19>188_1265 ),
    .I3(\drawunit/vga_controller/totalPix_mux0000<19>154_1263 ),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>1110_1255 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/totalPix_mux0000<2>1  (
    .I0(\drawunit/vga_controller/totalPix_and0000 ),
    .I1(\drawunit/vga_controller/totalPix_cmp_eq0002_1243 ),
    .I2(\drawunit/vga_controller/N11 ),
    .I3(\drawunit/vga_controller/totalPix_addsub0000 [17]),
    .O(\drawunit/vga_controller/totalPix_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/totalPix_mux0000<1>1  (
    .I0(\drawunit/vga_controller/totalPix_and0000 ),
    .I1(\drawunit/vga_controller/totalPix_cmp_eq0002_1243 ),
    .I2(\drawunit/vga_controller/N11 ),
    .I3(\drawunit/vga_controller/totalPix_addsub0000 [18]),
    .O(\drawunit/vga_controller/totalPix_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  data_6_cmp_lt0000121 (
    .I0(i[8]),
    .I1(i[9]),
    .O(N12)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \drawunit/vga_controller/pixCount_cmp_eq00031  (
    .I0(\drawunit/vga_controller/pixCount [4]),
    .I1(\drawunit/vga_controller/pixCount [5]),
    .I2(\drawunit/vga_controller/N14 ),
    .O(\drawunit/vga_controller/pixCount_cmp_eq0003 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \drawunit/vga_controller/color_mux0000<0>111  (
    .I0(\drawunit/vga_controller/pixCount_cmp_eq0001_1186 ),
    .I1(\drawunit/vga_controller/Henable_962 ),
    .I2(\drawunit/vga_controller/pixCount_and0000 ),
    .O(\drawunit/vga_controller/N39 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \drawunit/vga_controller/color_mux0000<0>11  (
    .I0(\drawunit/vga_controller/color_and0000_1082 ),
    .I1(\drawunit/vga_controller/N111 ),
    .I2(\drawunit/vga_controller/N39 ),
    .O(\drawunit/vga_controller/N2 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/vga_controller/line_cmp_eq000111  (
    .I0(\drawunit/vga_controller/pixCount [6]),
    .I1(\drawunit/vga_controller/pixCount [7]),
    .I2(\drawunit/vga_controller/pixCount [8]),
    .I3(\drawunit/vga_controller/pixCount [9]),
    .O(\drawunit/vga_controller/N14 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/color_mux0000<2>1  (
    .I0(\drawunit/vga_controller/N2 ),
    .I1(\drawunit/framebuffer/color [2]),
    .I2(\drawunit/vga_controller/color [2]),
    .I3(\drawunit/vga_controller/N8 ),
    .O(\drawunit/vga_controller/color_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/color_mux0000<1>1  (
    .I0(\drawunit/framebuffer/color [1]),
    .I1(\drawunit/vga_controller/N2 ),
    .I2(\drawunit/vga_controller/color [1]),
    .I3(\drawunit/vga_controller/N8 ),
    .O(\drawunit/vga_controller/color_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/color_mux0000<0>1  (
    .I0(\drawunit/framebuffer/color [0]),
    .I1(\drawunit/vga_controller/N2 ),
    .I2(\drawunit/vga_controller/color [0]),
    .I3(\drawunit/vga_controller/N8 ),
    .O(\drawunit/vga_controller/color_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \drawunit/vga_controller/color_mux0000<0>2  (
    .I0(N35),
    .I1(\drawunit/vga_controller/pixCount_and0000 ),
    .I2(\drawunit/vga_controller/N111 ),
    .I3(\drawunit/vga_controller/color_and0000_1082 ),
    .O(\drawunit/vga_controller/N8 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \drawunit/vga_controller/pixCount_cmp_eq0001_SW0  (
    .I0(\drawunit/vga_controller/pixCount [8]),
    .I1(\drawunit/vga_controller/pixCount [4]),
    .I2(\drawunit/vga_controller/pixCount [9]),
    .O(N37)
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \drawunit/vga_controller/pixCount_cmp_eq0001  (
    .I0(\drawunit/vga_controller/pixCount [6]),
    .I1(\drawunit/vga_controller/pixCount [5]),
    .I2(\drawunit/vga_controller/pixCount [7]),
    .I3(N37),
    .O(\drawunit/vga_controller/pixCount_cmp_eq0001_1186 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \drawunit/vga_controller/pixCount_cmp_eq0000_SW0  (
    .I0(\drawunit/vga_controller/pixCount [4]),
    .I1(\drawunit/vga_controller/pixCount [8]),
    .I2(\drawunit/vga_controller/pixCount [9]),
    .O(N39)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/vga_controller/pixCount_cmp_eq0000  (
    .I0(\drawunit/vga_controller/pixCount [7]),
    .I1(N39),
    .I2(\drawunit/vga_controller/pixCount [5]),
    .I3(\drawunit/vga_controller/pixCount [6]),
    .O(\drawunit/vga_controller/pixCount_cmp_eq0000_1185 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \drawunit/painter/addr_mux0001<0>1  (
    .I0(\drawunit/painter/left [0]),
    .I1(\drawunit/painter/newline_672 ),
    .O(\drawunit/painter/addr_mux0001 [0])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \drawunit/queue/count_not0002341  (
    .I0(\drawunit/queue/count [2]),
    .I1(\drawunit/queue/count [3]),
    .I2(\drawunit/queue/count [8]),
    .I3(\drawunit/queue/count [9]),
    .O(\drawunit/queue/count_not0002341_812 )
  );
  LUT4 #(
    .INIT ( 16'h5515 ))
  data_4_mux000021 (
    .I0(data_6_cmp_lt0000),
    .I1(N12),
    .I2(N3),
    .I3(i[3]),
    .O(N14)
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  data_6_mux0000_SW0 (
    .I0(i[5]),
    .I1(i[4]),
    .I2(N14),
    .O(N45)
  );
  LUT4 #(
    .INIT ( 16'h5D57 ))
  data_6_mux0000 (
    .I0(state_cmp_lt0000),
    .I1(i[6]),
    .I2(state_1297),
    .I3(N45),
    .O(data_6_mux0000_199)
  );
  LUT4 #(
    .INIT ( 16'hFEE4 ))
  \drawunit/vga_controller/pixCount_mux0000<9>117  (
    .I0(\drawunit/vga_controller/pixCount [8]),
    .I1(\drawunit/vga_controller/pixCount [9]),
    .I2(\drawunit/vga_controller/pixCount [7]),
    .I3(\drawunit/vga_controller/pixCount [6]),
    .O(\drawunit/vga_controller/pixCount_mux0000<9>117_1199 )
  );
  LUT4 #(
    .INIT ( 16'hAA02 ))
  \drawunit/vga_controller/pixCount_mux0000<9>138  (
    .I0(\drawunit/vga_controller/pixCount [5]),
    .I1(\drawunit/vga_controller/pixCount [6]),
    .I2(\drawunit/vga_controller/pixCount [9]),
    .I3(\drawunit/vga_controller/pixCount [4]),
    .O(\drawunit/vga_controller/pixCount_mux0000<9>138_1200 )
  );
  LUT4 #(
    .INIT ( 16'h1113 ))
  \drawunit/vga_controller/pixCount_mux0000<9>154  (
    .I0(\drawunit/vga_controller/pixCount [4]),
    .I1(\drawunit/vga_controller/pixCount [5]),
    .I2(\drawunit/vga_controller/pixCount [7]),
    .I3(\drawunit/vga_controller/pixCount [9]),
    .O(\drawunit/vga_controller/pixCount_mux0000<9>154_1201 )
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \drawunit/vga_controller/pixCount_mux0000<9>169  (
    .I0(\drawunit/vga_controller/pixCount_mux0000<9>138_1200 ),
    .I1(\drawunit/vga_controller/pixCount_mux0000<9>117_1199 ),
    .I2(\drawunit/vga_controller/pixCount_and0000 ),
    .I3(\drawunit/vga_controller/pixCount_mux0000<9>154_1201 ),
    .O(\drawunit/vga_controller/N111 )
  );
  LUT4 #(
    .INIT ( 16'hFC74 ))
  we_mux00001 (
    .I0(full),
    .I1(state_cmp_lt0000),
    .I2(data_10_and0000),
    .I3(state_1297),
    .O(we_mux0000)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<0>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [0]),
    .I2(\drawunit/painter/addr [0]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \drawunit/vga_controller/hsync_and000011  (
    .I0(\drawunit/vga_controller/pixCount [0]),
    .I1(\drawunit/vga_controller/pixCount [1]),
    .O(\drawunit/vga_controller/N19 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<9>1  (
    .I0(\drawunit/vga_controller/N7 ),
    .I1(\drawunit/vga_controller/offset_share0000 [9]),
    .I2(\drawunit/vga_controller/offset [9]),
    .I3(N116),
    .O(\drawunit/vga_controller/offset_mux0000 [9])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<8>1  (
    .I0(\drawunit/vga_controller/N7 ),
    .I1(\drawunit/vga_controller/offset_share0000 [8]),
    .I2(\drawunit/vga_controller/offset [8]),
    .I3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [8])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<7>1  (
    .I0(\drawunit/vga_controller/N7 ),
    .I1(\drawunit/vga_controller/offset_share0000 [7]),
    .I2(\drawunit/vga_controller/offset [7]),
    .I3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<6>1  (
    .I0(\drawunit/vga_controller/N7 ),
    .I1(\drawunit/vga_controller/offset_share0000 [6]),
    .I2(\drawunit/vga_controller/offset [6]),
    .I3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<5>1  (
    .I0(\drawunit/vga_controller/N7 ),
    .I1(\drawunit/vga_controller/offset_share0000 [5]),
    .I2(\drawunit/vga_controller/offset [5]),
    .I3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<4>1  (
    .I0(\drawunit/vga_controller/N7 ),
    .I1(\drawunit/vga_controller/offset_share0000 [4]),
    .I2(\drawunit/vga_controller/offset [4]),
    .I3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<3>1  (
    .I0(\drawunit/vga_controller/N7 ),
    .I1(\drawunit/vga_controller/offset_share0000 [3]),
    .I2(\drawunit/vga_controller/offset [3]),
    .I3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<2>1  (
    .I0(\drawunit/vga_controller/N7 ),
    .I1(\drawunit/vga_controller/offset_share0000 [2]),
    .I2(\drawunit/vga_controller/offset [2]),
    .I3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<1>1  (
    .I0(\drawunit/vga_controller/N7 ),
    .I1(\drawunit/vga_controller/offset_share0000 [1]),
    .I2(\drawunit/vga_controller/offset [1]),
    .I3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/offset_mux0000<0>1  (
    .I0(\drawunit/vga_controller/N7 ),
    .I1(\drawunit/vga_controller/offset_share0000 [0]),
    .I2(\drawunit/vga_controller/offset [0]),
    .I3(\drawunit/vga_controller/N16 ),
    .O(\drawunit/vga_controller/offset_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hFFAE ))
  \drawunit/vga_controller/offset_mux0000<0>37  (
    .I0(\drawunit/vga_controller/pixCount_cmp_eq0003 ),
    .I1(\drawunit/vga_controller/pixCount_cmp_eq0001_1186 ),
    .I2(\drawunit/vga_controller/Henable_962 ),
    .I3(\drawunit/vga_controller/pixCount_cmp_eq0000_1185 ),
    .O(\drawunit/vga_controller/offset_mux0000<0>37_1144 )
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \drawunit/vga_controller/offset_mux0000<0>319  (
    .I0(\drawunit/vga_controller/pixCount_and0000 ),
    .I1(\drawunit/vga_controller/offset_mux0000<0>37_1144 ),
    .I2(\drawunit/vga_controller/N111 ),
    .I3(\drawunit/vga_controller/offset_and0000 ),
    .O(\drawunit/vga_controller/offset_mux0000<0>319_1143 )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \drawunit/vga_controller/offset_and00006  (
    .I0(\drawunit/vga_controller/N19 ),
    .I1(\drawunit/vga_controller/pixCount [2]),
    .I2(\drawunit/vga_controller/pixCount [3]),
    .I3(N114),
    .O(\drawunit/vga_controller/offset_and00006_1141 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \drawunit/vga_controller/offset_and000034  (
    .I0(N115),
    .I1(\drawunit/vga_controller/pixCount [2]),
    .I2(\drawunit/vga_controller/pixCount [3]),
    .I3(\drawunit/vga_controller/N19 ),
    .O(\drawunit/vga_controller/offset_and000034_1139 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<1>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [1]),
    .I2(\drawunit/painter/addr [1]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<2>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [2]),
    .I2(\drawunit/painter/addr [2]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<3>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [3]),
    .I2(\drawunit/painter/addr [3]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<4>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [4]),
    .I2(\drawunit/painter/addr [4]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<5>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [5]),
    .I2(\drawunit/painter/addr [5]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<6>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [6]),
    .I2(\drawunit/painter/addr [6]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<7>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [7]),
    .I2(\drawunit/painter/addr [7]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<8>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [8]),
    .I2(\drawunit/painter/addr [8]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [8])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<14>1  (
    .I0(\drawunit/painter/addr_addsub0000 [0]),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/addr [0]),
    .I3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<9>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [9]),
    .I2(\drawunit/painter/addr [9]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<10>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [10]),
    .I2(\drawunit/painter/addr [10]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<11>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [11]),
    .I2(\drawunit/painter/addr [11]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/painter/addr_mux0002<14>1  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/addr [14]),
    .I2(\drawunit/painter/add0000_mult0000 [14]),
    .O(\drawunit/painter/addr_mux0002 [14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<12>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [12]),
    .I2(\drawunit/painter/addr [12]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<13>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [13]),
    .I2(\drawunit/painter/addr [13]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferWrtPtr_mux0000<14>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/bufferWrtPtr_addsub0000 [14]),
    .I2(\drawunit/painter/addr [14]),
    .O(\drawunit/framebuffer/bufferWrtPtr_mux0000 [14])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/framebuffer/bufferWe_cmp_ge000015  (
    .I0(\drawunit/painter/addr [10]),
    .I1(\drawunit/painter/addr [7]),
    .I2(\drawunit/painter/addr [8]),
    .I3(\drawunit/painter/addr [9]),
    .O(\drawunit/framebuffer/bufferWe_cmp_ge000015_352 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/framebuffer/bufferWe_cmp_ge0000110  (
    .I0(\drawunit/painter/addr [12]),
    .I1(\drawunit/painter/addr [13]),
    .O(\drawunit/framebuffer/bufferWe_cmp_ge0000110_351 )
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \drawunit/framebuffer/bufferWe_cmp_ge0000119  (
    .I0(\drawunit/framebuffer/bufferWe_cmp_ge0000110_351 ),
    .I1(\drawunit/painter/addr [11]),
    .I2(\drawunit/painter/addr [14]),
    .I3(\drawunit/framebuffer/bufferWe_cmp_ge000015_352 ),
    .O(\drawunit/framebuffer/bufferWe_cmp_ge0000 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<13>1  (
    .I0(\drawunit/painter/addr_addsub0000 [1]),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/addr [1]),
    .I3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [13])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<12>1  (
    .I0(\drawunit/painter/addr_addsub0000 [2]),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/addr [2]),
    .I3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [12])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<11>1  (
    .I0(\drawunit/painter/addr_addsub0000 [3]),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/addr [3]),
    .I3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/painter/addr_mux0002<8>1  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/addr [8]),
    .I2(\drawunit/painter/add0000_mult0000 [8]),
    .O(\drawunit/painter/addr_mux0002 [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/painter/addr_mux0002<13>1  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/addr [13]),
    .I2(\drawunit/painter/add0000_mult0000 [13]),
    .O(\drawunit/painter/addr_mux0002 [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/painter/addr_mux0002<9>1  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/addr [9]),
    .I2(\drawunit/painter/add0000_mult0000 [9]),
    .O(\drawunit/painter/addr_mux0002 [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/painter/addr_mux0002<12>1  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/addr [12]),
    .I2(\drawunit/painter/add0000_mult0000 [12]),
    .O(\drawunit/painter/addr_mux0002 [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/painter/addr_mux0002<11>1  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/addr [11]),
    .I2(\drawunit/painter/add0000_mult0000 [11]),
    .O(\drawunit/painter/addr_mux0002 [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/painter/addr_mux0002<10>1  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/addr [10]),
    .I2(\drawunit/painter/add0000_mult0000 [10]),
    .O(\drawunit/painter/addr_mux0002 [10])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<10>1  (
    .I0(\drawunit/painter/addr_addsub0000 [4]),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/addr [4]),
    .I3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [10])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<9>1  (
    .I0(\drawunit/painter/addr_addsub0000 [5]),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/addr [5]),
    .I3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [9])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<8>1  (
    .I0(\drawunit/painter/addr_addsub0000 [6]),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/addr [6]),
    .I3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [8])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<7>1  (
    .I0(\drawunit/painter/addr_addsub0000 [7]),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/addr [7]),
    .I3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<6>1  (
    .I0(\drawunit/painter/addr_addsub0000 [8]),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/addr [8]),
    .I3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<5>1  (
    .I0(\drawunit/painter/addr_addsub0000 [9]),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/addr [9]),
    .I3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<4>1  (
    .I0(\drawunit/painter/addr_addsub0000 [10]),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/addr [10]),
    .I3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<3>1  (
    .I0(\drawunit/painter/addr_addsub0000 [11]),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/addr [11]),
    .I3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<2>1  (
    .I0(\drawunit/painter/addr_addsub0000 [12]),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/addr [12]),
    .I3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<1>1  (
    .I0(\drawunit/painter/addr_addsub0000 [13]),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/addr [13]),
    .I3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/painter/addr_mux0000<0>1  (
    .I0(\drawunit/painter/addr_addsub0000 [14]),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/addr [14]),
    .I3(\drawunit/painter/N01 ),
    .O(\drawunit/painter/addr_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/color_mux0000<2>_SW0  (
    .I0(\drawunit/framebuffer/inst_LPM_FF_412 ),
    .I1(\drawunit/framebuffer/N25 ),
    .I2(\drawunit/framebuffer/N27 ),
    .O(N47)
  );
  LUT4 #(
    .INIT ( 16'hD8F0 ))
  \drawunit/framebuffer/color_mux0000<2>  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/S [2]),
    .I2(N47),
    .I3(\drawunit/framebuffer/color_cmp_ge0000 ),
    .O(\drawunit/framebuffer/color_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/color_mux0000<1>_SW0  (
    .I0(\drawunit/framebuffer/inst_LPM_FF_412 ),
    .I1(\drawunit/framebuffer/N16 ),
    .I2(\drawunit/framebuffer/N18 ),
    .O(N49)
  );
  LUT4 #(
    .INIT ( 16'hD8F0 ))
  \drawunit/framebuffer/color_mux0000<1>  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/S [1]),
    .I2(N49),
    .I3(\drawunit/framebuffer/color_cmp_ge0000 ),
    .O(\drawunit/framebuffer/color_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/color_mux0000<0>_SW0  (
    .I0(\drawunit/framebuffer/inst_LPM_FF_412 ),
    .I1(\drawunit/framebuffer/N7 ),
    .I2(\drawunit/framebuffer/N9 ),
    .O(N51)
  );
  LUT4 #(
    .INIT ( 16'hD8F0 ))
  \drawunit/framebuffer/color_mux0000<0>  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/framebuffer/S [0]),
    .I2(N51),
    .I3(\drawunit/framebuffer/color_cmp_ge0000 ),
    .O(\drawunit/framebuffer/color_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<0>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/rdPtr [0]),
    .I2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [0]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \drawunit/painter/newline_not00011  (
    .I0(\drawunit/painter/state_FSM_FFd1_685 ),
    .I1(\drawunit/painter/newline_672 ),
    .I2(\drawunit/painter/state_cmp_ge0000 ),
    .O(\drawunit/painter/newline_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<1>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/rdPtr [1]),
    .I2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [1]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<2>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/rdPtr [2]),
    .I2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [2]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<3>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/rdPtr [3]),
    .I2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [3]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<4>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/rdPtr [4]),
    .I2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [4]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<5>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/rdPtr [5]),
    .I2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [5]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<6>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/rdPtr [6]),
    .I2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [6]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<7>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/rdPtr [7]),
    .I2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [7]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [7])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \drawunit/painter/state_FSM_FFd1-In22  (
    .I0(\drawunit/painter/state_cmp_eq0000 ),
    .I1(\drawunit/painter/state_FSM_FFd3_690 ),
    .I2(\drawunit/painter/state_FSM_FFd2_688 ),
    .O(\drawunit/painter/state_FSM_FFd1-In22_686 )
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \drawunit/painter/state_FSM_FFd2-In12  (
    .I0(\drawunit/painter/state_FSM_FFd2_688 ),
    .I1(\drawunit/swapBuffers_957 ),
    .I2(\drawunit/painter/state_FSM_FFd1_685 ),
    .I3(\drawunit/painter/state_FSM_FFd3_690 ),
    .O(\drawunit/painter/state_FSM_FFd2-In12_689 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<8>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/rdPtr [8]),
    .I2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [8]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<9>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/rdPtr [9]),
    .I2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [9]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<10>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/rdPtr [10]),
    .I2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [10]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<11>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/rdPtr [11]),
    .I2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [11]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<12>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/rdPtr [12]),
    .I2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [12]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<13>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/rdPtr [13]),
    .I2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [13]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \drawunit/framebuffer/bufferRdPtr_mux0000<14>1  (
    .I0(\drawunit/framebuffer/state_414 ),
    .I1(\drawunit/rdPtr [14]),
    .I2(\drawunit/framebuffer/bufferRdPtr_addsub0000 [14]),
    .O(\drawunit/framebuffer/bufferRdPtr_mux0000 [14])
  );
  LUT4 #(
    .INIT ( 16'hFE00 ))
  \drawunit/framebuffer/color_cmp_ge000015  (
    .I0(\drawunit/rdPtr [7]),
    .I1(\drawunit/rdPtr [8]),
    .I2(\drawunit/rdPtr [9]),
    .I3(\drawunit/rdPtr [10]),
    .O(\drawunit/framebuffer/color_cmp_ge000015_405 )
  );
  LUT4 #(
    .INIT ( 16'hFECC ))
  \drawunit/framebuffer/color_cmp_ge0000119  (
    .I0(\drawunit/rdPtr [11]),
    .I1(\drawunit/rdPtr [14]),
    .I2(\drawunit/framebuffer/color_cmp_ge000015_405 ),
    .I3(\drawunit/framebuffer/color_cmp_ge0000110_404 ),
    .O(\drawunit/framebuffer/color_cmp_ge0000 )
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1296)
  );
  OBUF   vsync_OBUF (
    .I(\drawunit/vga_controller/vsync_1276 ),
    .O(vsync)
  );
  OBUF   hsync_OBUF (
    .I(\drawunit/vga_controller/hsync_1087 ),
    .O(hsync)
  );
  OBUF   color_2_OBUF (
    .I(\drawunit/vga_controller/color [2]),
    .O(color[2])
  );
  OBUF   color_1_OBUF (
    .I(\drawunit/vga_controller/color [1]),
    .O(color[1])
  );
  OBUF   color_0_OBUF (
    .I(\drawunit/vga_controller/color [0]),
    .O(color[0])
  );
  FDRS   \drawunit/painter/state_FSM_FFd2  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/state_FSM_FFd1-In25 ),
    .R(reset_IBUF_1296),
    .S(\drawunit/painter/state_FSM_FFd2-In12_689 ),
    .Q(\drawunit/painter/state_FSM_FFd2_688 )
  );
  FDRS   \drawunit/painter/state_FSM_FFd1  (
    .C(clk_BUFGP_161),
    .D(\drawunit/painter/state_FSM_FFd1-In25 ),
    .R(reset_IBUF_1296),
    .S(\drawunit/painter/state_FSM_FFd1-In22_686 ),
    .Q(\drawunit/painter/state_FSM_FFd1_685 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_data_10_cmp_ge0000_cy<0>_rt  (
    .I0(cycles[4]),
    .O(\Mcompar_data_10_cmp_ge0000_cy<0>_rt_2 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_data_10_cmp_ge0000_cy<2>_rt  (
    .I0(cycles[6]),
    .O(\Mcompar_data_10_cmp_ge0000_cy<2>_rt_8 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_data_10_cmp_ge0000_cy<2>_0_rt  (
    .I0(cycles[4]),
    .O(\Mcompar_data_10_cmp_ge0000_cy<2>_0_rt_7 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_data_10_cmp_ge0000_cy<4>_0_rt  (
    .I0(cycles[6]),
    .O(\Mcompar_data_10_cmp_ge0000_cy<4>_0_rt_13 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cycles_cy<1>_rt  (
    .I0(cycles[1]),
    .O(\Mcount_cycles_cy<1>_rt_43 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cycles_cy<2>_rt  (
    .I0(cycles[2]),
    .O(\Mcount_cycles_cy<2>_rt_45 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cycles_cy<3>_rt  (
    .I0(cycles[3]),
    .O(\Mcount_cycles_cy<3>_rt_47 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cycles_cy<4>_rt  (
    .I0(cycles[4]),
    .O(\Mcount_cycles_cy<4>_rt_49 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cycles_cy<5>_rt  (
    .I0(cycles[5]),
    .O(\Mcount_cycles_cy<5>_rt_51 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cycles_cy<6>_rt  (
    .I0(cycles[6]),
    .O(\Mcount_cycles_cy<6>_rt_53 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cycles_cy<7>_rt  (
    .I0(cycles[7]),
    .O(\Mcount_cycles_cy<7>_rt_55 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cycles_cy<8>_rt  (
    .I0(cycles[8]),
    .O(\Mcount_cycles_cy<8>_rt_57 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cycles_cy<9>_rt  (
    .I0(cycles[9]),
    .O(\Mcount_cycles_cy<9>_rt_59 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cycles_cy<10>_rt  (
    .I0(cycles[10]),
    .O(\Mcount_cycles_cy<10>_rt_33 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cycles_cy<11>_rt  (
    .I0(cycles[11]),
    .O(\Mcount_cycles_cy<11>_rt_35 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cycles_cy<12>_rt  (
    .I0(cycles[12]),
    .O(\Mcount_cycles_cy<12>_rt_37 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cycles_cy<13>_rt  (
    .I0(cycles[13]),
    .O(\Mcount_cycles_cy<13>_rt_39 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cycles_cy<14>_rt  (
    .I0(cycles[14]),
    .O(\Mcount_cycles_cy<14>_rt_41 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_i_cy<1>_rt  (
    .I0(i[1]),
    .O(\Mcount_i_cy<1>_rt_64 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_i_cy<2>_rt  (
    .I0(i[2]),
    .O(\Mcount_i_cy<2>_rt_66 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_i_cy<3>_rt  (
    .I0(i[3]),
    .O(\Mcount_i_cy<3>_rt_68 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_i_cy<4>_rt  (
    .I0(i[4]),
    .O(\Mcount_i_cy<4>_rt_70 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_i_cy<5>_rt  (
    .I0(i[5]),
    .O(\Mcount_i_cy<5>_rt_72 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_i_cy<6>_rt  (
    .I0(i[6]),
    .O(\Mcount_i_cy<6>_rt_74 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_i_cy<7>_rt  (
    .I0(i[7]),
    .O(\Mcount_i_cy<7>_rt_76 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_i_cy<8>_rt  (
    .I0(i[8]),
    .O(\Mcount_i_cy<8>_rt_78 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<7>_rt  (
    .I0(\drawunit/painter/addr [7]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<7>_rt_279 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<10>_rt  (
    .I0(\drawunit/painter/addr [10]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<10>_rt_266 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<12>_rt  (
    .I0(\drawunit/painter/addr [12]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<12>_rt_269 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<13>_rt  (
    .I0(\drawunit/painter/addr [13]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_cy<13>_rt_271 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<7>_rt  (
    .I0(\drawunit/rdPtr [7]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<7>_rt_250 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<10>_rt  (
    .I0(\drawunit/rdPtr [10]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<10>_rt_237 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<12>_rt  (
    .I0(\drawunit/rdPtr [12]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<12>_rt_240 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<13>_rt  (
    .I0(\drawunit/rdPtr [13]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_cy<13>_rt_242 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_wrtPtr_cy<1>_rt  (
    .I0(\drawunit/queue/wrtPtr [1]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy<1>_rt_756 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_wrtPtr_cy<2>_rt  (
    .I0(\drawunit/queue/wrtPtr [2]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy<2>_rt_758 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_wrtPtr_cy<3>_rt  (
    .I0(\drawunit/queue/wrtPtr [3]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy<3>_rt_760 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_wrtPtr_cy<4>_rt  (
    .I0(\drawunit/queue/wrtPtr [4]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy<4>_rt_762 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_wrtPtr_cy<5>_rt  (
    .I0(\drawunit/queue/wrtPtr [5]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy<5>_rt_764 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_wrtPtr_cy<6>_rt  (
    .I0(\drawunit/queue/wrtPtr [6]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy<6>_rt_766 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_wrtPtr_cy<7>_rt  (
    .I0(\drawunit/queue/wrtPtr [7]),
    .O(\drawunit/queue/Mcount_wrtPtr_cy<7>_rt_768 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_rdPtr_cy<1>_rt  (
    .I0(\drawunit/queue/rdPtr [1]),
    .O(\drawunit/queue/Mcount_rdPtr_cy<1>_rt_739 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_rdPtr_cy<2>_rt  (
    .I0(\drawunit/queue/rdPtr [2]),
    .O(\drawunit/queue/Mcount_rdPtr_cy<2>_rt_741 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_rdPtr_cy<3>_rt  (
    .I0(\drawunit/queue/rdPtr [3]),
    .O(\drawunit/queue/Mcount_rdPtr_cy<3>_rt_743 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_rdPtr_cy<4>_rt  (
    .I0(\drawunit/queue/rdPtr [4]),
    .O(\drawunit/queue/Mcount_rdPtr_cy<4>_rt_745 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_rdPtr_cy<5>_rt  (
    .I0(\drawunit/queue/rdPtr [5]),
    .O(\drawunit/queue/Mcount_rdPtr_cy<5>_rt_747 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_rdPtr_cy<6>_rt  (
    .I0(\drawunit/queue/rdPtr [6]),
    .O(\drawunit/queue/Mcount_rdPtr_cy<6>_rt_749 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_rdPtr_cy<7>_rt  (
    .I0(\drawunit/queue/rdPtr [7]),
    .O(\drawunit/queue/Mcount_rdPtr_cy<7>_rt_751 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<1>_rt  (
    .I0(\drawunit/vga_controller/offset [1]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<1>_rt_986 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<2>_rt  (
    .I0(\drawunit/vga_controller/offset [2]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<2>_rt_988 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<3>_rt  (
    .I0(\drawunit/vga_controller/offset [3]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<3>_rt_990 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<4>_rt  (
    .I0(\drawunit/vga_controller/offset [4]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<4>_rt_992 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<5>_rt  (
    .I0(\drawunit/vga_controller/offset [5]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<5>_rt_994 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<6>_rt  (
    .I0(\drawunit/vga_controller/offset [6]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<6>_rt_996 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<7>_rt  (
    .I0(\drawunit/vga_controller/offset [7]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<7>_rt_998 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_offset_share0000_cy<8>_rt  (
    .I0(\drawunit/vga_controller/offset [8]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_cy<8>_rt_1000 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_line_addsub0000_cy<1>_rt  (
    .I0(\drawunit/vga_controller/line [1]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy<1>_rt_969 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_line_addsub0000_cy<2>_rt  (
    .I0(\drawunit/vga_controller/line [2]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy<2>_rt_971 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_line_addsub0000_cy<3>_rt  (
    .I0(\drawunit/vga_controller/line [3]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy<3>_rt_973 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_line_addsub0000_cy<4>_rt  (
    .I0(\drawunit/vga_controller/line [4]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy<4>_rt_975 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_line_addsub0000_cy<5>_rt  (
    .I0(\drawunit/vga_controller/line [5]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy<5>_rt_977 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_line_addsub0000_cy<6>_rt  (
    .I0(\drawunit/vga_controller/line [6]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy<6>_rt_979 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_line_addsub0000_cy<7>_rt  (
    .I0(\drawunit/vga_controller/line [7]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_cy<7>_rt_981 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<1>_rt  (
    .I0(\drawunit/vga_controller/pixCount [1]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<1>_rt_1005 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<2>_rt  (
    .I0(\drawunit/vga_controller/pixCount [2]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<2>_rt_1007 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<3>_rt  (
    .I0(\drawunit/vga_controller/pixCount [3]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<3>_rt_1009 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<4>_rt  (
    .I0(\drawunit/vga_controller/pixCount [4]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<4>_rt_1011 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<5>_rt  (
    .I0(\drawunit/vga_controller/pixCount [5]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<5>_rt_1013 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<6>_rt  (
    .I0(\drawunit/vga_controller/pixCount [6]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<6>_rt_1015 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<7>_rt  (
    .I0(\drawunit/vga_controller/pixCount [7]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<7>_rt_1017 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_cy<8>_rt  (
    .I0(\drawunit/vga_controller/pixCount [8]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_cy<8>_rt_1019 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<1>_rt  (
    .I0(\drawunit/vga_controller/totalPix [1]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<1>_rt_1042 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<2>_rt  (
    .I0(\drawunit/vga_controller/totalPix [2]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<2>_rt_1044 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<3>_rt  (
    .I0(\drawunit/vga_controller/totalPix [3]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<3>_rt_1046 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<4>_rt  (
    .I0(\drawunit/vga_controller/totalPix [4]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<4>_rt_1048 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<5>_rt  (
    .I0(\drawunit/vga_controller/totalPix [5]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<5>_rt_1050 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<6>_rt  (
    .I0(\drawunit/vga_controller/totalPix [6]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<6>_rt_1052 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<7>_rt  (
    .I0(\drawunit/vga_controller/totalPix [7]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<7>_rt_1054 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<8>_rt  (
    .I0(\drawunit/vga_controller/totalPix [8]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<8>_rt_1056 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<9>_rt  (
    .I0(\drawunit/vga_controller/totalPix [9]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<9>_rt_1058 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<10>_rt  (
    .I0(\drawunit/vga_controller/totalPix [10]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<10>_rt_1024 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<11>_rt  (
    .I0(\drawunit/vga_controller/totalPix [11]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<11>_rt_1026 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<12>_rt  (
    .I0(\drawunit/vga_controller/totalPix [12]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<12>_rt_1028 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<13>_rt  (
    .I0(\drawunit/vga_controller/totalPix [13]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<13>_rt_1030 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<14>_rt  (
    .I0(\drawunit/vga_controller/totalPix [14]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<14>_rt_1032 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<15>_rt  (
    .I0(\drawunit/vga_controller/totalPix [15]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<15>_rt_1034 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<16>_rt  (
    .I0(\drawunit/vga_controller/totalPix [16]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<16>_rt_1036 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<17>_rt  (
    .I0(\drawunit/vga_controller/totalPix [17]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<17>_rt_1038 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_cy<18>_rt  (
    .I0(\drawunit/vga_controller/totalPix [18]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_cy<18>_rt_1040 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/painter/Madd_add0000_addsub0000_cy<8>_rt  (
    .I0(\drawunit/painter/add0000_mult0000 [8]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy<8>_rt_436 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/painter/Madd_add0000_addsub0000_cy<9>_rt  (
    .I0(\drawunit/painter/add0000_mult0000 [9]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy<9>_rt_438 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/painter/Madd_add0000_addsub0000_cy<10>_rt  (
    .I0(\drawunit/painter/add0000_mult0000 [10]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy<10>_rt_420 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/painter/Madd_add0000_addsub0000_cy<11>_rt  (
    .I0(\drawunit/painter/add0000_mult0000 [11]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy<11>_rt_422 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/painter/Madd_add0000_addsub0000_cy<12>_rt  (
    .I0(\drawunit/painter/add0000_mult0000 [12]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy<12>_rt_424 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/painter/Madd_add0000_addsub0000_cy<13>_rt  (
    .I0(\drawunit/painter/add0000_mult0000 [13]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy<13>_rt_426 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/painter/Madd_add0000_addsub0000_cy<14>_rt  (
    .I0(\drawunit/painter/add0000_mult0000 [14]),
    .O(\drawunit/painter/Madd_add0000_addsub0000_cy<14>_rt_427 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/painter/Msub__sub0000_cy<0>_rt  (
    .I0(\drawunit/painter/add0000_addsub0000 [0]),
    .O(\drawunit/painter/Msub__sub0000_cy<0>_rt_517 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/Madd_rdPtr_cy<13>_rt  (
    .I0(\drawunit/rdPtr_mult0000 [13]),
    .O(\drawunit/Madd_rdPtr_cy<13>_rt_214 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/Madd_rdPtr_cy<12>_rt  (
    .I0(\drawunit/rdPtr_mult0000 [12]),
    .O(\drawunit/Madd_rdPtr_cy<12>_rt_212 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/Madd_rdPtr_cy<11>_rt  (
    .I0(\drawunit/rdPtr_mult0000 [11]),
    .O(\drawunit/Madd_rdPtr_cy<11>_rt_210 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/Madd_rdPtr_cy<10>_rt  (
    .I0(\drawunit/rdPtr_mult0000 [10]),
    .O(\drawunit/Madd_rdPtr_cy<10>_rt_208 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/Madd_rdPtr_cy<9>_rt  (
    .I0(\drawunit/rdPtr_mult0000 [9]),
    .O(\drawunit/Madd_rdPtr_cy<9>_rt_225 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/Madd_rdPtr_cy<8>_rt  (
    .I0(\drawunit/rdPtr_mult0000 [8]),
    .O(\drawunit/Madd_rdPtr_cy<8>_rt_223 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_cycles_xor<15>_rt  (
    .I0(cycles[15]),
    .O(\Mcount_cycles_xor<15>_rt_61 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_i_xor<9>_rt  (
    .I0(i[9]),
    .O(\Mcount_i_xor<9>_rt_80 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_wrtPtr_xor<8>_rt  (
    .I0(\drawunit/queue/wrtPtr [8]),
    .O(\drawunit/queue/Mcount_wrtPtr_xor<8>_rt_770 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/queue/Mcount_rdPtr_xor<8>_rt  (
    .I0(\drawunit/queue/rdPtr [8]),
    .O(\drawunit/queue/Mcount_rdPtr_xor<8>_rt_753 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_offset_share0000_xor<9>_rt  (
    .I0(\drawunit/vga_controller/offset [9]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_xor<9>_rt_1002 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_line_addsub0000_xor<8>_rt  (
    .I0(\drawunit/vga_controller/line [8]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_xor<8>_rt_983 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_pixCount_addsub0000_xor<9>_rt  (
    .I0(\drawunit/vga_controller/pixCount [9]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_xor<9>_rt_1021 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \drawunit/vga_controller/Madd_totalPix_addsub0000_xor<19>_rt  (
    .I0(\drawunit/vga_controller/totalPix [19]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_xor<19>_rt_1060 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \drawunit/painter/Mcompar_state_cmp_ge0000_lut<15>  (
    .I0(\drawunit/painter/_sub0000 [15]),
    .I1(\drawunit/painter/_sub0000 [16]),
    .I2(\drawunit/painter/_sub0000 [17]),
    .O(\drawunit/painter/Mcompar_state_cmp_ge0000_lut [15])
  );
  LUT4 #(
    .INIT ( 16'h084C ))
  \drawunit/painter/state_FSM_FFd2-In331  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/state_cmp_le0000 ),
    .I3(\drawunit/painter/state_cmp_ge0000 ),
    .O(\drawunit/painter/state_FSM_FFd1-In25 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<1>_SW0  (
    .I0(\drawunit/rdPtr [1]),
    .I1(\drawunit/rdPtr [14]),
    .O(N65)
  );
  LUT4 #(
    .INIT ( 16'hAA95 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<1>_SW1  (
    .I0(\drawunit/rdPtr [1]),
    .I1(\drawunit/rdPtr [12]),
    .I2(\drawunit/rdPtr [13]),
    .I3(\drawunit/rdPtr [14]),
    .O(N66)
  );
  LUT4 #(
    .INIT ( 16'h0E1F ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<1>  (
    .I0(\drawunit/rdPtr [11]),
    .I1(\drawunit/framebuffer/color_cmp_ge000015_405 ),
    .I2(N66),
    .I3(N65),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[1] )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<2>_SW0  (
    .I0(\drawunit/rdPtr [2]),
    .I1(\drawunit/rdPtr [14]),
    .O(N68)
  );
  LUT4 #(
    .INIT ( 16'hAA95 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<2>_SW1  (
    .I0(\drawunit/rdPtr [2]),
    .I1(\drawunit/rdPtr [12]),
    .I2(\drawunit/rdPtr [13]),
    .I3(\drawunit/rdPtr [14]),
    .O(N69)
  );
  LUT4 #(
    .INIT ( 16'h0E1F ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<2>  (
    .I0(\drawunit/rdPtr [11]),
    .I1(\drawunit/framebuffer/color_cmp_ge000015_405 ),
    .I2(N69),
    .I3(N68),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[2] )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<3>_SW0  (
    .I0(\drawunit/rdPtr [3]),
    .I1(\drawunit/rdPtr [14]),
    .O(N71)
  );
  LUT4 #(
    .INIT ( 16'hAA95 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<3>_SW1  (
    .I0(\drawunit/rdPtr [3]),
    .I1(\drawunit/rdPtr [12]),
    .I2(\drawunit/rdPtr [13]),
    .I3(\drawunit/rdPtr [14]),
    .O(N72)
  );
  LUT4 #(
    .INIT ( 16'h0E1F ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<3>  (
    .I0(\drawunit/rdPtr [11]),
    .I1(\drawunit/framebuffer/color_cmp_ge000015_405 ),
    .I2(N72),
    .I3(N71),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[3] )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<4>_SW0  (
    .I0(\drawunit/rdPtr [4]),
    .I1(\drawunit/rdPtr [14]),
    .O(N74)
  );
  LUT4 #(
    .INIT ( 16'hAA95 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<4>_SW1  (
    .I0(\drawunit/rdPtr [4]),
    .I1(\drawunit/rdPtr [12]),
    .I2(\drawunit/rdPtr [13]),
    .I3(\drawunit/rdPtr [14]),
    .O(N75)
  );
  LUT4 #(
    .INIT ( 16'h0E1F ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<4>  (
    .I0(\drawunit/rdPtr [11]),
    .I1(\drawunit/framebuffer/color_cmp_ge000015_405 ),
    .I2(N75),
    .I3(N74),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[4] )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<5>_SW0  (
    .I0(\drawunit/rdPtr [5]),
    .I1(\drawunit/rdPtr [14]),
    .O(N77)
  );
  LUT4 #(
    .INIT ( 16'hAA95 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<5>_SW1  (
    .I0(\drawunit/rdPtr [5]),
    .I1(\drawunit/rdPtr [12]),
    .I2(\drawunit/rdPtr [13]),
    .I3(\drawunit/rdPtr [14]),
    .O(N78)
  );
  LUT4 #(
    .INIT ( 16'h0E1F ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<5>  (
    .I0(\drawunit/rdPtr [11]),
    .I1(\drawunit/framebuffer/color_cmp_ge000015_405 ),
    .I2(N78),
    .I3(N77),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[5] )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<6>_SW0  (
    .I0(\drawunit/rdPtr [6]),
    .I1(\drawunit/rdPtr [14]),
    .O(N80)
  );
  LUT4 #(
    .INIT ( 16'hAA95 ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<6>_SW1  (
    .I0(\drawunit/rdPtr [6]),
    .I1(\drawunit/rdPtr [12]),
    .I2(\drawunit/rdPtr [13]),
    .I3(\drawunit/rdPtr [14]),
    .O(N81)
  );
  LUT4 #(
    .INIT ( 16'h0E1F ))
  \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<6>  (
    .I0(\drawunit/rdPtr [11]),
    .I1(\drawunit/framebuffer/color_cmp_ge000015_405 ),
    .I2(N81),
    .I3(N80),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[6] )
  );
  LUT4 #(
    .INIT ( 16'h569A ))
  \drawunit/painter/Madd_addr_addsub0000_lut<0>  (
    .I0(\drawunit/painter/addr_mux0001 [0]),
    .I1(\drawunit/painter/newline_672 ),
    .I2(\drawunit/painter/addr [0]),
    .I3(\drawunit/painter/add0000_mult0000 [0]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [0])
  );
  LUT4 #(
    .INIT ( 16'h7D28 ))
  \drawunit/painter/Madd_addr_addsub0000_lut<7>  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/add0000_mult0000 [7]),
    .I2(\drawunit/painter/left [7]),
    .I3(\drawunit/painter/addr [7]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [7])
  );
  LUT4 #(
    .INIT ( 16'h7D28 ))
  \drawunit/painter/Madd_addr_addsub0000_lut<1>  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/add0000_mult0000 [1]),
    .I2(\drawunit/painter/left [1]),
    .I3(\drawunit/painter/addr [1]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [1])
  );
  LUT4 #(
    .INIT ( 16'h7D28 ))
  \drawunit/painter/Madd_addr_addsub0000_lut<6>  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/add0000_mult0000 [6]),
    .I2(\drawunit/painter/left [6]),
    .I3(\drawunit/painter/addr [6]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [6])
  );
  LUT4 #(
    .INIT ( 16'h7D28 ))
  \drawunit/painter/Madd_addr_addsub0000_lut<2>  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/add0000_mult0000 [2]),
    .I2(\drawunit/painter/left [2]),
    .I3(\drawunit/painter/addr [2]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h7D28 ))
  \drawunit/painter/Madd_addr_addsub0000_lut<3>  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/add0000_mult0000 [3]),
    .I2(\drawunit/painter/left [3]),
    .I3(\drawunit/painter/addr [3]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h7D28 ))
  \drawunit/painter/Madd_addr_addsub0000_lut<4>  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/add0000_mult0000 [4]),
    .I2(\drawunit/painter/left [4]),
    .I3(\drawunit/painter/addr [4]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [4])
  );
  LUT4 #(
    .INIT ( 16'h7D28 ))
  \drawunit/painter/Madd_addr_addsub0000_lut<5>  (
    .I0(\drawunit/painter/newline_672 ),
    .I1(\drawunit/painter/add0000_mult0000 [5]),
    .I2(\drawunit/painter/left [5]),
    .I3(\drawunit/painter/addr [5]),
    .O(\drawunit/painter/Madd_addr_addsub0000_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \drawunit/framebuffer/write_ctrl  (
    .I0(\drawunit/framebuffer/bufferWrtPtr [14]),
    .I1(\drawunit/framebuffer/bufferWe_347 ),
    .O(\drawunit/framebuffer/write_ctrl_416 )
  );
  LUT4 #(
    .INIT ( 16'hFEEE ))
  \drawunit/vga_controller/offset_and000012  (
    .I0(\drawunit/vga_controller/pixCount [9]),
    .I1(\drawunit/vga_controller/pixCount [8]),
    .I2(\drawunit/vga_controller/pixCount [7]),
    .I3(\drawunit/vga_controller/offset_and00006_1141 ),
    .O(\drawunit/vga_controller/offset_and000012_1138 )
  );
  LUT4 #(
    .INIT ( 16'hAA2A ))
  \drawunit/vga_controller/offset_and000044  (
    .I0(\drawunit/vga_controller/Henable_962 ),
    .I1(\drawunit/vga_controller/pixCount [9]),
    .I2(\drawunit/vga_controller/pixCount [8]),
    .I3(\drawunit/vga_controller/offset_and000034_1139 ),
    .O(\drawunit/vga_controller/offset_and000044_1140 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  \drawunit/vga_controller/Henable_mux000027  (
    .I0(\drawunit/vga_controller/totalPix [18]),
    .I1(\drawunit/vga_controller/totalPix [17]),
    .I2(\drawunit/vga_controller/totalPix_and0000 ),
    .I3(\drawunit/vga_controller/Henable_mux000011_964 ),
    .O(\drawunit/vga_controller/Henable_mux000027_965 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/queue/empty39  (
    .I0(\drawunit/queue/count [9]),
    .I1(\drawunit/queue/count [8]),
    .I2(\drawunit/queue/empty12_848 ),
    .I3(\drawunit/queue/empty37_849 ),
    .O(\drawunit/empty )
  );
  LUT4 #(
    .INIT ( 16'hB1BF ))
  \drawunit/vga_controller/totalPix_mux0000<19>1170_SW0  (
    .I0(\drawunit/vga_controller/totalPix [17]),
    .I1(\drawunit/vga_controller/totalPix [7]),
    .I2(\drawunit/vga_controller/totalPix [13]),
    .I3(\drawunit/vga_controller/totalPix [12]),
    .O(N83)
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \drawunit/vga_controller/totalPix_mux0000<19>1170  (
    .I0(\drawunit/vga_controller/totalPix_mux0000<19>1160_1257 ),
    .I1(\drawunit/vga_controller/totalPix [9]),
    .I2(\drawunit/vga_controller/totalPix [5]),
    .I3(N83),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>1170_1258 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \drawunit/queue/count_not0002330_SW0  (
    .I0(\drawunit/queue/count [1]),
    .I1(\drawunit/queue/count_not0002310 ),
    .I2(\drawunit/queue/count_not0002341_812 ),
    .O(N85)
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  \drawunit/queue/count_not0002330  (
    .I0(\drawunit/painter/re_675 ),
    .I1(\drawunit/queue/delayedWe_846 ),
    .I2(\drawunit/queue/count [0]),
    .I3(N85),
    .O(\drawunit/queue/count_not0003_inv )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \drawunit/queue/count_not000234_SW0  (
    .I0(\drawunit/queue/count_not000212_810 ),
    .I1(\drawunit/queue/count [9]),
    .I2(\drawunit/queue/count_not0002310 ),
    .O(N87)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<4>1  (
    .I0(\drawunit/vga_controller/totalPix_addsub0000 [15]),
    .I1(\drawunit/vga_controller/totalPix_mux0000<19>133_1262 ),
    .I2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1255 ),
    .I3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1259 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<3>1  (
    .I0(\drawunit/vga_controller/totalPix_addsub0000 [16]),
    .I1(\drawunit/vga_controller/totalPix_mux0000<19>133_1262 ),
    .I2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1255 ),
    .I3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1259 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<18>1  (
    .I0(\drawunit/vga_controller/totalPix_addsub0000 [1]),
    .I1(\drawunit/vga_controller/totalPix_mux0000<19>133_1262 ),
    .I2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1255 ),
    .I3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1259 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [18])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<17>1  (
    .I0(\drawunit/vga_controller/totalPix_addsub0000 [2]),
    .I1(\drawunit/vga_controller/totalPix_mux0000<19>133_1262 ),
    .I2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1255 ),
    .I3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1259 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [17])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<16>1  (
    .I0(\drawunit/vga_controller/totalPix_addsub0000 [3]),
    .I1(\drawunit/vga_controller/totalPix_mux0000<19>133_1262 ),
    .I2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1255 ),
    .I3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1259 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [16])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<15>1  (
    .I0(\drawunit/vga_controller/totalPix_addsub0000 [4]),
    .I1(\drawunit/vga_controller/totalPix_mux0000<19>133_1262 ),
    .I2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1255 ),
    .I3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1259 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [15])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<11>1  (
    .I0(\drawunit/vga_controller/totalPix_addsub0000 [8]),
    .I1(\drawunit/vga_controller/totalPix_mux0000<19>133_1262 ),
    .I2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1255 ),
    .I3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1259 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [11])
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<0>1  (
    .I0(\drawunit/vga_controller/totalPix_addsub0000 [19]),
    .I1(\drawunit/vga_controller/totalPix_mux0000<19>133_1262 ),
    .I2(\drawunit/vga_controller/totalPix_mux0000<19>1110_1255 ),
    .I3(\drawunit/vga_controller/totalPix_mux0000<19>1194_1259 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \drawunit/vga_controller/line_not0001_SW0  (
    .I0(\drawunit/vga_controller/Henable_962 ),
    .I1(\drawunit/vga_controller/line_cmp_eq000015_1114 ),
    .I2(\drawunit/vga_controller/line_cmp_eq00006 ),
    .O(N4)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  cycles_not00011 (
    .I0(state_cmp_lt0000),
    .I1(Mcompar_data_10_cmp_ge0000_cy[8]),
    .O(cycles_not0001)
  );
  LUT4 #(
    .INIT ( 16'h0105 ))
  state_mux00001 (
    .I0(state_1297),
    .I1(\drawunit/queue/full211 ),
    .I2(\drawunit/queue/count [9]),
    .I3(\drawunit/queue/full24_852 ),
    .O(state_mux0000)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \drawunit/vga_controller/totalPix_mux0000<19>64_SW0  (
    .I0(\drawunit/vga_controller/totalPix_addsub0000 [0]),
    .I1(\drawunit/vga_controller/totalPix_mux0000<19>1110_1255 ),
    .I2(\drawunit/vga_controller/totalPix_mux0000<19>1194_1259 ),
    .I3(\drawunit/vga_controller/totalPix_mux0000<19>133_1262 ),
    .O(N91)
  );
  LUT4 #(
    .INIT ( 16'hFEEE ))
  \drawunit/vga_controller/totalPix_mux0000<19>64  (
    .I0(\drawunit/vga_controller/N9 ),
    .I1(N91),
    .I2(\drawunit/vga_controller/totalPix_and0000 ),
    .I3(\drawunit/vga_controller/totalPix_mux0000<19>30_1266 ),
    .O(\drawunit/vga_controller/totalPix_mux0000 [19])
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  \drawunit/vga_controller/totalPix_cmp_eq0002_SW1  (
    .I0(\drawunit/vga_controller/totalPix [5]),
    .I1(\drawunit/vga_controller/totalPix [6]),
    .I2(\drawunit/vga_controller/totalPix [7]),
    .I3(\drawunit/vga_controller/totalPix [9]),
    .O(N93)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/vga_controller/totalPix_cmp_eq0002  (
    .I0(\drawunit/vga_controller/totalPix [14]),
    .I1(N93),
    .I2(\drawunit/vga_controller/N35 ),
    .I3(\drawunit/vga_controller/totalPix [13]),
    .O(\drawunit/vga_controller/totalPix_cmp_eq0002_1243 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  we_mux000021 (
    .I0(Mcompar_data_10_cmp_ge0000_cy[8]),
    .I1(data_10_cmp_ge0000),
    .O(data_10_and0000)
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \drawunit/vga_controller/offset_mux0000<0>21  (
    .I0(\drawunit/vga_controller/N111 ),
    .I1(\drawunit/vga_controller/offset_and000012_1138 ),
    .I2(\drawunit/vga_controller/offset_and000044_1140 ),
    .I3(\drawunit/vga_controller/N39 ),
    .O(\drawunit/vga_controller/N7 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \drawunit/vga_controller/hsync_and000021  (
    .I0(\drawunit/vga_controller/pixCount [3]),
    .I1(\drawunit/vga_controller/pixCount [2]),
    .I2(\drawunit/vga_controller/pixCount [0]),
    .I3(\drawunit/vga_controller/pixCount [1]),
    .O(\drawunit/vga_controller/pixCount_and0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \drawunit/vga_controller/Henable_mux000061  (
    .I0(\drawunit/vga_controller/hsync_cmp_eq0002117 ),
    .I1(\drawunit/vga_controller/hsync_cmp_eq0002132_1092 ),
    .I2(\drawunit/vga_controller/N40 ),
    .O(\drawunit/vga_controller/Henable_mux000061_966 )
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  data_10_or00001 (
    .I0(N12),
    .I1(state_cmp_lt0000212_1299),
    .I2(reset_IBUF_1296),
    .I3(state_cmp_lt0000225_1300),
    .O(data_10_or0000)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/vga_controller/totalPix_mux0000<13>_SW0  (
    .I0(\drawunit/vga_controller/hsync_cmp_eq0002117 ),
    .I1(\drawunit/vga_controller/hsync_cmp_eq0002132_1092 ),
    .I2(\drawunit/vga_controller/N43 ),
    .I3(\drawunit/vga_controller/N34 ),
    .O(N27)
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  \drawunit/vga_controller/color_mux0000<0>2_SW0  (
    .I0(\drawunit/vga_controller/N14 ),
    .I1(\drawunit/vga_controller/pixCount [5]),
    .I2(\drawunit/vga_controller/pixCount [4]),
    .I3(\drawunit/vga_controller/pixCount_cmp_eq0000_1185 ),
    .O(N35)
  );
  LUT4 #(
    .INIT ( 16'hFF08 ))
  \drawunit/vga_controller/pixCount_mux0000<5>_SW0  (
    .I0(\drawunit/vga_controller/pixCount [4]),
    .I1(\drawunit/vga_controller/N14 ),
    .I2(\drawunit/vga_controller/pixCount [5]),
    .I3(\drawunit/vga_controller/pixCount_cmp_eq0001_1186 ),
    .O(N13)
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \drawunit/vga_controller/totalPix_mux0000<5>_SW0  (
    .I0(\drawunit/vga_controller/totalPix [14]),
    .I1(\drawunit/vga_controller/N13 ),
    .I2(\drawunit/vga_controller/totalPix [10]),
    .I3(\drawunit/vga_controller/N17 ),
    .O(N21)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  data_9_not00011 (
    .I0(N12),
    .I1(state_cmp_lt0000212_1299),
    .I2(data_10_and0000),
    .I3(state_cmp_lt0000225_1300),
    .O(data_9_not0001)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/vga_controller/vsync_mux000071  (
    .I0(\drawunit/vga_controller/totalPix [7]),
    .I1(\drawunit/vga_controller/totalPix [13]),
    .I2(\drawunit/vga_controller/N34 ),
    .I3(\drawunit/vga_controller/totalPix [10]),
    .O(\drawunit/vga_controller/vsync_mux000071_1280 )
  );
  LUT4 #(
    .INIT ( 16'hEBAF ))
  data_5_mux0000_SW1 (
    .I0(state_1297),
    .I1(i[4]),
    .I2(i[5]),
    .I3(N14),
    .O(N95)
  );
  LUT4 #(
    .INIT ( 16'h57FF ))
  data_5_mux0000 (
    .I0(N12),
    .I1(state_cmp_lt0000225_1300),
    .I2(state_cmp_lt0000212_1299),
    .I3(N95),
    .O(data_5_mux0000_196)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  data_6_cmp_lt00001_SW1 (
    .I0(i[3]),
    .I1(i[4]),
    .I2(i[5]),
    .I3(i[6]),
    .O(N97)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  data_6_cmp_lt00001 (
    .I0(i[7]),
    .I1(i[8]),
    .I2(i[9]),
    .I3(N97),
    .O(data_6_cmp_lt0000)
  );
  LUT4 #(
    .INIT ( 16'hFBAE ))
  data_3_mux0000_SW1 (
    .I0(state_1297),
    .I1(N3),
    .I2(data_6_cmp_lt0000),
    .I3(i[3]),
    .O(N99)
  );
  LUT4 #(
    .INIT ( 16'hABFF ))
  data_3_mux0000 (
    .I0(N99),
    .I1(state_cmp_lt0000225_1300),
    .I2(state_cmp_lt0000212_1299),
    .I3(N12),
    .O(data_3_mux0000_192)
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \drawunit/vga_controller/totalPix_mux0000<9>_SW1  (
    .I0(\drawunit/vga_controller/hsync_cmp_eq0002132_1092 ),
    .I1(\drawunit/vga_controller/N34 ),
    .I2(\drawunit/vga_controller/N43 ),
    .I3(\drawunit/vga_controller/totalPix_cmp_eq0002_1243 ),
    .O(N101)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \drawunit/vga_controller/totalPix_mux0000<9>  (
    .I0(\drawunit/vga_controller/N11 ),
    .I1(\drawunit/vga_controller/totalPix_addsub0000 [10]),
    .I2(\drawunit/vga_controller/hsync_cmp_eq0002117 ),
    .I3(N101),
    .O(\drawunit/vga_controller/totalPix_mux0000 [9])
  );
  LUT4 #(
    .INIT ( 16'h595D ))
  \drawunit/queue/Mcount_count_lut<0>  (
    .I0(\drawunit/queue/count [0]),
    .I1(\drawunit/painter/re_675 ),
    .I2(\drawunit/queue/delayedWe_846 ),
    .I3(N85),
    .O(\drawunit/queue/Mcount_count_lut [0])
  );
  LUT4 #(
    .INIT ( 16'h1110 ))
  state_cmp_lt0000238 (
    .I0(i[8]),
    .I1(i[9]),
    .I2(state_cmp_lt0000212_1299),
    .I3(state_cmp_lt0000225_1300),
    .O(state_cmp_lt0000)
  );
  LUT4 #(
    .INIT ( 16'hFFD5 ))
  \drawunit/vga_controller/line_mux0000<0>11_SW0  (
    .I0(\drawunit/vga_controller/pixCount_and0000 ),
    .I1(\drawunit/vga_controller/line_cmp_eq00006 ),
    .I2(\drawunit/vga_controller/line_cmp_eq000015_1114 ),
    .I3(\drawunit/vga_controller/pixCount [5]),
    .O(N103)
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \drawunit/vga_controller/line_mux0000<0>11  (
    .I0(\drawunit/vga_controller/pixCount [4]),
    .I1(\drawunit/vga_controller/N14 ),
    .I2(N103),
    .I3(\drawunit/vga_controller/Henable_962 ),
    .O(\drawunit/vga_controller/N18 )
  );
  LUT4 #(
    .INIT ( 16'hFAF2 ))
  \drawunit/vga_controller/totalPix_mux0000<19>1194  (
    .I0(\drawunit/vga_controller/totalPix [13]),
    .I1(\drawunit/vga_controller/totalPix [5]),
    .I2(N105),
    .I3(\drawunit/vga_controller/totalPix [9]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>1194_1259 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_161)
  );
  BUFG   vgaClk_BUFG (
    .I(vgaClk1),
    .O(vgaClk_1302)
  );
  INV   \Mcompar_data_10_cmp_ge0000_lut<1>_INV_0  (
    .I(cycles[5]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[1] )
  );
  INV   \Mcompar_data_10_cmp_ge0000_lut<3>_INV_0  (
    .I(cycles[7]),
    .O(\Mcompar_data_10_cmp_ge0000_lut[3] )
  );
  INV   \Mcompar_data_10_cmp_ge0000_lut<3>1_INV_0  (
    .I(cycles[5]),
    .O(\Mcompar_data_10_cmp_ge0000_lut<3>1 )
  );
  INV   \Mcompar_data_10_cmp_ge0000_lut<5>1_INV_0  (
    .I(cycles[7]),
    .O(\Mcompar_data_10_cmp_ge0000_lut<5>1 )
  );
  INV   \Mcount_cycles_lut<0>_INV_0  (
    .I(cycles[0]),
    .O(Mcount_cycles_lut[0])
  );
  INV   \Mcount_i_lut<0>_INV_0  (
    .I(i[0]),
    .O(Mcount_i_lut[0])
  );
  INV   \drawunit/queue/Mcount_wrtPtr_lut<0>_INV_0  (
    .I(\drawunit/queue/wrtPtr [0]),
    .O(\drawunit/queue/Mcount_wrtPtr_lut [0])
  );
  INV   \drawunit/queue/Mcount_rdPtr_lut<0>_INV_0  (
    .I(\drawunit/queue/rdPtr [0]),
    .O(\drawunit/queue/Mcount_rdPtr_lut [0])
  );
  INV   \drawunit/vga_controller/Madd_offset_share0000_lut<0>_INV_0  (
    .I(\drawunit/vga_controller/offset [0]),
    .O(\drawunit/vga_controller/Madd_offset_share0000_lut [0])
  );
  INV   \drawunit/vga_controller/Madd_line_addsub0000_lut<0>_INV_0  (
    .I(\drawunit/vga_controller/line [0]),
    .O(\drawunit/vga_controller/Madd_line_addsub0000_lut [0])
  );
  INV   \drawunit/vga_controller/Madd_pixCount_addsub0000_lut<0>_INV_0  (
    .I(\drawunit/vga_controller/pixCount [0]),
    .O(\drawunit/vga_controller/Madd_pixCount_addsub0000_lut [0])
  );
  INV   \drawunit/vga_controller/Madd_totalPix_addsub0000_lut<0>_INV_0  (
    .I(\drawunit/vga_controller/totalPix [0]),
    .O(\drawunit/vga_controller/Madd_totalPix_addsub0000_lut [0])
  );
  INV   \drawunit/painter/Msub__sub0000_lut<1>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [1]),
    .O(\drawunit/painter/Msub__sub0000_lut [1])
  );
  INV   \drawunit/painter/Msub__sub0000_lut<2>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [2]),
    .O(\drawunit/painter/Msub__sub0000_lut [2])
  );
  INV   \drawunit/painter/Msub__sub0000_lut<3>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [3]),
    .O(\drawunit/painter/Msub__sub0000_lut [3])
  );
  INV   \drawunit/painter/Msub__sub0000_lut<4>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [4]),
    .O(\drawunit/painter/Msub__sub0000_lut [4])
  );
  INV   \drawunit/painter/Msub__sub0000_lut<5>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [5]),
    .O(\drawunit/painter/Msub__sub0000_lut [5])
  );
  INV   \drawunit/painter/Msub__sub0000_lut<6>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [6]),
    .O(\drawunit/painter/Msub__sub0000_lut [6])
  );
  INV   \drawunit/painter/Msub__sub0000_lut<7>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [7]),
    .O(\drawunit/painter/Msub__sub0000_lut [7])
  );
  INV   \drawunit/painter/Msub__sub0000_lut<8>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [8]),
    .O(\drawunit/painter/Msub__sub0000_lut [8])
  );
  INV   \drawunit/painter/Msub__sub0000_lut<9>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [9]),
    .O(\drawunit/painter/Msub__sub0000_lut [9])
  );
  INV   \drawunit/painter/Msub__sub0000_lut<10>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [10]),
    .O(\drawunit/painter/Msub__sub0000_lut [10])
  );
  INV   \drawunit/painter/Msub__sub0000_lut<11>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [11]),
    .O(\drawunit/painter/Msub__sub0000_lut [11])
  );
  INV   \drawunit/painter/Msub__sub0000_lut<12>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [12]),
    .O(\drawunit/painter/Msub__sub0000_lut [12])
  );
  INV   \drawunit/painter/Msub__sub0000_lut<13>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [13]),
    .O(\drawunit/painter/Msub__sub0000_lut [13])
  );
  INV   \drawunit/painter/Msub__sub0000_lut<14>_INV_0  (
    .I(\drawunit/painter/add0000_addsub0000 [14]),
    .O(\drawunit/painter/Msub__sub0000_lut [14])
  );
  INV   \drawunit/painter/Msub__sub0000_lut<15>_INV_0  (
    .I(\drawunit/painter/Madd_add0000_index0000 ),
    .O(\drawunit/painter/Msub__sub0000_lut [15])
  );
  INV   \drawunit/queue/reset_inv1_INV_0  (
    .I(reset_IBUF_1296),
    .O(\drawunit/framebuffer/reset_inv )
  );
  INV   vgaClk_not00011_INV_0 (
    .I(vgaClk1),
    .O(vgaClk_not0001)
  );
  INV   \drawunit/queue/state_mux00001_INV_0  (
    .I(\drawunit/queue/state_894 ),
    .O(\drawunit/queue/state_mux0000 )
  );
  INV   \drawunit/framebuffer/state_not00011_INV_0  (
    .I(\drawunit/framebuffer/state_414 ),
    .O(\drawunit/framebuffer/state_not0001 )
  );
  INV   \drawunit/swapBuffersCommand_inv1_INV_0  (
    .I(\drawunit/painter/swapBuffersCommand_710 ),
    .O(\drawunit/swapBuffersCommand_inv )
  );
  INV   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<8>_INV_0  (
    .I(\drawunit/rdPtr [8]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[8] )
  );
  INV   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<9>_INV_0  (
    .I(\drawunit/rdPtr [9]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[9] )
  );
  INV   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<11>_INV_0  (
    .I(\drawunit/rdPtr [11]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[11] )
  );
  INV   \drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut<14>_INV_0  (
    .I(\drawunit/rdPtr [14]),
    .O(\drawunit/framebuffer/Maddsub_bufferRdPtr_addsub0000_lut[14] )
  );
  INV   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<11>_INV_0  (
    .I(\drawunit/painter/addr [11]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[11] )
  );
  INV   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<14>_INV_0  (
    .I(\drawunit/painter/addr [14]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[14] )
  );
  INV   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<8>_INV_0  (
    .I(\drawunit/painter/addr [8]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[8] )
  );
  INV   \drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut<9>_INV_0  (
    .I(\drawunit/painter/addr [9]),
    .O(\drawunit/framebuffer/Maddsub_bufferWrtPtr_addsub0000_lut[9] )
  );
  MUXF5   \drawunit/vga_controller/color_and0000  (
    .I0(N107),
    .I1(N108),
    .S(\drawunit/vga_controller/pixCount [8]),
    .O(\drawunit/vga_controller/color_and0000_1082 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \drawunit/vga_controller/color_and0000_F  (
    .I0(\drawunit/vga_controller/Henable_962 ),
    .I1(\drawunit/vga_controller/N22 ),
    .I2(\drawunit/vga_controller/pixCount [7]),
    .I3(\drawunit/vga_controller/pixCount [9]),
    .O(N107)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \drawunit/vga_controller/color_and0000_G  (
    .I0(\drawunit/vga_controller/Henable_962 ),
    .I1(\drawunit/vga_controller/pixCount [9]),
    .I2(\drawunit/vga_controller/color_cmp_lt00001 ),
    .O(N108)
  );
  MUXF5   \drawunit/vga_controller/totalPix_mux0000<19>30  (
    .I0(N109),
    .I1(N110),
    .S(\drawunit/vga_controller/totalPix [5]),
    .O(\drawunit/vga_controller/totalPix_mux0000<19>30_1266 )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \drawunit/vga_controller/totalPix_mux0000<19>30_F  (
    .I0(\drawunit/vga_controller/totalPix [6]),
    .I1(\drawunit/vga_controller/totalPix [9]),
    .I2(N11),
    .I3(\drawunit/vga_controller/N43 ),
    .O(N109)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \drawunit/vga_controller/totalPix_mux0000<19>30_G  (
    .I0(\drawunit/vga_controller/totalPix [9]),
    .I1(\drawunit/vga_controller/totalPix_mux0000<19>12_1260 ),
    .I2(\drawunit/vga_controller/N35 ),
    .O(N110)
  );
  MUXF5   \drawunit/queue/count_not000245  (
    .I0(N111),
    .I1(N112),
    .S(\drawunit/painter/re_675 ),
    .O(\drawunit/queue/count_not0002 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \drawunit/queue/count_not000245_F  (
    .I0(\drawunit/queue/delayedWe_846 ),
    .I1(\drawunit/queue/count [8]),
    .I2(N87),
    .O(N111)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \drawunit/queue/count_not000245_G  (
    .I0(\drawunit/queue/delayedWe_846 ),
    .I1(\drawunit/queue/count [0]),
    .I2(N85),
    .O(N112)
  );
  RAMB16_S1_S1 #(
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ))
  \drawunit/framebuffer/blueBuffer/Mram_memory1  (
    .CLKA(clk_BUFGP_161),
    .CLKB(vgaClk_1302),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/write_ctrl_416 ),
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
    .DOA({\NLW_drawunit/framebuffer/blueBuffer/Mram_memory1_DOA<0>_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/N7 })
  );
  RAMB16_S1_S1 #(
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ))
  \drawunit/framebuffer/blueBuffer/Mram_memory2  (
    .CLKA(clk_BUFGP_161),
    .CLKB(vgaClk_1302),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/write_ctrl1_417 ),
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
    .DOA({\NLW_drawunit/framebuffer/blueBuffer/Mram_memory2_DOA<0>_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/N9 })
  );
  RAMB16_S1_S1 #(
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ))
  \drawunit/framebuffer/greenBuffer/Mram_memory1  (
    .CLKA(clk_BUFGP_161),
    .CLKB(vgaClk_1302),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/write_ctrl_416 ),
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
    .DOA({\NLW_drawunit/framebuffer/greenBuffer/Mram_memory1_DOA<0>_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/N16 })
  );
  RAMB16_S1_S1 #(
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ))
  \drawunit/framebuffer/greenBuffer/Mram_memory2  (
    .CLKA(clk_BUFGP_161),
    .CLKB(vgaClk_1302),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/write_ctrl1_417 ),
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
    .DOA({\NLW_drawunit/framebuffer/greenBuffer/Mram_memory2_DOA<0>_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/N18 })
  );
  RAMB16_S1_S1 #(
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ))
  \drawunit/framebuffer/redBuffer/Mram_memory1  (
    .CLKA(clk_BUFGP_161),
    .CLKB(vgaClk_1302),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/write_ctrl_416 ),
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
    .DOA({\NLW_drawunit/framebuffer/redBuffer/Mram_memory1_DOA<0>_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/N25 })
  );
  RAMB16_S1_S1 #(
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ))
  \drawunit/framebuffer/redBuffer/Mram_memory2  (
    .CLKA(clk_BUFGP_161),
    .CLKB(vgaClk_1302),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/write_ctrl1_417 ),
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
    .DOA({\NLW_drawunit/framebuffer/redBuffer/Mram_memory2_DOA<0>_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/N27 })
  );
  RAMB16_S1_S1 #(
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ))
  \drawunit/framebuffer/specialBuffer/Mram_memory2  (
    .CLKA(clk_BUFGP_161),
    .CLKB(vgaClk_1302),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/bufferWeS_348 ),
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
    .DIB({\NLW_drawunit/framebuffer/specialBuffer/Mram_memory2_DIB<0>_UNCONNECTED }),
    .DOA({\NLW_drawunit/framebuffer/specialBuffer/Mram_memory2_DOA<0>_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/S [2]})
  );
  RAMB16_S2_S2 #(
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ))
  \drawunit/framebuffer/specialBuffer/Mram_memory1  (
    .CLKA(clk_BUFGP_161),
    .CLKB(vgaClk_1302),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/framebuffer/bufferWeS_348 ),
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
    .DIB({\NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DIB<1>_UNCONNECTED , 
\NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DIB<0>_UNCONNECTED }),
    .DOA({\NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DOA<1>_UNCONNECTED , 
\NLW_drawunit/framebuffer/specialBuffer/Mram_memory1_DOA<0>_UNCONNECTED }),
    .DOB({\drawunit/framebuffer/S [1], \drawunit/framebuffer/S [0]})
  );
  RAMB16_S36_S36 #(
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ))
  \drawunit/queue/PRAM/Mram_memory  (
    .CLKA(clk_BUFGP_161),
    .CLKB(clk_BUFGP_161),
    .ENA(N1),
    .ENB(N1),
    .SSRA(N0),
    .SSRB(N0),
    .WEA(\drawunit/queue/delayedWe_846 ),
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
    .DIB({\NLW_drawunit/queue/PRAM/Mram_memory_DIB<31>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<30>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB<29>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<28>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB<27>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<26>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB<25>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<24>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB<23>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<22>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB<21>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<20>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB<19>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<18>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB<17>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<16>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB<15>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<14>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB<13>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<12>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB<11>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<10>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB<9>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<8>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB<7>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<6>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB<5>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<4>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB<3>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<2>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIB<1>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIB<0>_UNCONNECTED }),
    .DIPA({N0, N0, N0, N0}),
    .DIPB({\NLW_drawunit/queue/PRAM/Mram_memory_DIPB<3>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIPB<2>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DIPB<1>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DIPB<0>_UNCONNECTED }),
    .DOA({\NLW_drawunit/queue/PRAM/Mram_memory_DOA<31>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<30>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA<29>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<28>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA<27>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<26>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA<25>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<24>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA<23>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<22>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA<21>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<20>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA<19>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<18>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA<17>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<16>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA<15>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<14>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA<13>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<12>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA<11>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<10>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA<9>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<8>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA<7>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<6>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA<5>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<4>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA<3>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<2>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOA<1>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOA<0>_UNCONNECTED }),
    .DOPA({\NLW_drawunit/queue/PRAM/Mram_memory_DOPA<3>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOPA<2>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOPA<1>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOPA<0>_UNCONNECTED }),
    .DOB({\drawunit/queue/dataOut [31], \drawunit/queue/dataOut [30], \drawunit/queue/dataOut [29], \drawunit/queue/dataOut [28], 
\drawunit/queue/dataOut [27], \drawunit/queue/dataOut [26], \drawunit/queue/dataOut [25], \drawunit/queue/dataOut [24], \drawunit/queue/dataOut [23], 
\drawunit/queue/dataOut [22], \drawunit/queue/dataOut [21], \drawunit/queue/dataOut [20], \drawunit/queue/dataOut [19], \drawunit/queue/dataOut [18], 
\drawunit/queue/dataOut [17], \drawunit/queue/dataOut [16], \drawunit/queue/dataOut [15], \drawunit/queue/dataOut [14], \drawunit/queue/dataOut [13], 
\drawunit/queue/dataOut [12], \drawunit/queue/dataOut [11], \drawunit/queue/dataOut [10], \drawunit/queue/dataOut [9], \drawunit/queue/dataOut [8], 
\drawunit/queue/dataOut [7], \drawunit/queue/dataOut [6], \drawunit/queue/dataOut [5], \drawunit/queue/dataOut [4], \drawunit/queue/dataOut [3], 
\drawunit/queue/dataOut [2], \drawunit/queue/dataOut [1], \drawunit/queue/dataOut [0]}),
    .DOPB({\NLW_drawunit/queue/PRAM/Mram_memory_DOPB<3>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOPB<2>_UNCONNECTED , 
\NLW_drawunit/queue/PRAM/Mram_memory_DOPB<1>_UNCONNECTED , \NLW_drawunit/queue/PRAM/Mram_memory_DOPB<0>_UNCONNECTED })
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \drawunit/painter/we_mux00001  (
    .I0(\drawunit/painter/state_FSM_FFd1_685 ),
    .I1(\drawunit/painter/state_FSM_FFd3_690 ),
    .I2(\drawunit/painter/state_FSM_FFd2_688 ),
    .O(\drawunit/painter/we_mux00001_716 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \drawunit/painter/we_mux00002  (
    .I0(\drawunit/painter/state_FSM_FFd1_685 ),
    .I1(\drawunit/painter/newline_672 ),
    .O(\drawunit/painter/we_mux00002_717 )
  );
  MUXF5   \drawunit/painter/we_mux0000_f5  (
    .I0(\drawunit/painter/we_mux00002_717 ),
    .I1(\drawunit/painter/we_mux00001_716 ),
    .S(\drawunit/painter/we_714 ),
    .O(\drawunit/painter/we_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/queue/full2111  (
    .I0(\drawunit/queue/count [1]),
    .I1(\drawunit/queue/count [2]),
    .I2(\drawunit/queue/count [0]),
    .I3(\drawunit/queue/count [7]),
    .O(\drawunit/queue/full2111_851 )
  );
  MUXF5   \drawunit/queue/full211_f5  (
    .I0(N0),
    .I1(\drawunit/queue/full2111_851 ),
    .S(\drawunit/queue/count [8]),
    .O(\drawunit/queue/full211 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \drawunit/painter/line_not00011  (
    .I0(\drawunit/painter/state_cmp_eq0000 ),
    .I1(\drawunit/painter/state_FSM_FFd1_685 ),
    .I2(\drawunit/painter/state_FSM_FFd3_690 ),
    .I3(\drawunit/painter/state_FSM_FFd2_688 ),
    .O(\drawunit/painter/line_not00011_671 )
  );
  MUXF5   \drawunit/painter/line_not0001_f5  (
    .I0(\drawunit/painter/line_not00011_671 ),
    .I1(N0),
    .S(reset_IBUF_1296),
    .O(\drawunit/painter/line_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/vga_controller/hsync_cmp_eq000231  (
    .I0(\drawunit/vga_controller/totalPix [17]),
    .I1(\drawunit/vga_controller/totalPix [12]),
    .I2(\drawunit/vga_controller/totalPix [11]),
    .I3(\drawunit/vga_controller/totalPix [10]),
    .O(\drawunit/vga_controller/hsync_cmp_eq00023 )
  );
  MUXF5   \drawunit/vga_controller/hsync_cmp_eq00023_f5  (
    .I0(N0),
    .I1(\drawunit/vga_controller/hsync_cmp_eq00023 ),
    .S(\drawunit/vga_controller/totalPix [18]),
    .O(\drawunit/vga_controller/N35 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/vga_controller/line_cmp_eq000061  (
    .I0(\drawunit/vga_controller/line [7]),
    .I1(\drawunit/vga_controller/line [6]),
    .I2(\drawunit/vga_controller/line [1]),
    .I3(\drawunit/vga_controller/line [0]),
    .O(\drawunit/vga_controller/line_cmp_eq000061_1116 )
  );
  MUXF5   \drawunit/vga_controller/line_cmp_eq00006_f5  (
    .I0(N0),
    .I1(\drawunit/vga_controller/line_cmp_eq000061_1116 ),
    .S(\drawunit/vga_controller/line [8]),
    .O(\drawunit/vga_controller/line_cmp_eq00006 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \drawunit/vga_controller/hsync_cmp_eq0002211  (
    .I0(\drawunit/vga_controller/totalPix [7]),
    .I1(\drawunit/vga_controller/totalPix [6]),
    .I2(\drawunit/vga_controller/totalPix [5]),
    .I3(\drawunit/vga_controller/totalPix [13]),
    .O(\drawunit/vga_controller/hsync_cmp_eq000221 )
  );
  MUXF5   \drawunit/vga_controller/hsync_cmp_eq000221_f5  (
    .I0(\drawunit/vga_controller/hsync_cmp_eq000221 ),
    .I1(N0),
    .S(\drawunit/vga_controller/totalPix [9]),
    .O(\drawunit/vga_controller/N17 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \drawunit/vga_controller/hsync_cmp_eq00021171  (
    .I0(\drawunit/vga_controller/totalPix [15]),
    .I1(\drawunit/vga_controller/totalPix [16]),
    .I2(\drawunit/vga_controller/totalPix [1]),
    .I3(\drawunit/vga_controller/totalPix [0]),
    .O(\drawunit/vga_controller/hsync_cmp_eq00021171_1091 )
  );
  MUXF5   \drawunit/vga_controller/hsync_cmp_eq0002117_f5  (
    .I0(\drawunit/vga_controller/hsync_cmp_eq00021171_1091 ),
    .I1(N0),
    .S(\drawunit/vga_controller/totalPix [19]),
    .O(\drawunit/vga_controller/hsync_cmp_eq0002117 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \drawunit/painter/swapBuffersCommand_mux00001  (
    .I0(\drawunit/painter/state_FSM_FFd1_685 ),
    .I1(\drawunit/painter/state_FSM_FFd2_688 ),
    .I2(\drawunit/painter/state_FSM_FFd3_690 ),
    .O(\drawunit/painter/swapBuffersCommand_mux00001_712 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \drawunit/painter/swapBuffersCommand_mux00002  (
    .I0(\drawunit/painter/state_FSM_FFd2_688 ),
    .I1(\drawunit/painter/state_cmp_eq0000 ),
    .I2(\drawunit/painter/state_FSM_FFd3_690 ),
    .O(\drawunit/painter/swapBuffersCommand_mux00002_713 )
  );
  MUXF5   \drawunit/painter/swapBuffersCommand_mux0000_f5  (
    .I0(\drawunit/painter/swapBuffersCommand_mux00002_713 ),
    .I1(\drawunit/painter/swapBuffersCommand_mux00001_712 ),
    .S(\drawunit/painter/swapBuffersCommand_710 ),
    .O(\drawunit/painter/swapBuffersCommand_mux0000 )
  );
  LUT3_L #(
    .INIT ( 8'hA8 ))
  \drawunit/vga_controller/totalPix_mux0000<19>1160  (
    .I0(\drawunit/vga_controller/totalPix [18]),
    .I1(\drawunit/vga_controller/totalPix [6]),
    .I2(\drawunit/vga_controller/totalPix [7]),
    .LO(\drawunit/vga_controller/totalPix_mux0000<19>1160_1257 )
  );
  LUT3_D #(
    .INIT ( 8'hFE ))
  \drawunit/vga_controller/totalPix_mux0000<19>1205  (
    .I0(\drawunit/vga_controller/totalPix_mux0000<19>133_1262 ),
    .I1(\drawunit/vga_controller/totalPix_mux0000<19>1110_1255 ),
    .I2(\drawunit/vga_controller/totalPix_mux0000<19>1194_1259 ),
    .LO(N113),
    .O(\drawunit/vga_controller/N11 )
  );
  LUT3_D #(
    .INIT ( 8'hFE ))
  \drawunit/vga_controller/color_cmp_ge000021  (
    .I0(\drawunit/vga_controller/pixCount [4]),
    .I1(\drawunit/vga_controller/pixCount [5]),
    .I2(\drawunit/vga_controller/pixCount [6]),
    .LO(N114),
    .O(\drawunit/vga_controller/N22 )
  );
  LUT4_D #(
    .INIT ( 16'h0001 ))
  \drawunit/vga_controller/offset_cmp_lt0000111  (
    .I0(\drawunit/vga_controller/pixCount [5]),
    .I1(\drawunit/vga_controller/pixCount [6]),
    .I2(\drawunit/vga_controller/pixCount [7]),
    .I3(\drawunit/vga_controller/pixCount [4]),
    .LO(N115),
    .O(\drawunit/vga_controller/color_cmp_lt00001 )
  );
  LUT2_D #(
    .INIT ( 4'h4 ))
  \drawunit/vga_controller/offset_mux0000<0>326  (
    .I0(\drawunit/vga_controller/hsync_cmp_eq0002 ),
    .I1(\drawunit/vga_controller/offset_mux0000<0>319_1143 ),
    .LO(N116),
    .O(\drawunit/vga_controller/N16 )
  );
  LUT2_L #(
    .INIT ( 4'h8 ))
  \drawunit/vga_controller/offset_and000052  (
    .I0(\drawunit/vga_controller/offset_and000012_1138 ),
    .I1(\drawunit/vga_controller/offset_and000044_1140 ),
    .LO(\drawunit/vga_controller/offset_and0000 )
  );
  LUT2_L #(
    .INIT ( 4'h8 ))
  \drawunit/framebuffer/color_cmp_ge0000110  (
    .I0(\drawunit/rdPtr [12]),
    .I1(\drawunit/rdPtr [13]),
    .LO(\drawunit/framebuffer/color_cmp_ge0000110_404 )
  );
  LUT4_L #(
    .INIT ( 16'hD5FF ))
  \drawunit/vga_controller/totalPix_mux0000<19>1194_SW0  (
    .I0(\drawunit/vga_controller/hsync_cmp_eq0002117 ),
    .I1(\drawunit/vga_controller/totalPix_mux0000<19>1170_1258 ),
    .I2(\drawunit/vga_controller/totalPix [14]),
    .I3(\drawunit/vga_controller/hsync_cmp_eq0002132_1092 ),
    .LO(N105)
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

