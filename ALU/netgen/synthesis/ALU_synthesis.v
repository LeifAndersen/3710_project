////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.63c
//  \   \         Application: netgen
//  /   /         Filename: ALU_synthesis.v
// /___/   /\     Timestamp: Tue Sep 20 17:30:54 2011
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ALU.ngc ALU_synthesis.v 
// Device	: xc3s500e-5-fg320
// Input file	: ALU.ngc
// Output file	: \\wannsee\users\u0595680\desktop\3710\3710\ALU\netgen\synthesis\ALU_synthesis.v
// # of Modules	: 1
// Design Name	: ALU
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

module ALUSynth (
  CarryIn, Flag, Carry, Low, Negative, Zero, C, A, B, Opcode
);
  input CarryIn;
  output Flag;
  output Carry;
  output Low;
  output Negative;
  output Zero;
  output [15 : 0] C;
  input [15 : 0] A;
  input [15 : 0] B;
  input [7 : 0] Opcode;
  wire A_0_IBUF_32;
  wire A_10_IBUF_33;
  wire A_11_IBUF_34;
  wire A_12_IBUF_35;
  wire A_13_IBUF_36;
  wire A_14_IBUF_37;
  wire A_15_IBUF_38;
  wire A_1_IBUF_39;
  wire A_2_IBUF_40;
  wire A_3_IBUF_41;
  wire A_4_IBUF_42;
  wire A_5_IBUF_43;
  wire A_6_IBUF_44;
  wire A_7_IBUF_45;
  wire A_8_IBUF_46;
  wire A_9_IBUF_47;
  wire B_0_IBUF_64;
  wire B_10_IBUF_65;
  wire B_11_IBUF_66;
  wire B_12_IBUF_67;
  wire B_13_IBUF_68;
  wire B_14_IBUF_69;
  wire B_15_IBUF_70;
  wire B_1_IBUF_71;
  wire B_2_IBUF_72;
  wire B_3_IBUF_73;
  wire B_4_IBUF_74;
  wire B_5_IBUF_75;
  wire B_6_IBUF_76;
  wire B_7_IBUF_77;
  wire B_8_IBUF_78;
  wire B_9_IBUF_79;
  wire \C<0>18_81 ;
  wire \C<0>20_82 ;
  wire \C<0>44_83 ;
  wire \C<0>56_84 ;
  wire \C<0>62_85 ;
  wire \C<0>73_86 ;
  wire \C<0>78_87 ;
  wire \C<10>19 ;
  wire \C<10>191_90 ;
  wire \C<10>192_91 ;
  wire \C<10>36_92 ;
  wire \C<10>4_93 ;
  wire \C<10>59_94 ;
  wire \C<10>66_95 ;
  wire \C<10>90_96 ;
  wire \C<11>10_98 ;
  wire \C<11>115_99 ;
  wire \C<11>48_100 ;
  wire \C<11>61_101 ;
  wire \C<11>87_102 ;
  wire \C<11>96_103 ;
  wire \C<12>10_105 ;
  wire \C<12>104_106 ;
  wire \C<12>123_107 ;
  wire \C<12>18_108 ;
  wire \C<12>55_109 ;
  wire \C<12>68_110 ;
  wire \C<12>95_111 ;
  wire \C<12>96_112 ;
  wire \C<13>10_114 ;
  wire \C<13>103_115 ;
  wire \C<13>122_116 ;
  wire \C<13>47_117 ;
  wire \C<13>60_118 ;
  wire \C<13>66_119 ;
  wire \C<13>94_120 ;
  wire \C<14>10_122 ;
  wire \C<14>102_123 ;
  wire \C<14>114_124 ;
  wire \C<14>133_125 ;
  wire \C<14>21_126 ;
  wire \C<14>6_127 ;
  wire \C<14>68_128 ;
  wire \C<15>1_130 ;
  wire \C<15>1116_131 ;
  wire \C<15>1120_132 ;
  wire \C<15>1129_133 ;
  wire \C<15>13_134 ;
  wire \C<15>26_135 ;
  wire \C<15>33_136 ;
  wire \C<15>48_137 ;
  wire \C<15>7_138 ;
  wire \C<1>129_140 ;
  wire \C<1>15_141 ;
  wire \C<1>4_142 ;
  wire \C<1>53_143 ;
  wire \C<1>72_144 ;
  wire \C<1>98_145 ;
  wire \C<2>10_147 ;
  wire \C<2>105_148 ;
  wire \C<2>108_149 ;
  wire \C<2>127_150 ;
  wire \C<2>47_151 ;
  wire \C<2>79_152 ;
  wire \C<2>83_153 ;
  wire \C<3>1_155 ;
  wire \C<3>13_156 ;
  wire \C<3>18_157 ;
  wire \C<3>21_158 ;
  wire \C<3>44_159 ;
  wire \C<3>55_160 ;
  wire \C<3>79_161 ;
  wire \C<3>90_162 ;
  wire \C<3>95_163 ;
  wire \C<4>10_165 ;
  wire \C<4>18_166 ;
  wire \C<4>37_167 ;
  wire \C<4>68_168 ;
  wire \C<4>70_169 ;
  wire \C<5>10_171 ;
  wire \C<5>112_172 ;
  wire \C<5>47_173 ;
  wire \C<5>60_174 ;
  wire \C<5>74_175 ;
  wire \C<6>10_177 ;
  wire \C<6>112_178 ;
  wire \C<6>47_179 ;
  wire \C<6>60_180 ;
  wire \C<6>74_181 ;
  wire \C<7>10_183 ;
  wire \C<7>112_184 ;
  wire \C<7>47_185 ;
  wire \C<7>60_186 ;
  wire \C<7>74_187 ;
  wire \C<8>19_189 ;
  wire \C<8>33_190 ;
  wire \C<8>46_191 ;
  wire \C<8>52_192 ;
  wire \C<8>57_193 ;
  wire \C<8>77_194 ;
  wire \C<9>10_196 ;
  wire \C<9>11_197 ;
  wire \C<9>115_198 ;
  wire \C<9>47_199 ;
  wire \C<9>60_200 ;
  wire \C<9>87_201 ;
  wire C_0_OBUF_202;
  wire C_10_OBUF_203;
  wire C_11_OBUF_204;
  wire C_12_OBUF_205;
  wire C_13_OBUF_206;
  wire C_14_OBUF_207;
  wire C_15_OBUF_208;
  wire C_1_OBUF_209;
  wire C_2_OBUF_210;
  wire C_3_OBUF_211;
  wire C_4_OBUF_212;
  wire C_5_OBUF_213;
  wire C_6_OBUF_214;
  wire C_7_OBUF_215;
  wire C_8_OBUF_216;
  wire C_9_OBUF_217;
  wire C_and0000;
  wire C_cmp_eq0013;
  wire C_cmp_eq0014;
  wire C_cmp_eq0015;
  wire C_cmp_eq00151;
  wire C_cmp_eq0021;
  wire C_or0000;
  wire C_or0001;
  wire C_or0003;
  wire C_or0004;
  wire CarryIn_IBUF_230;
  wire Carry_OBUF_231;
  wire Flag26_249;
  wire Flag54_250;
  wire Flag_OBUF_251;
  wire Low46_253;
  wire Low_OBUF_254;
  wire Madd_AUX_3_index0000;
  wire \Madd_D_cy<0>_rt_288 ;
  wire \Madd_D_not0000[10] ;
  wire \Madd_D_not0000[11] ;
  wire \Madd_D_not0000[12] ;
  wire \Madd_D_not0000[13] ;
  wire \Madd_D_not0000[14] ;
  wire \Madd_D_not0000[15] ;
  wire \Madd_D_not0000[1] ;
  wire \Madd_D_not0000[2] ;
  wire \Madd_D_not0000<3>1 ;
  wire \Madd_D_not0000[4] ;
  wire \Madd_D_not0000[5] ;
  wire \Madd_D_not0000[6] ;
  wire \Madd_D_not0000[7] ;
  wire \Madd_D_not0000[8] ;
  wire \Madd_D_not0000[9] ;
  wire \Madd__AUX_5_cy<10>_rt_320 ;
  wire \Madd__AUX_5_cy<11>_rt_322 ;
  wire \Madd__AUX_5_cy<12>_rt_324 ;
  wire \Madd__AUX_5_cy<13>_rt_326 ;
  wire \Madd__AUX_5_cy<14>_rt_328 ;
  wire \Madd__AUX_5_cy<15>_rt_330 ;
  wire \Madd__AUX_5_cy<1>_rt_332 ;
  wire \Madd__AUX_5_cy<2>_rt_334 ;
  wire \Madd__AUX_5_cy<3>_rt_336 ;
  wire \Madd__AUX_5_cy<4>_rt_338 ;
  wire \Madd__AUX_5_cy<5>_rt_340 ;
  wire \Madd__AUX_5_cy<6>_rt_342 ;
  wire \Madd__AUX_5_cy<7>_rt_344 ;
  wire \Madd__AUX_5_cy<8>_rt_346 ;
  wire \Madd__AUX_5_cy<9>_rt_348 ;
  wire \Madd__AUX_5_xor<16>_rt_350 ;
  wire \Madd__old_C_1_lut<0>1_367 ;
  wire \Madd__old_C_1_lut<4>1_378 ;
  wire \Madd__old_C_1_lut<8>1_383 ;
  wire N0;
  wire N1;
  wire N114;
  wire N118;
  wire N120;
  wire N141;
  wire N142;
  wire N158;
  wire N159;
  wire N161;
  wire N162;
  wire N165;
  wire N168;
  wire N171;
  wire N174;
  wire N185;
  wire N191;
  wire N194;
  wire N200;
  wire N203;
  wire N227;
  wire N23;
  wire N233;
  wire N235;
  wire N237;
  wire N239;
  wire N24;
  wire N241;
  wire N243;
  wire N245;
  wire N247;
  wire N251;
  wire N253;
  wire N255;
  wire N257;
  wire N259;
  wire N26;
  wire N261;
  wire N263;
  wire N265;
  wire N267;
  wire N269;
  wire N271;
  wire N275;
  wire N277;
  wire N279;
  wire N281;
  wire N283;
  wire N285;
  wire N287;
  wire N289;
  wire N293;
  wire N295;
  wire N297;
  wire N299;
  wire N301;
  wire N303;
  wire N305;
  wire N307;
  wire N309;
  wire N311;
  wire N313;
  wire N315;
  wire N317;
  wire N319;
  wire N321;
  wire N323;
  wire N325;
  wire N329;
  wire N330;
  wire N331;
  wire N332;
  wire N333;
  wire N334;
  wire N335;
  wire N336;
  wire N337;
  wire N338;
  wire N339;
  wire N340;
  wire N341;
  wire N342;
  wire N343;
  wire N344;
  wire N345;
  wire N346;
  wire N347;
  wire N348;
  wire N349;
  wire N350;
  wire N351;
  wire N352;
  wire N353;
  wire N354;
  wire N355;
  wire N356;
  wire N357;
  wire N358;
  wire N359;
  wire N360;
  wire N361;
  wire N362;
  wire N363;
  wire N364;
  wire N365;
  wire N366;
  wire N37;
  wire N38;
  wire N43;
  wire N50;
  wire N51;
  wire N52;
  wire N54;
  wire N55;
  wire N56;
  wire N57;
  wire N58;
  wire N60;
  wire N63;
  wire N64;
  wire N65;
  wire Negative13;
  wire Negative131_619;
  wire Negative132;
  wire Negative_OBUF_621;
  wire Opcode_0_IBUF_630;
  wire Opcode_1_IBUF_631;
  wire Opcode_2_IBUF_632;
  wire Opcode_3_IBUF_633;
  wire Opcode_4_IBUF_634;
  wire Opcode_5_IBUF_635;
  wire Opcode_6_IBUF_636;
  wire Opcode_7_IBUF_637;
  wire Sh1;
  wire Sh10;
  wire Sh101_640;
  wire Sh102_641;
  wire Sh11;
  wire Sh111_643;
  wire Sh112_644;
  wire Sh2;
  wire Sh20;
  wire Sh201;
  wire Sh2011_648;
  wire Sh21_649;
  wire Sh210;
  wire Sh211_651;
  wire Sh22_652;
  wire Sh23;
  wire Sh24_654;
  wire Sh25_655;
  wire Sh26_656;
  wire Sh27_657;
  wire Sh28;
  wire Sh281;
  wire Sh2826_660;
  wire Sh2841_661;
  wire Sh29;
  wire Sh2926_663;
  wire Sh2941_664;
  wire Sh3;
  wire Sh30;
  wire Sh3026_667;
  wire Sh3041_668;
  wire Sh31_669;
  wire Sh3126_670;
  wire Sh3141_671;
  wire Sh32_672;
  wire Sh33;
  wire Sh37;
  wire Sh371_675;
  wire Sh372_676;
  wire Sh38_677;
  wire Sh39_678;
  wire Sh4_679;
  wire Sh40_680;
  wire Sh41_681;
  wire Sh42_682;
  wire Sh43_683;
  wire Sh44;
  wire Sh441_685;
  wire Sh442_686;
  wire Sh45;
  wire Sh46;
  wire Sh47;
  wire Sh48;
  wire Sh48113_691;
  wire Sh48128_692;
  wire Sh48146_693;
  wire Sh4829_694;
  wire Sh49;
  wire Sh49119_696;
  wire Sh49134_697;
  wire Sh5_698;
  wire Sh50;
  wire Sh50114;
  wire Sh50153;
  wire Sh501531_702;
  wire Sh501532_703;
  wire Sh51;
  wire Sh51153;
  wire Sh511531_706;
  wire Sh511532_707;
  wire Sh52;
  wire Sh521;
  wire Sh5211_710;
  wire Sh53_711;
  wire Sh54_712;
  wire Sh55_713;
  wire Sh56;
  wire Sh57;
  wire Sh58;
  wire Sh59;
  wire Sh6_718;
  wire Sh7_719;
  wire Sh77;
  wire Sh78;
  wire Sh8_722;
  wire Sh81;
  wire Sh82;
  wire Sh84_725;
  wire Sh85_726;
  wire Sh86_727;
  wire Sh87;
  wire Sh871_729;
  wire Sh872_730;
  wire Sh88;
  wire Sh881_732;
  wire Sh882_733;
  wire Sh89;
  wire Sh891_735;
  wire Sh892_736;
  wire Sh9_737;
  wire Sh90;
  wire Sh901_739;
  wire Sh902_740;
  wire Sh91;
  wire Sh92;
  wire Sh93;
  wire Sh94;
  wire Zero1017_746;
  wire Zero1034_747;
  wire Zero1055_748;
  wire Zero1080_749;
  wire Zero109_750;
  wire Zero1094_751;
  wire Zero1118_752;
  wire Zero1146_753;
  wire Zero115_754;
  wire Zero1172_755;
  wire Zero1232_756;
  wire Zero1251_757;
  wire Zero1282_758;
  wire Zero1286_759;
  wire Zero130_760;
  wire Zero1330_761;
  wire Zero1357_762;
  wire Zero1379_763;
  wire Zero1380_764;
  wire Zero1391_765;
  wire Zero143_766;
  wire Zero1443_767;
  wire Zero1489_768;
  wire Zero1500_769;
  wire Zero1522_770;
  wire Zero1559;
  wire Zero15591_772;
  wire Zero1570_773;
  wire Zero1601;
  wire Zero16011_775;
  wire Zero1621;
  wire Zero16211_777;
  wire Zero1641_778;
  wire Zero167_779;
  wire Zero180_780;
  wire Zero194_781;
  wire Zero21_782;
  wire Zero220_783;
  wire Zero26_784;
  wire Zero262_785;
  wire Zero303_786;
  wire Zero332_787;
  wire Zero337_788;
  wire Zero36_789;
  wire Zero399_790;
  wire Zero4_791;
  wire Zero432_792;
  wire Zero479_793;
  wire Zero530_794;
  wire Zero541_795;
  wire Zero572_796;
  wire Zero599_797;
  wire Zero612_798;
  wire Zero648_799;
  wire Zero661_800;
  wire Zero68_801;
  wire Zero685_802;
  wire Zero698_803;
  wire Zero712_804;
  wire Zero744_805;
  wire Zero764_806;
  wire Zero787_807;
  wire Zero81_808;
  wire Zero810_809;
  wire Zero841_810;
  wire Zero853_811;
  wire Zero887;
  wire Zero8871_813;
  wire Zero9_814;
  wire Zero928_815;
  wire Zero944_816;
  wire Zero971_817;
  wire Zero_OBUF_818;
  wire old_C_11_or0000;
  wire old_C_11_or000014_869;
  wire old_C_11_or00004_870;
  wire old_C_11_or00009_871;
  wire [15 : 0] AUX_3_addsub0000;
  wire [15 : 0] D;
  wire [14 : 0] Madd_AUX_3_addsub0000_cy;
  wire [15 : 0] Madd_AUX_3_addsub0000_lut;
  wire [14 : 0] Madd_D_cy;
  wire [15 : 0] Madd__AUX_5_cy;
  wire [0 : 0] Madd__AUX_5_lut;
  wire [14 : 0] Madd__old_C_1_cy;
  wire [15 : 0] Madd__old_C_1_lut;
  wire [14 : 0] Madd__old_C_6_cy;
  wire [15 : 0] Madd__old_C_6_lut;
  wire [15 : 0] Mcompar_Low_cmp_lt0000_cy;
  wire [15 : 0] Mcompar_Low_cmp_lt0000_lut;
  wire [15 : 0] Mcompar_Low_cmp_lt0001_cy;
  wire [15 : 0] Mcompar_Low_cmp_lt0001_lut;
  wire [7 : 0] Mcompar_Zero_cmp_eq0009_cy;
  wire [7 : 0] Mcompar_Zero_cmp_eq0009_lut;
  wire [16 : 0] _AUX_5;
  wire [15 : 0] _old_C_1;
  wire [15 : 0] _old_C_6;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<0>  (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .O(Madd__old_C_1_lut[0])
  );
  MUXCY   \Madd__old_C_1_cy<0>  (
    .CI(N0),
    .DI(A_0_IBUF_32),
    .S(\Madd__old_C_1_lut<0>1_367 ),
    .O(Madd__old_C_1_cy[0])
  );
  XORCY   \Madd__old_C_1_xor<0>  (
    .CI(N0),
    .LI(\Madd__old_C_1_lut<0>1_367 ),
    .O(_old_C_1[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<1>  (
    .I0(A_1_IBUF_39),
    .I1(B_1_IBUF_71),
    .O(Madd__old_C_1_lut[1])
  );
  MUXCY   \Madd__old_C_1_cy<1>  (
    .CI(Madd__old_C_1_cy[0]),
    .DI(A_1_IBUF_39),
    .S(Madd__old_C_1_lut[1]),
    .O(Madd__old_C_1_cy[1])
  );
  XORCY   \Madd__old_C_1_xor<1>  (
    .CI(Madd__old_C_1_cy[0]),
    .LI(Madd__old_C_1_lut[1]),
    .O(_old_C_1[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<2>  (
    .I0(A_2_IBUF_40),
    .I1(B_2_IBUF_72),
    .O(Madd__old_C_1_lut[2])
  );
  MUXCY   \Madd__old_C_1_cy<2>  (
    .CI(Madd__old_C_1_cy[1]),
    .DI(A_2_IBUF_40),
    .S(Madd__old_C_1_lut[2]),
    .O(Madd__old_C_1_cy[2])
  );
  XORCY   \Madd__old_C_1_xor<2>  (
    .CI(Madd__old_C_1_cy[1]),
    .LI(Madd__old_C_1_lut[2]),
    .O(_old_C_1[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<3>  (
    .I0(A_3_IBUF_41),
    .I1(B_3_IBUF_73),
    .O(Madd__old_C_1_lut[3])
  );
  MUXCY   \Madd__old_C_1_cy<3>  (
    .CI(Madd__old_C_1_cy[2]),
    .DI(A_3_IBUF_41),
    .S(Madd__old_C_1_lut[3]),
    .O(Madd__old_C_1_cy[3])
  );
  XORCY   \Madd__old_C_1_xor<3>  (
    .CI(Madd__old_C_1_cy[2]),
    .LI(Madd__old_C_1_lut[3]),
    .O(_old_C_1[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<4>  (
    .I0(A_4_IBUF_42),
    .I1(B_4_IBUF_74),
    .O(Madd__old_C_1_lut[4])
  );
  MUXCY   \Madd__old_C_1_cy<4>  (
    .CI(Madd__old_C_1_cy[3]),
    .DI(A_4_IBUF_42),
    .S(\Madd__old_C_1_lut<4>1_378 ),
    .O(Madd__old_C_1_cy[4])
  );
  XORCY   \Madd__old_C_1_xor<4>  (
    .CI(Madd__old_C_1_cy[3]),
    .LI(\Madd__old_C_1_lut<4>1_378 ),
    .O(_old_C_1[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<5>  (
    .I0(A_5_IBUF_43),
    .I1(B_5_IBUF_75),
    .O(Madd__old_C_1_lut[5])
  );
  MUXCY   \Madd__old_C_1_cy<5>  (
    .CI(Madd__old_C_1_cy[4]),
    .DI(A_5_IBUF_43),
    .S(Madd__old_C_1_lut[5]),
    .O(Madd__old_C_1_cy[5])
  );
  XORCY   \Madd__old_C_1_xor<5>  (
    .CI(Madd__old_C_1_cy[4]),
    .LI(Madd__old_C_1_lut[5]),
    .O(_old_C_1[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<6>  (
    .I0(A_6_IBUF_44),
    .I1(B_6_IBUF_76),
    .O(Madd__old_C_1_lut[6])
  );
  MUXCY   \Madd__old_C_1_cy<6>  (
    .CI(Madd__old_C_1_cy[5]),
    .DI(A_6_IBUF_44),
    .S(Madd__old_C_1_lut[6]),
    .O(Madd__old_C_1_cy[6])
  );
  XORCY   \Madd__old_C_1_xor<6>  (
    .CI(Madd__old_C_1_cy[5]),
    .LI(Madd__old_C_1_lut[6]),
    .O(_old_C_1[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<7>  (
    .I0(A_7_IBUF_45),
    .I1(B_7_IBUF_77),
    .O(Madd__old_C_1_lut[7])
  );
  MUXCY   \Madd__old_C_1_cy<7>  (
    .CI(Madd__old_C_1_cy[6]),
    .DI(A_7_IBUF_45),
    .S(Madd__old_C_1_lut[7]),
    .O(Madd__old_C_1_cy[7])
  );
  XORCY   \Madd__old_C_1_xor<7>  (
    .CI(Madd__old_C_1_cy[6]),
    .LI(Madd__old_C_1_lut[7]),
    .O(_old_C_1[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<8>  (
    .I0(A_8_IBUF_46),
    .I1(B_8_IBUF_78),
    .O(Madd__old_C_1_lut[8])
  );
  MUXCY   \Madd__old_C_1_cy<8>  (
    .CI(Madd__old_C_1_cy[7]),
    .DI(A_8_IBUF_46),
    .S(\Madd__old_C_1_lut<8>1_383 ),
    .O(Madd__old_C_1_cy[8])
  );
  XORCY   \Madd__old_C_1_xor<8>  (
    .CI(Madd__old_C_1_cy[7]),
    .LI(\Madd__old_C_1_lut<8>1_383 ),
    .O(_old_C_1[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<9>  (
    .I0(A_9_IBUF_47),
    .I1(B_9_IBUF_79),
    .O(Madd__old_C_1_lut[9])
  );
  MUXCY   \Madd__old_C_1_cy<9>  (
    .CI(Madd__old_C_1_cy[8]),
    .DI(A_9_IBUF_47),
    .S(Madd__old_C_1_lut[9]),
    .O(Madd__old_C_1_cy[9])
  );
  XORCY   \Madd__old_C_1_xor<9>  (
    .CI(Madd__old_C_1_cy[8]),
    .LI(Madd__old_C_1_lut[9]),
    .O(_old_C_1[9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<10>  (
    .I0(A_10_IBUF_33),
    .I1(B_10_IBUF_65),
    .O(Madd__old_C_1_lut[10])
  );
  MUXCY   \Madd__old_C_1_cy<10>  (
    .CI(Madd__old_C_1_cy[9]),
    .DI(A_10_IBUF_33),
    .S(Madd__old_C_1_lut[10]),
    .O(Madd__old_C_1_cy[10])
  );
  XORCY   \Madd__old_C_1_xor<10>  (
    .CI(Madd__old_C_1_cy[9]),
    .LI(Madd__old_C_1_lut[10]),
    .O(_old_C_1[10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<11>  (
    .I0(A_11_IBUF_34),
    .I1(B_11_IBUF_66),
    .O(Madd__old_C_1_lut[11])
  );
  MUXCY   \Madd__old_C_1_cy<11>  (
    .CI(Madd__old_C_1_cy[10]),
    .DI(A_11_IBUF_34),
    .S(Madd__old_C_1_lut[11]),
    .O(Madd__old_C_1_cy[11])
  );
  XORCY   \Madd__old_C_1_xor<11>  (
    .CI(Madd__old_C_1_cy[10]),
    .LI(Madd__old_C_1_lut[11]),
    .O(_old_C_1[11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<12>  (
    .I0(A_12_IBUF_35),
    .I1(B_12_IBUF_67),
    .O(Madd__old_C_1_lut[12])
  );
  MUXCY   \Madd__old_C_1_cy<12>  (
    .CI(Madd__old_C_1_cy[11]),
    .DI(A_12_IBUF_35),
    .S(Madd__old_C_1_lut[12]),
    .O(Madd__old_C_1_cy[12])
  );
  XORCY   \Madd__old_C_1_xor<12>  (
    .CI(Madd__old_C_1_cy[11]),
    .LI(Madd__old_C_1_lut[12]),
    .O(_old_C_1[12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<13>  (
    .I0(A_13_IBUF_36),
    .I1(B_13_IBUF_68),
    .O(Madd__old_C_1_lut[13])
  );
  MUXCY   \Madd__old_C_1_cy<13>  (
    .CI(Madd__old_C_1_cy[12]),
    .DI(A_13_IBUF_36),
    .S(Madd__old_C_1_lut[13]),
    .O(Madd__old_C_1_cy[13])
  );
  XORCY   \Madd__old_C_1_xor<13>  (
    .CI(Madd__old_C_1_cy[12]),
    .LI(Madd__old_C_1_lut[13]),
    .O(_old_C_1[13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<14>  (
    .I0(A_14_IBUF_37),
    .I1(B_14_IBUF_69),
    .O(Madd__old_C_1_lut[14])
  );
  MUXCY   \Madd__old_C_1_cy<14>  (
    .CI(Madd__old_C_1_cy[13]),
    .DI(A_14_IBUF_37),
    .S(Madd__old_C_1_lut[14]),
    .O(Madd__old_C_1_cy[14])
  );
  XORCY   \Madd__old_C_1_xor<14>  (
    .CI(Madd__old_C_1_cy[13]),
    .LI(Madd__old_C_1_lut[14]),
    .O(_old_C_1[14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<15>  (
    .I0(A_15_IBUF_38),
    .I1(B_15_IBUF_70),
    .O(Madd__old_C_1_lut[15])
  );
  XORCY   \Madd__old_C_1_xor<15>  (
    .CI(Madd__old_C_1_cy[14]),
    .LI(Madd__old_C_1_lut[15]),
    .O(_old_C_1[15])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<0>  (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .O(Mcompar_Low_cmp_lt0000_lut[0])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<0>  (
    .CI(N1),
    .DI(A_0_IBUF_32),
    .S(Mcompar_Low_cmp_lt0000_lut[0]),
    .O(Mcompar_Low_cmp_lt0000_cy[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<1>  (
    .I0(A_1_IBUF_39),
    .I1(B_1_IBUF_71),
    .O(Mcompar_Low_cmp_lt0000_lut[1])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<1>  (
    .CI(Mcompar_Low_cmp_lt0000_cy[0]),
    .DI(A_1_IBUF_39),
    .S(Mcompar_Low_cmp_lt0000_lut[1]),
    .O(Mcompar_Low_cmp_lt0000_cy[1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<2>  (
    .I0(A_2_IBUF_40),
    .I1(B_2_IBUF_72),
    .O(Mcompar_Low_cmp_lt0000_lut[2])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<2>  (
    .CI(Mcompar_Low_cmp_lt0000_cy[1]),
    .DI(A_2_IBUF_40),
    .S(Mcompar_Low_cmp_lt0000_lut[2]),
    .O(Mcompar_Low_cmp_lt0000_cy[2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<3>  (
    .I0(A_3_IBUF_41),
    .I1(B_3_IBUF_73),
    .O(Mcompar_Low_cmp_lt0000_lut[3])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<3>  (
    .CI(Mcompar_Low_cmp_lt0000_cy[2]),
    .DI(A_3_IBUF_41),
    .S(Mcompar_Low_cmp_lt0000_lut[3]),
    .O(Mcompar_Low_cmp_lt0000_cy[3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<4>  (
    .I0(A_4_IBUF_42),
    .I1(B_4_IBUF_74),
    .O(Mcompar_Low_cmp_lt0000_lut[4])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<4>  (
    .CI(Mcompar_Low_cmp_lt0000_cy[3]),
    .DI(A_4_IBUF_42),
    .S(Mcompar_Low_cmp_lt0000_lut[4]),
    .O(Mcompar_Low_cmp_lt0000_cy[4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<5>  (
    .I0(A_5_IBUF_43),
    .I1(B_5_IBUF_75),
    .O(Mcompar_Low_cmp_lt0000_lut[5])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<5>  (
    .CI(Mcompar_Low_cmp_lt0000_cy[4]),
    .DI(A_5_IBUF_43),
    .S(Mcompar_Low_cmp_lt0000_lut[5]),
    .O(Mcompar_Low_cmp_lt0000_cy[5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<6>  (
    .I0(A_6_IBUF_44),
    .I1(B_6_IBUF_76),
    .O(Mcompar_Low_cmp_lt0000_lut[6])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<6>  (
    .CI(Mcompar_Low_cmp_lt0000_cy[5]),
    .DI(A_6_IBUF_44),
    .S(Mcompar_Low_cmp_lt0000_lut[6]),
    .O(Mcompar_Low_cmp_lt0000_cy[6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<7>  (
    .I0(A_7_IBUF_45),
    .I1(B_7_IBUF_77),
    .O(Mcompar_Low_cmp_lt0000_lut[7])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<7>  (
    .CI(Mcompar_Low_cmp_lt0000_cy[6]),
    .DI(A_7_IBUF_45),
    .S(Mcompar_Low_cmp_lt0000_lut[7]),
    .O(Mcompar_Low_cmp_lt0000_cy[7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<8>  (
    .I0(A_8_IBUF_46),
    .I1(B_8_IBUF_78),
    .O(Mcompar_Low_cmp_lt0000_lut[8])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<8>  (
    .CI(Mcompar_Low_cmp_lt0000_cy[7]),
    .DI(A_8_IBUF_46),
    .S(Mcompar_Low_cmp_lt0000_lut[8]),
    .O(Mcompar_Low_cmp_lt0000_cy[8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<9>  (
    .I0(A_9_IBUF_47),
    .I1(B_9_IBUF_79),
    .O(Mcompar_Low_cmp_lt0000_lut[9])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<9>  (
    .CI(Mcompar_Low_cmp_lt0000_cy[8]),
    .DI(A_9_IBUF_47),
    .S(Mcompar_Low_cmp_lt0000_lut[9]),
    .O(Mcompar_Low_cmp_lt0000_cy[9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<10>  (
    .I0(A_10_IBUF_33),
    .I1(B_10_IBUF_65),
    .O(Mcompar_Low_cmp_lt0000_lut[10])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<10>  (
    .CI(Mcompar_Low_cmp_lt0000_cy[9]),
    .DI(A_10_IBUF_33),
    .S(Mcompar_Low_cmp_lt0000_lut[10]),
    .O(Mcompar_Low_cmp_lt0000_cy[10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<11>  (
    .I0(A_11_IBUF_34),
    .I1(B_11_IBUF_66),
    .O(Mcompar_Low_cmp_lt0000_lut[11])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<11>  (
    .CI(Mcompar_Low_cmp_lt0000_cy[10]),
    .DI(A_11_IBUF_34),
    .S(Mcompar_Low_cmp_lt0000_lut[11]),
    .O(Mcompar_Low_cmp_lt0000_cy[11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<12>  (
    .I0(A_12_IBUF_35),
    .I1(B_12_IBUF_67),
    .O(Mcompar_Low_cmp_lt0000_lut[12])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<12>  (
    .CI(Mcompar_Low_cmp_lt0000_cy[11]),
    .DI(A_12_IBUF_35),
    .S(Mcompar_Low_cmp_lt0000_lut[12]),
    .O(Mcompar_Low_cmp_lt0000_cy[12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<13>  (
    .I0(A_13_IBUF_36),
    .I1(B_13_IBUF_68),
    .O(Mcompar_Low_cmp_lt0000_lut[13])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<13>  (
    .CI(Mcompar_Low_cmp_lt0000_cy[12]),
    .DI(A_13_IBUF_36),
    .S(Mcompar_Low_cmp_lt0000_lut[13]),
    .O(Mcompar_Low_cmp_lt0000_cy[13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<14>  (
    .I0(A_14_IBUF_37),
    .I1(B_14_IBUF_69),
    .O(Mcompar_Low_cmp_lt0000_lut[14])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<14>  (
    .CI(Mcompar_Low_cmp_lt0000_cy[13]),
    .DI(A_14_IBUF_37),
    .S(Mcompar_Low_cmp_lt0000_lut[14]),
    .O(Mcompar_Low_cmp_lt0000_cy[14])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0000_lut<15>  (
    .I0(A_15_IBUF_38),
    .I1(B_15_IBUF_70),
    .O(Mcompar_Low_cmp_lt0000_lut[15])
  );
  MUXCY   \Mcompar_Low_cmp_lt0000_cy<15>  (
    .CI(Mcompar_Low_cmp_lt0000_cy[14]),
    .DI(B_15_IBUF_70),
    .S(Mcompar_Low_cmp_lt0000_lut[15]),
    .O(Mcompar_Low_cmp_lt0000_cy[15])
  );
  MUXCY   \Madd_D_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\Madd_D_cy<0>_rt_288 ),
    .O(Madd_D_cy[0])
  );
  XORCY   \Madd_D_xor<0>  (
    .CI(N0),
    .LI(\Madd_D_cy<0>_rt_288 ),
    .O(D[0])
  );
  MUXCY   \Madd_D_cy<1>  (
    .CI(Madd_D_cy[0]),
    .DI(N0),
    .S(\Madd_D_not0000[1] ),
    .O(Madd_D_cy[1])
  );
  XORCY   \Madd_D_xor<1>  (
    .CI(Madd_D_cy[0]),
    .LI(\Madd_D_not0000[1] ),
    .O(D[1])
  );
  MUXCY   \Madd_D_cy<2>  (
    .CI(Madd_D_cy[1]),
    .DI(N0),
    .S(\Madd_D_not0000[2] ),
    .O(Madd_D_cy[2])
  );
  XORCY   \Madd_D_xor<2>  (
    .CI(Madd_D_cy[1]),
    .LI(\Madd_D_not0000[2] ),
    .O(D[2])
  );
  MUXCY   \Madd_D_cy<3>  (
    .CI(Madd_D_cy[2]),
    .DI(N0),
    .S(\Madd_D_not0000<3>1 ),
    .O(Madd_D_cy[3])
  );
  XORCY   \Madd_D_xor<3>  (
    .CI(Madd_D_cy[2]),
    .LI(\Madd_D_not0000<3>1 ),
    .O(D[3])
  );
  MUXCY   \Madd_D_cy<4>  (
    .CI(Madd_D_cy[3]),
    .DI(N0),
    .S(\Madd_D_not0000[4] ),
    .O(Madd_D_cy[4])
  );
  XORCY   \Madd_D_xor<4>  (
    .CI(Madd_D_cy[3]),
    .LI(\Madd_D_not0000[4] ),
    .O(D[4])
  );
  MUXCY   \Madd_D_cy<5>  (
    .CI(Madd_D_cy[4]),
    .DI(N0),
    .S(\Madd_D_not0000[5] ),
    .O(Madd_D_cy[5])
  );
  XORCY   \Madd_D_xor<5>  (
    .CI(Madd_D_cy[4]),
    .LI(\Madd_D_not0000[5] ),
    .O(D[5])
  );
  MUXCY   \Madd_D_cy<6>  (
    .CI(Madd_D_cy[5]),
    .DI(N0),
    .S(\Madd_D_not0000[6] ),
    .O(Madd_D_cy[6])
  );
  XORCY   \Madd_D_xor<6>  (
    .CI(Madd_D_cy[5]),
    .LI(\Madd_D_not0000[6] ),
    .O(D[6])
  );
  MUXCY   \Madd_D_cy<7>  (
    .CI(Madd_D_cy[6]),
    .DI(N0),
    .S(\Madd_D_not0000[7] ),
    .O(Madd_D_cy[7])
  );
  XORCY   \Madd_D_xor<7>  (
    .CI(Madd_D_cy[6]),
    .LI(\Madd_D_not0000[7] ),
    .O(D[7])
  );
  MUXCY   \Madd_D_cy<8>  (
    .CI(Madd_D_cy[7]),
    .DI(N0),
    .S(\Madd_D_not0000[8] ),
    .O(Madd_D_cy[8])
  );
  XORCY   \Madd_D_xor<8>  (
    .CI(Madd_D_cy[7]),
    .LI(\Madd_D_not0000[8] ),
    .O(D[8])
  );
  MUXCY   \Madd_D_cy<9>  (
    .CI(Madd_D_cy[8]),
    .DI(N0),
    .S(\Madd_D_not0000[9] ),
    .O(Madd_D_cy[9])
  );
  XORCY   \Madd_D_xor<9>  (
    .CI(Madd_D_cy[8]),
    .LI(\Madd_D_not0000[9] ),
    .O(D[9])
  );
  MUXCY   \Madd_D_cy<10>  (
    .CI(Madd_D_cy[9]),
    .DI(N0),
    .S(\Madd_D_not0000[10] ),
    .O(Madd_D_cy[10])
  );
  XORCY   \Madd_D_xor<10>  (
    .CI(Madd_D_cy[9]),
    .LI(\Madd_D_not0000[10] ),
    .O(D[10])
  );
  MUXCY   \Madd_D_cy<11>  (
    .CI(Madd_D_cy[10]),
    .DI(N0),
    .S(\Madd_D_not0000[11] ),
    .O(Madd_D_cy[11])
  );
  XORCY   \Madd_D_xor<11>  (
    .CI(Madd_D_cy[10]),
    .LI(\Madd_D_not0000[11] ),
    .O(D[11])
  );
  MUXCY   \Madd_D_cy<12>  (
    .CI(Madd_D_cy[11]),
    .DI(N0),
    .S(\Madd_D_not0000[12] ),
    .O(Madd_D_cy[12])
  );
  XORCY   \Madd_D_xor<12>  (
    .CI(Madd_D_cy[11]),
    .LI(\Madd_D_not0000[12] ),
    .O(D[12])
  );
  MUXCY   \Madd_D_cy<13>  (
    .CI(Madd_D_cy[12]),
    .DI(N0),
    .S(\Madd_D_not0000[13] ),
    .O(Madd_D_cy[13])
  );
  XORCY   \Madd_D_xor<13>  (
    .CI(Madd_D_cy[12]),
    .LI(\Madd_D_not0000[13] ),
    .O(D[13])
  );
  MUXCY   \Madd_D_cy<14>  (
    .CI(Madd_D_cy[13]),
    .DI(N0),
    .S(\Madd_D_not0000[14] ),
    .O(Madd_D_cy[14])
  );
  XORCY   \Madd_D_xor<14>  (
    .CI(Madd_D_cy[13]),
    .LI(\Madd_D_not0000[14] ),
    .O(D[14])
  );
  XORCY   \Madd_D_xor<15>  (
    .CI(Madd_D_cy[14]),
    .LI(\Madd_D_not0000[15] ),
    .O(D[15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<0>  (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .O(Madd_AUX_3_addsub0000_lut[0])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<0>  (
    .CI(N0),
    .DI(A_0_IBUF_32),
    .S(Madd_AUX_3_addsub0000_lut[0]),
    .O(Madd_AUX_3_addsub0000_cy[0])
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<0>  (
    .CI(N0),
    .LI(Madd_AUX_3_addsub0000_lut[0]),
    .O(AUX_3_addsub0000[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<1>  (
    .I0(A_1_IBUF_39),
    .I1(B_1_IBUF_71),
    .O(Madd_AUX_3_addsub0000_lut[1])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<1>  (
    .CI(Madd_AUX_3_addsub0000_cy[0]),
    .DI(A_1_IBUF_39),
    .S(Madd_AUX_3_addsub0000_lut[1]),
    .O(Madd_AUX_3_addsub0000_cy[1])
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<1>  (
    .CI(Madd_AUX_3_addsub0000_cy[0]),
    .LI(Madd_AUX_3_addsub0000_lut[1]),
    .O(AUX_3_addsub0000[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<2>  (
    .I0(A_2_IBUF_40),
    .I1(B_2_IBUF_72),
    .O(Madd_AUX_3_addsub0000_lut[2])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<2>  (
    .CI(Madd_AUX_3_addsub0000_cy[1]),
    .DI(A_2_IBUF_40),
    .S(Madd_AUX_3_addsub0000_lut[2]),
    .O(Madd_AUX_3_addsub0000_cy[2])
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<2>  (
    .CI(Madd_AUX_3_addsub0000_cy[1]),
    .LI(Madd_AUX_3_addsub0000_lut[2]),
    .O(AUX_3_addsub0000[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<3>  (
    .I0(A_3_IBUF_41),
    .I1(B_3_IBUF_73),
    .O(Madd_AUX_3_addsub0000_lut[3])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<3>  (
    .CI(Madd_AUX_3_addsub0000_cy[2]),
    .DI(A_3_IBUF_41),
    .S(Madd_AUX_3_addsub0000_lut[3]),
    .O(Madd_AUX_3_addsub0000_cy[3])
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<3>  (
    .CI(Madd_AUX_3_addsub0000_cy[2]),
    .LI(Madd_AUX_3_addsub0000_lut[3]),
    .O(AUX_3_addsub0000[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<4>  (
    .I0(A_4_IBUF_42),
    .I1(B_4_IBUF_74),
    .O(Madd_AUX_3_addsub0000_lut[4])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<4>  (
    .CI(Madd_AUX_3_addsub0000_cy[3]),
    .DI(A_4_IBUF_42),
    .S(Madd_AUX_3_addsub0000_lut[4]),
    .O(Madd_AUX_3_addsub0000_cy[4])
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<4>  (
    .CI(Madd_AUX_3_addsub0000_cy[3]),
    .LI(Madd_AUX_3_addsub0000_lut[4]),
    .O(AUX_3_addsub0000[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<5>  (
    .I0(A_5_IBUF_43),
    .I1(B_5_IBUF_75),
    .O(Madd_AUX_3_addsub0000_lut[5])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<5>  (
    .CI(Madd_AUX_3_addsub0000_cy[4]),
    .DI(A_5_IBUF_43),
    .S(Madd_AUX_3_addsub0000_lut[5]),
    .O(Madd_AUX_3_addsub0000_cy[5])
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<5>  (
    .CI(Madd_AUX_3_addsub0000_cy[4]),
    .LI(Madd_AUX_3_addsub0000_lut[5]),
    .O(AUX_3_addsub0000[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<6>  (
    .I0(A_6_IBUF_44),
    .I1(B_6_IBUF_76),
    .O(Madd_AUX_3_addsub0000_lut[6])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<6>  (
    .CI(Madd_AUX_3_addsub0000_cy[5]),
    .DI(A_6_IBUF_44),
    .S(Madd_AUX_3_addsub0000_lut[6]),
    .O(Madd_AUX_3_addsub0000_cy[6])
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<6>  (
    .CI(Madd_AUX_3_addsub0000_cy[5]),
    .LI(Madd_AUX_3_addsub0000_lut[6]),
    .O(AUX_3_addsub0000[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<7>  (
    .I0(A_7_IBUF_45),
    .I1(B_7_IBUF_77),
    .O(Madd_AUX_3_addsub0000_lut[7])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<7>  (
    .CI(Madd_AUX_3_addsub0000_cy[6]),
    .DI(A_7_IBUF_45),
    .S(Madd_AUX_3_addsub0000_lut[7]),
    .O(Madd_AUX_3_addsub0000_cy[7])
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<7>  (
    .CI(Madd_AUX_3_addsub0000_cy[6]),
    .LI(Madd_AUX_3_addsub0000_lut[7]),
    .O(AUX_3_addsub0000[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<8>  (
    .I0(A_8_IBUF_46),
    .I1(B_8_IBUF_78),
    .O(Madd_AUX_3_addsub0000_lut[8])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<8>  (
    .CI(Madd_AUX_3_addsub0000_cy[7]),
    .DI(A_8_IBUF_46),
    .S(Madd_AUX_3_addsub0000_lut[8]),
    .O(Madd_AUX_3_addsub0000_cy[8])
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<8>  (
    .CI(Madd_AUX_3_addsub0000_cy[7]),
    .LI(Madd_AUX_3_addsub0000_lut[8]),
    .O(AUX_3_addsub0000[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<9>  (
    .I0(A_9_IBUF_47),
    .I1(B_9_IBUF_79),
    .O(Madd_AUX_3_addsub0000_lut[9])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<9>  (
    .CI(Madd_AUX_3_addsub0000_cy[8]),
    .DI(A_9_IBUF_47),
    .S(Madd_AUX_3_addsub0000_lut[9]),
    .O(Madd_AUX_3_addsub0000_cy[9])
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<9>  (
    .CI(Madd_AUX_3_addsub0000_cy[8]),
    .LI(Madd_AUX_3_addsub0000_lut[9]),
    .O(AUX_3_addsub0000[9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<10>  (
    .I0(A_10_IBUF_33),
    .I1(B_10_IBUF_65),
    .O(Madd_AUX_3_addsub0000_lut[10])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<10>  (
    .CI(Madd_AUX_3_addsub0000_cy[9]),
    .DI(A_10_IBUF_33),
    .S(Madd_AUX_3_addsub0000_lut[10]),
    .O(Madd_AUX_3_addsub0000_cy[10])
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<10>  (
    .CI(Madd_AUX_3_addsub0000_cy[9]),
    .LI(Madd_AUX_3_addsub0000_lut[10]),
    .O(AUX_3_addsub0000[10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<11>  (
    .I0(A_11_IBUF_34),
    .I1(B_11_IBUF_66),
    .O(Madd_AUX_3_addsub0000_lut[11])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<11>  (
    .CI(Madd_AUX_3_addsub0000_cy[10]),
    .DI(A_11_IBUF_34),
    .S(Madd_AUX_3_addsub0000_lut[11]),
    .O(Madd_AUX_3_addsub0000_cy[11])
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<11>  (
    .CI(Madd_AUX_3_addsub0000_cy[10]),
    .LI(Madd_AUX_3_addsub0000_lut[11]),
    .O(AUX_3_addsub0000[11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<12>  (
    .I0(A_12_IBUF_35),
    .I1(B_12_IBUF_67),
    .O(Madd_AUX_3_addsub0000_lut[12])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<12>  (
    .CI(Madd_AUX_3_addsub0000_cy[11]),
    .DI(A_12_IBUF_35),
    .S(Madd_AUX_3_addsub0000_lut[12]),
    .O(Madd_AUX_3_addsub0000_cy[12])
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<12>  (
    .CI(Madd_AUX_3_addsub0000_cy[11]),
    .LI(Madd_AUX_3_addsub0000_lut[12]),
    .O(AUX_3_addsub0000[12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<13>  (
    .I0(A_13_IBUF_36),
    .I1(B_13_IBUF_68),
    .O(Madd_AUX_3_addsub0000_lut[13])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<13>  (
    .CI(Madd_AUX_3_addsub0000_cy[12]),
    .DI(A_13_IBUF_36),
    .S(Madd_AUX_3_addsub0000_lut[13]),
    .O(Madd_AUX_3_addsub0000_cy[13])
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<13>  (
    .CI(Madd_AUX_3_addsub0000_cy[12]),
    .LI(Madd_AUX_3_addsub0000_lut[13]),
    .O(AUX_3_addsub0000[13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<14>  (
    .I0(A_14_IBUF_37),
    .I1(B_14_IBUF_69),
    .O(Madd_AUX_3_addsub0000_lut[14])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<14>  (
    .CI(Madd_AUX_3_addsub0000_cy[13]),
    .DI(A_14_IBUF_37),
    .S(Madd_AUX_3_addsub0000_lut[14]),
    .O(Madd_AUX_3_addsub0000_cy[14])
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<14>  (
    .CI(Madd_AUX_3_addsub0000_cy[13]),
    .LI(Madd_AUX_3_addsub0000_lut[14]),
    .O(AUX_3_addsub0000[14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_AUX_3_addsub0000_lut<15>  (
    .I0(A_15_IBUF_38),
    .I1(B_15_IBUF_70),
    .O(Madd_AUX_3_addsub0000_lut[15])
  );
  MUXCY   \Madd_AUX_3_addsub0000_cy<15>  (
    .CI(Madd_AUX_3_addsub0000_cy[14]),
    .DI(A_15_IBUF_38),
    .S(Madd_AUX_3_addsub0000_lut[15]),
    .O(Madd_AUX_3_index0000)
  );
  XORCY   \Madd_AUX_3_addsub0000_xor<15>  (
    .CI(Madd_AUX_3_addsub0000_cy[14]),
    .LI(Madd_AUX_3_addsub0000_lut[15]),
    .O(AUX_3_addsub0000[15])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<0>  (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .O(Mcompar_Low_cmp_lt0001_lut[0])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<0>  (
    .CI(N1),
    .DI(A_0_IBUF_32),
    .S(Mcompar_Low_cmp_lt0001_lut[0]),
    .O(Mcompar_Low_cmp_lt0001_cy[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<1>  (
    .I0(A_1_IBUF_39),
    .I1(B_1_IBUF_71),
    .O(Mcompar_Low_cmp_lt0001_lut[1])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<1>  (
    .CI(Mcompar_Low_cmp_lt0001_cy[0]),
    .DI(A_1_IBUF_39),
    .S(Mcompar_Low_cmp_lt0001_lut[1]),
    .O(Mcompar_Low_cmp_lt0001_cy[1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<2>  (
    .I0(A_2_IBUF_40),
    .I1(B_2_IBUF_72),
    .O(Mcompar_Low_cmp_lt0001_lut[2])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<2>  (
    .CI(Mcompar_Low_cmp_lt0001_cy[1]),
    .DI(A_2_IBUF_40),
    .S(Mcompar_Low_cmp_lt0001_lut[2]),
    .O(Mcompar_Low_cmp_lt0001_cy[2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<3>  (
    .I0(A_3_IBUF_41),
    .I1(B_3_IBUF_73),
    .O(Mcompar_Low_cmp_lt0001_lut[3])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<3>  (
    .CI(Mcompar_Low_cmp_lt0001_cy[2]),
    .DI(A_3_IBUF_41),
    .S(Mcompar_Low_cmp_lt0001_lut[3]),
    .O(Mcompar_Low_cmp_lt0001_cy[3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<4>  (
    .I0(A_4_IBUF_42),
    .I1(B_4_IBUF_74),
    .O(Mcompar_Low_cmp_lt0001_lut[4])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<4>  (
    .CI(Mcompar_Low_cmp_lt0001_cy[3]),
    .DI(A_4_IBUF_42),
    .S(Mcompar_Low_cmp_lt0001_lut[4]),
    .O(Mcompar_Low_cmp_lt0001_cy[4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<5>  (
    .I0(A_5_IBUF_43),
    .I1(B_5_IBUF_75),
    .O(Mcompar_Low_cmp_lt0001_lut[5])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<5>  (
    .CI(Mcompar_Low_cmp_lt0001_cy[4]),
    .DI(A_5_IBUF_43),
    .S(Mcompar_Low_cmp_lt0001_lut[5]),
    .O(Mcompar_Low_cmp_lt0001_cy[5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<6>  (
    .I0(A_6_IBUF_44),
    .I1(B_6_IBUF_76),
    .O(Mcompar_Low_cmp_lt0001_lut[6])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<6>  (
    .CI(Mcompar_Low_cmp_lt0001_cy[5]),
    .DI(A_6_IBUF_44),
    .S(Mcompar_Low_cmp_lt0001_lut[6]),
    .O(Mcompar_Low_cmp_lt0001_cy[6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<7>  (
    .I0(A_7_IBUF_45),
    .I1(B_7_IBUF_77),
    .O(Mcompar_Low_cmp_lt0001_lut[7])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<7>  (
    .CI(Mcompar_Low_cmp_lt0001_cy[6]),
    .DI(A_7_IBUF_45),
    .S(Mcompar_Low_cmp_lt0001_lut[7]),
    .O(Mcompar_Low_cmp_lt0001_cy[7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<8>  (
    .I0(A_8_IBUF_46),
    .I1(B_8_IBUF_78),
    .O(Mcompar_Low_cmp_lt0001_lut[8])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<8>  (
    .CI(Mcompar_Low_cmp_lt0001_cy[7]),
    .DI(A_8_IBUF_46),
    .S(Mcompar_Low_cmp_lt0001_lut[8]),
    .O(Mcompar_Low_cmp_lt0001_cy[8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<9>  (
    .I0(A_9_IBUF_47),
    .I1(B_9_IBUF_79),
    .O(Mcompar_Low_cmp_lt0001_lut[9])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<9>  (
    .CI(Mcompar_Low_cmp_lt0001_cy[8]),
    .DI(A_9_IBUF_47),
    .S(Mcompar_Low_cmp_lt0001_lut[9]),
    .O(Mcompar_Low_cmp_lt0001_cy[9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<10>  (
    .I0(A_10_IBUF_33),
    .I1(B_10_IBUF_65),
    .O(Mcompar_Low_cmp_lt0001_lut[10])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<10>  (
    .CI(Mcompar_Low_cmp_lt0001_cy[9]),
    .DI(A_10_IBUF_33),
    .S(Mcompar_Low_cmp_lt0001_lut[10]),
    .O(Mcompar_Low_cmp_lt0001_cy[10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<11>  (
    .I0(A_11_IBUF_34),
    .I1(B_11_IBUF_66),
    .O(Mcompar_Low_cmp_lt0001_lut[11])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<11>  (
    .CI(Mcompar_Low_cmp_lt0001_cy[10]),
    .DI(A_11_IBUF_34),
    .S(Mcompar_Low_cmp_lt0001_lut[11]),
    .O(Mcompar_Low_cmp_lt0001_cy[11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<12>  (
    .I0(A_12_IBUF_35),
    .I1(B_12_IBUF_67),
    .O(Mcompar_Low_cmp_lt0001_lut[12])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<12>  (
    .CI(Mcompar_Low_cmp_lt0001_cy[11]),
    .DI(A_12_IBUF_35),
    .S(Mcompar_Low_cmp_lt0001_lut[12]),
    .O(Mcompar_Low_cmp_lt0001_cy[12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<13>  (
    .I0(A_13_IBUF_36),
    .I1(B_13_IBUF_68),
    .O(Mcompar_Low_cmp_lt0001_lut[13])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<13>  (
    .CI(Mcompar_Low_cmp_lt0001_cy[12]),
    .DI(A_13_IBUF_36),
    .S(Mcompar_Low_cmp_lt0001_lut[13]),
    .O(Mcompar_Low_cmp_lt0001_cy[13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<14>  (
    .I0(A_14_IBUF_37),
    .I1(B_14_IBUF_69),
    .O(Mcompar_Low_cmp_lt0001_lut[14])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<14>  (
    .CI(Mcompar_Low_cmp_lt0001_cy[13]),
    .DI(A_14_IBUF_37),
    .S(Mcompar_Low_cmp_lt0001_lut[14]),
    .O(Mcompar_Low_cmp_lt0001_cy[14])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_Low_cmp_lt0001_lut<15>  (
    .I0(A_15_IBUF_38),
    .I1(B_15_IBUF_70),
    .O(Mcompar_Low_cmp_lt0001_lut[15])
  );
  MUXCY   \Mcompar_Low_cmp_lt0001_cy<15>  (
    .CI(Mcompar_Low_cmp_lt0001_cy[14]),
    .DI(A_15_IBUF_38),
    .S(Mcompar_Low_cmp_lt0001_lut[15]),
    .O(Mcompar_Low_cmp_lt0001_cy[15])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_Zero_cmp_eq0009_lut<0>  (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .I2(A_1_IBUF_39),
    .I3(B_1_IBUF_71),
    .O(Mcompar_Zero_cmp_eq0009_lut[0])
  );
  MUXCY   \Mcompar_Zero_cmp_eq0009_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(Mcompar_Zero_cmp_eq0009_lut[0]),
    .O(Mcompar_Zero_cmp_eq0009_cy[0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_Zero_cmp_eq0009_lut<1>  (
    .I0(A_2_IBUF_40),
    .I1(B_2_IBUF_72),
    .I2(A_3_IBUF_41),
    .I3(B_3_IBUF_73),
    .O(Mcompar_Zero_cmp_eq0009_lut[1])
  );
  MUXCY   \Mcompar_Zero_cmp_eq0009_cy<1>  (
    .CI(Mcompar_Zero_cmp_eq0009_cy[0]),
    .DI(N0),
    .S(Mcompar_Zero_cmp_eq0009_lut[1]),
    .O(Mcompar_Zero_cmp_eq0009_cy[1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_Zero_cmp_eq0009_lut<2>  (
    .I0(A_4_IBUF_42),
    .I1(B_4_IBUF_74),
    .I2(A_5_IBUF_43),
    .I3(B_5_IBUF_75),
    .O(Mcompar_Zero_cmp_eq0009_lut[2])
  );
  MUXCY   \Mcompar_Zero_cmp_eq0009_cy<2>  (
    .CI(Mcompar_Zero_cmp_eq0009_cy[1]),
    .DI(N0),
    .S(Mcompar_Zero_cmp_eq0009_lut[2]),
    .O(Mcompar_Zero_cmp_eq0009_cy[2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_Zero_cmp_eq0009_lut<3>  (
    .I0(A_6_IBUF_44),
    .I1(B_6_IBUF_76),
    .I2(A_7_IBUF_45),
    .I3(B_7_IBUF_77),
    .O(Mcompar_Zero_cmp_eq0009_lut[3])
  );
  MUXCY   \Mcompar_Zero_cmp_eq0009_cy<3>  (
    .CI(Mcompar_Zero_cmp_eq0009_cy[2]),
    .DI(N0),
    .S(Mcompar_Zero_cmp_eq0009_lut[3]),
    .O(Mcompar_Zero_cmp_eq0009_cy[3])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_Zero_cmp_eq0009_lut<4>  (
    .I0(A_8_IBUF_46),
    .I1(B_8_IBUF_78),
    .I2(A_9_IBUF_47),
    .I3(B_9_IBUF_79),
    .O(Mcompar_Zero_cmp_eq0009_lut[4])
  );
  MUXCY   \Mcompar_Zero_cmp_eq0009_cy<4>  (
    .CI(Mcompar_Zero_cmp_eq0009_cy[3]),
    .DI(N0),
    .S(Mcompar_Zero_cmp_eq0009_lut[4]),
    .O(Mcompar_Zero_cmp_eq0009_cy[4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_Zero_cmp_eq0009_lut<5>  (
    .I0(A_10_IBUF_33),
    .I1(B_10_IBUF_65),
    .I2(A_11_IBUF_34),
    .I3(B_11_IBUF_66),
    .O(Mcompar_Zero_cmp_eq0009_lut[5])
  );
  MUXCY   \Mcompar_Zero_cmp_eq0009_cy<5>  (
    .CI(Mcompar_Zero_cmp_eq0009_cy[4]),
    .DI(N0),
    .S(Mcompar_Zero_cmp_eq0009_lut[5]),
    .O(Mcompar_Zero_cmp_eq0009_cy[5])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_Zero_cmp_eq0009_lut<6>  (
    .I0(A_12_IBUF_35),
    .I1(B_12_IBUF_67),
    .I2(A_13_IBUF_36),
    .I3(B_13_IBUF_68),
    .O(Mcompar_Zero_cmp_eq0009_lut[6])
  );
  MUXCY   \Mcompar_Zero_cmp_eq0009_cy<6>  (
    .CI(Mcompar_Zero_cmp_eq0009_cy[5]),
    .DI(N0),
    .S(Mcompar_Zero_cmp_eq0009_lut[6]),
    .O(Mcompar_Zero_cmp_eq0009_cy[6])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_Zero_cmp_eq0009_lut<7>  (
    .I0(A_14_IBUF_37),
    .I1(B_14_IBUF_69),
    .I2(A_15_IBUF_38),
    .I3(B_15_IBUF_70),
    .O(Mcompar_Zero_cmp_eq0009_lut[7])
  );
  MUXCY   \Mcompar_Zero_cmp_eq0009_cy<7>  (
    .CI(Mcompar_Zero_cmp_eq0009_cy[6]),
    .DI(N0),
    .S(Mcompar_Zero_cmp_eq0009_lut[7]),
    .O(Mcompar_Zero_cmp_eq0009_cy[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<0>  (
    .I0(A_0_IBUF_32),
    .I1(D[0]),
    .O(Madd__old_C_6_lut[0])
  );
  MUXCY   \Madd__old_C_6_cy<0>  (
    .CI(N0),
    .DI(A_0_IBUF_32),
    .S(Madd__old_C_6_lut[0]),
    .O(Madd__old_C_6_cy[0])
  );
  XORCY   \Madd__old_C_6_xor<0>  (
    .CI(N0),
    .LI(Madd__old_C_6_lut[0]),
    .O(_old_C_6[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<1>  (
    .I0(A_1_IBUF_39),
    .I1(D[1]),
    .O(Madd__old_C_6_lut[1])
  );
  MUXCY   \Madd__old_C_6_cy<1>  (
    .CI(Madd__old_C_6_cy[0]),
    .DI(A_1_IBUF_39),
    .S(Madd__old_C_6_lut[1]),
    .O(Madd__old_C_6_cy[1])
  );
  XORCY   \Madd__old_C_6_xor<1>  (
    .CI(Madd__old_C_6_cy[0]),
    .LI(Madd__old_C_6_lut[1]),
    .O(_old_C_6[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<2>  (
    .I0(A_2_IBUF_40),
    .I1(D[2]),
    .O(Madd__old_C_6_lut[2])
  );
  MUXCY   \Madd__old_C_6_cy<2>  (
    .CI(Madd__old_C_6_cy[1]),
    .DI(A_2_IBUF_40),
    .S(Madd__old_C_6_lut[2]),
    .O(Madd__old_C_6_cy[2])
  );
  XORCY   \Madd__old_C_6_xor<2>  (
    .CI(Madd__old_C_6_cy[1]),
    .LI(Madd__old_C_6_lut[2]),
    .O(_old_C_6[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<3>  (
    .I0(A_3_IBUF_41),
    .I1(D[3]),
    .O(Madd__old_C_6_lut[3])
  );
  MUXCY   \Madd__old_C_6_cy<3>  (
    .CI(Madd__old_C_6_cy[2]),
    .DI(A_3_IBUF_41),
    .S(Madd__old_C_6_lut[3]),
    .O(Madd__old_C_6_cy[3])
  );
  XORCY   \Madd__old_C_6_xor<3>  (
    .CI(Madd__old_C_6_cy[2]),
    .LI(Madd__old_C_6_lut[3]),
    .O(_old_C_6[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<4>  (
    .I0(A_4_IBUF_42),
    .I1(D[4]),
    .O(Madd__old_C_6_lut[4])
  );
  MUXCY   \Madd__old_C_6_cy<4>  (
    .CI(Madd__old_C_6_cy[3]),
    .DI(A_4_IBUF_42),
    .S(Madd__old_C_6_lut[4]),
    .O(Madd__old_C_6_cy[4])
  );
  XORCY   \Madd__old_C_6_xor<4>  (
    .CI(Madd__old_C_6_cy[3]),
    .LI(Madd__old_C_6_lut[4]),
    .O(_old_C_6[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<5>  (
    .I0(A_5_IBUF_43),
    .I1(D[5]),
    .O(Madd__old_C_6_lut[5])
  );
  MUXCY   \Madd__old_C_6_cy<5>  (
    .CI(Madd__old_C_6_cy[4]),
    .DI(A_5_IBUF_43),
    .S(Madd__old_C_6_lut[5]),
    .O(Madd__old_C_6_cy[5])
  );
  XORCY   \Madd__old_C_6_xor<5>  (
    .CI(Madd__old_C_6_cy[4]),
    .LI(Madd__old_C_6_lut[5]),
    .O(_old_C_6[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<6>  (
    .I0(A_6_IBUF_44),
    .I1(D[6]),
    .O(Madd__old_C_6_lut[6])
  );
  MUXCY   \Madd__old_C_6_cy<6>  (
    .CI(Madd__old_C_6_cy[5]),
    .DI(A_6_IBUF_44),
    .S(Madd__old_C_6_lut[6]),
    .O(Madd__old_C_6_cy[6])
  );
  XORCY   \Madd__old_C_6_xor<6>  (
    .CI(Madd__old_C_6_cy[5]),
    .LI(Madd__old_C_6_lut[6]),
    .O(_old_C_6[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<7>  (
    .I0(A_7_IBUF_45),
    .I1(D[7]),
    .O(Madd__old_C_6_lut[7])
  );
  MUXCY   \Madd__old_C_6_cy<7>  (
    .CI(Madd__old_C_6_cy[6]),
    .DI(A_7_IBUF_45),
    .S(Madd__old_C_6_lut[7]),
    .O(Madd__old_C_6_cy[7])
  );
  XORCY   \Madd__old_C_6_xor<7>  (
    .CI(Madd__old_C_6_cy[6]),
    .LI(Madd__old_C_6_lut[7]),
    .O(_old_C_6[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<8>  (
    .I0(A_8_IBUF_46),
    .I1(D[8]),
    .O(Madd__old_C_6_lut[8])
  );
  MUXCY   \Madd__old_C_6_cy<8>  (
    .CI(Madd__old_C_6_cy[7]),
    .DI(A_8_IBUF_46),
    .S(Madd__old_C_6_lut[8]),
    .O(Madd__old_C_6_cy[8])
  );
  XORCY   \Madd__old_C_6_xor<8>  (
    .CI(Madd__old_C_6_cy[7]),
    .LI(Madd__old_C_6_lut[8]),
    .O(_old_C_6[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<9>  (
    .I0(A_9_IBUF_47),
    .I1(D[9]),
    .O(Madd__old_C_6_lut[9])
  );
  MUXCY   \Madd__old_C_6_cy<9>  (
    .CI(Madd__old_C_6_cy[8]),
    .DI(A_9_IBUF_47),
    .S(Madd__old_C_6_lut[9]),
    .O(Madd__old_C_6_cy[9])
  );
  XORCY   \Madd__old_C_6_xor<9>  (
    .CI(Madd__old_C_6_cy[8]),
    .LI(Madd__old_C_6_lut[9]),
    .O(_old_C_6[9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<10>  (
    .I0(A_10_IBUF_33),
    .I1(D[10]),
    .O(Madd__old_C_6_lut[10])
  );
  MUXCY   \Madd__old_C_6_cy<10>  (
    .CI(Madd__old_C_6_cy[9]),
    .DI(A_10_IBUF_33),
    .S(Madd__old_C_6_lut[10]),
    .O(Madd__old_C_6_cy[10])
  );
  XORCY   \Madd__old_C_6_xor<10>  (
    .CI(Madd__old_C_6_cy[9]),
    .LI(Madd__old_C_6_lut[10]),
    .O(_old_C_6[10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<11>  (
    .I0(A_11_IBUF_34),
    .I1(D[11]),
    .O(Madd__old_C_6_lut[11])
  );
  MUXCY   \Madd__old_C_6_cy<11>  (
    .CI(Madd__old_C_6_cy[10]),
    .DI(A_11_IBUF_34),
    .S(Madd__old_C_6_lut[11]),
    .O(Madd__old_C_6_cy[11])
  );
  XORCY   \Madd__old_C_6_xor<11>  (
    .CI(Madd__old_C_6_cy[10]),
    .LI(Madd__old_C_6_lut[11]),
    .O(_old_C_6[11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<12>  (
    .I0(A_12_IBUF_35),
    .I1(D[12]),
    .O(Madd__old_C_6_lut[12])
  );
  MUXCY   \Madd__old_C_6_cy<12>  (
    .CI(Madd__old_C_6_cy[11]),
    .DI(A_12_IBUF_35),
    .S(Madd__old_C_6_lut[12]),
    .O(Madd__old_C_6_cy[12])
  );
  XORCY   \Madd__old_C_6_xor<12>  (
    .CI(Madd__old_C_6_cy[11]),
    .LI(Madd__old_C_6_lut[12]),
    .O(_old_C_6[12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<13>  (
    .I0(A_13_IBUF_36),
    .I1(D[13]),
    .O(Madd__old_C_6_lut[13])
  );
  MUXCY   \Madd__old_C_6_cy<13>  (
    .CI(Madd__old_C_6_cy[12]),
    .DI(A_13_IBUF_36),
    .S(Madd__old_C_6_lut[13]),
    .O(Madd__old_C_6_cy[13])
  );
  XORCY   \Madd__old_C_6_xor<13>  (
    .CI(Madd__old_C_6_cy[12]),
    .LI(Madd__old_C_6_lut[13]),
    .O(_old_C_6[13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<14>  (
    .I0(A_14_IBUF_37),
    .I1(D[14]),
    .O(Madd__old_C_6_lut[14])
  );
  MUXCY   \Madd__old_C_6_cy<14>  (
    .CI(Madd__old_C_6_cy[13]),
    .DI(A_14_IBUF_37),
    .S(Madd__old_C_6_lut[14]),
    .O(Madd__old_C_6_cy[14])
  );
  XORCY   \Madd__old_C_6_xor<14>  (
    .CI(Madd__old_C_6_cy[13]),
    .LI(Madd__old_C_6_lut[14]),
    .O(_old_C_6[14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_6_lut<15>  (
    .I0(A_15_IBUF_38),
    .I1(D[15]),
    .O(Madd__old_C_6_lut[15])
  );
  XORCY   \Madd__old_C_6_xor<15>  (
    .CI(Madd__old_C_6_cy[14]),
    .LI(Madd__old_C_6_lut[15]),
    .O(_old_C_6[15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__AUX_5_lut<0>  (
    .I0(AUX_3_addsub0000[0]),
    .I1(CarryIn_IBUF_230),
    .O(Madd__AUX_5_lut[0])
  );
  MUXCY   \Madd__AUX_5_cy<0>  (
    .CI(N0),
    .DI(AUX_3_addsub0000[0]),
    .S(Madd__AUX_5_lut[0]),
    .O(Madd__AUX_5_cy[0])
  );
  XORCY   \Madd__AUX_5_xor<0>  (
    .CI(N0),
    .LI(Madd__AUX_5_lut[0]),
    .O(_AUX_5[0])
  );
  MUXCY   \Madd__AUX_5_cy<1>  (
    .CI(Madd__AUX_5_cy[0]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<1>_rt_332 ),
    .O(Madd__AUX_5_cy[1])
  );
  XORCY   \Madd__AUX_5_xor<1>  (
    .CI(Madd__AUX_5_cy[0]),
    .LI(\Madd__AUX_5_cy<1>_rt_332 ),
    .O(_AUX_5[1])
  );
  MUXCY   \Madd__AUX_5_cy<2>  (
    .CI(Madd__AUX_5_cy[1]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<2>_rt_334 ),
    .O(Madd__AUX_5_cy[2])
  );
  XORCY   \Madd__AUX_5_xor<2>  (
    .CI(Madd__AUX_5_cy[1]),
    .LI(\Madd__AUX_5_cy<2>_rt_334 ),
    .O(_AUX_5[2])
  );
  MUXCY   \Madd__AUX_5_cy<3>  (
    .CI(Madd__AUX_5_cy[2]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<3>_rt_336 ),
    .O(Madd__AUX_5_cy[3])
  );
  XORCY   \Madd__AUX_5_xor<3>  (
    .CI(Madd__AUX_5_cy[2]),
    .LI(\Madd__AUX_5_cy<3>_rt_336 ),
    .O(_AUX_5[3])
  );
  MUXCY   \Madd__AUX_5_cy<4>  (
    .CI(Madd__AUX_5_cy[3]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<4>_rt_338 ),
    .O(Madd__AUX_5_cy[4])
  );
  XORCY   \Madd__AUX_5_xor<4>  (
    .CI(Madd__AUX_5_cy[3]),
    .LI(\Madd__AUX_5_cy<4>_rt_338 ),
    .O(_AUX_5[4])
  );
  MUXCY   \Madd__AUX_5_cy<5>  (
    .CI(Madd__AUX_5_cy[4]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<5>_rt_340 ),
    .O(Madd__AUX_5_cy[5])
  );
  XORCY   \Madd__AUX_5_xor<5>  (
    .CI(Madd__AUX_5_cy[4]),
    .LI(\Madd__AUX_5_cy<5>_rt_340 ),
    .O(_AUX_5[5])
  );
  MUXCY   \Madd__AUX_5_cy<6>  (
    .CI(Madd__AUX_5_cy[5]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<6>_rt_342 ),
    .O(Madd__AUX_5_cy[6])
  );
  XORCY   \Madd__AUX_5_xor<6>  (
    .CI(Madd__AUX_5_cy[5]),
    .LI(\Madd__AUX_5_cy<6>_rt_342 ),
    .O(_AUX_5[6])
  );
  MUXCY   \Madd__AUX_5_cy<7>  (
    .CI(Madd__AUX_5_cy[6]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<7>_rt_344 ),
    .O(Madd__AUX_5_cy[7])
  );
  XORCY   \Madd__AUX_5_xor<7>  (
    .CI(Madd__AUX_5_cy[6]),
    .LI(\Madd__AUX_5_cy<7>_rt_344 ),
    .O(_AUX_5[7])
  );
  MUXCY   \Madd__AUX_5_cy<8>  (
    .CI(Madd__AUX_5_cy[7]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<8>_rt_346 ),
    .O(Madd__AUX_5_cy[8])
  );
  XORCY   \Madd__AUX_5_xor<8>  (
    .CI(Madd__AUX_5_cy[7]),
    .LI(\Madd__AUX_5_cy<8>_rt_346 ),
    .O(_AUX_5[8])
  );
  MUXCY   \Madd__AUX_5_cy<9>  (
    .CI(Madd__AUX_5_cy[8]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<9>_rt_348 ),
    .O(Madd__AUX_5_cy[9])
  );
  XORCY   \Madd__AUX_5_xor<9>  (
    .CI(Madd__AUX_5_cy[8]),
    .LI(\Madd__AUX_5_cy<9>_rt_348 ),
    .O(_AUX_5[9])
  );
  MUXCY   \Madd__AUX_5_cy<10>  (
    .CI(Madd__AUX_5_cy[9]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<10>_rt_320 ),
    .O(Madd__AUX_5_cy[10])
  );
  XORCY   \Madd__AUX_5_xor<10>  (
    .CI(Madd__AUX_5_cy[9]),
    .LI(\Madd__AUX_5_cy<10>_rt_320 ),
    .O(_AUX_5[10])
  );
  MUXCY   \Madd__AUX_5_cy<11>  (
    .CI(Madd__AUX_5_cy[10]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<11>_rt_322 ),
    .O(Madd__AUX_5_cy[11])
  );
  XORCY   \Madd__AUX_5_xor<11>  (
    .CI(Madd__AUX_5_cy[10]),
    .LI(\Madd__AUX_5_cy<11>_rt_322 ),
    .O(_AUX_5[11])
  );
  MUXCY   \Madd__AUX_5_cy<12>  (
    .CI(Madd__AUX_5_cy[11]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<12>_rt_324 ),
    .O(Madd__AUX_5_cy[12])
  );
  XORCY   \Madd__AUX_5_xor<12>  (
    .CI(Madd__AUX_5_cy[11]),
    .LI(\Madd__AUX_5_cy<12>_rt_324 ),
    .O(_AUX_5[12])
  );
  MUXCY   \Madd__AUX_5_cy<13>  (
    .CI(Madd__AUX_5_cy[12]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<13>_rt_326 ),
    .O(Madd__AUX_5_cy[13])
  );
  XORCY   \Madd__AUX_5_xor<13>  (
    .CI(Madd__AUX_5_cy[12]),
    .LI(\Madd__AUX_5_cy<13>_rt_326 ),
    .O(_AUX_5[13])
  );
  MUXCY   \Madd__AUX_5_cy<14>  (
    .CI(Madd__AUX_5_cy[13]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<14>_rt_328 ),
    .O(Madd__AUX_5_cy[14])
  );
  XORCY   \Madd__AUX_5_xor<14>  (
    .CI(Madd__AUX_5_cy[13]),
    .LI(\Madd__AUX_5_cy<14>_rt_328 ),
    .O(_AUX_5[14])
  );
  MUXCY   \Madd__AUX_5_cy<15>  (
    .CI(Madd__AUX_5_cy[14]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<15>_rt_330 ),
    .O(Madd__AUX_5_cy[15])
  );
  XORCY   \Madd__AUX_5_xor<15>  (
    .CI(Madd__AUX_5_cy[14]),
    .LI(\Madd__AUX_5_cy<15>_rt_330 ),
    .O(_AUX_5[15])
  );
  XORCY   \Madd__AUX_5_xor<16>  (
    .CI(Madd__AUX_5_cy[15]),
    .LI(\Madd__AUX_5_xor<16>_rt_350 ),
    .O(_AUX_5[16])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  C_and00001 (
    .I0(Opcode_5_IBUF_635),
    .I1(Opcode_6_IBUF_636),
    .I2(Opcode_7_IBUF_637),
    .O(C_and0000)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<0>78  (
    .I0(_old_C_6[0]),
    .I1(C_or0001),
    .I2(Sh48),
    .I3(\C<0>73_86 ),
    .O(\C<0>78_87 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \C<0>92  (
    .I0(C_and0000),
    .I1(\C<0>62_85 ),
    .I2(\C<0>78_87 ),
    .O(C_0_OBUF_202)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero41 (
    .I0(Opcode_2_IBUF_632),
    .I1(Opcode_0_IBUF_630),
    .I2(Opcode_4_IBUF_634),
    .I3(Opcode_3_IBUF_633),
    .O(N43)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  Sh9111 (
    .I0(B_2_IBUF_72),
    .I1(B_3_IBUF_73),
    .O(N26)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  C_or000411 (
    .I0(Opcode_0_IBUF_630),
    .I1(Opcode_1_IBUF_631),
    .O(N23)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  C_or000431 (
    .I0(Opcode_4_IBUF_634),
    .I1(Opcode_3_IBUF_633),
    .I2(Opcode_2_IBUF_632),
    .O(N114)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  C_cmp_eq000411 (
    .I0(Opcode_2_IBUF_632),
    .I1(Opcode_3_IBUF_633),
    .I2(Opcode_4_IBUF_634),
    .O(N52)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  C_or00001 (
    .I0(Opcode_2_IBUF_632),
    .I1(Opcode_0_IBUF_630),
    .I2(Opcode_4_IBUF_634),
    .I3(Opcode_3_IBUF_633),
    .O(C_or0000)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Sh781 (
    .I0(B_1_IBUF_71),
    .I1(A_15_IBUF_38),
    .I2(B_0_IBUF_64),
    .I3(A_14_IBUF_37),
    .O(Sh78)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  old_C_11_or00004 (
    .I0(B_14_IBUF_69),
    .I1(B_15_IBUF_70),
    .I2(B_4_IBUF_74),
    .I3(B_5_IBUF_75),
    .O(old_C_11_or00004_870)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  old_C_11_or00009 (
    .I0(B_6_IBUF_76),
    .I1(B_7_IBUF_77),
    .I2(B_8_IBUF_78),
    .I3(B_9_IBUF_79),
    .O(old_C_11_or00009_871)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  old_C_11_or000014 (
    .I0(B_10_IBUF_65),
    .I1(B_11_IBUF_66),
    .I2(B_12_IBUF_67),
    .I3(B_13_IBUF_68),
    .O(old_C_11_or000014_869)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  old_C_11_or000023 (
    .I0(old_C_11_or00004_870),
    .I1(old_C_11_or00009_871),
    .I2(old_C_11_or000014_869),
    .O(old_C_11_or0000)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<4>18  (
    .I0(AUX_3_addsub0000[4]),
    .I1(N43),
    .I2(_old_C_1[4]),
    .I3(C_or0000),
    .O(\C<4>18_166 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<4>68  (
    .I0(N60),
    .I1(Sh52),
    .I2(C_cmp_eq0021),
    .I3(Sh84_725),
    .O(\C<4>68_168 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<4>94  (
    .I0(C_and0000),
    .I1(_old_C_6[4]),
    .I2(C_or0001),
    .I3(\C<4>70_169 ),
    .O(C_4_OBUF_212)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  C_cmp_eq002111 (
    .I0(Opcode_0_IBUF_630),
    .I1(Opcode_1_IBUF_631),
    .O(N120)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  C_cmp_eq000221 (
    .I0(Opcode_0_IBUF_630),
    .I1(Opcode_1_IBUF_631),
    .O(N118)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \C<6>111  (
    .I0(A_6_IBUF_44),
    .I1(B_6_IBUF_76),
    .O(N65)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \C<2>111  (
    .I0(A_2_IBUF_40),
    .I1(B_2_IBUF_72),
    .O(N63)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \C<13>111  (
    .I0(A_13_IBUF_36),
    .I1(B_13_IBUF_68),
    .O(N64)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  C_or000421 (
    .I0(Opcode_2_IBUF_632),
    .I1(Opcode_3_IBUF_633),
    .I2(Opcode_4_IBUF_634),
    .O(N50)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  C_cmp_eq000811 (
    .I0(Opcode_3_IBUF_633),
    .I1(Opcode_2_IBUF_632),
    .I2(Opcode_4_IBUF_634),
    .O(N51)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh771 (
    .I0(B_1_IBUF_71),
    .I1(N24),
    .I2(A_15_IBUF_38),
    .O(Sh77)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  Sh821 (
    .I0(N56),
    .I1(B_2_IBUF_72),
    .I2(B_3_IBUF_73),
    .I3(Sh78),
    .O(Sh82)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  C_cmp_eq00211 (
    .I0(Opcode_4_IBUF_634),
    .I1(Opcode_2_IBUF_632),
    .I2(N120),
    .I3(Opcode_3_IBUF_633),
    .O(C_cmp_eq0021)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh591 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh43_683),
    .I3(Sh47),
    .O(Sh59)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh581 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh42_682),
    .I3(Sh46),
    .O(Sh58)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh571 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh41_681),
    .I3(Sh45),
    .O(Sh57)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh561 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh40_680),
    .I3(Sh44),
    .O(Sh56)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh461 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_14_IBUF_37),
    .I3(A_15_IBUF_38),
    .O(Sh46)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh231 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh7_719),
    .I3(Sh3),
    .O(Sh23)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh12 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_1_IBUF_39),
    .I3(A_0_IBUF_32),
    .O(Sh1)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh221 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh6_718),
    .I3(Sh2),
    .O(Sh22_652)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh211 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh5_698),
    .I3(Sh1),
    .O(Sh21_649)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \C<3>18  (
    .I0(AUX_3_addsub0000[3]),
    .I1(N43),
    .O(\C<3>18_157 )
  );
  LUT4 #(
    .INIT ( 16'hFBEA ))
  \C<3>44  (
    .I0(C_cmp_eq0013),
    .I1(B_3_IBUF_73),
    .I2(C_or0003),
    .I3(C_cmp_eq0014),
    .O(\C<3>44_159 )
  );
  LUT4 #(
    .INIT ( 16'hFBEA ))
  \C<3>55  (
    .I0(\C<3>18_157 ),
    .I1(A_3_IBUF_41),
    .I2(\C<3>44_159 ),
    .I3(\C<3>21_158 ),
    .O(\C<3>55_160 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<3>79  (
    .I0(\C<3>13_156 ),
    .I1(N60),
    .I2(Sh51),
    .I3(\C<3>55_160 ),
    .O(\C<3>79_161 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<3>95  (
    .I0(_AUX_5[3]),
    .I1(N38),
    .I2(C_cmp_eq0021),
    .I3(\C<3>90_162 ),
    .O(\C<3>95_163 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<1>4  (
    .I0(_old_C_1[1]),
    .I1(C_or0000),
    .I2(AUX_3_addsub0000[1]),
    .I3(N43),
    .O(\C<1>4_142 )
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \C<1>15  (
    .I0(A_1_IBUF_39),
    .I1(C_cmp_eq0015),
    .I2(C_or0003),
    .I3(B_1_IBUF_71),
    .O(\C<1>15_141 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<8>19  (
    .I0(AUX_3_addsub0000[8]),
    .I1(N43),
    .I2(N60),
    .I3(Sh56),
    .O(\C<8>19_189 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<8>52  (
    .I0(_old_C_1[8]),
    .I1(C_or0000),
    .I2(A_8_IBUF_46),
    .I3(\C<8>46_191 ),
    .O(\C<8>52_192 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<8>57  (
    .I0(C_cmp_eq0021),
    .I1(Sh88),
    .I2(\C<8>52_192 ),
    .O(\C<8>57_193 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<8>77  (
    .I0(\C<8>33_190 ),
    .I1(_AUX_5[8]),
    .I2(N38),
    .I3(\C<8>57_193 ),
    .O(\C<8>77_194 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<8>100  (
    .I0(C_and0000),
    .I1(_old_C_6[8]),
    .I2(C_or0001),
    .I3(\C<8>77_194 ),
    .O(C_8_OBUF_216)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<10>4  (
    .I0(N60),
    .I1(Sh58),
    .I2(B_10_IBUF_65),
    .I3(C_cmp_eq0013),
    .O(\C<10>4_93 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<10>36  (
    .I0(\C<10>4_93 ),
    .I1(N54),
    .I2(Sh26_656),
    .I3(\C<10>19 ),
    .O(\C<10>36_92 )
  );
  LUT4 #(
    .INIT ( 16'h3222 ))
  \C<10>59  (
    .I0(C_cmp_eq0015),
    .I1(A_10_IBUF_33),
    .I2(C_cmp_eq0014),
    .I3(B_10_IBUF_65),
    .O(\C<10>59_94 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<10>90  (
    .I0(\C<10>36_92 ),
    .I1(_AUX_5[10]),
    .I2(N38),
    .I3(\C<10>66_95 ),
    .O(\C<10>90_96 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<10>113  (
    .I0(C_and0000),
    .I1(_old_C_6[10]),
    .I2(C_or0001),
    .I3(\C<10>90_96 ),
    .O(C_10_OBUF_203)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh39_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_7_IBUF_45),
    .I2(A_8_IBUF_46),
    .O(N141)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh39_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_9_IBUF_47),
    .I2(A_10_IBUF_33),
    .O(N142)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh39 (
    .I0(B_1_IBUF_71),
    .I1(N141),
    .I2(N142),
    .O(Sh39_678)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  Zero731 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .O(N58)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  Sh811 (
    .I0(N55),
    .I1(Sh77),
    .I2(B_3_IBUF_73),
    .I3(B_2_IBUF_72),
    .O(Sh81)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh9_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_9_IBUF_47),
    .I2(A_8_IBUF_46),
    .O(N158)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh9_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_7_IBUF_45),
    .I2(A_6_IBUF_44),
    .O(N159)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh9 (
    .I0(B_1_IBUF_71),
    .I1(N158),
    .I2(N159),
    .O(Sh9_737)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh8_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_8_IBUF_46),
    .I2(A_7_IBUF_45),
    .O(N161)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh8_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_6_IBUF_44),
    .I2(A_5_IBUF_43),
    .O(N162)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh8 (
    .I0(B_1_IBUF_71),
    .I1(N161),
    .I2(N162),
    .O(Sh8_722)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh7_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_5_IBUF_43),
    .I2(A_4_IBUF_42),
    .O(N165)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh7 (
    .I0(B_1_IBUF_71),
    .I1(N159),
    .I2(N165),
    .O(Sh7_719)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh6_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_4_IBUF_42),
    .I2(A_3_IBUF_41),
    .O(N168)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh6 (
    .I0(B_1_IBUF_71),
    .I1(N162),
    .I2(N168),
    .O(Sh6_718)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh5_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_3_IBUF_41),
    .I2(A_2_IBUF_40),
    .O(N171)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh5 (
    .I0(B_1_IBUF_71),
    .I1(N165),
    .I2(N171),
    .O(Sh5_698)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh4_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_2_IBUF_40),
    .I2(A_1_IBUF_39),
    .O(N174)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh4 (
    .I0(B_1_IBUF_71),
    .I1(N168),
    .I2(N174),
    .O(Sh4_679)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh3126 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_14_IBUF_37),
    .I3(A_12_IBUF_35),
    .O(Sh3126_670)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh3141 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_15_IBUF_38),
    .I3(A_13_IBUF_36),
    .O(Sh3141_671)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh3026 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_13_IBUF_36),
    .I3(A_11_IBUF_34),
    .O(Sh3026_667)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh3041 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_14_IBUF_37),
    .I3(A_12_IBUF_35),
    .O(Sh3041_668)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh2926 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_12_IBUF_35),
    .I3(A_10_IBUF_33),
    .O(Sh2926_663)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh2941 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_13_IBUF_36),
    .I3(A_11_IBUF_34),
    .O(Sh2941_664)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh2826 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_11_IBUF_34),
    .I3(A_9_IBUF_47),
    .O(Sh2826_660)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh2841 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_12_IBUF_35),
    .I3(A_10_IBUF_33),
    .O(Sh2841_661)
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \C<2>10  (
    .I0(A_2_IBUF_40),
    .I1(C_cmp_eq0015),
    .I2(C_or0003),
    .I3(B_2_IBUF_72),
    .O(\C<2>10_147 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \C<2>105  (
    .I0(C_cmp_eq0021),
    .I1(Sh82),
    .O(\C<2>105_148 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<2>108  (
    .I0(\C<2>83_153 ),
    .I1(N60),
    .I2(Sh50),
    .I3(\C<2>105_148 ),
    .O(\C<2>108_149 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \C<2>142  (
    .I0(C_and0000),
    .I1(\C<2>108_149 ),
    .I2(\C<2>127_150 ),
    .O(C_2_OBUF_210)
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \C<5>10  (
    .I0(A_5_IBUF_43),
    .I1(C_cmp_eq0015),
    .I2(C_or0003),
    .I3(B_5_IBUF_75),
    .O(\C<5>10_171 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<5>74  (
    .I0(N54),
    .I1(Sh21_649),
    .I2(AUX_3_addsub0000[5]),
    .I3(N43),
    .O(\C<5>74_175 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh4311 (
    .I0(B_0_IBUF_64),
    .I1(A_13_IBUF_36),
    .I2(A_14_IBUF_37),
    .O(N24)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  Sh512 (
    .I0(N57),
    .I1(Sh47),
    .I2(B_3_IBUF_73),
    .I3(B_2_IBUF_72),
    .O(Sh51)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  Sh502 (
    .I0(N56),
    .I1(Sh46),
    .I2(B_3_IBUF_73),
    .I3(B_2_IBUF_72),
    .O(Sh50)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  Sh492 (
    .I0(N55),
    .I1(Sh45),
    .I2(B_3_IBUF_73),
    .I3(B_2_IBUF_72),
    .O(Sh49)
  );
  LUT4 #(
    .INIT ( 16'h44E4 ))
  Sh451 (
    .I0(B_1_IBUF_71),
    .I1(N24),
    .I2(A_15_IBUF_38),
    .I3(B_0_IBUF_64),
    .O(Sh45)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh43_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_11_IBUF_34),
    .I2(A_12_IBUF_35),
    .O(N185)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh43 (
    .I0(B_1_IBUF_71),
    .I1(N185),
    .I2(N24),
    .O(Sh43_683)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh44_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_12_IBUF_35),
    .I2(A_13_IBUF_36),
    .O(N191)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh42_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_10_IBUF_33),
    .I2(A_11_IBUF_34),
    .O(N194)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh42 (
    .I0(B_1_IBUF_71),
    .I1(N194),
    .I2(N191),
    .O(Sh42_682)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh41 (
    .I0(B_1_IBUF_71),
    .I1(N142),
    .I2(N185),
    .O(Sh41_681)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh40_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_8_IBUF_46),
    .I2(A_9_IBUF_47),
    .O(N200)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh40 (
    .I0(B_1_IBUF_71),
    .I1(N200),
    .I2(N194),
    .O(Sh40_680)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh38_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_6_IBUF_44),
    .I2(A_7_IBUF_45),
    .O(N203)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh38 (
    .I0(B_1_IBUF_71),
    .I1(N203),
    .I2(N200),
    .O(Sh38_677)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh48113 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_5_IBUF_43),
    .I3(A_7_IBUF_45),
    .O(Sh48113_691)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh48128 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_4_IBUF_42),
    .I3(A_6_IBUF_44),
    .O(Sh48128_692)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh48146 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_1_IBUF_39),
    .I3(A_3_IBUF_41),
    .O(Sh48146_693)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh4829 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_0_IBUF_32),
    .I3(A_2_IBUF_40),
    .O(Sh4829_694)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh51127 (
    .I0(B_1_IBUF_71),
    .I1(A_3_IBUF_41),
    .I2(A_5_IBUF_43),
    .O(Sh50114)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh49119 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_2_IBUF_40),
    .I3(A_4_IBUF_42),
    .O(Sh49119_696)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh49134 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_1_IBUF_39),
    .I3(A_3_IBUF_41),
    .O(Sh49134_697)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero4 (
    .I0(A_0_IBUF_32),
    .I1(A_10_IBUF_33),
    .I2(A_11_IBUF_34),
    .I3(A_12_IBUF_35),
    .O(Zero4_791)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero9 (
    .I0(A_13_IBUF_36),
    .I1(A_14_IBUF_37),
    .I2(A_15_IBUF_38),
    .I3(A_1_IBUF_39),
    .O(Zero9_814)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero21 (
    .I0(A_2_IBUF_40),
    .I1(A_3_IBUF_41),
    .I2(A_4_IBUF_42),
    .I3(A_5_IBUF_43),
    .O(Zero21_782)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero26 (
    .I0(A_6_IBUF_44),
    .I1(A_7_IBUF_45),
    .I2(A_8_IBUF_46),
    .I3(A_9_IBUF_47),
    .O(Zero26_784)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero36 (
    .I0(Zero4_791),
    .I1(Zero9_814),
    .I2(Zero21_782),
    .I3(Zero26_784),
    .O(Zero36_789)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero68 (
    .I0(B_14_IBUF_69),
    .I1(B_0_IBUF_64),
    .I2(A_14_IBUF_37),
    .I3(A_0_IBUF_32),
    .O(Zero68_801)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero81 (
    .I0(B_3_IBUF_73),
    .I1(B_4_IBUF_74),
    .I2(A_3_IBUF_41),
    .I3(A_4_IBUF_42),
    .O(Zero81_808)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  Zero109 (
    .I0(A_15_IBUF_38),
    .I1(B_15_IBUF_70),
    .O(Zero109_750)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero115 (
    .I0(N65),
    .I1(N63),
    .I2(N64),
    .I3(Zero109_750),
    .O(Zero115_754)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero130 (
    .I0(B_1_IBUF_71),
    .I1(B_5_IBUF_75),
    .I2(A_1_IBUF_39),
    .I3(A_5_IBUF_43),
    .O(Zero130_760)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero143 (
    .I0(B_12_IBUF_67),
    .I1(B_11_IBUF_66),
    .I2(A_12_IBUF_35),
    .I3(A_11_IBUF_34),
    .O(Zero143_766)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero167 (
    .I0(B_9_IBUF_79),
    .I1(B_10_IBUF_65),
    .I2(A_9_IBUF_47),
    .I3(A_10_IBUF_33),
    .O(Zero167_779)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero180 (
    .I0(B_7_IBUF_77),
    .I1(B_8_IBUF_78),
    .I2(A_7_IBUF_45),
    .I3(A_8_IBUF_46),
    .O(Zero180_780)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero194 (
    .I0(Zero130_760),
    .I1(Zero143_766),
    .I2(Zero167_779),
    .I3(Zero180_780),
    .O(Zero194_781)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero332 (
    .I0(Madd__old_C_1_lut[0]),
    .I1(Mcompar_Low_cmp_lt0000_lut[14]),
    .I2(Madd__old_C_1_lut[4]),
    .I3(Madd__old_C_1_lut[8]),
    .O(Zero332_787)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Zero337 (
    .I0(Zero303_786),
    .I1(Zero332_787),
    .O(Zero337_788)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  Zero399 (
    .I0(A_9_IBUF_47),
    .I1(B_9_IBUF_79),
    .I2(B_12_IBUF_67),
    .I3(A_12_IBUF_35),
    .O(Zero399_790)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  Zero432 (
    .I0(A_15_IBUF_38),
    .I1(B_15_IBUF_70),
    .I2(A_3_IBUF_41),
    .I3(B_3_IBUF_73),
    .O(Zero432_792)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  Zero479 (
    .I0(B_5_IBUF_75),
    .I1(A_5_IBUF_43),
    .I2(B_7_IBUF_77),
    .I3(A_7_IBUF_45),
    .O(Zero479_793)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero530 (
    .I0(Zero399_790),
    .I1(Zero432_792),
    .I2(Zero479_793),
    .I3(Mcompar_Zero_cmp_eq0009_lut[5]),
    .O(Zero530_794)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero541 (
    .I0(C_cmp_eq0014),
    .I1(Zero262_785),
    .I2(Zero337_788),
    .I3(Zero530_794),
    .O(Zero541_795)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero599 (
    .I0(A_0_IBUF_32),
    .I1(A_10_IBUF_33),
    .I2(A_11_IBUF_34),
    .I3(A_12_IBUF_35),
    .O(Zero599_797)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero612 (
    .I0(A_13_IBUF_36),
    .I1(A_14_IBUF_37),
    .I2(A_1_IBUF_39),
    .I3(A_2_IBUF_40),
    .O(Zero612_798)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero648 (
    .I0(A_3_IBUF_41),
    .I1(A_4_IBUF_42),
    .I2(A_5_IBUF_43),
    .I3(A_6_IBUF_44),
    .O(Zero648_799)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero661 (
    .I0(A_7_IBUF_45),
    .I1(A_8_IBUF_46),
    .I2(A_9_IBUF_47),
    .I3(B_10_IBUF_65),
    .O(Zero661_800)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero685 (
    .I0(B_11_IBUF_66),
    .I1(B_12_IBUF_67),
    .I2(B_13_IBUF_68),
    .I3(B_14_IBUF_69),
    .O(Zero685_802)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero698 (
    .I0(B_4_IBUF_74),
    .I1(B_5_IBUF_75),
    .I2(B_6_IBUF_76),
    .I3(B_7_IBUF_77),
    .O(Zero698_803)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero712 (
    .I0(Zero648_799),
    .I1(Zero661_800),
    .I2(Zero685_802),
    .I3(Zero698_803),
    .O(Zero712_804)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero810 (
    .I0(AUX_3_addsub0000[0]),
    .I1(N43),
    .I2(AUX_3_addsub0000[1]),
    .I3(AUX_3_addsub0000[8]),
    .O(Zero810_809)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  Zero841 (
    .I0(AUX_3_addsub0000[3]),
    .I1(AUX_3_addsub0000[2]),
    .I2(AUX_3_addsub0000[11]),
    .O(Zero841_810)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Zero928 (
    .I0(C_or0000),
    .I1(_old_C_1[0]),
    .I2(_old_C_1[1]),
    .O(Zero928_815)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero944 (
    .I0(_old_C_1[8]),
    .I1(Zero928_815),
    .I2(_old_C_1[10]),
    .I3(_old_C_1[9]),
    .O(Zero944_816)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  Zero1034 (
    .I0(Zero787_807),
    .I1(Zero853_811),
    .I2(Zero887),
    .I3(Zero1017_746),
    .O(Zero1034_747)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero1080 (
    .I0(Sh93),
    .I1(Zero1055_748),
    .I2(Sh90),
    .I3(Sh84_725),
    .O(Zero1080_749)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  Zero1094 (
    .I0(Sh91),
    .I1(Sh92),
    .I2(Sh89),
    .O(Zero1094_751)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  Zero1118 (
    .I0(Sh48),
    .I1(Sh85_726),
    .I2(Zero1080_749),
    .I3(Zero1094_751),
    .O(Zero1118_752)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero1146 (
    .I0(Sh86_727),
    .I1(N57),
    .I2(Sh87),
    .I3(Sh88),
    .O(Zero1146_753)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  Zero1172 (
    .I0(Sh82),
    .I1(Sh81),
    .I2(Zero1118_752),
    .I3(Zero1146_753),
    .O(Zero1172_755)
  );
  LUT4 #(
    .INIT ( 16'h0F01 ))
  Zero1282 (
    .I0(Sh3),
    .I1(Sh1),
    .I2(Sh22_652),
    .I3(N26),
    .O(Zero1282_758)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  Zero1286 (
    .I0(Sh20),
    .I1(Sh21_649),
    .I2(Zero1251_757),
    .I3(Zero1282_758),
    .O(Zero1286_759)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  Zero1357 (
    .I0(Zero1034_747),
    .I1(Zero1232_756),
    .I2(Zero1330_761),
    .I3(Zero1172_755),
    .O(Zero1357_762)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero1379 (
    .I0(Sh48),
    .I1(Sh52),
    .I2(Sh53_711),
    .I3(Sh54_712),
    .O(Zero1379_763)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  Zero1391 (
    .I0(Sh50),
    .I1(Sh51),
    .O(Zero1391_765)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  Zero1570 (
    .I0(_AUX_5[7]),
    .I1(_AUX_5[6]),
    .I2(_AUX_5[15]),
    .O(Zero1570_773)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero1641 (
    .I0(Zero1559),
    .I1(Zero1570_773),
    .I2(Zero1601),
    .I3(Zero1621),
    .O(Zero1641_778)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  Zero1681 (
    .I0(C_and0000),
    .I1(Zero1357_762),
    .I2(Zero1522_770),
    .I3(Zero1641_778),
    .O(Zero_OBUF_818)
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \C<6>10  (
    .I0(A_6_IBUF_44),
    .I1(C_cmp_eq0015),
    .I2(C_or0003),
    .I3(B_6_IBUF_76),
    .O(\C<6>10_177 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<6>74  (
    .I0(N54),
    .I1(Sh22_652),
    .I2(AUX_3_addsub0000[6]),
    .I3(N43),
    .O(\C<6>74_181 )
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \C<7>10  (
    .I0(A_7_IBUF_45),
    .I1(C_cmp_eq0015),
    .I2(C_or0003),
    .I3(B_7_IBUF_77),
    .O(\C<7>10_183 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<7>74  (
    .I0(N54),
    .I1(Sh23),
    .I2(AUX_3_addsub0000[7]),
    .I3(N43),
    .O(\C<7>74_187 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  Negative38 (
    .I0(C_and0000),
    .I1(N51),
    .I2(Negative13),
    .I3(N37),
    .O(Negative_OBUF_621)
  );
  LUT4 #(
    .INIT ( 16'hACA8 ))
  \C<15>1116  (
    .I0(C_cmp_eq0013),
    .I1(A_15_IBUF_38),
    .I2(B_15_IBUF_70),
    .I3(C_cmp_eq0014),
    .O(\C<15>1116_131 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \C<15>1129  (
    .I0(\C<15>1120_132 ),
    .I1(A_15_IBUF_38),
    .I2(C_or0000),
    .I3(_old_C_1[15]),
    .O(\C<15>1129_133 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<15>1148  (
    .I0(\C<15>1116_131 ),
    .I1(_old_C_6[15]),
    .I2(C_or0001),
    .I3(\C<15>1129_133 ),
    .O(N37)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<15>13  (
    .I0(C_cmp_eq0021),
    .I1(N60),
    .I2(\C<15>7_138 ),
    .I3(\C<15>1_130 ),
    .O(\C<15>13_134 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<15>26  (
    .I0(AUX_3_addsub0000[15]),
    .I1(N43),
    .I2(A_15_IBUF_38),
    .I3(\C<15>13_134 ),
    .O(\C<15>26_135 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<15>48  (
    .I0(\C<15>26_135 ),
    .I1(_AUX_5[15]),
    .I2(N38),
    .I3(\C<15>33_136 ),
    .O(\C<15>48_137 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \C<15>69  (
    .I0(C_and0000),
    .I1(N37),
    .I2(\C<15>48_137 ),
    .O(C_15_OBUF_208)
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \C<9>10  (
    .I0(A_9_IBUF_47),
    .I1(C_cmp_eq0015),
    .I2(C_or0003),
    .I3(B_9_IBUF_79),
    .O(\C<9>10_196 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<9>60  (
    .I0(\C<9>10_196 ),
    .I1(N50),
    .I2(\C<9>47_199 ),
    .I3(\C<9>11_197 ),
    .O(\C<9>60_200 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<9>87  (
    .I0(AUX_3_addsub0000[9]),
    .I1(N43),
    .I2(_old_C_1[9]),
    .I3(C_or0000),
    .O(\C<9>87_201 )
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \C<11>10  (
    .I0(A_11_IBUF_34),
    .I1(C_cmp_eq0015),
    .I2(C_or0003),
    .I3(B_11_IBUF_66),
    .O(\C<11>10_98 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<11>61  (
    .I0(C_cmp_eq0021),
    .I1(Sh91),
    .I2(N50),
    .I3(\C<11>48_100 ),
    .O(\C<11>61_101 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<11>87  (
    .I0(_old_C_1[11]),
    .I1(C_or0000),
    .I2(AUX_3_addsub0000[11]),
    .I3(N43),
    .O(\C<11>87_102 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \C<11>130  (
    .I0(C_and0000),
    .I1(\C<11>96_103 ),
    .I2(\C<11>115_99 ),
    .O(C_11_OBUF_204)
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \C<12>10  (
    .I0(A_12_IBUF_35),
    .I1(C_cmp_eq0015),
    .I2(C_or0003),
    .I3(B_12_IBUF_67),
    .O(\C<12>10_105 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<12>68  (
    .I0(C_cmp_eq0021),
    .I1(Sh92),
    .I2(N50),
    .I3(\C<12>55_109 ),
    .O(\C<12>68_110 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<12>95  (
    .I0(_old_C_1[12]),
    .I1(C_or0000),
    .I2(AUX_3_addsub0000[12]),
    .I3(N43),
    .O(\C<12>95_111 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<12>104  (
    .I0(\C<12>18_108 ),
    .I1(\C<12>68_110 ),
    .I2(\C<12>95_111 ),
    .I3(\C<12>96_112 ),
    .O(\C<12>104_106 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \C<12>138  (
    .I0(C_and0000),
    .I1(\C<12>104_106 ),
    .I2(\C<12>123_107 ),
    .O(C_12_OBUF_205)
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \C<13>10  (
    .I0(A_13_IBUF_36),
    .I1(C_cmp_eq0015),
    .I2(C_or0003),
    .I3(B_13_IBUF_68),
    .O(\C<13>10_114 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<13>66  (
    .I0(N50),
    .I1(\C<13>47_117 ),
    .I2(N60),
    .I3(\C<13>60_118 ),
    .O(\C<13>66_119 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<13>94  (
    .I0(_old_C_1[13]),
    .I1(C_or0000),
    .I2(AUX_3_addsub0000[13]),
    .I3(N43),
    .O(\C<13>94_120 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \C<13>137  (
    .I0(C_and0000),
    .I1(\C<13>103_115 ),
    .I2(\C<13>122_116 ),
    .O(C_13_OBUF_206)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<14>21  (
    .I0(\C<14>6_127 ),
    .I1(_old_C_1[14]),
    .I2(C_or0000),
    .I3(\C<14>10_122 ),
    .O(\C<14>21_126 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<14>114  (
    .I0(\C<14>21_126 ),
    .I1(N54),
    .I2(Sh30),
    .I3(\C<14>102_123 ),
    .O(\C<14>114_124 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \C<14>148  (
    .I0(C_and0000),
    .I1(\C<14>114_124 ),
    .I2(\C<14>133_125 ),
    .O(C_14_OBUF_207)
  );
  LUT4 #(
    .INIT ( 16'h2008 ))
  Flag26 (
    .I0(C_or0000),
    .I1(_old_C_1[15]),
    .I2(A_15_IBUF_38),
    .I3(B_15_IBUF_70),
    .O(Flag26_249)
  );
  LUT4 #(
    .INIT ( 16'h2008 ))
  Flag54 (
    .I0(C_or0001),
    .I1(_old_C_6[15]),
    .I2(D[15]),
    .I3(A_15_IBUF_38),
    .O(Flag54_250)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  Flag71 (
    .I0(C_and0000),
    .I1(Flag26_249),
    .I2(Flag54_250),
    .O(Flag_OBUF_251)
  );
  IBUF   CarryIn_IBUF (
    .I(CarryIn),
    .O(CarryIn_IBUF_230)
  );
  IBUF   A_15_IBUF (
    .I(A[15]),
    .O(A_15_IBUF_38)
  );
  IBUF   A_14_IBUF (
    .I(A[14]),
    .O(A_14_IBUF_37)
  );
  IBUF   A_13_IBUF (
    .I(A[13]),
    .O(A_13_IBUF_36)
  );
  IBUF   A_12_IBUF (
    .I(A[12]),
    .O(A_12_IBUF_35)
  );
  IBUF   A_11_IBUF (
    .I(A[11]),
    .O(A_11_IBUF_34)
  );
  IBUF   A_10_IBUF (
    .I(A[10]),
    .O(A_10_IBUF_33)
  );
  IBUF   A_9_IBUF (
    .I(A[9]),
    .O(A_9_IBUF_47)
  );
  IBUF   A_8_IBUF (
    .I(A[8]),
    .O(A_8_IBUF_46)
  );
  IBUF   A_7_IBUF (
    .I(A[7]),
    .O(A_7_IBUF_45)
  );
  IBUF   A_6_IBUF (
    .I(A[6]),
    .O(A_6_IBUF_44)
  );
  IBUF   A_5_IBUF (
    .I(A[5]),
    .O(A_5_IBUF_43)
  );
  IBUF   A_4_IBUF (
    .I(A[4]),
    .O(A_4_IBUF_42)
  );
  IBUF   A_3_IBUF (
    .I(A[3]),
    .O(A_3_IBUF_41)
  );
  IBUF   A_2_IBUF (
    .I(A[2]),
    .O(A_2_IBUF_40)
  );
  IBUF   A_1_IBUF (
    .I(A[1]),
    .O(A_1_IBUF_39)
  );
  IBUF   A_0_IBUF (
    .I(A[0]),
    .O(A_0_IBUF_32)
  );
  IBUF   B_15_IBUF (
    .I(B[15]),
    .O(B_15_IBUF_70)
  );
  IBUF   B_14_IBUF (
    .I(B[14]),
    .O(B_14_IBUF_69)
  );
  IBUF   B_13_IBUF (
    .I(B[13]),
    .O(B_13_IBUF_68)
  );
  IBUF   B_12_IBUF (
    .I(B[12]),
    .O(B_12_IBUF_67)
  );
  IBUF   B_11_IBUF (
    .I(B[11]),
    .O(B_11_IBUF_66)
  );
  IBUF   B_10_IBUF (
    .I(B[10]),
    .O(B_10_IBUF_65)
  );
  IBUF   B_9_IBUF (
    .I(B[9]),
    .O(B_9_IBUF_79)
  );
  IBUF   B_8_IBUF (
    .I(B[8]),
    .O(B_8_IBUF_78)
  );
  IBUF   B_7_IBUF (
    .I(B[7]),
    .O(B_7_IBUF_77)
  );
  IBUF   B_6_IBUF (
    .I(B[6]),
    .O(B_6_IBUF_76)
  );
  IBUF   B_5_IBUF (
    .I(B[5]),
    .O(B_5_IBUF_75)
  );
  IBUF   B_4_IBUF (
    .I(B[4]),
    .O(B_4_IBUF_74)
  );
  IBUF   B_3_IBUF (
    .I(B[3]),
    .O(B_3_IBUF_73)
  );
  IBUF   B_2_IBUF (
    .I(B[2]),
    .O(B_2_IBUF_72)
  );
  IBUF   B_1_IBUF (
    .I(B[1]),
    .O(B_1_IBUF_71)
  );
  IBUF   B_0_IBUF (
    .I(B[0]),
    .O(B_0_IBUF_64)
  );
  IBUF   Opcode_7_IBUF (
    .I(Opcode[7]),
    .O(Opcode_7_IBUF_637)
  );
  IBUF   Opcode_6_IBUF (
    .I(Opcode[6]),
    .O(Opcode_6_IBUF_636)
  );
  IBUF   Opcode_5_IBUF (
    .I(Opcode[5]),
    .O(Opcode_5_IBUF_635)
  );
  IBUF   Opcode_4_IBUF (
    .I(Opcode[4]),
    .O(Opcode_4_IBUF_634)
  );
  IBUF   Opcode_3_IBUF (
    .I(Opcode[3]),
    .O(Opcode_3_IBUF_633)
  );
  IBUF   Opcode_2_IBUF (
    .I(Opcode[2]),
    .O(Opcode_2_IBUF_632)
  );
  IBUF   Opcode_1_IBUF (
    .I(Opcode[1]),
    .O(Opcode_1_IBUF_631)
  );
  IBUF   Opcode_0_IBUF (
    .I(Opcode[0]),
    .O(Opcode_0_IBUF_630)
  );
  OBUF   Flag_OBUF (
    .I(Flag_OBUF_251),
    .O(Flag)
  );
  OBUF   Carry_OBUF (
    .I(Carry_OBUF_231),
    .O(Carry)
  );
  OBUF   Low_OBUF (
    .I(Low_OBUF_254),
    .O(Low)
  );
  OBUF   Negative_OBUF (
    .I(Negative_OBUF_621),
    .O(Negative)
  );
  OBUF   Zero_OBUF (
    .I(Zero_OBUF_818),
    .O(Zero)
  );
  OBUF   C_15_OBUF (
    .I(C_15_OBUF_208),
    .O(C[15])
  );
  OBUF   C_14_OBUF (
    .I(C_14_OBUF_207),
    .O(C[14])
  );
  OBUF   C_13_OBUF (
    .I(C_13_OBUF_206),
    .O(C[13])
  );
  OBUF   C_12_OBUF (
    .I(C_12_OBUF_205),
    .O(C[12])
  );
  OBUF   C_11_OBUF (
    .I(C_11_OBUF_204),
    .O(C[11])
  );
  OBUF   C_10_OBUF (
    .I(C_10_OBUF_203),
    .O(C[10])
  );
  OBUF   C_9_OBUF (
    .I(C_9_OBUF_217),
    .O(C[9])
  );
  OBUF   C_8_OBUF (
    .I(C_8_OBUF_216),
    .O(C[8])
  );
  OBUF   C_7_OBUF (
    .I(C_7_OBUF_215),
    .O(C[7])
  );
  OBUF   C_6_OBUF (
    .I(C_6_OBUF_214),
    .O(C[6])
  );
  OBUF   C_5_OBUF (
    .I(C_5_OBUF_213),
    .O(C[5])
  );
  OBUF   C_4_OBUF (
    .I(C_4_OBUF_212),
    .O(C[4])
  );
  OBUF   C_3_OBUF (
    .I(C_3_OBUF_211),
    .O(C[3])
  );
  OBUF   C_2_OBUF (
    .I(C_2_OBUF_210),
    .O(C[2])
  );
  OBUF   C_1_OBUF (
    .I(C_1_OBUF_209),
    .O(C[1])
  );
  OBUF   C_0_OBUF (
    .I(C_0_OBUF_202),
    .O(C[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<0>1  (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .O(\Madd__old_C_1_lut<0>1_367 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<4>1  (
    .I0(A_4_IBUF_42),
    .I1(B_4_IBUF_74),
    .O(\Madd__old_C_1_lut<4>1_378 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<8>1  (
    .I0(A_8_IBUF_46),
    .I1(B_8_IBUF_78),
    .O(\Madd__old_C_1_lut<8>1_383 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<1>_rt  (
    .I0(AUX_3_addsub0000[1]),
    .O(\Madd__AUX_5_cy<1>_rt_332 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<2>_rt  (
    .I0(AUX_3_addsub0000[2]),
    .O(\Madd__AUX_5_cy<2>_rt_334 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<3>_rt  (
    .I0(AUX_3_addsub0000[3]),
    .O(\Madd__AUX_5_cy<3>_rt_336 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<4>_rt  (
    .I0(AUX_3_addsub0000[4]),
    .O(\Madd__AUX_5_cy<4>_rt_338 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<5>_rt  (
    .I0(AUX_3_addsub0000[5]),
    .O(\Madd__AUX_5_cy<5>_rt_340 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<6>_rt  (
    .I0(AUX_3_addsub0000[6]),
    .O(\Madd__AUX_5_cy<6>_rt_342 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<7>_rt  (
    .I0(AUX_3_addsub0000[7]),
    .O(\Madd__AUX_5_cy<7>_rt_344 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<8>_rt  (
    .I0(AUX_3_addsub0000[8]),
    .O(\Madd__AUX_5_cy<8>_rt_346 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<9>_rt  (
    .I0(AUX_3_addsub0000[9]),
    .O(\Madd__AUX_5_cy<9>_rt_348 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<10>_rt  (
    .I0(AUX_3_addsub0000[10]),
    .O(\Madd__AUX_5_cy<10>_rt_320 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<11>_rt  (
    .I0(AUX_3_addsub0000[11]),
    .O(\Madd__AUX_5_cy<11>_rt_322 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<12>_rt  (
    .I0(AUX_3_addsub0000[12]),
    .O(\Madd__AUX_5_cy<12>_rt_324 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<13>_rt  (
    .I0(AUX_3_addsub0000[13]),
    .O(\Madd__AUX_5_cy<13>_rt_326 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<14>_rt  (
    .I0(AUX_3_addsub0000[14]),
    .O(\Madd__AUX_5_cy<14>_rt_328 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<15>_rt  (
    .I0(AUX_3_addsub0000[15]),
    .O(\Madd__AUX_5_cy<15>_rt_330 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_xor<16>_rt  (
    .I0(Madd_AUX_3_index0000),
    .O(\Madd__AUX_5_xor<16>_rt_350 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  Zero303 (
    .I0(A_13_IBUF_36),
    .I1(B_13_IBUF_68),
    .I2(A_6_IBUF_44),
    .I3(B_6_IBUF_76),
    .O(Zero303_786)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  Zero262 (
    .I0(A_1_IBUF_39),
    .I1(B_1_IBUF_71),
    .I2(A_2_IBUF_40),
    .I3(B_2_IBUF_72),
    .O(Zero262_785)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  Zero1522_SW0 (
    .I0(Zero1379_763),
    .I1(Zero1380_764),
    .I2(Zero1391_765),
    .I3(Zero1443_767),
    .O(N227)
  );
  LUT4 #(
    .INIT ( 16'hAA02 ))
  Zero1522 (
    .I0(Zero1500_769),
    .I1(Sh55_713),
    .I2(N227),
    .I3(old_C_11_or0000),
    .O(Zero1522_770)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \C<0>20_SW0  (
    .I0(C_cmp_eq0015),
    .I1(A_0_IBUF_32),
    .I2(_old_C_1[0]),
    .I3(C_or0000),
    .O(N233)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<0>20  (
    .I0(\C<0>18_81 ),
    .I1(AUX_3_addsub0000[0]),
    .I2(N43),
    .I3(N233),
    .O(\C<0>20_82 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<0>62  (
    .I0(\C<0>20_82 ),
    .I1(_AUX_5[0]),
    .I2(N38),
    .I3(\C<0>56_84 ),
    .O(\C<0>62_85 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \C<4>10_SW0  (
    .I0(C_cmp_eq0015),
    .I1(A_4_IBUF_42),
    .I2(C_cmp_eq0013),
    .I3(B_4_IBUF_74),
    .O(N235)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \C<4>10  (
    .I0(N235),
    .I1(Madd__old_C_1_lut[4]),
    .I2(N118),
    .I3(N50),
    .O(\C<4>10_165 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<4>70_SW0  (
    .I0(N38),
    .I1(_AUX_5[4]),
    .I2(\C<4>68_168 ),
    .O(N237)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<4>70  (
    .I0(\C<4>10_165 ),
    .I1(\C<4>18_166 ),
    .I2(\C<4>37_167 ),
    .I3(N237),
    .O(\C<4>70_169 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \C<3>13_SW0  (
    .I0(N26),
    .I1(old_C_11_or0000),
    .I2(Sh3),
    .I3(C_or0004),
    .O(N239)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<3>13  (
    .I0(\C<3>1_155 ),
    .I1(C_or0000),
    .I2(_old_C_1[3]),
    .I3(N239),
    .O(\C<3>13_156 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<10>66_SW0  (
    .I0(C_cmp_eq0021),
    .I1(Sh90),
    .I2(C_or0000),
    .I3(_old_C_1[10]),
    .O(N243)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<10>66  (
    .I0(\C<10>59_94 ),
    .I1(AUX_3_addsub0000[10]),
    .I2(N43),
    .I3(N243),
    .O(\C<10>66_95 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<2>83_SW0  (
    .I0(C_or0000),
    .I1(_old_C_1[2]),
    .I2(\C<2>79_152 ),
    .O(N245)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<2>83  (
    .I0(\C<2>10_147 ),
    .I1(\C<2>47_151 ),
    .I2(N50),
    .I3(N245),
    .O(\C<2>83_153 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<5>93_SW0  (
    .I0(Sh53_711),
    .I1(N60),
    .I2(Sh85_726),
    .I3(C_cmp_eq0021),
    .O(N247)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  Zero787_SW0 (
    .I0(Zero541_795),
    .I1(Mcompar_Zero_cmp_eq0009_cy[7]),
    .I2(Zero572_796),
    .I3(Zero764_806),
    .O(N251)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  Zero787 (
    .I0(Zero220_783),
    .I1(C_cmp_eq0015),
    .I2(Zero36_789),
    .I3(N251),
    .O(Zero787_807)
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  Zero853_SW0 (
    .I0(AUX_3_addsub0000[5]),
    .I1(Zero810_809),
    .I2(Zero841_810),
    .I3(AUX_3_addsub0000[9]),
    .O(N253)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero853 (
    .I0(AUX_3_addsub0000[10]),
    .I1(AUX_3_addsub0000[12]),
    .I2(AUX_3_addsub0000[4]),
    .I3(N253),
    .O(Zero853_811)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  Zero971_SW0 (
    .I0(_old_C_1[3]),
    .I1(_old_C_1[4]),
    .I2(_old_C_1[5]),
    .O(N255)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero971 (
    .I0(_old_C_1[11]),
    .I1(_old_C_1[12]),
    .I2(_old_C_1[2]),
    .I3(N255),
    .O(Zero971_817)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero1017_SW0 (
    .I0(_old_C_1[14]),
    .I1(_old_C_1[15]),
    .I2(_old_C_1[6]),
    .I3(_old_C_1[7]),
    .O(N257)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  Zero1017 (
    .I0(_old_C_1[13]),
    .I1(N257),
    .I2(Zero944_816),
    .I3(Zero971_817),
    .O(Zero1017_746)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero1443_SW0 (
    .I0(Sh56),
    .I1(Sh57),
    .I2(Sh58),
    .I3(Sh59),
    .O(N259)
  );
  LUT4 #(
    .INIT ( 16'h0F01 ))
  Zero1443 (
    .I0(Sh45),
    .I1(Sh44),
    .I2(N259),
    .I3(N26),
    .O(Zero1443_767)
  );
  LUT4 #(
    .INIT ( 16'h0A08 ))
  Zero1500 (
    .I0(N114),
    .I1(old_C_11_or0000),
    .I2(N23),
    .I3(Zero1489_768),
    .O(Zero1500_769)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<6>93_SW0  (
    .I0(Sh54_712),
    .I1(N60),
    .I2(Sh86_727),
    .I3(C_cmp_eq0021),
    .O(N261)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<7>93_SW0  (
    .I0(Sh55_713),
    .I1(N60),
    .I2(Sh87),
    .I3(C_cmp_eq0021),
    .O(N263)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<9>96_SW0  (
    .I0(Sh25_655),
    .I1(N54),
    .I2(Sh89),
    .I3(C_cmp_eq0021),
    .O(N265)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<11>96_SW0  (
    .I0(N54),
    .I1(Sh27_657),
    .I2(N60),
    .I3(Sh59),
    .O(N267)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<11>96  (
    .I0(\C<11>10_98 ),
    .I1(\C<11>61_101 ),
    .I2(\C<11>87_102 ),
    .I3(N267),
    .O(\C<11>96_103 )
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \C<12>18  (
    .I0(Sh44),
    .I1(N26),
    .I2(N60),
    .I3(\C<12>10_105 ),
    .O(\C<12>18_108 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<13>103_SW0  (
    .I0(Sh29),
    .I1(N54),
    .I2(Sh93),
    .I3(C_cmp_eq0021),
    .O(N269)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<13>103  (
    .I0(\C<13>10_114 ),
    .I1(\C<13>66_119 ),
    .I2(\C<13>94_120 ),
    .I3(N269),
    .O(\C<13>103_115 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<14>102_SW0  (
    .I0(AUX_3_addsub0000[14]),
    .I1(N43),
    .I2(\C<14>68_128 ),
    .I3(N50),
    .O(N271)
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \C<14>102  (
    .I0(N60),
    .I1(N26),
    .I2(Sh46),
    .I3(N271),
    .O(\C<14>102_123 )
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  Zero1055 (
    .I0(Sh78),
    .I1(C_cmp_eq0021),
    .I2(A_15_IBUF_38),
    .I3(N26),
    .O(Zero1055_748)
  );
  LUT4 #(
    .INIT ( 16'h9980 ))
  C_or00041 (
    .I0(Opcode_0_IBUF_630),
    .I1(Opcode_1_IBUF_631),
    .I2(N50),
    .I3(N114),
    .O(C_or0004)
  );
  LUT4 #(
    .INIT ( 16'h1330 ))
  \C<1>53  (
    .I0(Opcode_0_IBUF_630),
    .I1(Opcode_1_IBUF_631),
    .I2(A_1_IBUF_39),
    .I3(B_1_IBUF_71),
    .O(\C<1>53_143 )
  );
  LUT4 #(
    .INIT ( 16'h1330 ))
  \C<2>47  (
    .I0(Opcode_0_IBUF_630),
    .I1(Opcode_1_IBUF_631),
    .I2(A_2_IBUF_40),
    .I3(B_2_IBUF_72),
    .O(\C<2>47_151 )
  );
  LUT4 #(
    .INIT ( 16'h1330 ))
  \C<5>47  (
    .I0(Opcode_0_IBUF_630),
    .I1(Opcode_1_IBUF_631),
    .I2(A_5_IBUF_43),
    .I3(B_5_IBUF_75),
    .O(\C<5>47_173 )
  );
  LUT4 #(
    .INIT ( 16'h1330 ))
  \C<6>47  (
    .I0(Opcode_0_IBUF_630),
    .I1(Opcode_1_IBUF_631),
    .I2(A_6_IBUF_44),
    .I3(B_6_IBUF_76),
    .O(\C<6>47_179 )
  );
  LUT4 #(
    .INIT ( 16'h1330 ))
  \C<7>47  (
    .I0(Opcode_0_IBUF_630),
    .I1(Opcode_1_IBUF_631),
    .I2(A_7_IBUF_45),
    .I3(B_7_IBUF_77),
    .O(\C<7>47_185 )
  );
  LUT4 #(
    .INIT ( 16'h1330 ))
  \C<9>47  (
    .I0(Opcode_0_IBUF_630),
    .I1(Opcode_1_IBUF_631),
    .I2(A_9_IBUF_47),
    .I3(B_9_IBUF_79),
    .O(\C<9>47_199 )
  );
  LUT4 #(
    .INIT ( 16'h1330 ))
  \C<11>48  (
    .I0(Opcode_0_IBUF_630),
    .I1(Opcode_1_IBUF_631),
    .I2(A_11_IBUF_34),
    .I3(B_11_IBUF_66),
    .O(\C<11>48_100 )
  );
  LUT4 #(
    .INIT ( 16'h1330 ))
  \C<12>55  (
    .I0(Opcode_0_IBUF_630),
    .I1(Opcode_1_IBUF_631),
    .I2(A_12_IBUF_35),
    .I3(B_12_IBUF_67),
    .O(\C<12>55_109 )
  );
  LUT4 #(
    .INIT ( 16'h1330 ))
  \C<13>47  (
    .I0(Opcode_0_IBUF_630),
    .I1(Opcode_1_IBUF_631),
    .I2(A_13_IBUF_36),
    .I3(B_13_IBUF_68),
    .O(\C<13>47_117 )
  );
  LUT4 #(
    .INIT ( 16'h1330 ))
  \C<14>68  (
    .I0(Opcode_0_IBUF_630),
    .I1(Opcode_1_IBUF_631),
    .I2(A_14_IBUF_37),
    .I3(B_14_IBUF_69),
    .O(\C<14>68_128 )
  );
  LUT4 #(
    .INIT ( 16'hF828 ))
  \C<0>18  (
    .I0(C_cmp_eq0014),
    .I1(A_0_IBUF_32),
    .I2(B_0_IBUF_64),
    .I3(C_cmp_eq0013),
    .O(\C<0>18_81 )
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Sh931 (
    .I0(N26),
    .I1(A_15_IBUF_38),
    .I2(B_1_IBUF_71),
    .I3(N24),
    .O(Sh93)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  C_or00011 (
    .I0(Opcode_3_IBUF_633),
    .I1(Opcode_4_IBUF_634),
    .I2(Opcode_2_IBUF_632),
    .I3(Opcode_1_IBUF_631),
    .O(C_or0001)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \C<0>44  (
    .I0(C_cmp_eq0013),
    .I1(B_0_IBUF_64),
    .I2(N51),
    .I3(Opcode_1_IBUF_631),
    .O(\C<0>44_83 )
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \C<0>73  (
    .I0(N114),
    .I1(N23),
    .I2(old_C_11_or0000),
    .I3(C_cmp_eq0021),
    .O(\C<0>73_86 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero31 (
    .I0(Opcode_3_IBUF_633),
    .I1(Opcode_2_IBUF_632),
    .I2(Opcode_4_IBUF_634),
    .I3(Opcode_1_IBUF_631),
    .O(N38)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Carry_SW1 (
    .I0(Madd_AUX_3_index0000),
    .I1(N38),
    .I2(N43),
    .I3(_AUX_5[16]),
    .O(N275)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Carry_617 (
    .I0(Opcode_5_IBUF_635),
    .I1(Opcode_6_IBUF_636),
    .I2(Opcode_7_IBUF_637),
    .I3(N275),
    .O(Carry_OBUF_231)
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<4>37_SW0  (
    .I0(A_4_IBUF_42),
    .I1(B_4_IBUF_74),
    .I2(C_or0003),
    .I3(C_cmp_eq0013),
    .O(N277)
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \C<4>37  (
    .I0(Sh20),
    .I1(old_C_11_or0000),
    .I2(C_or0004),
    .I3(N277),
    .O(\C<4>37_167 )
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Sh921 (
    .I0(B_2_IBUF_72),
    .I1(A_15_IBUF_38),
    .I2(B_3_IBUF_73),
    .I3(Sh44),
    .O(Sh92)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Sh911 (
    .I0(B_2_IBUF_72),
    .I1(A_15_IBUF_38),
    .I2(B_3_IBUF_73),
    .I3(Sh43_683),
    .O(Sh91)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Sh471 (
    .I0(A_15_IBUF_38),
    .I1(B_0_IBUF_64),
    .I2(B_1_IBUF_71),
    .O(Sh47)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \C<3>90  (
    .I0(N57),
    .I1(B_2_IBUF_72),
    .I2(B_3_IBUF_73),
    .I3(A_15_IBUF_38),
    .O(\C<3>90_162 )
  );
  LUT4 #(
    .INIT ( 16'h0105 ))
  \C<3>122_SW0  (
    .I0(\C<3>79_161 ),
    .I1(C_or0001),
    .I2(\C<3>95_163 ),
    .I3(_old_C_6[3]),
    .O(N279)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<3>122  (
    .I0(Opcode_5_IBUF_635),
    .I1(Opcode_6_IBUF_636),
    .I2(Opcode_7_IBUF_637),
    .I3(N279),
    .O(C_3_OBUF_211)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \C<1>98_SW0  (
    .I0(N23),
    .I1(old_C_11_or0000),
    .I2(Sh49),
    .I3(N114),
    .O(N281)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<1>98  (
    .I0(\C<1>15_141 ),
    .I1(\C<1>4_142 ),
    .I2(\C<1>72_144 ),
    .I3(N281),
    .O(\C<1>98_145 )
  );
  LUT4 #(
    .INIT ( 16'h0105 ))
  \C<1>145_SW0  (
    .I0(\C<1>129_140 ),
    .I1(C_cmp_eq0021),
    .I2(\C<1>98_145 ),
    .I3(Sh81),
    .O(N283)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<1>145  (
    .I0(Opcode_5_IBUF_635),
    .I1(Opcode_6_IBUF_636),
    .I2(Opcode_7_IBUF_637),
    .I3(N283),
    .O(C_1_OBUF_209)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \C<8>46  (
    .I0(C_cmp_eq0013),
    .I1(B_8_IBUF_78),
    .I2(N51),
    .I3(Opcode_1_IBUF_631),
    .O(\C<8>46_191 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \C<5>60_SW0  (
    .I0(\C<5>47_173 ),
    .I1(Opcode_2_IBUF_632),
    .I2(Opcode_3_IBUF_633),
    .I3(Opcode_4_IBUF_634),
    .O(N285)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<5>60  (
    .I0(\C<5>10_171 ),
    .I1(C_or0000),
    .I2(_old_C_1[5]),
    .I3(N285),
    .O(\C<5>60_174 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  Zero220_SW0 (
    .I0(Zero194_781),
    .I1(Zero68_801),
    .I2(Zero81_808),
    .O(N287)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero220 (
    .I0(N51),
    .I1(Opcode_1_IBUF_631),
    .I2(Zero115_754),
    .I3(N287),
    .O(Zero220_783)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero744_SW0 (
    .I0(B_3_IBUF_73),
    .I1(B_8_IBUF_78),
    .I2(B_9_IBUF_79),
    .I3(N58),
    .O(N289)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero744 (
    .I0(A_15_IBUF_38),
    .I1(B_15_IBUF_70),
    .I2(B_2_IBUF_72),
    .I3(N289),
    .O(Zero744_805)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero1232 (
    .I0(old_C_11_or000014_869),
    .I1(old_C_11_or00004_870),
    .I2(old_C_11_or00009_871),
    .I3(N293),
    .O(Zero1232_756)
  );
  LUT4 #(
    .INIT ( 16'hF2F3 ))
  Zero1251 (
    .I0(N58),
    .I1(Sh2),
    .I2(N26),
    .I3(A_0_IBUF_32),
    .O(Zero1251_757)
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  Zero1330_SW0 (
    .I0(Zero1286_759),
    .I1(Sh30),
    .I2(Sh31_669),
    .I3(old_C_11_or00009_871),
    .O(N295)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  Zero1330 (
    .I0(C_or0004),
    .I1(old_C_11_or000014_869),
    .I2(old_C_11_or00004_870),
    .I3(N295),
    .O(Zero1330_761)
  );
  LUT4 #(
    .INIT ( 16'h1555 ))
  Zero1380 (
    .I0(N55),
    .I1(Sh45),
    .I2(B_3_IBUF_73),
    .I3(B_2_IBUF_72),
    .O(Zero1380_764)
  );
  LUT4 #(
    .INIT ( 16'hFFAB ))
  Zero1489 (
    .I0(B_2_IBUF_72),
    .I1(Sh46),
    .I2(Sh47),
    .I3(B_3_IBUF_73),
    .O(Zero1489_768)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \C<6>60_SW0  (
    .I0(\C<6>47_179 ),
    .I1(Opcode_2_IBUF_632),
    .I2(Opcode_3_IBUF_633),
    .I3(Opcode_4_IBUF_634),
    .O(N297)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<6>60  (
    .I0(\C<6>10_177 ),
    .I1(C_or0000),
    .I2(_old_C_1[6]),
    .I3(N297),
    .O(\C<6>60_180 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \C<7>60_SW0  (
    .I0(\C<7>47_185 ),
    .I1(Opcode_2_IBUF_632),
    .I2(Opcode_3_IBUF_633),
    .I3(Opcode_4_IBUF_634),
    .O(N299)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<7>60  (
    .I0(\C<7>10_183 ),
    .I1(C_or0000),
    .I2(_old_C_1[7]),
    .I3(N299),
    .O(\C<7>60_186 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \C<15>1  (
    .I0(B_15_IBUF_70),
    .I1(N51),
    .I2(Opcode_1_IBUF_631),
    .O(\C<15>1_130 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<15>7  (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(B_2_IBUF_72),
    .I3(B_3_IBUF_73),
    .O(\C<15>7_138 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \C<15>33  (
    .I0(Sh31_669),
    .I1(C_or0004),
    .I2(old_C_11_or0000),
    .O(\C<15>33_136 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \C<9>11  (
    .I0(N23),
    .I1(old_C_11_or0000),
    .I2(N114),
    .I3(Sh57),
    .O(\C<9>11_197 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \C<12>96  (
    .I0(Sh28),
    .I1(C_or0004),
    .I2(old_C_11_or0000),
    .O(\C<12>96_112 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \C<13>60  (
    .I0(Sh45),
    .I1(B_2_IBUF_72),
    .I2(B_3_IBUF_73),
    .O(\C<13>60_118 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \C<14>6_SW0  (
    .I0(B_14_IBUF_69),
    .I1(N51),
    .I2(Opcode_1_IBUF_631),
    .O(N301)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<14>6  (
    .I0(Sh94),
    .I1(C_cmp_eq0021),
    .I2(N301),
    .I3(A_14_IBUF_37),
    .O(\C<14>6_127 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \C<1>129  (
    .I0(N52),
    .I1(Opcode_1_IBUF_631),
    .I2(_AUX_5[1]),
    .I3(_old_C_6[1]),
    .O(\C<1>129_140 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \C<2>127  (
    .I0(N52),
    .I1(Opcode_1_IBUF_631),
    .I2(_AUX_5[2]),
    .I3(_old_C_6[2]),
    .O(\C<2>127_150 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \C<5>112  (
    .I0(N52),
    .I1(Opcode_1_IBUF_631),
    .I2(_AUX_5[5]),
    .I3(_old_C_6[5]),
    .O(\C<5>112_172 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \C<6>112  (
    .I0(N52),
    .I1(Opcode_1_IBUF_631),
    .I2(_AUX_5[6]),
    .I3(_old_C_6[6]),
    .O(\C<6>112_178 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \C<7>112  (
    .I0(N52),
    .I1(Opcode_1_IBUF_631),
    .I2(_AUX_5[7]),
    .I3(_old_C_6[7]),
    .O(\C<7>112_184 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \C<9>115  (
    .I0(N52),
    .I1(Opcode_1_IBUF_631),
    .I2(_AUX_5[9]),
    .I3(_old_C_6[9]),
    .O(\C<9>115_198 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \C<11>115  (
    .I0(N52),
    .I1(Opcode_1_IBUF_631),
    .I2(_AUX_5[11]),
    .I3(_old_C_6[11]),
    .O(\C<11>115_99 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \C<12>123  (
    .I0(N52),
    .I1(Opcode_1_IBUF_631),
    .I2(_AUX_5[12]),
    .I3(_old_C_6[12]),
    .O(\C<12>123_107 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \C<13>122  (
    .I0(N52),
    .I1(Opcode_1_IBUF_631),
    .I2(_AUX_5[13]),
    .I3(_old_C_6[13]),
    .O(\C<13>122_116 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \C<14>133  (
    .I0(N52),
    .I1(Opcode_1_IBUF_631),
    .I2(_AUX_5[14]),
    .I3(_old_C_6[14]),
    .O(\C<14>133_125 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero1232_SW0_SW0 (
    .I0(Sh26_656),
    .I1(Sh27_657),
    .I2(Sh28),
    .I3(Sh29),
    .O(N303)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero1232_SW0 (
    .I0(Sh23),
    .I1(Sh24_654),
    .I2(Sh25_655),
    .I3(N303),
    .O(N293)
  );
  LUT4 #(
    .INIT ( 16'h2820 ))
  \C<3>21  (
    .I0(N50),
    .I1(Opcode_0_IBUF_630),
    .I2(Opcode_1_IBUF_631),
    .I3(B_3_IBUF_73),
    .O(\C<3>21_158 )
  );
  LUT4 #(
    .INIT ( 16'h2820 ))
  \C<15>1120  (
    .I0(N50),
    .I1(Opcode_0_IBUF_630),
    .I2(Opcode_1_IBUF_631),
    .I3(B_15_IBUF_70),
    .O(\C<15>1120_132 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \C<0>56_SW0  (
    .I0(B_3_IBUF_73),
    .I1(C_or0004),
    .I2(N58),
    .I3(old_C_11_or0000),
    .O(N305)
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \C<0>56  (
    .I0(A_0_IBUF_32),
    .I1(N305),
    .I2(B_2_IBUF_72),
    .I3(\C<0>44_83 ),
    .O(\C<0>56_84 )
  );
  LUT4 #(
    .INIT ( 16'hF828 ))
  \C<8>9_SW0  (
    .I0(C_cmp_eq0014),
    .I1(A_8_IBUF_46),
    .I2(B_8_IBUF_78),
    .I3(C_cmp_eq0013),
    .O(N241)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  C_cmp_eq00131 (
    .I0(N120),
    .I1(Opcode_3_IBUF_633),
    .I2(Opcode_2_IBUF_632),
    .I3(Opcode_4_IBUF_634),
    .O(C_cmp_eq0013)
  );
  LUT4 #(
    .INIT ( 16'h0028 ))
  \C<10>121  (
    .I0(N114),
    .I1(Opcode_0_IBUF_630),
    .I2(Opcode_1_IBUF_631),
    .I3(old_C_11_or0000),
    .O(N60)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Sh941 (
    .I0(B_2_IBUF_72),
    .I1(A_15_IBUF_38),
    .I2(B_3_IBUF_73),
    .I3(Sh78),
    .O(Sh94)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  C_or00031 (
    .I0(Opcode_2_IBUF_632),
    .I1(Opcode_4_IBUF_634),
    .I2(Opcode_3_IBUF_633),
    .I3(Opcode_1_IBUF_631),
    .O(C_or0003)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  C_cmp_eq00141 (
    .I0(N118),
    .I1(Opcode_3_IBUF_633),
    .I2(Opcode_2_IBUF_632),
    .I3(Opcode_4_IBUF_634),
    .O(C_cmp_eq0014)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \C<1>72_SW0  (
    .I0(B_3_IBUF_73),
    .I1(old_C_11_or0000),
    .I2(Sh1),
    .I3(C_or0004),
    .O(N307)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \C<1>72  (
    .I0(N307),
    .I1(B_2_IBUF_72),
    .I2(N50),
    .I3(\C<1>53_143 ),
    .O(\C<1>72_144 )
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \C<8>33_SW0  (
    .I0(Sh24_654),
    .I1(old_C_11_or0000),
    .I2(C_or0004),
    .I3(N241),
    .O(N309)
  );
  LUT4 #(
    .INIT ( 16'hFFAE ))
  \C<8>33  (
    .I0(N309),
    .I1(C_cmp_eq0015),
    .I2(A_8_IBUF_46),
    .I3(\C<8>19_189 ),
    .O(\C<8>33_190 )
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  \C<2>79_SW0  (
    .I0(B_3_IBUF_73),
    .I1(C_or0004),
    .I2(Sh2),
    .I3(old_C_11_or0000),
    .O(N311)
  );
  LUT4 #(
    .INIT ( 16'hF111 ))
  \C<2>79  (
    .I0(B_2_IBUF_72),
    .I1(N311),
    .I2(N43),
    .I3(AUX_3_addsub0000[2]),
    .O(\C<2>79_152 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<5>127_SW0  (
    .I0(\C<5>112_172 ),
    .I1(\C<5>60_174 ),
    .I2(\C<5>74_175 ),
    .I3(N247),
    .O(N313)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<5>127  (
    .I0(Opcode_5_IBUF_635),
    .I1(Opcode_6_IBUF_636),
    .I2(Opcode_7_IBUF_637),
    .I3(N313),
    .O(C_5_OBUF_213)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<6>127_SW0  (
    .I0(\C<6>112_178 ),
    .I1(\C<6>60_180 ),
    .I2(\C<6>74_181 ),
    .I3(N261),
    .O(N315)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<6>127  (
    .I0(Opcode_5_IBUF_635),
    .I1(Opcode_6_IBUF_636),
    .I2(Opcode_7_IBUF_637),
    .I3(N315),
    .O(C_6_OBUF_214)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<7>127_SW0  (
    .I0(\C<7>112_184 ),
    .I1(\C<7>60_186 ),
    .I2(\C<7>74_187 ),
    .I3(N263),
    .O(N317)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<7>127  (
    .I0(Opcode_5_IBUF_635),
    .I1(Opcode_6_IBUF_636),
    .I2(Opcode_7_IBUF_637),
    .I3(N317),
    .O(C_7_OBUF_215)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<9>130_SW0  (
    .I0(\C<9>115_198 ),
    .I1(\C<9>60_200 ),
    .I2(\C<9>87_201 ),
    .I3(N265),
    .O(N319)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<9>130  (
    .I0(Opcode_5_IBUF_635),
    .I1(Opcode_6_IBUF_636),
    .I2(Opcode_7_IBUF_637),
    .I3(N319),
    .O(C_9_OBUF_217)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Low91 (
    .I0(Opcode_4_IBUF_634),
    .I1(Opcode_5_IBUF_635),
    .I2(Opcode_6_IBUF_636),
    .I3(N321),
    .O(Low_OBUF_254)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \C<3>1  (
    .I0(Opcode_0_IBUF_630),
    .I1(Opcode_1_IBUF_631),
    .I2(B_3_IBUF_73),
    .I3(N50),
    .O(\C<3>1_155 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  Zero764_SW1 (
    .I0(Zero599_797),
    .I1(Zero612_798),
    .I2(Zero712_804),
    .I3(Zero744_805),
    .O(N323)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero764 (
    .I0(Opcode_0_IBUF_630),
    .I1(N50),
    .I2(Opcode_1_IBUF_631),
    .I3(N323),
    .O(Zero764_806)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \C<14>10  (
    .I0(Opcode_0_IBUF_630),
    .I1(A_14_IBUF_37),
    .I2(N50),
    .I3(Opcode_1_IBUF_631),
    .O(\C<14>10_122 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  Low91_SW1_SW0 (
    .I0(Opcode_1_IBUF_631),
    .I1(Opcode_2_IBUF_632),
    .I2(Opcode_3_IBUF_633),
    .I3(Opcode_0_IBUF_630),
    .O(N325)
  );
  LUT4 #(
    .INIT ( 16'hF2F3 ))
  Low91_SW1 (
    .I0(N325),
    .I1(Low46_253),
    .I2(Opcode_7_IBUF_637),
    .I3(A_15_IBUF_38),
    .O(N321)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \C<10>111  (
    .I0(old_C_11_or00004_870),
    .I1(C_or0004),
    .I2(old_C_11_or00009_871),
    .I3(old_C_11_or000014_869),
    .O(N54)
  );
  LUT4 #(
    .INIT ( 16'h0018 ))
  Zero572 (
    .I0(Opcode_1_IBUF_631),
    .I1(Opcode_2_IBUF_632),
    .I2(Opcode_3_IBUF_633),
    .I3(Opcode_4_IBUF_634),
    .O(Zero572_796)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_D_cy<0>_rt  (
    .I0(B_0_IBUF_64),
    .O(\Madd_D_cy<0>_rt_288 )
  );
  MUXF5   Sh86 (
    .I0(N329),
    .I1(N330),
    .S(B_2_IBUF_72),
    .O(Sh86_727)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh86_F (
    .I0(B_3_IBUF_73),
    .I1(Sh38_677),
    .I2(Sh78),
    .O(N329)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh86_G (
    .I0(B_3_IBUF_73),
    .I1(Sh42_682),
    .I2(A_15_IBUF_38),
    .O(N330)
  );
  MUXF5   Sh85 (
    .I0(N331),
    .I1(N332),
    .S(B_2_IBUF_72),
    .O(Sh85_726)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh85_F (
    .I0(B_3_IBUF_73),
    .I1(Sh37),
    .I2(Sh77),
    .O(N331)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh85_G (
    .I0(B_3_IBUF_73),
    .I1(Sh41_681),
    .I2(A_15_IBUF_38),
    .O(N332)
  );
  MUXF5   Sh31102 (
    .I0(N333),
    .I1(N334),
    .S(B_2_IBUF_72),
    .O(Sh31_669)
  );
  LUT4 #(
    .INIT ( 16'hF5E4 ))
  Sh31102_F (
    .I0(B_3_IBUF_73),
    .I1(Sh3126_670),
    .I2(Sh7_719),
    .I3(Sh3141_671),
    .O(N333)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh31102_G (
    .I0(B_3_IBUF_73),
    .I1(Sh11),
    .I2(Sh3),
    .O(N334)
  );
  MUXF5   Sh30102 (
    .I0(N335),
    .I1(N336),
    .S(B_2_IBUF_72),
    .O(Sh30)
  );
  LUT4 #(
    .INIT ( 16'hF5E4 ))
  Sh30102_F (
    .I0(B_3_IBUF_73),
    .I1(Sh3026_667),
    .I2(Sh6_718),
    .I3(Sh3041_668),
    .O(N335)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  Sh30102_G (
    .I0(B_3_IBUF_73),
    .I1(Sh2),
    .I2(Sh10),
    .I3(Sh281),
    .O(N336)
  );
  MUXF5   Sh29102 (
    .I0(N337),
    .I1(N338),
    .S(B_2_IBUF_72),
    .O(Sh29)
  );
  LUT4 #(
    .INIT ( 16'hF5E4 ))
  Sh29102_F (
    .I0(B_3_IBUF_73),
    .I1(Sh2926_663),
    .I2(Sh5_698),
    .I3(Sh2941_664),
    .O(N337)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh29102_G (
    .I0(B_3_IBUF_73),
    .I1(Sh9_737),
    .I2(Sh1),
    .O(N338)
  );
  MUXF5   Sh55 (
    .I0(N339),
    .I1(N340),
    .S(B_2_IBUF_72),
    .O(Sh55_713)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh55_F (
    .I0(B_3_IBUF_73),
    .I1(Sh39_678),
    .I2(Sh47),
    .O(N339)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh55_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N185),
    .I3(N24),
    .O(N340)
  );
  MUXF5   Sh27 (
    .I0(N341),
    .I1(N342),
    .S(B_2_IBUF_72),
    .O(Sh27_657)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh27_F (
    .I0(B_3_IBUF_73),
    .I1(Sh11),
    .I2(Sh3),
    .O(N341)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh27_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N159),
    .I3(N165),
    .O(N342)
  );
  MUXF5   Sh26 (
    .I0(N343),
    .I1(N344),
    .S(B_2_IBUF_72),
    .O(Sh26_656)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh26_F (
    .I0(B_3_IBUF_73),
    .I1(Sh10),
    .I2(Sh2),
    .O(N343)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh26_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N162),
    .I3(N168),
    .O(N344)
  );
  MUXF5   Sh25 (
    .I0(N345),
    .I1(N346),
    .S(B_2_IBUF_72),
    .O(Sh25_655)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh25_F (
    .I0(B_3_IBUF_73),
    .I1(Sh9_737),
    .I2(Sh1),
    .O(N345)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh25_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N165),
    .I3(N171),
    .O(N346)
  );
  MUXF5   Sh54 (
    .I0(N347),
    .I1(N348),
    .S(B_2_IBUF_72),
    .O(Sh54_712)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh54_F (
    .I0(B_3_IBUF_73),
    .I1(Sh38_677),
    .I2(Sh46),
    .O(N347)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh54_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N194),
    .I3(N191),
    .O(N348)
  );
  MUXF5   Sh53 (
    .I0(N349),
    .I1(N350),
    .S(B_2_IBUF_72),
    .O(Sh53_711)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh53_F (
    .I0(B_3_IBUF_73),
    .I1(Sh37),
    .I2(Sh45),
    .O(N349)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh53_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N142),
    .I3(N185),
    .O(N350)
  );
  MUXF5   Sh4890 (
    .I0(N351),
    .I1(N352),
    .S(B_2_IBUF_72),
    .O(Sh48)
  );
  LUT4 #(
    .INIT ( 16'hF5E4 ))
  Sh4890_F (
    .I0(B_3_IBUF_73),
    .I1(Sh48146_693),
    .I2(Sh40_680),
    .I3(Sh4829_694),
    .O(N351)
  );
  LUT4 #(
    .INIT ( 16'hF5E4 ))
  Sh4890_G (
    .I0(B_3_IBUF_73),
    .I1(Sh48113_691),
    .I2(Sh44),
    .I3(Sh48128_692),
    .O(N352)
  );
  MUXF5   Low46 (
    .I0(N353),
    .I1(N354),
    .S(Opcode_2_IBUF_632),
    .O(Low46_253)
  );
  LUT4 #(
    .INIT ( 16'h3237 ))
  Low46_F (
    .I0(Opcode_3_IBUF_633),
    .I1(Mcompar_Low_cmp_lt0001_cy[15]),
    .I2(Opcode_0_IBUF_630),
    .I3(Mcompar_Low_cmp_lt0000_cy[15]),
    .O(N353)
  );
  LUT4 #(
    .INIT ( 16'h111B ))
  Low46_G (
    .I0(Opcode_1_IBUF_631),
    .I1(Mcompar_Low_cmp_lt0001_cy[15]),
    .I2(Mcompar_Low_cmp_lt0000_cy[15]),
    .I3(Opcode_3_IBUF_633),
    .O(N354)
  );
  MUXF5   Sh28102 (
    .I0(N355),
    .I1(N356),
    .S(B_2_IBUF_72),
    .O(Sh28)
  );
  LUT4 #(
    .INIT ( 16'hF5E4 ))
  Sh28102_F (
    .I0(B_3_IBUF_73),
    .I1(Sh2826_660),
    .I2(Sh4_679),
    .I3(Sh2841_661),
    .O(N355)
  );
  LUT4 #(
    .INIT ( 16'h44E4 ))
  Sh28102_G (
    .I0(B_3_IBUF_73),
    .I1(Sh8_722),
    .I2(A_0_IBUF_32),
    .I3(N58),
    .O(N356)
  );
  MUXF5   Sh24 (
    .I0(N357),
    .I1(N358),
    .S(B_2_IBUF_72),
    .O(Sh24_654)
  );
  LUT4 #(
    .INIT ( 16'h44E4 ))
  Sh24_F (
    .I0(B_3_IBUF_73),
    .I1(Sh8_722),
    .I2(A_0_IBUF_32),
    .I3(N58),
    .O(N357)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh24_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N168),
    .I3(N174),
    .O(N358)
  );
  MUXF5   Sh51195 (
    .I0(N359),
    .I1(N360),
    .S(B_2_IBUF_72),
    .O(N57)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  Sh51195_F (
    .I0(Sh43_683),
    .I1(B_3_IBUF_73),
    .I2(Sh51153),
    .O(N359)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh51195_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N141),
    .I3(N142),
    .O(N360)
  );
  MUXF5   Sh50195 (
    .I0(N361),
    .I1(N362),
    .S(B_2_IBUF_72),
    .O(N56)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  Sh50195_F (
    .I0(Sh42_682),
    .I1(B_3_IBUF_73),
    .I2(Sh50153),
    .O(N361)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh50195_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N203),
    .I3(N200),
    .O(N362)
  );
  MUXF5   Sh49194 (
    .I0(N363),
    .I1(N364),
    .S(B_3_IBUF_73),
    .O(N55)
  );
  LUT4 #(
    .INIT ( 16'hF5E4 ))
  Sh49194_F (
    .I0(B_2_IBUF_72),
    .I1(Sh49134_697),
    .I2(Sh37),
    .I3(Sh49119_696),
    .O(N363)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh49194_G (
    .I0(B_2_IBUF_72),
    .I1(B_1_IBUF_71),
    .I2(N142),
    .I3(N185),
    .O(N364)
  );
  MUXF5   Sh84 (
    .I0(N365),
    .I1(N366),
    .S(B_2_IBUF_72),
    .O(Sh84_725)
  );
  LUT4 #(
    .INIT ( 16'hF5E4 ))
  Sh84_F (
    .I0(B_3_IBUF_73),
    .I1(Sh48113_691),
    .I2(Sh44),
    .I3(Sh48128_692),
    .O(N365)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh84_G (
    .I0(B_3_IBUF_73),
    .I1(Sh40_680),
    .I2(A_15_IBUF_38),
    .O(N366)
  );
  INV   \Madd_D_not0000<15>1_INV_0  (
    .I(B_15_IBUF_70),
    .O(\Madd_D_not0000[15] )
  );
  INV   \Madd_D_not0000<14>1_INV_0  (
    .I(B_14_IBUF_69),
    .O(\Madd_D_not0000[14] )
  );
  INV   \Madd_D_not0000<13>1_INV_0  (
    .I(B_13_IBUF_68),
    .O(\Madd_D_not0000[13] )
  );
  INV   \Madd_D_not0000<12>1_INV_0  (
    .I(B_12_IBUF_67),
    .O(\Madd_D_not0000[12] )
  );
  INV   \Madd_D_not0000<11>1_INV_0  (
    .I(B_11_IBUF_66),
    .O(\Madd_D_not0000[11] )
  );
  INV   \Madd_D_not0000<10>1_INV_0  (
    .I(B_10_IBUF_65),
    .O(\Madd_D_not0000[10] )
  );
  INV   \Madd_D_not0000<9>1_INV_0  (
    .I(B_9_IBUF_79),
    .O(\Madd_D_not0000[9] )
  );
  INV   \Madd_D_not0000<8>1_INV_0  (
    .I(B_8_IBUF_78),
    .O(\Madd_D_not0000[8] )
  );
  INV   \Madd_D_not0000<7>1_INV_0  (
    .I(B_7_IBUF_77),
    .O(\Madd_D_not0000[7] )
  );
  INV   \Madd_D_not0000<6>1_INV_0  (
    .I(B_6_IBUF_76),
    .O(\Madd_D_not0000[6] )
  );
  INV   \Madd_D_not0000<5>1_INV_0  (
    .I(B_5_IBUF_75),
    .O(\Madd_D_not0000[5] )
  );
  INV   \Madd_D_not0000<4>1_INV_0  (
    .I(B_4_IBUF_74),
    .O(\Madd_D_not0000[4] )
  );
  INV   \Madd_D_not0000<3>1_INV_0  (
    .I(B_3_IBUF_73),
    .O(Sh281)
  );
  INV   \Madd_D_not0000<2>1_INV_0  (
    .I(B_2_IBUF_72),
    .O(\Madd_D_not0000[2] )
  );
  INV   \Madd_D_not0000<1>1_INV_0  (
    .I(B_1_IBUF_71),
    .O(\Madd_D_not0000[1] )
  );
  INV   \Madd_D_not0000<3>11_INV_0  (
    .I(B_3_IBUF_73),
    .O(\Madd_D_not0000<3>1 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Sh2011 (
    .I0(B_3_IBUF_73),
    .I1(A_0_IBUF_32),
    .I2(B_0_IBUF_64),
    .I3(B_1_IBUF_71),
    .O(Sh201)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  Sh2012 (
    .I0(Sh4_679),
    .I1(B_3_IBUF_73),
    .O(Sh2011_648)
  );
  MUXF5   Sh201_f5 (
    .I0(Sh2011_648),
    .I1(Sh201),
    .S(B_2_IBUF_72),
    .O(Sh20)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  Sh21 (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .O(Sh210)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh22 (
    .I0(B_0_IBUF_64),
    .I1(A_2_IBUF_40),
    .I2(A_1_IBUF_39),
    .O(Sh211_651)
  );
  MUXF5   Sh2_f5 (
    .I0(Sh211_651),
    .I1(Sh210),
    .S(B_1_IBUF_71),
    .O(Sh2)
  );
  LUT4 #(
    .INIT ( 16'hE4FF ))
  Sh31 (
    .I0(B_0_IBUF_64),
    .I1(A_1_IBUF_39),
    .I2(A_0_IBUF_32),
    .I3(B_1_IBUF_71),
    .O(Sh32_672)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh32 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_1_IBUF_39),
    .I3(A_0_IBUF_32),
    .O(Sh33)
  );
  MUXF5   Sh3_f5 (
    .I0(Sh33),
    .I1(Sh32_672),
    .S(N171),
    .O(Sh3)
  );
  LUT4 #(
    .INIT ( 16'hFBEA ))
  Sh111 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_10_IBUF_33),
    .I3(A_11_IBUF_34),
    .O(Sh111_643)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh112 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_11_IBUF_34),
    .I3(A_10_IBUF_33),
    .O(Sh112_644)
  );
  MUXF5   Sh11_f5 (
    .I0(Sh112_644),
    .I1(Sh111_643),
    .S(N158),
    .O(Sh11)
  );
  LUT4 #(
    .INIT ( 16'hFBEA ))
  Sh101 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_9_IBUF_47),
    .I3(A_10_IBUF_33),
    .O(Sh101_640)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh102 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_10_IBUF_33),
    .I3(A_9_IBUF_47),
    .O(Sh102_641)
  );
  MUXF5   Sh10_f5 (
    .I0(Sh102_641),
    .I1(Sh101_640),
    .S(N161),
    .O(Sh10)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  Sh5211 (
    .I0(Sh44),
    .I1(B_2_IBUF_72),
    .O(Sh521)
  );
  LUT4 #(
    .INIT ( 16'hF5E4 ))
  Sh5212 (
    .I0(B_2_IBUF_72),
    .I1(Sh48113_691),
    .I2(Sh40_680),
    .I3(Sh48128_692),
    .O(Sh5211_710)
  );
  MUXF5   Sh521_f5 (
    .I0(Sh5211_710),
    .I1(Sh521),
    .S(B_3_IBUF_73),
    .O(Sh52)
  );
  LUT4 #(
    .INIT ( 16'hE4FF ))
  Sh441 (
    .I0(B_0_IBUF_64),
    .I1(A_14_IBUF_37),
    .I2(A_15_IBUF_38),
    .I3(B_1_IBUF_71),
    .O(Sh441_685)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh442 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_14_IBUF_37),
    .I3(A_15_IBUF_38),
    .O(Sh442_686)
  );
  MUXF5   Sh44_f5 (
    .I0(Sh442_686),
    .I1(Sh441_685),
    .S(N191),
    .O(Sh44)
  );
  LUT4 #(
    .INIT ( 16'hFBEA ))
  Sh371 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_6_IBUF_44),
    .I3(A_5_IBUF_43),
    .O(Sh371_675)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh372 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_5_IBUF_43),
    .I3(A_6_IBUF_44),
    .O(Sh372_676)
  );
  MUXF5   Sh37_f5 (
    .I0(Sh372_676),
    .I1(Sh371_675),
    .S(N141),
    .O(Sh37)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh511531 (
    .I0(B_3_IBUF_73),
    .I1(B_0_IBUF_64),
    .I2(Sh50114),
    .I3(A_6_IBUF_44),
    .O(Sh511531_706)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh511532 (
    .I0(B_3_IBUF_73),
    .I1(B_0_IBUF_64),
    .I2(Sh50114),
    .I3(A_4_IBUF_42),
    .O(Sh511532_707)
  );
  MUXF5   Sh51153_f5 (
    .I0(Sh511532_707),
    .I1(Sh511531_706),
    .S(B_1_IBUF_71),
    .O(Sh51153)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh501531 (
    .I0(B_3_IBUF_73),
    .I1(B_0_IBUF_64),
    .I2(A_4_IBUF_42),
    .I3(Sh50114),
    .O(Sh501531_702)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh501532 (
    .I0(B_3_IBUF_73),
    .I1(B_0_IBUF_64),
    .I2(A_2_IBUF_40),
    .I3(Sh50114),
    .O(Sh501532_703)
  );
  MUXF5   Sh50153_f5 (
    .I0(Sh501532_703),
    .I1(Sh501531_702),
    .S(B_1_IBUF_71),
    .O(Sh50153)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero8871 (
    .I0(AUX_3_addsub0000[15]),
    .I1(AUX_3_addsub0000[6]),
    .I2(AUX_3_addsub0000[14]),
    .I3(AUX_3_addsub0000[13]),
    .O(Zero8871_813)
  );
  MUXF5   Zero887_f5 (
    .I0(Zero8871_813),
    .I1(N0),
    .S(AUX_3_addsub0000[7]),
    .O(Zero887)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero15591 (
    .I0(_AUX_5[1]),
    .I1(N38),
    .I2(_AUX_5[0]),
    .I3(_AUX_5[16]),
    .O(Zero15591_772)
  );
  MUXF5   Zero1559_f5 (
    .I0(Zero15591_772),
    .I1(N0),
    .S(_AUX_5[8]),
    .O(Zero1559)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero16011 (
    .I0(_AUX_5[12]),
    .I1(_AUX_5[4]),
    .I2(_AUX_5[14]),
    .I3(_AUX_5[13]),
    .O(Zero16011_775)
  );
  MUXF5   Zero1601_f5 (
    .I0(Zero16011_775),
    .I1(N0),
    .S(_AUX_5[5]),
    .O(Zero1601)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero16211 (
    .I0(_AUX_5[11]),
    .I1(_AUX_5[3]),
    .I2(_AUX_5[2]),
    .I3(_AUX_5[10]),
    .O(Zero16211_777)
  );
  MUXF5   Zero1621_f5 (
    .I0(Zero16211_777),
    .I1(N0),
    .S(_AUX_5[9]),
    .O(Zero1621)
  );
  LUT4 #(
    .INIT ( 16'hF5E4 ))
  Sh901 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(A_15_IBUF_38),
    .I3(Sh42_682),
    .O(Sh901_739)
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  Sh902 (
    .I0(Sh42_682),
    .I1(B_3_IBUF_73),
    .I2(B_2_IBUF_72),
    .I3(A_15_IBUF_38),
    .O(Sh902_740)
  );
  MUXF5   Sh90_f5 (
    .I0(Sh902_740),
    .I1(Sh901_739),
    .S(Sh78),
    .O(Sh90)
  );
  LUT4 #(
    .INIT ( 16'hF5E4 ))
  Sh891 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(A_15_IBUF_38),
    .I3(Sh41_681),
    .O(Sh891_735)
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  Sh892 (
    .I0(Sh41_681),
    .I1(B_3_IBUF_73),
    .I2(B_2_IBUF_72),
    .I3(A_15_IBUF_38),
    .O(Sh892_736)
  );
  MUXF5   Sh89_f5 (
    .I0(Sh892_736),
    .I1(Sh891_735),
    .S(Sh77),
    .O(Sh89)
  );
  LUT4 #(
    .INIT ( 16'hF5E4 ))
  Sh881 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(A_15_IBUF_38),
    .I3(Sh40_680),
    .O(Sh881_732)
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  Sh882 (
    .I0(Sh40_680),
    .I1(B_3_IBUF_73),
    .I2(B_2_IBUF_72),
    .I3(A_15_IBUF_38),
    .O(Sh882_733)
  );
  MUXF5   Sh88_f5 (
    .I0(Sh882_733),
    .I1(Sh881_732),
    .S(Sh44),
    .O(Sh88)
  );
  LUT4 #(
    .INIT ( 16'hF5E4 ))
  Sh871 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(A_15_IBUF_38),
    .I3(Sh39_678),
    .O(Sh871_729)
  );
  LUT4 #(
    .INIT ( 16'hCE02 ))
  Sh872 (
    .I0(Sh39_678),
    .I1(B_3_IBUF_73),
    .I2(B_2_IBUF_72),
    .I3(A_15_IBUF_38),
    .O(Sh872_730)
  );
  MUXF5   Sh87_f5 (
    .I0(Sh872_730),
    .I1(Sh871_729),
    .S(Sh43_683),
    .O(Sh87)
  );
  LUT4 #(
    .INIT ( 16'h80D5 ))
  Negative131 (
    .I0(Opcode_0_IBUF_630),
    .I1(B_15_IBUF_70),
    .I2(A_15_IBUF_38),
    .I3(Mcompar_Low_cmp_lt0000_cy[15]),
    .O(Negative131_619)
  );
  MUXF5   Negative13_f5 (
    .I0(Negative132),
    .I1(Negative131_619),
    .S(Opcode_1_IBUF_631),
    .O(Negative13)
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<10>191  (
    .I0(A_10_IBUF_33),
    .I1(N120),
    .I2(N50),
    .I3(C_or0003),
    .O(\C<10>191_90 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<10>192  (
    .I0(A_10_IBUF_33),
    .I1(N120),
    .I2(N50),
    .I3(C_cmp_eq0014),
    .O(\C<10>192_91 )
  );
  MUXF5   \C<10>19_f5  (
    .I0(\C<10>192_91 ),
    .I1(\C<10>191_90 ),
    .S(B_10_IBUF_65),
    .O(\C<10>19 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  C_cmp_eq001511 (
    .I0(Opcode_2_IBUF_632),
    .I1(Opcode_1_IBUF_631),
    .I2(Opcode_3_IBUF_633),
    .I3(Opcode_0_IBUF_630),
    .O(C_cmp_eq00151)
  );
  MUXF5   C_cmp_eq00151_f5 (
    .I0(C_cmp_eq00151),
    .I1(N0),
    .S(Opcode_4_IBUF_634),
    .O(C_cmp_eq0015)
  );
  INV   Negative132_INV_0 (
    .I(Mcompar_Low_cmp_lt0000_cy[15]),
    .O(Negative132)
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

