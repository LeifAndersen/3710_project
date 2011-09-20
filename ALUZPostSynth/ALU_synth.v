////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.63c
//  \   \         Application: netgen
//  /   /         Filename: ALU_synthesis.v
// /___/   /\     Timestamp: Tue Sep 20 16:35:52 2011
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ALU.ngc ALU_synthesis.v 
// Device	: xc3s500e-5-fg320
// Input file	: ALU.ngc
// Output file	: \\wannsee\users\u0346997\desktop\3710\3710\ALU\netgen\synthesis\ALU_synthesis.v
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
  wire \C<0>12_81 ;
  wire \C<0>26_82 ;
  wire \C<0>39_83 ;
  wire \C<0>4_84 ;
  wire \C<0>44_85 ;
  wire \C<0>66 ;
  wire \C<0>661_87 ;
  wire \C<0>662_88 ;
  wire \C<10>103_90 ;
  wire \C<10>17_91 ;
  wire \C<10>33_92 ;
  wire \C<10>4_93 ;
  wire \C<10>47_94 ;
  wire \C<10>62 ;
  wire \C<10>621_96 ;
  wire \C<10>622_97 ;
  wire \C<10>79_98 ;
  wire \C<10>8_99 ;
  wire \C<11>38_101 ;
  wire \C<11>51_102 ;
  wire \C<11>61_103 ;
  wire \C<11>7_104 ;
  wire \C<11>80_105 ;
  wire \C<12>38_107 ;
  wire \C<12>56_108 ;
  wire \C<12>7_109 ;
  wire \C<12>70_110 ;
  wire \C<12>91_111 ;
  wire \C<13>109_113 ;
  wire \C<13>11_114 ;
  wire \C<13>33_115 ;
  wire \C<13>55_116 ;
  wire \C<13>69_117 ;
  wire \C<13>73_118 ;
  wire \C<13>82_119 ;
  wire \C<14>15_121 ;
  wire \C<14>28_122 ;
  wire \C<14>4_123 ;
  wire \C<14>51_124 ;
  wire \C<14>74_125 ;
  wire \C<14>92_126 ;
  wire \C<15>1116_128 ;
  wire \C<15>1120_129 ;
  wire \C<15>1129_130 ;
  wire \C<15>19_131 ;
  wire \C<15>38_132 ;
  wire \C<15>4_133 ;
  wire \C<15>61_134 ;
  wire \C<1>28_136 ;
  wire \C<1>43_137 ;
  wire \C<1>51_138 ;
  wire \C<1>83_139 ;
  wire \C<1>96_140 ;
  wire \C<2>104_142 ;
  wire \C<2>11_143 ;
  wire \C<2>125_144 ;
  wire \C<2>20_145 ;
  wire \C<2>35_146 ;
  wire \C<2>58_147 ;
  wire \C<2>78_148 ;
  wire \C<2>88_149 ;
  wire \C<3>101_151 ;
  wire \C<3>114_152 ;
  wire \C<3>4_153 ;
  wire \C<3>57_154 ;
  wire \C<3>85_155 ;
  wire \C<3>9_156 ;
  wire \C<3>96_157 ;
  wire \C<4>60_159 ;
  wire \C<4>65_160 ;
  wire \C<4>85_161 ;
  wire \C<4>85_SW0 ;
  wire \C<4>85_SW01_163 ;
  wire \C<5>60_165 ;
  wire \C<5>65_166 ;
  wire \C<5>85_167 ;
  wire \C<6>100_169 ;
  wire \C<6>11_170 ;
  wire \C<6>15_171 ;
  wire \C<6>28_172 ;
  wire \C<6>51_173 ;
  wire \C<6>98_174 ;
  wire \C<7>18_176 ;
  wire \C<7>28_177 ;
  wire \C<7>44_178 ;
  wire \C<7>61_179 ;
  wire \C<7>67_180 ;
  wire \C<7>7_181 ;
  wire \C<7>79_182 ;
  wire \C<7>8_183 ;
  wire \C<8>18_185 ;
  wire \C<8>26_186 ;
  wire \C<8>41_187 ;
  wire \C<8>54_188 ;
  wire \C<8>58_189 ;
  wire \C<8>64_190 ;
  wire \C<8>7_191 ;
  wire \C<8>90_192 ;
  wire \C<9>10_194 ;
  wire \C<9>22_195 ;
  wire \C<9>33_196 ;
  wire \C<9>50_197 ;
  wire \C<9>56_198 ;
  wire \C<9>74_199 ;
  wire \C<9>89_200 ;
  wire C_0_OBUF_201;
  wire C_10_OBUF_202;
  wire C_11_OBUF_203;
  wire C_12_OBUF_204;
  wire C_13_OBUF_205;
  wire C_14_OBUF_206;
  wire C_15_OBUF_207;
  wire C_1_OBUF_208;
  wire C_2_OBUF_209;
  wire C_3_OBUF_210;
  wire C_4_OBUF_211;
  wire C_5_OBUF_212;
  wire C_6_OBUF_213;
  wire C_7_OBUF_214;
  wire C_8_OBUF_215;
  wire C_9_OBUF_216;
  wire C_and0000;
  wire C_cmp_eq0006;
  wire C_cmp_eq0007;
  wire C_cmp_eq0013;
  wire C_cmp_eq0014;
  wire C_cmp_eq00141;
  wire C_cmp_eq0015;
  wire C_cmp_eq00151_224;
  wire C_cmp_eq0021;
  wire C_or0000;
  wire C_or0002;
  wire C_or0003_228;
  wire CarryIn_IBUF_231;
  wire Carry_OBUF_232;
  wire Flag10_265;
  wire Flag21_266;
  wire Flag53_267;
  wire Flag_OBUF_268;
  wire Low46_270;
  wire Low_OBUF_271;
  wire Madd_AUX_3_index0000;
  wire \Madd_D_cy<0>_rt_305 ;
  wire \Madd__AUX_5_cy<10>_rt_322 ;
  wire \Madd__AUX_5_cy<11>_rt_324 ;
  wire \Madd__AUX_5_cy<12>_rt_326 ;
  wire \Madd__AUX_5_cy<13>_rt_328 ;
  wire \Madd__AUX_5_cy<14>_rt_330 ;
  wire \Madd__AUX_5_cy<15>_rt_332 ;
  wire \Madd__AUX_5_cy<1>_rt_334 ;
  wire \Madd__AUX_5_cy<2>_rt_336 ;
  wire \Madd__AUX_5_cy<3>_rt_338 ;
  wire \Madd__AUX_5_cy<4>_rt_340 ;
  wire \Madd__AUX_5_cy<5>_rt_342 ;
  wire \Madd__AUX_5_cy<6>_rt_344 ;
  wire \Madd__AUX_5_cy<7>_rt_346 ;
  wire \Madd__AUX_5_cy<8>_rt_348 ;
  wire \Madd__AUX_5_cy<9>_rt_350 ;
  wire \Madd__AUX_5_xor<16>_rt_352 ;
  wire \Madd__old_C_1_lut[0] ;
  wire \Madd__old_C_1_lut<0>1_369 ;
  wire \Madd__old_C_1_lut[10] ;
  wire \Madd__old_C_1_lut<11>1_371 ;
  wire \Madd__old_C_1_lut[12] ;
  wire \Madd__old_C_1_lut<12>1_373 ;
  wire \Madd__old_C_1_lut[13] ;
  wire \Madd__old_C_1_lut[14] ;
  wire \Madd__old_C_1_lut[15] ;
  wire \Madd__old_C_1_lut[1] ;
  wire \Madd__old_C_1_lut<1>1_378 ;
  wire \Madd__old_C_1_lut[2] ;
  wire \Madd__old_C_1_lut[3] ;
  wire \Madd__old_C_1_lut[4] ;
  wire \Madd__old_C_1_lut<4>1_382 ;
  wire \Madd__old_C_1_lut[5] ;
  wire \Madd__old_C_1_lut<5>1_384 ;
  wire \Madd__old_C_1_lut[6] ;
  wire \Madd__old_C_1_lut[7] ;
  wire \Madd__old_C_1_lut<7>1_387 ;
  wire \Madd__old_C_1_lut[8] ;
  wire \Madd__old_C_1_lut<8>1_389 ;
  wire \Madd__old_C_1_lut[9] ;
  wire \Msub__old_C_6_lut[0] ;
  wire \Msub__old_C_6_lut<10>1_550 ;
  wire \Msub__old_C_6_lut[11] ;
  wire \Msub__old_C_6_lut[12] ;
  wire \Msub__old_C_6_lut[13] ;
  wire \Msub__old_C_6_lut[14] ;
  wire \Msub__old_C_6_lut<14>1_555 ;
  wire \Msub__old_C_6_lut<15>1_556 ;
  wire \Msub__old_C_6_lut[1] ;
  wire \Msub__old_C_6_lut[2] ;
  wire \Msub__old_C_6_lut<3>1_559 ;
  wire \Msub__old_C_6_lut[4] ;
  wire \Msub__old_C_6_lut[5] ;
  wire \Msub__old_C_6_lut[6] ;
  wire \Msub__old_C_6_lut[7] ;
  wire \Msub__old_C_6_lut[8] ;
  wire \Msub__old_C_6_lut[9] ;
  wire \Msub__old_C_6_lut<9>1_566 ;
  wire N0;
  wire N1;
  wire N118;
  wire N124;
  wire N125;
  wire N156;
  wire N157;
  wire N160;
  wire N163;
  wire N166;
  wire N169;
  wire N172;
  wire N175;
  wire N178;
  wire N181;
  wire N186;
  wire N195;
  wire N196;
  wire N198;
  wire N204;
  wire N210;
  wire N212;
  wire N222;
  wire N224;
  wire N226;
  wire N228;
  wire N23;
  wire N238;
  wire N24;
  wire N244;
  wire N246;
  wire N248;
  wire N25;
  wire N250;
  wire N252;
  wire N254;
  wire N256;
  wire N258;
  wire N26;
  wire N260;
  wire N262;
  wire N264;
  wire N266;
  wire N268;
  wire N270;
  wire N272;
  wire N274;
  wire N276;
  wire N282;
  wire N286;
  wire N288;
  wire N290;
  wire N294;
  wire N296;
  wire N298;
  wire N300;
  wire N302;
  wire N304;
  wire N306;
  wire N308;
  wire N310;
  wire N312;
  wire N314;
  wire N316;
  wire N318;
  wire N320;
  wire N322;
  wire N324;
  wire N326;
  wire N328;
  wire N330;
  wire N332;
  wire N334;
  wire N336;
  wire N338;
  wire N340;
  wire N342;
  wire N344;
  wire N346;
  wire N348;
  wire N350;
  wire N352;
  wire N354;
  wire N356;
  wire N360;
  wire N362;
  wire N363;
  wire N364;
  wire N365;
  wire N366;
  wire N367;
  wire N368;
  wire N369;
  wire N370;
  wire N371;
  wire N372;
  wire N373;
  wire N374;
  wire N375;
  wire N376;
  wire N377;
  wire N378;
  wire N379;
  wire N38;
  wire N380;
  wire N381;
  wire N382;
  wire N383;
  wire N384;
  wire N385;
  wire N386;
  wire N387;
  wire N388;
  wire N389;
  wire N39;
  wire N390;
  wire N391;
  wire N392;
  wire N393;
  wire N394;
  wire N395;
  wire N396;
  wire N397;
  wire N398;
  wire N399;
  wire N400;
  wire N401;
  wire N402;
  wire N403;
  wire N404;
  wire N405;
  wire N44;
  wire N53;
  wire N54;
  wire N56;
  wire N57;
  wire N58;
  wire N59;
  wire N61;
  wire N64;
  wire N65;
  wire N66;
  wire Negative27_SW0;
  wire Negative_OBUF_711;
  wire Opcode_0_IBUF_721;
  wire Opcode_1_IBUF_722;
  wire Opcode_2_IBUF_723;
  wire Opcode_3_IBUF_724;
  wire Opcode_4_IBUF_725;
  wire Opcode_5_IBUF_726;
  wire Opcode_6_IBUF_727;
  wire Opcode_7_IBUF_728;
  wire Sh10_729;
  wire Sh11_730;
  wire Sh12;
  wire Sh121_732;
  wire Sh122_733;
  wire Sh13;
  wire Sh14;
  wire Sh16;
  wire Sh16113_737;
  wire Sh16128_738;
  wire Sh16146_739;
  wire Sh1629_740;
  wire Sh1661_741;
  wire Sh17;
  wire Sh17119_743;
  wire Sh17134_744;
  wire Sh18;
  wire Sh18114;
  wire Sh18153;
  wire Sh181531_748;
  wire Sh181532_749;
  wire Sh21_750;
  wire Sh22_751;
  wire Sh25;
  wire Sh251_753;
  wire Sh252_754;
  wire Sh26;
  wire Sh261_756;
  wire Sh262_757;
  wire Sh27;
  wire Sh28;
  wire Sh29;
  wire Sh30;
  wire Sh32;
  wire Sh33;
  wire Sh34;
  wire Sh341_765;
  wire Sh342_766;
  wire Sh35;
  wire Sh351_768;
  wire Sh352_769;
  wire Sh36_770;
  wire Sh37_771;
  wire Sh38_772;
  wire Sh39_773;
  wire Sh40_774;
  wire Sh41_775;
  wire Sh42;
  wire Sh421_777;
  wire Sh422_778;
  wire Sh43;
  wire Sh431_780;
  wire Sh432_781;
  wire Sh5;
  wire Sh51_783;
  wire Sh510;
  wire Sh52_785;
  wire Sh53;
  wire Sh54;
  wire Sh55;
  wire Sh56_789;
  wire Sh57_790;
  wire Sh58_791;
  wire Sh59_792;
  wire Sh6_793;
  wire Sh60;
  wire Sh6026_795;
  wire Sh6041_796;
  wire Sh61;
  wire Sh6126_798;
  wire Sh6141_799;
  wire Sh62;
  wire Sh6226_801;
  wire Sh6241_802;
  wire Sh63;
  wire Sh6326_804;
  wire Sh6341_805;
  wire Sh72_806;
  wire Sh73_807;
  wire Sh77;
  wire Sh78;
  wire Sh79;
  wire Sh81;
  wire Sh82;
  wire Sh83;
  wire Sh83153;
  wire Sh831531_815;
  wire Sh831532_816;
  wire Sh84;
  wire Sh85_818;
  wire Sh86_819;
  wire Sh87;
  wire Sh8711;
  wire Sh87111_822;
  wire Sh88;
  wire Sh89;
  wire Sh90;
  wire Sh91;
  wire Zero1021_828;
  wire Zero1038_829;
  wire Zero1069_830;
  wire Zero109_831;
  wire Zero1130_832;
  wire Zero115_833;
  wire Zero1180_834;
  wire Zero1183_835;
  wire Zero1228_836;
  wire Zero1255_837;
  wire Zero1277_838;
  wire Zero1289_839;
  wire Zero130_840;
  wire Zero1341_841;
  wire Zero1387_842;
  wire Zero1398_843;
  wire Zero1420_844;
  wire Zero143_845;
  wire Zero1438_846;
  wire Zero1457_847;
  wire Zero1468_848;
  wire Zero1499;
  wire Zero14991_850;
  wire Zero1519;
  wire Zero15191_852;
  wire Zero1539_853;
  wire Zero167_854;
  wire Zero180_855;
  wire Zero194_856;
  wire Zero21_857;
  wire Zero220_858;
  wire Zero26_859;
  wire Zero262_860;
  wire Zero27_861;
  wire Zero303_862;
  wire Zero319_863;
  wire Zero337_864;
  wire Zero362_865;
  wire Zero4_866;
  wire Zero403_867;
  wire Zero414_868;
  wire Zero460_869;
  wire Zero47_870;
  wire Zero482_871;
  wire Zero495_872;
  wire Zero531_873;
  wire Zero544_874;
  wire Zero568_875;
  wire Zero581_876;
  wire Zero595_877;
  wire Zero620_878;
  wire Zero647_879;
  wire Zero668_880;
  wire Zero68_881;
  wire Zero693_882;
  wire Zero724_883;
  wire Zero736_884;
  wire Zero770;
  wire Zero7701_886;
  wire Zero81_887;
  wire Zero810_888;
  wire Zero82_889;
  wire Zero826_890;
  wire Zero853_891;
  wire Zero899_892;
  wire Zero9_893;
  wire Zero916_894;
  wire Zero965_895;
  wire Zero996_896;
  wire Zero_OBUF_897;
  wire old_C_12_or0000;
  wire old_C_12_or000014_964;
  wire old_C_12_or00004_965;
  wire old_C_12_or00009_966;
  wire [15 : 0] AUX_3_addsub0000;
  wire [15 : 0] D;
  wire [15 : 1] D_not0000;
  wire [14 : 0] Madd_AUX_3_addsub0000_cy;
  wire [15 : 0] Madd_AUX_3_addsub0000_lut;
  wire [14 : 0] Madd_D_cy;
  wire [15 : 0] Madd__AUX_5_cy;
  wire [0 : 0] Madd__AUX_5_lut;
  wire [14 : 0] Madd__old_C_1_cy;
  wire [14 : 0] Madd__old_C_7_cy;
  wire [15 : 0] Madd__old_C_7_lut;
  wire [15 : 0] Mcompar_Low_cmp_lt0000_cy;
  wire [15 : 0] Mcompar_Low_cmp_lt0000_lut;
  wire [15 : 0] Mcompar_Low_cmp_lt0001_cy;
  wire [15 : 0] Mcompar_Low_cmp_lt0001_lut;
  wire [7 : 0] Mcompar_Zero_cmp_eq0009_cy;
  wire [7 : 0] Mcompar_Zero_cmp_eq0009_lut;
  wire [15 : 0] Msub_Negative_sub0000_cy;
  wire [15 : 0] Msub_Negative_sub0000_lut;
  wire [14 : 0] Msub__old_C_6_cy;
  wire [16 : 16] Negative_sub0000;
  wire [16 : 0] _AUX_5;
  wire [15 : 0] _old_C_1;
  wire [15 : 0] _old_C_6;
  wire [15 : 0] _old_C_7;
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
    .O(\Madd__old_C_1_lut[0] )
  );
  MUXCY   \Madd__old_C_1_cy<0>  (
    .CI(N0),
    .DI(A_0_IBUF_32),
    .S(\Madd__old_C_1_lut<0>1_369 ),
    .O(Madd__old_C_1_cy[0])
  );
  XORCY   \Madd__old_C_1_xor<0>  (
    .CI(N0),
    .LI(\Madd__old_C_1_lut<0>1_369 ),
    .O(_old_C_1[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<1>  (
    .I0(A_1_IBUF_39),
    .I1(B_1_IBUF_71),
    .O(\Madd__old_C_1_lut[1] )
  );
  MUXCY   \Madd__old_C_1_cy<1>  (
    .CI(Madd__old_C_1_cy[0]),
    .DI(A_1_IBUF_39),
    .S(\Madd__old_C_1_lut<1>1_378 ),
    .O(Madd__old_C_1_cy[1])
  );
  XORCY   \Madd__old_C_1_xor<1>  (
    .CI(Madd__old_C_1_cy[0]),
    .LI(\Madd__old_C_1_lut<1>1_378 ),
    .O(_old_C_1[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<2>  (
    .I0(A_2_IBUF_40),
    .I1(B_2_IBUF_72),
    .O(\Madd__old_C_1_lut[2] )
  );
  MUXCY   \Madd__old_C_1_cy<2>  (
    .CI(Madd__old_C_1_cy[1]),
    .DI(A_2_IBUF_40),
    .S(\Madd__old_C_1_lut[2] ),
    .O(Madd__old_C_1_cy[2])
  );
  XORCY   \Madd__old_C_1_xor<2>  (
    .CI(Madd__old_C_1_cy[1]),
    .LI(\Madd__old_C_1_lut[2] ),
    .O(_old_C_1[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<3>  (
    .I0(A_3_IBUF_41),
    .I1(B_3_IBUF_73),
    .O(\Madd__old_C_1_lut[3] )
  );
  MUXCY   \Madd__old_C_1_cy<3>  (
    .CI(Madd__old_C_1_cy[2]),
    .DI(A_3_IBUF_41),
    .S(\Madd__old_C_1_lut[3] ),
    .O(Madd__old_C_1_cy[3])
  );
  XORCY   \Madd__old_C_1_xor<3>  (
    .CI(Madd__old_C_1_cy[2]),
    .LI(\Madd__old_C_1_lut[3] ),
    .O(_old_C_1[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<4>  (
    .I0(A_4_IBUF_42),
    .I1(B_4_IBUF_74),
    .O(\Madd__old_C_1_lut[4] )
  );
  MUXCY   \Madd__old_C_1_cy<4>  (
    .CI(Madd__old_C_1_cy[3]),
    .DI(A_4_IBUF_42),
    .S(\Madd__old_C_1_lut<4>1_382 ),
    .O(Madd__old_C_1_cy[4])
  );
  XORCY   \Madd__old_C_1_xor<4>  (
    .CI(Madd__old_C_1_cy[3]),
    .LI(\Madd__old_C_1_lut<4>1_382 ),
    .O(_old_C_1[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<5>  (
    .I0(A_5_IBUF_43),
    .I1(B_5_IBUF_75),
    .O(\Madd__old_C_1_lut[5] )
  );
  MUXCY   \Madd__old_C_1_cy<5>  (
    .CI(Madd__old_C_1_cy[4]),
    .DI(A_5_IBUF_43),
    .S(\Madd__old_C_1_lut<5>1_384 ),
    .O(Madd__old_C_1_cy[5])
  );
  XORCY   \Madd__old_C_1_xor<5>  (
    .CI(Madd__old_C_1_cy[4]),
    .LI(\Madd__old_C_1_lut<5>1_384 ),
    .O(_old_C_1[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<6>  (
    .I0(A_6_IBUF_44),
    .I1(B_6_IBUF_76),
    .O(\Madd__old_C_1_lut[6] )
  );
  MUXCY   \Madd__old_C_1_cy<6>  (
    .CI(Madd__old_C_1_cy[5]),
    .DI(A_6_IBUF_44),
    .S(\Madd__old_C_1_lut[6] ),
    .O(Madd__old_C_1_cy[6])
  );
  XORCY   \Madd__old_C_1_xor<6>  (
    .CI(Madd__old_C_1_cy[5]),
    .LI(\Madd__old_C_1_lut[6] ),
    .O(_old_C_1[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<7>  (
    .I0(A_7_IBUF_45),
    .I1(B_7_IBUF_77),
    .O(\Madd__old_C_1_lut[7] )
  );
  MUXCY   \Madd__old_C_1_cy<7>  (
    .CI(Madd__old_C_1_cy[6]),
    .DI(A_7_IBUF_45),
    .S(\Madd__old_C_1_lut<7>1_387 ),
    .O(Madd__old_C_1_cy[7])
  );
  XORCY   \Madd__old_C_1_xor<7>  (
    .CI(Madd__old_C_1_cy[6]),
    .LI(\Madd__old_C_1_lut<7>1_387 ),
    .O(_old_C_1[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<8>  (
    .I0(A_8_IBUF_46),
    .I1(B_8_IBUF_78),
    .O(\Madd__old_C_1_lut[8] )
  );
  MUXCY   \Madd__old_C_1_cy<8>  (
    .CI(Madd__old_C_1_cy[7]),
    .DI(A_8_IBUF_46),
    .S(\Madd__old_C_1_lut<8>1_389 ),
    .O(Madd__old_C_1_cy[8])
  );
  XORCY   \Madd__old_C_1_xor<8>  (
    .CI(Madd__old_C_1_cy[7]),
    .LI(\Madd__old_C_1_lut<8>1_389 ),
    .O(_old_C_1[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<9>  (
    .I0(A_9_IBUF_47),
    .I1(B_9_IBUF_79),
    .O(\Madd__old_C_1_lut[9] )
  );
  MUXCY   \Madd__old_C_1_cy<9>  (
    .CI(Madd__old_C_1_cy[8]),
    .DI(A_9_IBUF_47),
    .S(\Madd__old_C_1_lut[9] ),
    .O(Madd__old_C_1_cy[9])
  );
  XORCY   \Madd__old_C_1_xor<9>  (
    .CI(Madd__old_C_1_cy[8]),
    .LI(\Madd__old_C_1_lut[9] ),
    .O(_old_C_1[9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<10>  (
    .I0(A_10_IBUF_33),
    .I1(B_10_IBUF_65),
    .O(\Madd__old_C_1_lut[10] )
  );
  MUXCY   \Madd__old_C_1_cy<10>  (
    .CI(Madd__old_C_1_cy[9]),
    .DI(A_10_IBUF_33),
    .S(\Madd__old_C_1_lut[10] ),
    .O(Madd__old_C_1_cy[10])
  );
  XORCY   \Madd__old_C_1_xor<10>  (
    .CI(Madd__old_C_1_cy[9]),
    .LI(\Madd__old_C_1_lut[10] ),
    .O(_old_C_1[10])
  );
  MUXCY   \Madd__old_C_1_cy<11>  (
    .CI(Madd__old_C_1_cy[10]),
    .DI(A_11_IBUF_34),
    .S(\Madd__old_C_1_lut<11>1_371 ),
    .O(Madd__old_C_1_cy[11])
  );
  XORCY   \Madd__old_C_1_xor<11>  (
    .CI(Madd__old_C_1_cy[10]),
    .LI(\Madd__old_C_1_lut<11>1_371 ),
    .O(_old_C_1[11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<12>  (
    .I0(A_12_IBUF_35),
    .I1(B_12_IBUF_67),
    .O(\Madd__old_C_1_lut[12] )
  );
  MUXCY   \Madd__old_C_1_cy<12>  (
    .CI(Madd__old_C_1_cy[11]),
    .DI(A_12_IBUF_35),
    .S(\Madd__old_C_1_lut<12>1_373 ),
    .O(Madd__old_C_1_cy[12])
  );
  XORCY   \Madd__old_C_1_xor<12>  (
    .CI(Madd__old_C_1_cy[11]),
    .LI(\Madd__old_C_1_lut<12>1_373 ),
    .O(_old_C_1[12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<13>  (
    .I0(A_13_IBUF_36),
    .I1(B_13_IBUF_68),
    .O(\Madd__old_C_1_lut[13] )
  );
  MUXCY   \Madd__old_C_1_cy<13>  (
    .CI(Madd__old_C_1_cy[12]),
    .DI(A_13_IBUF_36),
    .S(\Madd__old_C_1_lut[13] ),
    .O(Madd__old_C_1_cy[13])
  );
  XORCY   \Madd__old_C_1_xor<13>  (
    .CI(Madd__old_C_1_cy[12]),
    .LI(\Madd__old_C_1_lut[13] ),
    .O(_old_C_1[13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<14>  (
    .I0(A_14_IBUF_37),
    .I1(B_14_IBUF_69),
    .O(\Madd__old_C_1_lut[14] )
  );
  MUXCY   \Madd__old_C_1_cy<14>  (
    .CI(Madd__old_C_1_cy[13]),
    .DI(A_14_IBUF_37),
    .S(\Madd__old_C_1_lut[14] ),
    .O(Madd__old_C_1_cy[14])
  );
  XORCY   \Madd__old_C_1_xor<14>  (
    .CI(Madd__old_C_1_cy[13]),
    .LI(\Madd__old_C_1_lut[14] ),
    .O(_old_C_1[14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<15>  (
    .I0(A_15_IBUF_38),
    .I1(B_15_IBUF_70),
    .O(\Madd__old_C_1_lut[15] )
  );
  XORCY   \Madd__old_C_1_xor<15>  (
    .CI(Madd__old_C_1_cy[14]),
    .LI(\Madd__old_C_1_lut[15] ),
    .O(_old_C_1[15])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<0>  (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .O(\Msub__old_C_6_lut[0] )
  );
  MUXCY   \Msub__old_C_6_cy<0>  (
    .CI(N1),
    .DI(A_0_IBUF_32),
    .S(\Msub__old_C_6_lut[0] ),
    .O(Msub__old_C_6_cy[0])
  );
  XORCY   \Msub__old_C_6_xor<0>  (
    .CI(N1),
    .LI(\Msub__old_C_6_lut[0] ),
    .O(_old_C_6[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<1>  (
    .I0(A_1_IBUF_39),
    .I1(B_1_IBUF_71),
    .O(\Msub__old_C_6_lut[1] )
  );
  MUXCY   \Msub__old_C_6_cy<1>  (
    .CI(Msub__old_C_6_cy[0]),
    .DI(A_1_IBUF_39),
    .S(\Msub__old_C_6_lut[1] ),
    .O(Msub__old_C_6_cy[1])
  );
  XORCY   \Msub__old_C_6_xor<1>  (
    .CI(Msub__old_C_6_cy[0]),
    .LI(\Msub__old_C_6_lut[1] ),
    .O(_old_C_6[1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<2>  (
    .I0(A_2_IBUF_40),
    .I1(B_2_IBUF_72),
    .O(\Msub__old_C_6_lut[2] )
  );
  MUXCY   \Msub__old_C_6_cy<2>  (
    .CI(Msub__old_C_6_cy[1]),
    .DI(A_2_IBUF_40),
    .S(\Msub__old_C_6_lut[2] ),
    .O(Msub__old_C_6_cy[2])
  );
  XORCY   \Msub__old_C_6_xor<2>  (
    .CI(Msub__old_C_6_cy[1]),
    .LI(\Msub__old_C_6_lut[2] ),
    .O(_old_C_6[2])
  );
  MUXCY   \Msub__old_C_6_cy<3>  (
    .CI(Msub__old_C_6_cy[2]),
    .DI(A_3_IBUF_41),
    .S(\Msub__old_C_6_lut<3>1_559 ),
    .O(Msub__old_C_6_cy[3])
  );
  XORCY   \Msub__old_C_6_xor<3>  (
    .CI(Msub__old_C_6_cy[2]),
    .LI(\Msub__old_C_6_lut<3>1_559 ),
    .O(_old_C_6[3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<4>  (
    .I0(A_4_IBUF_42),
    .I1(B_4_IBUF_74),
    .O(\Msub__old_C_6_lut[4] )
  );
  MUXCY   \Msub__old_C_6_cy<4>  (
    .CI(Msub__old_C_6_cy[3]),
    .DI(A_4_IBUF_42),
    .S(\Msub__old_C_6_lut[4] ),
    .O(Msub__old_C_6_cy[4])
  );
  XORCY   \Msub__old_C_6_xor<4>  (
    .CI(Msub__old_C_6_cy[3]),
    .LI(\Msub__old_C_6_lut[4] ),
    .O(_old_C_6[4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<5>  (
    .I0(A_5_IBUF_43),
    .I1(B_5_IBUF_75),
    .O(\Msub__old_C_6_lut[5] )
  );
  MUXCY   \Msub__old_C_6_cy<5>  (
    .CI(Msub__old_C_6_cy[4]),
    .DI(A_5_IBUF_43),
    .S(\Msub__old_C_6_lut[5] ),
    .O(Msub__old_C_6_cy[5])
  );
  XORCY   \Msub__old_C_6_xor<5>  (
    .CI(Msub__old_C_6_cy[4]),
    .LI(\Msub__old_C_6_lut[5] ),
    .O(_old_C_6[5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<6>  (
    .I0(A_6_IBUF_44),
    .I1(B_6_IBUF_76),
    .O(\Msub__old_C_6_lut[6] )
  );
  MUXCY   \Msub__old_C_6_cy<6>  (
    .CI(Msub__old_C_6_cy[5]),
    .DI(A_6_IBUF_44),
    .S(\Msub__old_C_6_lut[6] ),
    .O(Msub__old_C_6_cy[6])
  );
  XORCY   \Msub__old_C_6_xor<6>  (
    .CI(Msub__old_C_6_cy[5]),
    .LI(\Msub__old_C_6_lut[6] ),
    .O(_old_C_6[6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<7>  (
    .I0(A_7_IBUF_45),
    .I1(B_7_IBUF_77),
    .O(\Msub__old_C_6_lut[7] )
  );
  MUXCY   \Msub__old_C_6_cy<7>  (
    .CI(Msub__old_C_6_cy[6]),
    .DI(A_7_IBUF_45),
    .S(\Msub__old_C_6_lut[7] ),
    .O(Msub__old_C_6_cy[7])
  );
  XORCY   \Msub__old_C_6_xor<7>  (
    .CI(Msub__old_C_6_cy[6]),
    .LI(\Msub__old_C_6_lut[7] ),
    .O(_old_C_6[7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<8>  (
    .I0(A_8_IBUF_46),
    .I1(B_8_IBUF_78),
    .O(\Msub__old_C_6_lut[8] )
  );
  MUXCY   \Msub__old_C_6_cy<8>  (
    .CI(Msub__old_C_6_cy[7]),
    .DI(A_8_IBUF_46),
    .S(\Msub__old_C_6_lut[8] ),
    .O(Msub__old_C_6_cy[8])
  );
  XORCY   \Msub__old_C_6_xor<8>  (
    .CI(Msub__old_C_6_cy[7]),
    .LI(\Msub__old_C_6_lut[8] ),
    .O(_old_C_6[8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<9>  (
    .I0(A_9_IBUF_47),
    .I1(B_9_IBUF_79),
    .O(\Msub__old_C_6_lut[9] )
  );
  MUXCY   \Msub__old_C_6_cy<9>  (
    .CI(Msub__old_C_6_cy[8]),
    .DI(A_9_IBUF_47),
    .S(\Msub__old_C_6_lut<9>1_566 ),
    .O(Msub__old_C_6_cy[9])
  );
  XORCY   \Msub__old_C_6_xor<9>  (
    .CI(Msub__old_C_6_cy[8]),
    .LI(\Msub__old_C_6_lut<9>1_566 ),
    .O(_old_C_6[9])
  );
  MUXCY   \Msub__old_C_6_cy<10>  (
    .CI(Msub__old_C_6_cy[9]),
    .DI(A_10_IBUF_33),
    .S(\Msub__old_C_6_lut<10>1_550 ),
    .O(Msub__old_C_6_cy[10])
  );
  XORCY   \Msub__old_C_6_xor<10>  (
    .CI(Msub__old_C_6_cy[9]),
    .LI(\Msub__old_C_6_lut<10>1_550 ),
    .O(_old_C_6[10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<11>  (
    .I0(A_11_IBUF_34),
    .I1(B_11_IBUF_66),
    .O(\Msub__old_C_6_lut[11] )
  );
  MUXCY   \Msub__old_C_6_cy<11>  (
    .CI(Msub__old_C_6_cy[10]),
    .DI(A_11_IBUF_34),
    .S(\Msub__old_C_6_lut[11] ),
    .O(Msub__old_C_6_cy[11])
  );
  XORCY   \Msub__old_C_6_xor<11>  (
    .CI(Msub__old_C_6_cy[10]),
    .LI(\Msub__old_C_6_lut[11] ),
    .O(_old_C_6[11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<12>  (
    .I0(A_12_IBUF_35),
    .I1(B_12_IBUF_67),
    .O(\Msub__old_C_6_lut[12] )
  );
  MUXCY   \Msub__old_C_6_cy<12>  (
    .CI(Msub__old_C_6_cy[11]),
    .DI(A_12_IBUF_35),
    .S(\Msub__old_C_6_lut[12] ),
    .O(Msub__old_C_6_cy[12])
  );
  XORCY   \Msub__old_C_6_xor<12>  (
    .CI(Msub__old_C_6_cy[11]),
    .LI(\Msub__old_C_6_lut[12] ),
    .O(_old_C_6[12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<13>  (
    .I0(A_13_IBUF_36),
    .I1(B_13_IBUF_68),
    .O(\Msub__old_C_6_lut[13] )
  );
  MUXCY   \Msub__old_C_6_cy<13>  (
    .CI(Msub__old_C_6_cy[12]),
    .DI(A_13_IBUF_36),
    .S(\Msub__old_C_6_lut[13] ),
    .O(Msub__old_C_6_cy[13])
  );
  XORCY   \Msub__old_C_6_xor<13>  (
    .CI(Msub__old_C_6_cy[12]),
    .LI(\Msub__old_C_6_lut[13] ),
    .O(_old_C_6[13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<14>  (
    .I0(A_14_IBUF_37),
    .I1(B_14_IBUF_69),
    .O(\Msub__old_C_6_lut[14] )
  );
  MUXCY   \Msub__old_C_6_cy<14>  (
    .CI(Msub__old_C_6_cy[13]),
    .DI(A_14_IBUF_37),
    .S(\Msub__old_C_6_lut<14>1_555 ),
    .O(Msub__old_C_6_cy[14])
  );
  XORCY   \Msub__old_C_6_xor<14>  (
    .CI(Msub__old_C_6_cy[13]),
    .LI(\Msub__old_C_6_lut<14>1_555 ),
    .O(_old_C_6[14])
  );
  XORCY   \Msub__old_C_6_xor<15>  (
    .CI(Msub__old_C_6_cy[14]),
    .LI(\Msub__old_C_6_lut<15>1_556 ),
    .O(_old_C_6[15])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<0>  (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .O(Msub_Negative_sub0000_lut[0])
  );
  MUXCY   \Msub_Negative_sub0000_cy<0>  (
    .CI(N1),
    .DI(A_0_IBUF_32),
    .S(Msub_Negative_sub0000_lut[0]),
    .O(Msub_Negative_sub0000_cy[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<1>  (
    .I0(A_1_IBUF_39),
    .I1(B_1_IBUF_71),
    .O(Msub_Negative_sub0000_lut[1])
  );
  MUXCY   \Msub_Negative_sub0000_cy<1>  (
    .CI(Msub_Negative_sub0000_cy[0]),
    .DI(A_1_IBUF_39),
    .S(Msub_Negative_sub0000_lut[1]),
    .O(Msub_Negative_sub0000_cy[1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<2>  (
    .I0(A_2_IBUF_40),
    .I1(B_2_IBUF_72),
    .O(Msub_Negative_sub0000_lut[2])
  );
  MUXCY   \Msub_Negative_sub0000_cy<2>  (
    .CI(Msub_Negative_sub0000_cy[1]),
    .DI(A_2_IBUF_40),
    .S(Msub_Negative_sub0000_lut[2]),
    .O(Msub_Negative_sub0000_cy[2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<3>  (
    .I0(A_3_IBUF_41),
    .I1(B_3_IBUF_73),
    .O(Msub_Negative_sub0000_lut[3])
  );
  MUXCY   \Msub_Negative_sub0000_cy<3>  (
    .CI(Msub_Negative_sub0000_cy[2]),
    .DI(A_3_IBUF_41),
    .S(Msub_Negative_sub0000_lut[3]),
    .O(Msub_Negative_sub0000_cy[3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<4>  (
    .I0(A_4_IBUF_42),
    .I1(B_4_IBUF_74),
    .O(Msub_Negative_sub0000_lut[4])
  );
  MUXCY   \Msub_Negative_sub0000_cy<4>  (
    .CI(Msub_Negative_sub0000_cy[3]),
    .DI(A_4_IBUF_42),
    .S(Msub_Negative_sub0000_lut[4]),
    .O(Msub_Negative_sub0000_cy[4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<5>  (
    .I0(A_5_IBUF_43),
    .I1(B_5_IBUF_75),
    .O(Msub_Negative_sub0000_lut[5])
  );
  MUXCY   \Msub_Negative_sub0000_cy<5>  (
    .CI(Msub_Negative_sub0000_cy[4]),
    .DI(A_5_IBUF_43),
    .S(Msub_Negative_sub0000_lut[5]),
    .O(Msub_Negative_sub0000_cy[5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<6>  (
    .I0(A_6_IBUF_44),
    .I1(B_6_IBUF_76),
    .O(Msub_Negative_sub0000_lut[6])
  );
  MUXCY   \Msub_Negative_sub0000_cy<6>  (
    .CI(Msub_Negative_sub0000_cy[5]),
    .DI(A_6_IBUF_44),
    .S(Msub_Negative_sub0000_lut[6]),
    .O(Msub_Negative_sub0000_cy[6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<7>  (
    .I0(A_7_IBUF_45),
    .I1(B_7_IBUF_77),
    .O(Msub_Negative_sub0000_lut[7])
  );
  MUXCY   \Msub_Negative_sub0000_cy<7>  (
    .CI(Msub_Negative_sub0000_cy[6]),
    .DI(A_7_IBUF_45),
    .S(Msub_Negative_sub0000_lut[7]),
    .O(Msub_Negative_sub0000_cy[7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<8>  (
    .I0(A_8_IBUF_46),
    .I1(B_8_IBUF_78),
    .O(Msub_Negative_sub0000_lut[8])
  );
  MUXCY   \Msub_Negative_sub0000_cy<8>  (
    .CI(Msub_Negative_sub0000_cy[7]),
    .DI(A_8_IBUF_46),
    .S(Msub_Negative_sub0000_lut[8]),
    .O(Msub_Negative_sub0000_cy[8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<9>  (
    .I0(A_9_IBUF_47),
    .I1(B_9_IBUF_79),
    .O(Msub_Negative_sub0000_lut[9])
  );
  MUXCY   \Msub_Negative_sub0000_cy<9>  (
    .CI(Msub_Negative_sub0000_cy[8]),
    .DI(A_9_IBUF_47),
    .S(Msub_Negative_sub0000_lut[9]),
    .O(Msub_Negative_sub0000_cy[9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<10>  (
    .I0(A_10_IBUF_33),
    .I1(B_10_IBUF_65),
    .O(Msub_Negative_sub0000_lut[10])
  );
  MUXCY   \Msub_Negative_sub0000_cy<10>  (
    .CI(Msub_Negative_sub0000_cy[9]),
    .DI(A_10_IBUF_33),
    .S(Msub_Negative_sub0000_lut[10]),
    .O(Msub_Negative_sub0000_cy[10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<11>  (
    .I0(A_11_IBUF_34),
    .I1(B_11_IBUF_66),
    .O(Msub_Negative_sub0000_lut[11])
  );
  MUXCY   \Msub_Negative_sub0000_cy<11>  (
    .CI(Msub_Negative_sub0000_cy[10]),
    .DI(A_11_IBUF_34),
    .S(Msub_Negative_sub0000_lut[11]),
    .O(Msub_Negative_sub0000_cy[11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<12>  (
    .I0(A_12_IBUF_35),
    .I1(B_12_IBUF_67),
    .O(Msub_Negative_sub0000_lut[12])
  );
  MUXCY   \Msub_Negative_sub0000_cy<12>  (
    .CI(Msub_Negative_sub0000_cy[11]),
    .DI(A_12_IBUF_35),
    .S(Msub_Negative_sub0000_lut[12]),
    .O(Msub_Negative_sub0000_cy[12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<13>  (
    .I0(A_13_IBUF_36),
    .I1(B_13_IBUF_68),
    .O(Msub_Negative_sub0000_lut[13])
  );
  MUXCY   \Msub_Negative_sub0000_cy<13>  (
    .CI(Msub_Negative_sub0000_cy[12]),
    .DI(A_13_IBUF_36),
    .S(Msub_Negative_sub0000_lut[13]),
    .O(Msub_Negative_sub0000_cy[13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<14>  (
    .I0(A_14_IBUF_37),
    .I1(B_14_IBUF_69),
    .O(Msub_Negative_sub0000_lut[14])
  );
  MUXCY   \Msub_Negative_sub0000_cy<14>  (
    .CI(Msub_Negative_sub0000_cy[13]),
    .DI(A_14_IBUF_37),
    .S(Msub_Negative_sub0000_lut[14]),
    .O(Msub_Negative_sub0000_cy[14])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub_Negative_sub0000_lut<15>  (
    .I0(A_15_IBUF_38),
    .I1(B_15_IBUF_70),
    .O(Msub_Negative_sub0000_lut[15])
  );
  MUXCY   \Msub_Negative_sub0000_cy<15>  (
    .CI(Msub_Negative_sub0000_cy[14]),
    .DI(A_15_IBUF_38),
    .S(Msub_Negative_sub0000_lut[15]),
    .O(Msub_Negative_sub0000_cy[15])
  );
  XORCY   \Msub_Negative_sub0000_xor<16>  (
    .CI(Msub_Negative_sub0000_cy[15]),
    .LI(N1),
    .O(Negative_sub0000[16])
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
  MUXCY   \Madd_D_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\Madd_D_cy<0>_rt_305 ),
    .O(Madd_D_cy[0])
  );
  XORCY   \Madd_D_xor<0>  (
    .CI(N0),
    .LI(\Madd_D_cy<0>_rt_305 ),
    .O(D[0])
  );
  MUXCY   \Madd_D_cy<1>  (
    .CI(Madd_D_cy[0]),
    .DI(N0),
    .S(D_not0000[1]),
    .O(Madd_D_cy[1])
  );
  XORCY   \Madd_D_xor<1>  (
    .CI(Madd_D_cy[0]),
    .LI(D_not0000[1]),
    .O(D[1])
  );
  MUXCY   \Madd_D_cy<2>  (
    .CI(Madd_D_cy[1]),
    .DI(N0),
    .S(D_not0000[2]),
    .O(Madd_D_cy[2])
  );
  XORCY   \Madd_D_xor<2>  (
    .CI(Madd_D_cy[1]),
    .LI(D_not0000[2]),
    .O(D[2])
  );
  MUXCY   \Madd_D_cy<3>  (
    .CI(Madd_D_cy[2]),
    .DI(N0),
    .S(D_not0000[3]),
    .O(Madd_D_cy[3])
  );
  XORCY   \Madd_D_xor<3>  (
    .CI(Madd_D_cy[2]),
    .LI(D_not0000[3]),
    .O(D[3])
  );
  MUXCY   \Madd_D_cy<4>  (
    .CI(Madd_D_cy[3]),
    .DI(N0),
    .S(D_not0000[4]),
    .O(Madd_D_cy[4])
  );
  XORCY   \Madd_D_xor<4>  (
    .CI(Madd_D_cy[3]),
    .LI(D_not0000[4]),
    .O(D[4])
  );
  MUXCY   \Madd_D_cy<5>  (
    .CI(Madd_D_cy[4]),
    .DI(N0),
    .S(D_not0000[5]),
    .O(Madd_D_cy[5])
  );
  XORCY   \Madd_D_xor<5>  (
    .CI(Madd_D_cy[4]),
    .LI(D_not0000[5]),
    .O(D[5])
  );
  MUXCY   \Madd_D_cy<6>  (
    .CI(Madd_D_cy[5]),
    .DI(N0),
    .S(D_not0000[6]),
    .O(Madd_D_cy[6])
  );
  XORCY   \Madd_D_xor<6>  (
    .CI(Madd_D_cy[5]),
    .LI(D_not0000[6]),
    .O(D[6])
  );
  MUXCY   \Madd_D_cy<7>  (
    .CI(Madd_D_cy[6]),
    .DI(N0),
    .S(D_not0000[7]),
    .O(Madd_D_cy[7])
  );
  XORCY   \Madd_D_xor<7>  (
    .CI(Madd_D_cy[6]),
    .LI(D_not0000[7]),
    .O(D[7])
  );
  MUXCY   \Madd_D_cy<8>  (
    .CI(Madd_D_cy[7]),
    .DI(N0),
    .S(D_not0000[8]),
    .O(Madd_D_cy[8])
  );
  XORCY   \Madd_D_xor<8>  (
    .CI(Madd_D_cy[7]),
    .LI(D_not0000[8]),
    .O(D[8])
  );
  MUXCY   \Madd_D_cy<9>  (
    .CI(Madd_D_cy[8]),
    .DI(N0),
    .S(D_not0000[9]),
    .O(Madd_D_cy[9])
  );
  XORCY   \Madd_D_xor<9>  (
    .CI(Madd_D_cy[8]),
    .LI(D_not0000[9]),
    .O(D[9])
  );
  MUXCY   \Madd_D_cy<10>  (
    .CI(Madd_D_cy[9]),
    .DI(N0),
    .S(D_not0000[10]),
    .O(Madd_D_cy[10])
  );
  XORCY   \Madd_D_xor<10>  (
    .CI(Madd_D_cy[9]),
    .LI(D_not0000[10]),
    .O(D[10])
  );
  MUXCY   \Madd_D_cy<11>  (
    .CI(Madd_D_cy[10]),
    .DI(N0),
    .S(D_not0000[11]),
    .O(Madd_D_cy[11])
  );
  XORCY   \Madd_D_xor<11>  (
    .CI(Madd_D_cy[10]),
    .LI(D_not0000[11]),
    .O(D[11])
  );
  MUXCY   \Madd_D_cy<12>  (
    .CI(Madd_D_cy[11]),
    .DI(N0),
    .S(D_not0000[12]),
    .O(Madd_D_cy[12])
  );
  XORCY   \Madd_D_xor<12>  (
    .CI(Madd_D_cy[11]),
    .LI(D_not0000[12]),
    .O(D[12])
  );
  MUXCY   \Madd_D_cy<13>  (
    .CI(Madd_D_cy[12]),
    .DI(N0),
    .S(D_not0000[13]),
    .O(Madd_D_cy[13])
  );
  XORCY   \Madd_D_xor<13>  (
    .CI(Madd_D_cy[12]),
    .LI(D_not0000[13]),
    .O(D[13])
  );
  MUXCY   \Madd_D_cy<14>  (
    .CI(Madd_D_cy[13]),
    .DI(N0),
    .S(D_not0000[14]),
    .O(Madd_D_cy[14])
  );
  XORCY   \Madd_D_xor<14>  (
    .CI(Madd_D_cy[13]),
    .LI(D_not0000[14]),
    .O(D[14])
  );
  XORCY   \Madd_D_xor<15>  (
    .CI(Madd_D_cy[14]),
    .LI(D_not0000[15]),
    .O(D[15])
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
  \Madd__AUX_5_lut<0>  (
    .I0(AUX_3_addsub0000[0]),
    .I1(CarryIn_IBUF_231),
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
    .S(\Madd__AUX_5_cy<1>_rt_334 ),
    .O(Madd__AUX_5_cy[1])
  );
  XORCY   \Madd__AUX_5_xor<1>  (
    .CI(Madd__AUX_5_cy[0]),
    .LI(\Madd__AUX_5_cy<1>_rt_334 ),
    .O(_AUX_5[1])
  );
  MUXCY   \Madd__AUX_5_cy<2>  (
    .CI(Madd__AUX_5_cy[1]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<2>_rt_336 ),
    .O(Madd__AUX_5_cy[2])
  );
  XORCY   \Madd__AUX_5_xor<2>  (
    .CI(Madd__AUX_5_cy[1]),
    .LI(\Madd__AUX_5_cy<2>_rt_336 ),
    .O(_AUX_5[2])
  );
  MUXCY   \Madd__AUX_5_cy<3>  (
    .CI(Madd__AUX_5_cy[2]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<3>_rt_338 ),
    .O(Madd__AUX_5_cy[3])
  );
  XORCY   \Madd__AUX_5_xor<3>  (
    .CI(Madd__AUX_5_cy[2]),
    .LI(\Madd__AUX_5_cy<3>_rt_338 ),
    .O(_AUX_5[3])
  );
  MUXCY   \Madd__AUX_5_cy<4>  (
    .CI(Madd__AUX_5_cy[3]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<4>_rt_340 ),
    .O(Madd__AUX_5_cy[4])
  );
  XORCY   \Madd__AUX_5_xor<4>  (
    .CI(Madd__AUX_5_cy[3]),
    .LI(\Madd__AUX_5_cy<4>_rt_340 ),
    .O(_AUX_5[4])
  );
  MUXCY   \Madd__AUX_5_cy<5>  (
    .CI(Madd__AUX_5_cy[4]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<5>_rt_342 ),
    .O(Madd__AUX_5_cy[5])
  );
  XORCY   \Madd__AUX_5_xor<5>  (
    .CI(Madd__AUX_5_cy[4]),
    .LI(\Madd__AUX_5_cy<5>_rt_342 ),
    .O(_AUX_5[5])
  );
  MUXCY   \Madd__AUX_5_cy<6>  (
    .CI(Madd__AUX_5_cy[5]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<6>_rt_344 ),
    .O(Madd__AUX_5_cy[6])
  );
  XORCY   \Madd__AUX_5_xor<6>  (
    .CI(Madd__AUX_5_cy[5]),
    .LI(\Madd__AUX_5_cy<6>_rt_344 ),
    .O(_AUX_5[6])
  );
  MUXCY   \Madd__AUX_5_cy<7>  (
    .CI(Madd__AUX_5_cy[6]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<7>_rt_346 ),
    .O(Madd__AUX_5_cy[7])
  );
  XORCY   \Madd__AUX_5_xor<7>  (
    .CI(Madd__AUX_5_cy[6]),
    .LI(\Madd__AUX_5_cy<7>_rt_346 ),
    .O(_AUX_5[7])
  );
  MUXCY   \Madd__AUX_5_cy<8>  (
    .CI(Madd__AUX_5_cy[7]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<8>_rt_348 ),
    .O(Madd__AUX_5_cy[8])
  );
  XORCY   \Madd__AUX_5_xor<8>  (
    .CI(Madd__AUX_5_cy[7]),
    .LI(\Madd__AUX_5_cy<8>_rt_348 ),
    .O(_AUX_5[8])
  );
  MUXCY   \Madd__AUX_5_cy<9>  (
    .CI(Madd__AUX_5_cy[8]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<9>_rt_350 ),
    .O(Madd__AUX_5_cy[9])
  );
  XORCY   \Madd__AUX_5_xor<9>  (
    .CI(Madd__AUX_5_cy[8]),
    .LI(\Madd__AUX_5_cy<9>_rt_350 ),
    .O(_AUX_5[9])
  );
  MUXCY   \Madd__AUX_5_cy<10>  (
    .CI(Madd__AUX_5_cy[9]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<10>_rt_322 ),
    .O(Madd__AUX_5_cy[10])
  );
  XORCY   \Madd__AUX_5_xor<10>  (
    .CI(Madd__AUX_5_cy[9]),
    .LI(\Madd__AUX_5_cy<10>_rt_322 ),
    .O(_AUX_5[10])
  );
  MUXCY   \Madd__AUX_5_cy<11>  (
    .CI(Madd__AUX_5_cy[10]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<11>_rt_324 ),
    .O(Madd__AUX_5_cy[11])
  );
  XORCY   \Madd__AUX_5_xor<11>  (
    .CI(Madd__AUX_5_cy[10]),
    .LI(\Madd__AUX_5_cy<11>_rt_324 ),
    .O(_AUX_5[11])
  );
  MUXCY   \Madd__AUX_5_cy<12>  (
    .CI(Madd__AUX_5_cy[11]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<12>_rt_326 ),
    .O(Madd__AUX_5_cy[12])
  );
  XORCY   \Madd__AUX_5_xor<12>  (
    .CI(Madd__AUX_5_cy[11]),
    .LI(\Madd__AUX_5_cy<12>_rt_326 ),
    .O(_AUX_5[12])
  );
  MUXCY   \Madd__AUX_5_cy<13>  (
    .CI(Madd__AUX_5_cy[12]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<13>_rt_328 ),
    .O(Madd__AUX_5_cy[13])
  );
  XORCY   \Madd__AUX_5_xor<13>  (
    .CI(Madd__AUX_5_cy[12]),
    .LI(\Madd__AUX_5_cy<13>_rt_328 ),
    .O(_AUX_5[13])
  );
  MUXCY   \Madd__AUX_5_cy<14>  (
    .CI(Madd__AUX_5_cy[13]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<14>_rt_330 ),
    .O(Madd__AUX_5_cy[14])
  );
  XORCY   \Madd__AUX_5_xor<14>  (
    .CI(Madd__AUX_5_cy[13]),
    .LI(\Madd__AUX_5_cy<14>_rt_330 ),
    .O(_AUX_5[14])
  );
  MUXCY   \Madd__AUX_5_cy<15>  (
    .CI(Madd__AUX_5_cy[14]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<15>_rt_332 ),
    .O(Madd__AUX_5_cy[15])
  );
  XORCY   \Madd__AUX_5_xor<15>  (
    .CI(Madd__AUX_5_cy[14]),
    .LI(\Madd__AUX_5_cy<15>_rt_332 ),
    .O(_AUX_5[15])
  );
  XORCY   \Madd__AUX_5_xor<16>  (
    .CI(Madd__AUX_5_cy[15]),
    .LI(\Madd__AUX_5_xor<16>_rt_352 ),
    .O(_AUX_5[16])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<0>  (
    .I0(A_0_IBUF_32),
    .I1(D[0]),
    .O(Madd__old_C_7_lut[0])
  );
  MUXCY   \Madd__old_C_7_cy<0>  (
    .CI(N0),
    .DI(A_0_IBUF_32),
    .S(Madd__old_C_7_lut[0]),
    .O(Madd__old_C_7_cy[0])
  );
  XORCY   \Madd__old_C_7_xor<0>  (
    .CI(N0),
    .LI(Madd__old_C_7_lut[0]),
    .O(_old_C_7[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<1>  (
    .I0(A_1_IBUF_39),
    .I1(D[1]),
    .O(Madd__old_C_7_lut[1])
  );
  MUXCY   \Madd__old_C_7_cy<1>  (
    .CI(Madd__old_C_7_cy[0]),
    .DI(A_1_IBUF_39),
    .S(Madd__old_C_7_lut[1]),
    .O(Madd__old_C_7_cy[1])
  );
  XORCY   \Madd__old_C_7_xor<1>  (
    .CI(Madd__old_C_7_cy[0]),
    .LI(Madd__old_C_7_lut[1]),
    .O(_old_C_7[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<2>  (
    .I0(A_2_IBUF_40),
    .I1(D[2]),
    .O(Madd__old_C_7_lut[2])
  );
  MUXCY   \Madd__old_C_7_cy<2>  (
    .CI(Madd__old_C_7_cy[1]),
    .DI(A_2_IBUF_40),
    .S(Madd__old_C_7_lut[2]),
    .O(Madd__old_C_7_cy[2])
  );
  XORCY   \Madd__old_C_7_xor<2>  (
    .CI(Madd__old_C_7_cy[1]),
    .LI(Madd__old_C_7_lut[2]),
    .O(_old_C_7[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<3>  (
    .I0(A_3_IBUF_41),
    .I1(D[3]),
    .O(Madd__old_C_7_lut[3])
  );
  MUXCY   \Madd__old_C_7_cy<3>  (
    .CI(Madd__old_C_7_cy[2]),
    .DI(A_3_IBUF_41),
    .S(Madd__old_C_7_lut[3]),
    .O(Madd__old_C_7_cy[3])
  );
  XORCY   \Madd__old_C_7_xor<3>  (
    .CI(Madd__old_C_7_cy[2]),
    .LI(Madd__old_C_7_lut[3]),
    .O(_old_C_7[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<4>  (
    .I0(A_4_IBUF_42),
    .I1(D[4]),
    .O(Madd__old_C_7_lut[4])
  );
  MUXCY   \Madd__old_C_7_cy<4>  (
    .CI(Madd__old_C_7_cy[3]),
    .DI(A_4_IBUF_42),
    .S(Madd__old_C_7_lut[4]),
    .O(Madd__old_C_7_cy[4])
  );
  XORCY   \Madd__old_C_7_xor<4>  (
    .CI(Madd__old_C_7_cy[3]),
    .LI(Madd__old_C_7_lut[4]),
    .O(_old_C_7[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<5>  (
    .I0(A_5_IBUF_43),
    .I1(D[5]),
    .O(Madd__old_C_7_lut[5])
  );
  MUXCY   \Madd__old_C_7_cy<5>  (
    .CI(Madd__old_C_7_cy[4]),
    .DI(A_5_IBUF_43),
    .S(Madd__old_C_7_lut[5]),
    .O(Madd__old_C_7_cy[5])
  );
  XORCY   \Madd__old_C_7_xor<5>  (
    .CI(Madd__old_C_7_cy[4]),
    .LI(Madd__old_C_7_lut[5]),
    .O(_old_C_7[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<6>  (
    .I0(A_6_IBUF_44),
    .I1(D[6]),
    .O(Madd__old_C_7_lut[6])
  );
  MUXCY   \Madd__old_C_7_cy<6>  (
    .CI(Madd__old_C_7_cy[5]),
    .DI(A_6_IBUF_44),
    .S(Madd__old_C_7_lut[6]),
    .O(Madd__old_C_7_cy[6])
  );
  XORCY   \Madd__old_C_7_xor<6>  (
    .CI(Madd__old_C_7_cy[5]),
    .LI(Madd__old_C_7_lut[6]),
    .O(_old_C_7[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<7>  (
    .I0(A_7_IBUF_45),
    .I1(D[7]),
    .O(Madd__old_C_7_lut[7])
  );
  MUXCY   \Madd__old_C_7_cy<7>  (
    .CI(Madd__old_C_7_cy[6]),
    .DI(A_7_IBUF_45),
    .S(Madd__old_C_7_lut[7]),
    .O(Madd__old_C_7_cy[7])
  );
  XORCY   \Madd__old_C_7_xor<7>  (
    .CI(Madd__old_C_7_cy[6]),
    .LI(Madd__old_C_7_lut[7]),
    .O(_old_C_7[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<8>  (
    .I0(A_8_IBUF_46),
    .I1(D[8]),
    .O(Madd__old_C_7_lut[8])
  );
  MUXCY   \Madd__old_C_7_cy<8>  (
    .CI(Madd__old_C_7_cy[7]),
    .DI(A_8_IBUF_46),
    .S(Madd__old_C_7_lut[8]),
    .O(Madd__old_C_7_cy[8])
  );
  XORCY   \Madd__old_C_7_xor<8>  (
    .CI(Madd__old_C_7_cy[7]),
    .LI(Madd__old_C_7_lut[8]),
    .O(_old_C_7[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<9>  (
    .I0(A_9_IBUF_47),
    .I1(D[9]),
    .O(Madd__old_C_7_lut[9])
  );
  MUXCY   \Madd__old_C_7_cy<9>  (
    .CI(Madd__old_C_7_cy[8]),
    .DI(A_9_IBUF_47),
    .S(Madd__old_C_7_lut[9]),
    .O(Madd__old_C_7_cy[9])
  );
  XORCY   \Madd__old_C_7_xor<9>  (
    .CI(Madd__old_C_7_cy[8]),
    .LI(Madd__old_C_7_lut[9]),
    .O(_old_C_7[9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<10>  (
    .I0(A_10_IBUF_33),
    .I1(D[10]),
    .O(Madd__old_C_7_lut[10])
  );
  MUXCY   \Madd__old_C_7_cy<10>  (
    .CI(Madd__old_C_7_cy[9]),
    .DI(A_10_IBUF_33),
    .S(Madd__old_C_7_lut[10]),
    .O(Madd__old_C_7_cy[10])
  );
  XORCY   \Madd__old_C_7_xor<10>  (
    .CI(Madd__old_C_7_cy[9]),
    .LI(Madd__old_C_7_lut[10]),
    .O(_old_C_7[10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<11>  (
    .I0(A_11_IBUF_34),
    .I1(D[11]),
    .O(Madd__old_C_7_lut[11])
  );
  MUXCY   \Madd__old_C_7_cy<11>  (
    .CI(Madd__old_C_7_cy[10]),
    .DI(A_11_IBUF_34),
    .S(Madd__old_C_7_lut[11]),
    .O(Madd__old_C_7_cy[11])
  );
  XORCY   \Madd__old_C_7_xor<11>  (
    .CI(Madd__old_C_7_cy[10]),
    .LI(Madd__old_C_7_lut[11]),
    .O(_old_C_7[11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<12>  (
    .I0(A_12_IBUF_35),
    .I1(D[12]),
    .O(Madd__old_C_7_lut[12])
  );
  MUXCY   \Madd__old_C_7_cy<12>  (
    .CI(Madd__old_C_7_cy[11]),
    .DI(A_12_IBUF_35),
    .S(Madd__old_C_7_lut[12]),
    .O(Madd__old_C_7_cy[12])
  );
  XORCY   \Madd__old_C_7_xor<12>  (
    .CI(Madd__old_C_7_cy[11]),
    .LI(Madd__old_C_7_lut[12]),
    .O(_old_C_7[12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<13>  (
    .I0(A_13_IBUF_36),
    .I1(D[13]),
    .O(Madd__old_C_7_lut[13])
  );
  MUXCY   \Madd__old_C_7_cy<13>  (
    .CI(Madd__old_C_7_cy[12]),
    .DI(A_13_IBUF_36),
    .S(Madd__old_C_7_lut[13]),
    .O(Madd__old_C_7_cy[13])
  );
  XORCY   \Madd__old_C_7_xor<13>  (
    .CI(Madd__old_C_7_cy[12]),
    .LI(Madd__old_C_7_lut[13]),
    .O(_old_C_7[13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<14>  (
    .I0(A_14_IBUF_37),
    .I1(D[14]),
    .O(Madd__old_C_7_lut[14])
  );
  MUXCY   \Madd__old_C_7_cy<14>  (
    .CI(Madd__old_C_7_cy[13]),
    .DI(A_14_IBUF_37),
    .S(Madd__old_C_7_lut[14]),
    .O(Madd__old_C_7_cy[14])
  );
  XORCY   \Madd__old_C_7_xor<14>  (
    .CI(Madd__old_C_7_cy[13]),
    .LI(Madd__old_C_7_lut[14]),
    .O(_old_C_7[14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_7_lut<15>  (
    .I0(A_15_IBUF_38),
    .I1(D[15]),
    .O(Madd__old_C_7_lut[15])
  );
  XORCY   \Madd__old_C_7_xor<15>  (
    .CI(Madd__old_C_7_cy[14]),
    .LI(Madd__old_C_7_lut[15]),
    .O(_old_C_7[15])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  C_and00001 (
    .I0(Opcode_5_IBUF_726),
    .I1(Opcode_6_IBUF_727),
    .I2(Opcode_7_IBUF_728),
    .O(C_and0000)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<0>4  (
    .I0(_old_C_6[0]),
    .I1(C_cmp_eq0006),
    .I2(AUX_3_addsub0000[0]),
    .I3(N44),
    .O(\C<0>4_84 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \C<0>12  (
    .I0(C_cmp_eq0015),
    .I1(A_0_IBUF_32),
    .I2(C_or0000),
    .I3(_old_C_1[0]),
    .O(\C<0>12_81 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero41 (
    .I0(Opcode_2_IBUF_723),
    .I1(Opcode_0_IBUF_721),
    .I2(Opcode_4_IBUF_725),
    .I3(Opcode_3_IBUF_724),
    .O(N44)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  Sh2711 (
    .I0(B_2_IBUF_72),
    .I1(B_3_IBUF_73),
    .O(N26)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  C_cmp_eq002111 (
    .I0(Opcode_0_IBUF_721),
    .I1(Opcode_1_IBUF_722),
    .O(N124)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  C_or000311 (
    .I0(Opcode_0_IBUF_721),
    .I1(Opcode_1_IBUF_722),
    .O(N23)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  C_or000331 (
    .I0(Opcode_4_IBUF_725),
    .I1(Opcode_3_IBUF_724),
    .I2(Opcode_2_IBUF_723),
    .O(N118)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  C_or00001 (
    .I0(Opcode_2_IBUF_723),
    .I1(Opcode_0_IBUF_721),
    .I2(Opcode_4_IBUF_725),
    .I3(Opcode_3_IBUF_724),
    .O(C_or0000)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  C_cmp_eq00211 (
    .I0(Opcode_4_IBUF_725),
    .I1(Opcode_2_IBUF_723),
    .I2(N124),
    .I3(Opcode_3_IBUF_724),
    .O(C_cmp_eq0021)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  C_cmp_eq00131 (
    .I0(Opcode_3_IBUF_724),
    .I1(N124),
    .I2(Opcode_2_IBUF_723),
    .I3(Opcode_4_IBUF_725),
    .O(C_cmp_eq0013)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Sh141 (
    .I0(B_1_IBUF_71),
    .I1(A_15_IBUF_38),
    .I2(B_0_IBUF_64),
    .I3(A_14_IBUF_37),
    .O(Sh14)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  old_C_12_or00004 (
    .I0(B_14_IBUF_69),
    .I1(B_15_IBUF_70),
    .I2(B_4_IBUF_74),
    .I3(B_5_IBUF_75),
    .O(old_C_12_or00004_965)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  old_C_12_or00009 (
    .I0(B_6_IBUF_76),
    .I1(B_7_IBUF_77),
    .I2(B_8_IBUF_78),
    .I3(B_9_IBUF_79),
    .O(old_C_12_or00009_966)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  old_C_12_or000014 (
    .I0(B_10_IBUF_65),
    .I1(B_11_IBUF_66),
    .I2(B_12_IBUF_67),
    .I3(B_13_IBUF_68),
    .O(old_C_12_or000014_964)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  old_C_12_or000023 (
    .I0(old_C_12_or00004_965),
    .I1(old_C_12_or00009_966),
    .I2(old_C_12_or000014_964),
    .O(old_C_12_or0000)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<1>43  (
    .I0(AUX_3_addsub0000[1]),
    .I1(N44),
    .I2(_old_C_6[1]),
    .I3(C_cmp_eq0006),
    .O(\C<1>43_137 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<1>96  (
    .I0(N56),
    .I1(Sh81),
    .I2(C_cmp_eq0021),
    .I3(Sh17),
    .O(\C<1>96_140 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \C<1>109  (
    .I0(C_and0000),
    .I1(\C<1>83_139 ),
    .I2(\C<1>96_140 ),
    .O(C_1_OBUF_208)
  );
  LUT4 #(
    .INIT ( 16'hACA8 ))
  \C<15>1116  (
    .I0(C_cmp_eq0013),
    .I1(A_15_IBUF_38),
    .I2(B_15_IBUF_70),
    .I3(C_cmp_eq0014),
    .O(\C<15>1116_128 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<15>1120  (
    .I0(B_15_IBUF_70),
    .I1(C_cmp_eq0014),
    .I2(C_cmp_eq0015),
    .O(\C<15>1120_129 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \C<15>1129  (
    .I0(\C<15>1120_129 ),
    .I1(A_15_IBUF_38),
    .I2(C_or0000),
    .I3(_old_C_1[15]),
    .O(\C<15>1129_130 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \C<15>1132  (
    .I0(\C<15>1116_128 ),
    .I1(\C<15>1129_130 ),
    .O(N38)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<4>60  (
    .I0(N61),
    .I1(Sh52_785),
    .I2(AUX_3_addsub0000[4]),
    .I3(N44),
    .O(\C<4>60_159 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<4>65  (
    .I0(_old_C_6[4]),
    .I1(C_cmp_eq0006),
    .I2(_old_C_1[4]),
    .I3(C_or0000),
    .O(\C<4>65_160 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<4>108  (
    .I0(C_and0000),
    .I1(_old_C_7[4]),
    .I2(C_cmp_eq0007),
    .I3(\C<4>85_161 ),
    .O(C_4_OBUF_211)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<5>60  (
    .I0(N61),
    .I1(Sh53),
    .I2(AUX_3_addsub0000[5]),
    .I3(N44),
    .O(\C<5>60_165 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<5>65  (
    .I0(_old_C_6[5]),
    .I1(C_cmp_eq0006),
    .I2(_old_C_1[5]),
    .I3(C_or0000),
    .O(\C<5>65_166 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<5>108  (
    .I0(C_and0000),
    .I1(_old_C_7[5]),
    .I2(C_cmp_eq0007),
    .I3(\C<5>85_167 ),
    .O(C_5_OBUF_212)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \C<6>111  (
    .I0(A_6_IBUF_44),
    .I1(B_6_IBUF_76),
    .O(N66)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \C<2>111  (
    .I0(A_2_IBUF_40),
    .I1(B_2_IBUF_72),
    .O(N64)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \C<13>111  (
    .I0(A_13_IBUF_36),
    .I1(B_13_IBUF_68),
    .O(N65)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  C_cmp_eq00071 (
    .I0(Opcode_1_IBUF_722),
    .I1(Opcode_0_IBUF_721),
    .I2(N53),
    .O(C_cmp_eq0007)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  C_cmp_eq00061 (
    .I0(N53),
    .I1(Opcode_1_IBUF_722),
    .I2(Opcode_0_IBUF_721),
    .O(C_cmp_eq0006)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  C_cmp_eq000411 (
    .I0(Opcode_2_IBUF_723),
    .I1(Opcode_3_IBUF_724),
    .I2(Opcode_4_IBUF_725),
    .O(N53)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh131 (
    .I0(B_1_IBUF_71),
    .I1(N24),
    .I2(A_15_IBUF_38),
    .O(Sh13)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  Sh182 (
    .I0(N58),
    .I1(B_2_IBUF_72),
    .I2(B_3_IBUF_73),
    .I3(Sh14),
    .O(Sh18)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh911 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh11_730),
    .I3(Sh79),
    .O(Sh91)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh901 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh10_729),
    .I3(Sh78),
    .O(Sh90)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh891 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh73_807),
    .I3(Sh77),
    .O(Sh89)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh881 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh72_806),
    .I3(Sh12),
    .O(Sh88)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh781 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_14_IBUF_37),
    .I3(A_15_IBUF_38),
    .O(Sh78)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh551 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh39_773),
    .I3(Sh35),
    .O(Sh55)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh331 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_1_IBUF_39),
    .I3(A_0_IBUF_32),
    .O(Sh33)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh541 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh38_772),
    .I3(Sh34),
    .O(Sh54)
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  Sh872 (
    .I0(N125),
    .I1(Sh79),
    .I2(B_2_IBUF_72),
    .I3(B_3_IBUF_73),
    .O(Sh87)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh531 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh37_771),
    .I3(Sh33),
    .O(Sh53)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh521 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh36_770),
    .I3(Sh32),
    .O(Sh52_785)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<2>35  (
    .I0(_old_C_6[2]),
    .I1(C_cmp_eq0006),
    .I2(AUX_3_addsub0000[2]),
    .I3(N44),
    .O(\C<2>35_146 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<2>78  (
    .I0(\C<2>11_143 ),
    .I1(\C<2>20_145 ),
    .I2(\C<2>35_146 ),
    .I3(\C<2>58_147 ),
    .O(\C<2>78_148 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<2>104  (
    .I0(\C<2>78_148 ),
    .I1(N56),
    .I2(Sh82),
    .I3(\C<2>88_149 ),
    .O(\C<2>104_142 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<3>4  (
    .I0(_old_C_1[3]),
    .I1(C_or0000),
    .I2(_old_C_6[3]),
    .I3(C_cmp_eq0006),
    .O(\C<3>4_153 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<3>9  (
    .I0(AUX_3_addsub0000[3]),
    .I1(N44),
    .I2(B_3_IBUF_73),
    .I3(C_cmp_eq0013),
    .O(\C<3>9_156 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<3>101  (
    .I0(_AUX_5[3]),
    .I1(N39),
    .I2(C_cmp_eq0021),
    .I3(\C<3>96_157 ),
    .O(\C<3>101_151 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \C<3>128  (
    .I0(C_and0000),
    .I1(\C<3>85_155 ),
    .I2(\C<3>101_151 ),
    .I3(\C<3>114_152 ),
    .O(C_3_OBUF_210)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<6>28  (
    .I0(_old_C_6[6]),
    .I1(C_cmp_eq0006),
    .I2(AUX_3_addsub0000[6]),
    .I3(N44),
    .O(\C<6>28_172 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<6>98  (
    .I0(N56),
    .I1(Sh86_819),
    .I2(C_cmp_eq0021),
    .I3(Sh22_751),
    .O(\C<6>98_174 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<6>124  (
    .I0(C_and0000),
    .I1(_old_C_7[6]),
    .I2(C_cmp_eq0007),
    .I3(\C<6>100_169 ),
    .O(C_6_OBUF_213)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \C<7>8  (
    .I0(B_7_IBUF_77),
    .I1(C_cmp_eq0013),
    .O(\C<7>8_183 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<7>18  (
    .I0(\C<7>7_181 ),
    .I1(_old_C_1[7]),
    .I2(C_or0000),
    .I3(\C<7>8_183 ),
    .O(\C<7>18_176 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<7>28  (
    .I0(_old_C_6[7]),
    .I1(C_cmp_eq0006),
    .I2(AUX_3_addsub0000[7]),
    .I3(N44),
    .O(\C<7>28_177 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<7>44  (
    .I0(\C<7>18_176 ),
    .I1(N56),
    .I2(Sh87),
    .I3(\C<7>28_177 ),
    .O(\C<7>44_178 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<7>79  (
    .I0(\C<7>61_179 ),
    .I1(_AUX_5[7]),
    .I2(N39),
    .I3(\C<7>67_180 ),
    .O(\C<7>79_182 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<8>41  (
    .I0(\C<8>18_185 ),
    .I1(N61),
    .I2(Sh56_789),
    .I3(\C<8>26_186 ),
    .O(\C<8>41_187 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<8>54  (
    .I0(_old_C_6[8]),
    .I1(C_cmp_eq0006),
    .I2(AUX_3_addsub0000[8]),
    .I3(N44),
    .O(\C<8>54_188 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<8>58  (
    .I0(B_8_IBUF_78),
    .I1(C_or0002),
    .I2(C_cmp_eq0013),
    .O(\C<8>58_189 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<8>64  (
    .I0(_old_C_1[8]),
    .I1(C_or0000),
    .I2(A_8_IBUF_46),
    .I3(\C<8>58_189 ),
    .O(\C<8>64_190 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<8>113  (
    .I0(C_and0000),
    .I1(_old_C_7[8]),
    .I2(C_cmp_eq0007),
    .I3(\C<8>90_192 ),
    .O(C_8_OBUF_215)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<9>33  (
    .I0(_old_C_6[9]),
    .I1(C_cmp_eq0006),
    .I2(AUX_3_addsub0000[9]),
    .I3(N44),
    .O(\C<9>33_196 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<9>50  (
    .I0(B_9_IBUF_79),
    .I1(C_or0002),
    .I2(C_cmp_eq0013),
    .O(\C<9>50_197 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<9>56  (
    .I0(_old_C_1[9]),
    .I1(C_or0000),
    .I2(A_9_IBUF_47),
    .I3(\C<9>50_197 ),
    .O(\C<9>56_198 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<9>74  (
    .I0(N61),
    .I1(Sh57_790),
    .I2(C_cmp_eq0021),
    .I3(Sh25),
    .O(\C<9>74_199 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<9>112  (
    .I0(C_and0000),
    .I1(_old_C_7[9]),
    .I2(C_cmp_eq0007),
    .I3(\C<9>89_200 ),
    .O(C_9_OBUF_216)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<10>4  (
    .I0(_old_C_1[10]),
    .I1(C_or0000),
    .I2(_old_C_6[10]),
    .I3(C_cmp_eq0006),
    .O(\C<10>4_93 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<10>8  (
    .I0(B_10_IBUF_65),
    .I1(C_cmp_eq0014),
    .I2(C_cmp_eq0015),
    .O(\C<10>8_99 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \C<10>17  (
    .I0(\C<10>8_99 ),
    .I1(A_10_IBUF_33),
    .I2(N44),
    .I3(AUX_3_addsub0000[10]),
    .O(\C<10>17_91 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<10>33  (
    .I0(\C<10>4_93 ),
    .I1(C_cmp_eq0021),
    .I2(Sh26),
    .I3(\C<10>17_91 ),
    .O(\C<10>33_92 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<10>47  (
    .I0(N56),
    .I1(Sh90),
    .I2(B_10_IBUF_65),
    .I3(C_cmp_eq0013),
    .O(\C<10>47_94 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<10>79  (
    .I0(\C<10>47_94 ),
    .I1(N61),
    .I2(Sh58_791),
    .I3(\C<10>62 ),
    .O(\C<10>79_98 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<10>103  (
    .I0(\C<10>33_92 ),
    .I1(_AUX_5[10]),
    .I2(N39),
    .I3(\C<10>79_98 ),
    .O(\C<10>103_90 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<10>126  (
    .I0(C_and0000),
    .I1(_old_C_7[10]),
    .I2(C_cmp_eq0007),
    .I3(\C<10>103_90 ),
    .O(C_10_OBUF_202)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<11>51  (
    .I0(C_cmp_eq0021),
    .I1(Sh27),
    .I2(N56),
    .I3(Sh91),
    .O(\C<11>51_102 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<11>80  (
    .I0(\C<11>38_101 ),
    .I1(_AUX_5[11]),
    .I2(N39),
    .I3(\C<11>61_103 ),
    .O(\C<11>80_105 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<11>103  (
    .I0(C_and0000),
    .I1(_old_C_7[11]),
    .I2(C_cmp_eq0007),
    .I3(\C<11>80_105 ),
    .O(C_11_OBUF_203)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<12>91  (
    .I0(\C<12>38_107 ),
    .I1(_AUX_5[12]),
    .I2(N39),
    .I3(\C<12>70_110 ),
    .O(\C<12>91_111 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<12>114  (
    .I0(C_and0000),
    .I1(_old_C_7[12]),
    .I2(C_cmp_eq0007),
    .I3(\C<12>91_111 ),
    .O(C_12_OBUF_204)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  Zero731 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .O(N59)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  Sh172 (
    .I0(N57),
    .I1(Sh13),
    .I2(B_3_IBUF_73),
    .I3(B_2_IBUF_72),
    .O(Sh17)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh7_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_7_IBUF_45),
    .I2(A_8_IBUF_46),
    .O(N156)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh7_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_9_IBUF_47),
    .I2(A_10_IBUF_33),
    .O(N157)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh43_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_9_IBUF_47),
    .I2(A_8_IBUF_46),
    .O(N160)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh42_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_8_IBUF_46),
    .I2(A_7_IBUF_45),
    .O(N163)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh41_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_7_IBUF_45),
    .I2(A_6_IBUF_44),
    .O(N166)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh41 (
    .I0(B_1_IBUF_71),
    .I1(N160),
    .I2(N166),
    .O(Sh41_775)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh40_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_6_IBUF_44),
    .I2(A_5_IBUF_43),
    .O(N169)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh40 (
    .I0(B_1_IBUF_71),
    .I1(N163),
    .I2(N169),
    .O(Sh40_774)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh39_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_5_IBUF_43),
    .I2(A_4_IBUF_42),
    .O(N172)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh39 (
    .I0(B_1_IBUF_71),
    .I1(N166),
    .I2(N172),
    .O(Sh39_773)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh38_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_4_IBUF_42),
    .I2(A_3_IBUF_41),
    .O(N175)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh38 (
    .I0(B_1_IBUF_71),
    .I1(N169),
    .I2(N175),
    .O(Sh38_772)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh37_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_3_IBUF_41),
    .I2(A_2_IBUF_40),
    .O(N178)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh37 (
    .I0(B_1_IBUF_71),
    .I1(N172),
    .I2(N178),
    .O(Sh37_771)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh36_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_2_IBUF_40),
    .I2(A_1_IBUF_39),
    .O(N181)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh36 (
    .I0(B_1_IBUF_71),
    .I1(N175),
    .I2(N181),
    .O(Sh36_770)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh6326 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_14_IBUF_37),
    .I3(A_12_IBUF_35),
    .O(Sh6326_804)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh6341 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_15_IBUF_38),
    .I3(A_13_IBUF_36),
    .O(Sh6341_805)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh6226 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_13_IBUF_36),
    .I3(A_11_IBUF_34),
    .O(Sh6226_801)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh6241 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_14_IBUF_37),
    .I3(A_12_IBUF_35),
    .O(Sh6241_802)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh6126 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_12_IBUF_35),
    .I3(A_10_IBUF_33),
    .O(Sh6126_798)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh6141 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_13_IBUF_36),
    .I3(A_11_IBUF_34),
    .O(Sh6141_799)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh6026 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_11_IBUF_34),
    .I3(A_9_IBUF_47),
    .O(Sh6026_795)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh6041 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_12_IBUF_35),
    .I3(A_10_IBUF_33),
    .O(Sh6041_796)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<13>55  (
    .I0(\C<13>11_114 ),
    .I1(N61),
    .I2(Sh61),
    .I3(\C<13>33_115 ),
    .O(\C<13>55_116 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<13>69  (
    .I0(_old_C_1[13]),
    .I1(C_or0000),
    .I2(_old_C_6[13]),
    .I3(C_cmp_eq0006),
    .O(\C<13>69_117 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<13>73  (
    .I0(B_13_IBUF_68),
    .I1(C_cmp_eq0014),
    .I2(C_cmp_eq0015),
    .O(\C<13>73_118 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \C<13>82  (
    .I0(\C<13>73_118 ),
    .I1(A_13_IBUF_36),
    .I2(N44),
    .I3(AUX_3_addsub0000[13]),
    .O(\C<13>82_119 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<13>132  (
    .I0(C_and0000),
    .I1(_old_C_7[13]),
    .I2(C_cmp_eq0007),
    .I3(\C<13>109_113 ),
    .O(C_13_OBUF_205)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<14>4  (
    .I0(C_cmp_eq0021),
    .I1(Sh30),
    .I2(B_14_IBUF_69),
    .I3(C_cmp_eq0013),
    .O(\C<14>4_123 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<14>28  (
    .I0(\C<14>4_123 ),
    .I1(_old_C_1[14]),
    .I2(C_or0000),
    .I3(\C<14>15_121 ),
    .O(\C<14>28_122 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<14>115  (
    .I0(C_and0000),
    .I1(_old_C_7[14]),
    .I2(C_cmp_eq0007),
    .I3(\C<14>92_126 ),
    .O(C_14_OBUF_206)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<15>4  (
    .I0(_old_C_6[15]),
    .I1(C_cmp_eq0006),
    .I2(AUX_3_addsub0000[15]),
    .I3(N44),
    .O(\C<15>4_133 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<15>38  (
    .I0(\C<15>4_133 ),
    .I1(N61),
    .I2(Sh63),
    .I3(\C<15>19_131 ),
    .O(\C<15>38_132 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<15>61  (
    .I0(N38),
    .I1(_AUX_5[15]),
    .I2(N39),
    .I3(\C<15>38_132 ),
    .O(\C<15>61_134 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<15>84  (
    .I0(C_and0000),
    .I1(_old_C_7[15]),
    .I2(C_cmp_eq0007),
    .I3(\C<15>61_134 ),
    .O(C_15_OBUF_207)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh1111 (
    .I0(B_0_IBUF_64),
    .I1(A_13_IBUF_36),
    .I2(A_14_IBUF_37),
    .O(N24)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  Sh832 (
    .I0(N54),
    .I1(Sh79),
    .I2(B_3_IBUF_73),
    .I3(B_2_IBUF_72),
    .O(Sh83)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  Sh821 (
    .I0(N58),
    .I1(Sh78),
    .I2(B_3_IBUF_73),
    .I3(B_2_IBUF_72),
    .O(Sh82)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  Sh811 (
    .I0(N57),
    .I1(Sh77),
    .I2(B_3_IBUF_73),
    .I3(B_2_IBUF_72),
    .O(Sh81)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  Sh841 (
    .I0(B_2_IBUF_72),
    .I1(N25),
    .I2(B_3_IBUF_73),
    .I3(Sh72_806),
    .O(Sh84)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  Sh771 (
    .I0(B_1_IBUF_71),
    .I1(N24),
    .I2(B_0_IBUF_64),
    .I3(A_15_IBUF_38),
    .O(Sh77)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh11_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_11_IBUF_34),
    .I2(A_12_IBUF_35),
    .O(N186)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh11 (
    .I0(B_1_IBUF_71),
    .I1(N186),
    .I2(N24),
    .O(Sh11_730)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh73 (
    .I0(B_1_IBUF_71),
    .I1(N157),
    .I2(N186),
    .O(Sh73_807)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh72_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_8_IBUF_46),
    .I2(A_9_IBUF_47),
    .O(N195)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh72_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_10_IBUF_33),
    .I2(A_11_IBUF_34),
    .O(N196)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh72 (
    .I0(B_1_IBUF_71),
    .I1(N195),
    .I2(N196),
    .O(Sh72_806)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh6_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_6_IBUF_44),
    .I2(A_7_IBUF_45),
    .O(N198)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh6 (
    .I0(B_1_IBUF_71),
    .I1(N198),
    .I2(N195),
    .O(Sh6_793)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh12_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_12_IBUF_35),
    .I2(A_13_IBUF_36),
    .O(N204)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh10 (
    .I0(B_1_IBUF_71),
    .I1(N196),
    .I2(N204),
    .O(Sh10_729)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh16113 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_5_IBUF_43),
    .I3(A_7_IBUF_45),
    .O(Sh16113_737)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh16128 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_4_IBUF_42),
    .I3(A_6_IBUF_44),
    .O(Sh16128_738)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh16160 (
    .I0(B_3_IBUF_73),
    .I1(Sh16113_737),
    .I2(Sh16128_738),
    .I3(Sh12),
    .O(N25)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh16146 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_1_IBUF_39),
    .I3(A_3_IBUF_41),
    .O(Sh16146_739)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh1629 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_0_IBUF_32),
    .I3(A_2_IBUF_40),
    .O(Sh1629_740)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh1661 (
    .I0(B_3_IBUF_73),
    .I1(Sh16146_739),
    .I2(Sh1629_740),
    .I3(Sh72_806),
    .O(Sh1661_741)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh1690 (
    .I0(B_2_IBUF_72),
    .I1(Sh1661_741),
    .I2(N25),
    .O(Sh16)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh83127 (
    .I0(B_1_IBUF_71),
    .I1(A_3_IBUF_41),
    .I2(A_5_IBUF_43),
    .O(Sh18114)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh17119 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_2_IBUF_40),
    .I3(A_4_IBUF_42),
    .O(Sh17119_743)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh17134 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_1_IBUF_39),
    .I3(A_3_IBUF_41),
    .O(Sh17134_744)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero4 (
    .I0(A_2_IBUF_40),
    .I1(A_3_IBUF_41),
    .I2(A_4_IBUF_42),
    .I3(A_5_IBUF_43),
    .O(Zero4_866)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero9 (
    .I0(A_6_IBUF_44),
    .I1(A_7_IBUF_45),
    .I2(A_8_IBUF_46),
    .I3(A_9_IBUF_47),
    .O(Zero9_893)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero21 (
    .I0(A_0_IBUF_32),
    .I1(A_10_IBUF_33),
    .I2(A_11_IBUF_34),
    .I3(A_12_IBUF_35),
    .O(Zero21_857)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero26 (
    .I0(A_13_IBUF_36),
    .I1(A_14_IBUF_37),
    .I2(A_15_IBUF_38),
    .I3(A_1_IBUF_39),
    .O(Zero26_859)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Zero27 (
    .I0(Zero21_857),
    .I1(Zero26_859),
    .O(Zero27_861)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero47 (
    .I0(C_cmp_eq0015),
    .I1(Zero4_866),
    .I2(Zero9_893),
    .I3(Zero27_861),
    .O(Zero47_870)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero68 (
    .I0(B_14_IBUF_69),
    .I1(B_0_IBUF_64),
    .I2(A_14_IBUF_37),
    .I3(A_0_IBUF_32),
    .O(Zero68_881)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero81 (
    .I0(B_3_IBUF_73),
    .I1(B_4_IBUF_74),
    .I2(A_3_IBUF_41),
    .I3(A_4_IBUF_42),
    .O(Zero81_887)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Zero82 (
    .I0(Zero68_881),
    .I1(Zero81_887),
    .O(Zero82_889)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  Zero109 (
    .I0(A_15_IBUF_38),
    .I1(B_15_IBUF_70),
    .O(Zero109_831)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero115 (
    .I0(N66),
    .I1(N64),
    .I2(N65),
    .I3(Zero109_831),
    .O(Zero115_833)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero130 (
    .I0(B_1_IBUF_71),
    .I1(B_5_IBUF_75),
    .I2(A_1_IBUF_39),
    .I3(A_5_IBUF_43),
    .O(Zero130_840)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero143 (
    .I0(B_12_IBUF_67),
    .I1(B_11_IBUF_66),
    .I2(A_12_IBUF_35),
    .I3(A_11_IBUF_34),
    .O(Zero143_845)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero167 (
    .I0(B_9_IBUF_79),
    .I1(B_10_IBUF_65),
    .I2(A_9_IBUF_47),
    .I3(A_10_IBUF_33),
    .O(Zero167_854)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero180 (
    .I0(B_7_IBUF_77),
    .I1(B_8_IBUF_78),
    .I2(A_7_IBUF_45),
    .I3(A_8_IBUF_46),
    .O(Zero180_855)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero194 (
    .I0(Zero130_840),
    .I1(Zero143_845),
    .I2(Zero167_854),
    .I3(Zero180_855),
    .O(Zero194_856)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero220 (
    .I0(C_or0002),
    .I1(Zero82_889),
    .I2(Zero115_833),
    .I3(Zero194_856),
    .O(Zero220_858)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero319 (
    .I0(\Madd__old_C_1_lut[4] ),
    .I1(\Msub__old_C_6_lut[14] ),
    .I2(\Madd__old_C_1_lut[0] ),
    .I3(\Madd__old_C_1_lut[1] ),
    .O(Zero319_863)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero337 (
    .I0(C_cmp_eq0014),
    .I1(Zero262_860),
    .I2(Zero303_862),
    .I3(Zero319_863),
    .O(Zero337_864)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero362 (
    .I0(\Madd__old_C_1_lut[8] ),
    .I1(\Msub__old_C_6_lut[9] ),
    .I2(\Madd__old_C_1_lut[5] ),
    .I3(\Madd__old_C_1_lut[7] ),
    .O(Zero362_865)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Zero414 (
    .I0(Zero362_865),
    .I1(Zero403_867),
    .O(Zero414_868)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero482 (
    .I0(A_0_IBUF_32),
    .I1(A_10_IBUF_33),
    .I2(A_11_IBUF_34),
    .I3(A_12_IBUF_35),
    .O(Zero482_871)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero495 (
    .I0(A_13_IBUF_36),
    .I1(A_14_IBUF_37),
    .I2(A_1_IBUF_39),
    .I3(A_2_IBUF_40),
    .O(Zero495_872)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero531 (
    .I0(A_3_IBUF_41),
    .I1(A_4_IBUF_42),
    .I2(A_5_IBUF_43),
    .I3(A_6_IBUF_44),
    .O(Zero531_873)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero544 (
    .I0(A_7_IBUF_45),
    .I1(A_8_IBUF_46),
    .I2(A_9_IBUF_47),
    .I3(B_10_IBUF_65),
    .O(Zero544_874)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero568 (
    .I0(B_11_IBUF_66),
    .I1(B_12_IBUF_67),
    .I2(B_13_IBUF_68),
    .I3(B_14_IBUF_69),
    .O(Zero568_875)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero581 (
    .I0(B_4_IBUF_74),
    .I1(B_5_IBUF_75),
    .I2(B_6_IBUF_76),
    .I3(B_7_IBUF_77),
    .O(Zero581_876)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero595 (
    .I0(Zero531_873),
    .I1(Zero544_874),
    .I2(Zero568_875),
    .I3(Zero581_876),
    .O(Zero595_877)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero620 (
    .I0(B_8_IBUF_78),
    .I1(B_9_IBUF_79),
    .I2(A_15_IBUF_38),
    .I3(B_15_IBUF_70),
    .O(Zero620_878)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero693 (
    .I0(AUX_3_addsub0000[0]),
    .I1(N44),
    .I2(AUX_3_addsub0000[1]),
    .I3(AUX_3_addsub0000[8]),
    .O(Zero693_882)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  Zero724 (
    .I0(AUX_3_addsub0000[3]),
    .I1(AUX_3_addsub0000[2]),
    .I2(AUX_3_addsub0000[11]),
    .O(Zero724_883)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Zero810 (
    .I0(C_or0000),
    .I1(_old_C_1[0]),
    .I2(_old_C_1[1]),
    .O(Zero810_888)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero826 (
    .I0(_old_C_1[8]),
    .I1(Zero810_888),
    .I2(_old_C_1[10]),
    .I3(_old_C_1[9]),
    .O(Zero826_890)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  Zero916 (
    .I0(Zero668_880),
    .I1(Zero736_884),
    .I2(Zero770),
    .I3(Zero899_892),
    .O(Zero916_894)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero996 (
    .I0(Sh26),
    .I1(Zero965_895),
    .I2(N54),
    .I3(Sh21_750),
    .O(Zero996_896)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero1021 (
    .I0(Sh27),
    .I1(Sh28),
    .I2(Sh88),
    .I3(Sh29),
    .O(Zero1021_828)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero1038 (
    .I0(Sh16),
    .I1(Zero1021_828),
    .I2(Sh22_751),
    .I3(Sh25),
    .O(Zero1038_829)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  Zero1069 (
    .I0(Sh17),
    .I1(Zero1038_829),
    .I2(Zero996_896),
    .I3(Sh18),
    .O(Zero1069_830)
  );
  LUT4 #(
    .INIT ( 16'h0F01 ))
  Zero1180 (
    .I0(Sh35),
    .I1(Sh33),
    .I2(Sh54),
    .I3(N26),
    .O(Zero1180_834)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  Zero1255 (
    .I0(Zero916_894),
    .I1(Zero1130_832),
    .I2(Zero1228_836),
    .I3(Zero1069_830),
    .O(Zero1255_837)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero1277 (
    .I0(Sh16),
    .I1(Sh84),
    .I2(Sh85_818),
    .I3(Sh86_819),
    .O(Zero1277_838)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  Zero1289 (
    .I0(Sh82),
    .I1(Sh83),
    .O(Zero1289_839)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero1457 (
    .I0(_AUX_5[1]),
    .I1(Zero1438_846),
    .I2(_AUX_5[8]),
    .I3(_AUX_5[16]),
    .O(Zero1457_847)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  Zero1468 (
    .I0(_AUX_5[7]),
    .I1(_AUX_5[6]),
    .I2(_AUX_5[15]),
    .O(Zero1468_848)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero1539 (
    .I0(Zero1457_847),
    .I1(Zero1468_848),
    .I2(Zero1499),
    .I3(Zero1519),
    .O(Zero1539_853)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  Zero1579 (
    .I0(C_and0000),
    .I1(Zero1255_837),
    .I2(Zero1420_844),
    .I3(Zero1539_853),
    .O(Zero_OBUF_897)
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  Flag10 (
    .I0(C_cmp_eq0006),
    .I1(_old_C_6[15]),
    .I2(C_cmp_eq0007),
    .I3(_old_C_7[15]),
    .O(Flag10_265)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  Flag21 (
    .I0(C_or0000),
    .I1(B_15_IBUF_70),
    .I2(_old_C_1[15]),
    .O(Flag21_266)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  Flag53 (
    .I0(_old_C_6[15]),
    .I1(C_cmp_eq0006),
    .I2(_old_C_7[15]),
    .I3(C_cmp_eq0007),
    .O(Flag53_267)
  );
  IBUF   CarryIn_IBUF (
    .I(CarryIn),
    .O(CarryIn_IBUF_231)
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
    .O(Opcode_7_IBUF_728)
  );
  IBUF   Opcode_6_IBUF (
    .I(Opcode[6]),
    .O(Opcode_6_IBUF_727)
  );
  IBUF   Opcode_5_IBUF (
    .I(Opcode[5]),
    .O(Opcode_5_IBUF_726)
  );
  IBUF   Opcode_4_IBUF (
    .I(Opcode[4]),
    .O(Opcode_4_IBUF_725)
  );
  IBUF   Opcode_3_IBUF (
    .I(Opcode[3]),
    .O(Opcode_3_IBUF_724)
  );
  IBUF   Opcode_2_IBUF (
    .I(Opcode[2]),
    .O(Opcode_2_IBUF_723)
  );
  IBUF   Opcode_1_IBUF (
    .I(Opcode[1]),
    .O(Opcode_1_IBUF_722)
  );
  IBUF   Opcode_0_IBUF (
    .I(Opcode[0]),
    .O(Opcode_0_IBUF_721)
  );
  OBUF   Flag_OBUF (
    .I(Flag_OBUF_268),
    .O(Flag)
  );
  OBUF   Carry_OBUF (
    .I(Carry_OBUF_232),
    .O(Carry)
  );
  OBUF   Low_OBUF (
    .I(Low_OBUF_271),
    .O(Low)
  );
  OBUF   Negative_OBUF (
    .I(Negative_OBUF_711),
    .O(Negative)
  );
  OBUF   Zero_OBUF (
    .I(Zero_OBUF_897),
    .O(Zero)
  );
  OBUF   C_15_OBUF (
    .I(C_15_OBUF_207),
    .O(C[15])
  );
  OBUF   C_14_OBUF (
    .I(C_14_OBUF_206),
    .O(C[14])
  );
  OBUF   C_13_OBUF (
    .I(C_13_OBUF_205),
    .O(C[13])
  );
  OBUF   C_12_OBUF (
    .I(C_12_OBUF_204),
    .O(C[12])
  );
  OBUF   C_11_OBUF (
    .I(C_11_OBUF_203),
    .O(C[11])
  );
  OBUF   C_10_OBUF (
    .I(C_10_OBUF_202),
    .O(C[10])
  );
  OBUF   C_9_OBUF (
    .I(C_9_OBUF_216),
    .O(C[9])
  );
  OBUF   C_8_OBUF (
    .I(C_8_OBUF_215),
    .O(C[8])
  );
  OBUF   C_7_OBUF (
    .I(C_7_OBUF_214),
    .O(C[7])
  );
  OBUF   C_6_OBUF (
    .I(C_6_OBUF_213),
    .O(C[6])
  );
  OBUF   C_5_OBUF (
    .I(C_5_OBUF_212),
    .O(C[5])
  );
  OBUF   C_4_OBUF (
    .I(C_4_OBUF_211),
    .O(C[4])
  );
  OBUF   C_3_OBUF (
    .I(C_3_OBUF_210),
    .O(C[3])
  );
  OBUF   C_2_OBUF (
    .I(C_2_OBUF_209),
    .O(C[2])
  );
  OBUF   C_1_OBUF (
    .I(C_1_OBUF_208),
    .O(C[1])
  );
  OBUF   C_0_OBUF (
    .I(C_0_OBUF_201),
    .O(C[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<0>1  (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .O(\Madd__old_C_1_lut<0>1_369 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<1>1  (
    .I0(A_1_IBUF_39),
    .I1(B_1_IBUF_71),
    .O(\Madd__old_C_1_lut<1>1_378 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<4>1  (
    .I0(A_4_IBUF_42),
    .I1(B_4_IBUF_74),
    .O(\Madd__old_C_1_lut<4>1_382 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<5>1  (
    .I0(A_5_IBUF_43),
    .I1(B_5_IBUF_75),
    .O(\Madd__old_C_1_lut<5>1_384 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<7>1  (
    .I0(A_7_IBUF_45),
    .I1(B_7_IBUF_77),
    .O(\Madd__old_C_1_lut<7>1_387 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<8>1  (
    .I0(A_8_IBUF_46),
    .I1(B_8_IBUF_78),
    .O(\Madd__old_C_1_lut<8>1_389 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<11>1  (
    .I0(A_11_IBUF_34),
    .I1(B_11_IBUF_66),
    .O(\Madd__old_C_1_lut<11>1_371 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<12>1  (
    .I0(A_12_IBUF_35),
    .I1(B_12_IBUF_67),
    .O(\Madd__old_C_1_lut<12>1_373 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<3>1  (
    .I0(A_3_IBUF_41),
    .I1(B_3_IBUF_73),
    .O(\Msub__old_C_6_lut<3>1_559 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<9>1  (
    .I0(A_9_IBUF_47),
    .I1(B_9_IBUF_79),
    .O(\Msub__old_C_6_lut<9>1_566 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<10>1  (
    .I0(A_10_IBUF_33),
    .I1(B_10_IBUF_65),
    .O(\Msub__old_C_6_lut<10>1_550 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<14>1  (
    .I0(A_14_IBUF_37),
    .I1(B_14_IBUF_69),
    .O(\Msub__old_C_6_lut<14>1_555 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<1>_rt  (
    .I0(AUX_3_addsub0000[1]),
    .O(\Madd__AUX_5_cy<1>_rt_334 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<2>_rt  (
    .I0(AUX_3_addsub0000[2]),
    .O(\Madd__AUX_5_cy<2>_rt_336 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<3>_rt  (
    .I0(AUX_3_addsub0000[3]),
    .O(\Madd__AUX_5_cy<3>_rt_338 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<4>_rt  (
    .I0(AUX_3_addsub0000[4]),
    .O(\Madd__AUX_5_cy<4>_rt_340 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<5>_rt  (
    .I0(AUX_3_addsub0000[5]),
    .O(\Madd__AUX_5_cy<5>_rt_342 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<6>_rt  (
    .I0(AUX_3_addsub0000[6]),
    .O(\Madd__AUX_5_cy<6>_rt_344 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<7>_rt  (
    .I0(AUX_3_addsub0000[7]),
    .O(\Madd__AUX_5_cy<7>_rt_346 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<8>_rt  (
    .I0(AUX_3_addsub0000[8]),
    .O(\Madd__AUX_5_cy<8>_rt_348 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<9>_rt  (
    .I0(AUX_3_addsub0000[9]),
    .O(\Madd__AUX_5_cy<9>_rt_350 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<10>_rt  (
    .I0(AUX_3_addsub0000[10]),
    .O(\Madd__AUX_5_cy<10>_rt_322 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<11>_rt  (
    .I0(AUX_3_addsub0000[11]),
    .O(\Madd__AUX_5_cy<11>_rt_324 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<12>_rt  (
    .I0(AUX_3_addsub0000[12]),
    .O(\Madd__AUX_5_cy<12>_rt_326 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<13>_rt  (
    .I0(AUX_3_addsub0000[13]),
    .O(\Madd__AUX_5_cy<13>_rt_328 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<14>_rt  (
    .I0(AUX_3_addsub0000[14]),
    .O(\Madd__AUX_5_cy<14>_rt_330 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<15>_rt  (
    .I0(AUX_3_addsub0000[15]),
    .O(\Madd__AUX_5_cy<15>_rt_332 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<15>1  (
    .I0(A_15_IBUF_38),
    .I1(B_15_IBUF_70),
    .O(\Msub__old_C_6_lut<15>1_556 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_xor<16>_rt  (
    .I0(Madd_AUX_3_index0000),
    .O(\Madd__AUX_5_xor<16>_rt_352 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  Zero303 (
    .I0(A_13_IBUF_36),
    .I1(B_13_IBUF_68),
    .I2(A_6_IBUF_44),
    .I3(B_6_IBUF_76),
    .O(Zero303_862)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  Zero262 (
    .I0(A_3_IBUF_41),
    .I1(B_3_IBUF_73),
    .I2(A_2_IBUF_40),
    .I3(B_2_IBUF_72),
    .O(Zero262_860)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<11>38_SW0  (
    .I0(_old_C_1[11]),
    .I1(C_or0000),
    .I2(_old_C_6[11]),
    .I3(C_cmp_eq0006),
    .O(N210)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<12>38_SW0  (
    .I0(_old_C_1[12]),
    .I1(C_or0000),
    .I2(_old_C_6[12]),
    .I3(C_cmp_eq0006),
    .O(N212)
  );
  LUT4 #(
    .INIT ( 16'hEE80 ))
  \C<1>28_SW0  (
    .I0(A_1_IBUF_39),
    .I1(B_1_IBUF_71),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(N222)
  );
  LUT4 #(
    .INIT ( 16'hEE80 ))
  \C<4>23_SW0  (
    .I0(B_4_IBUF_74),
    .I1(A_4_IBUF_42),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(N224)
  );
  LUT4 #(
    .INIT ( 16'hEE80 ))
  \C<5>23_SW0  (
    .I0(B_5_IBUF_75),
    .I1(A_5_IBUF_43),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(N226)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \C<3>53_SW0  (
    .I0(B_3_IBUF_73),
    .I1(C_cmp_eq0014),
    .I2(C_or0002),
    .O(N228)
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  Zero1420_SW0 (
    .I0(Zero1277_838),
    .I1(Zero1289_839),
    .I2(Zero1341_841),
    .I3(Sh87),
    .O(N238)
  );
  LUT4 #(
    .INIT ( 16'hAA02 ))
  Zero1420 (
    .I0(Zero1398_843),
    .I1(Sh81),
    .I2(N238),
    .I3(old_C_12_or0000),
    .O(Zero1420_844)
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  \C<1>51  (
    .I0(\C<1>43_137 ),
    .I1(Sh33),
    .I2(N26),
    .I3(N61),
    .O(\C<1>51_138 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<5>85_SW0  (
    .I0(C_cmp_eq0021),
    .I1(Sh21_750),
    .I2(N39),
    .I3(_AUX_5[5]),
    .O(N246)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \C<2>11_SW0  (
    .I0(C_or0002),
    .I1(N64),
    .I2(C_or0000),
    .I3(_old_C_1[2]),
    .O(N248)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<2>11  (
    .I0(B_2_IBUF_72),
    .I1(C_cmp_eq0013),
    .I2(N248),
    .O(\C<2>11_143 )
  );
  LUT4 #(
    .INIT ( 16'h3222 ))
  \C<3>34_SW0  (
    .I0(C_cmp_eq0015),
    .I1(A_3_IBUF_41),
    .I2(B_3_IBUF_73),
    .I3(C_cmp_eq0014),
    .O(N250)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \C<6>11_SW0  (
    .I0(C_or0002),
    .I1(N66),
    .I2(C_or0000),
    .I3(_old_C_1[6]),
    .O(N252)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<6>11  (
    .I0(B_6_IBUF_76),
    .I1(C_cmp_eq0013),
    .I2(N252),
    .O(\C<6>11_170 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<6>100_SW0  (
    .I0(\C<6>51_173 ),
    .I1(N39),
    .I2(_AUX_5[6]),
    .I3(\C<6>98_174 ),
    .O(N254)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<6>100  (
    .I0(\C<6>11_170 ),
    .I1(\C<6>15_171 ),
    .I2(\C<6>28_172 ),
    .I3(N254),
    .O(\C<6>100_169 )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \C<13>33_SW0  (
    .I0(A_13_IBUF_36),
    .I1(C_cmp_eq0014),
    .I2(B_13_IBUF_68),
    .I3(C_cmp_eq0013),
    .O(N256)
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  \C<13>33  (
    .I0(N256),
    .I1(N56),
    .I2(N26),
    .I3(Sh77),
    .O(\C<13>33_115 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<14>51_SW0  (
    .I0(A_14_IBUF_37),
    .I1(B_14_IBUF_69),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(N258)
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  \C<14>51  (
    .I0(N258),
    .I1(N56),
    .I2(N26),
    .I3(Sh78),
    .O(\C<14>51_124 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<15>19_SW0  (
    .I0(A_15_IBUF_38),
    .I1(B_15_IBUF_70),
    .I2(C_or0002),
    .I3(C_cmp_eq0021),
    .O(N260)
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  \C<15>19  (
    .I0(N260),
    .I1(N56),
    .I2(N26),
    .I3(Sh79),
    .O(\C<15>19_131 )
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  Zero403_SW0 (
    .I0(B_15_IBUF_70),
    .I1(A_15_IBUF_38),
    .I2(B_11_IBUF_66),
    .I3(A_11_IBUF_34),
    .O(N262)
  );
  LUT4 #(
    .INIT ( 16'h0009 ))
  Zero403 (
    .I0(A_10_IBUF_33),
    .I1(B_10_IBUF_65),
    .I2(\Madd__old_C_1_lut[12] ),
    .I3(N262),
    .O(Zero403_867)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  Zero647_SW0 (
    .I0(Zero482_871),
    .I1(Zero495_872),
    .I2(Zero595_877),
    .I3(Zero620_878),
    .O(N264)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero647 (
    .I0(N26),
    .I1(C_cmp_eq0013),
    .I2(N59),
    .I3(N264),
    .O(Zero647_879)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  Zero668_SW0 (
    .I0(Zero47_870),
    .I1(Zero337_864),
    .I2(Zero414_868),
    .I3(Zero647_879),
    .O(N266)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  Zero668 (
    .I0(Zero220_858),
    .I1(Mcompar_Zero_cmp_eq0009_cy[7]),
    .I2(Zero460_869),
    .I3(N266),
    .O(Zero668_880)
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  Zero736_SW0 (
    .I0(AUX_3_addsub0000[5]),
    .I1(Zero693_882),
    .I2(Zero724_883),
    .I3(AUX_3_addsub0000[9]),
    .O(N268)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero736 (
    .I0(AUX_3_addsub0000[10]),
    .I1(AUX_3_addsub0000[12]),
    .I2(AUX_3_addsub0000[4]),
    .I3(N268),
    .O(Zero736_884)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  Zero853_SW0 (
    .I0(_old_C_1[3]),
    .I1(_old_C_1[4]),
    .I2(_old_C_1[5]),
    .O(N270)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero853 (
    .I0(_old_C_1[11]),
    .I1(_old_C_1[12]),
    .I2(_old_C_1[2]),
    .I3(N270),
    .O(Zero853_891)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero899_SW0 (
    .I0(_old_C_1[14]),
    .I1(_old_C_1[15]),
    .I2(_old_C_1[6]),
    .I3(_old_C_1[7]),
    .O(N272)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  Zero899 (
    .I0(_old_C_1[13]),
    .I1(Zero853_891),
    .I2(Zero826_890),
    .I3(N272),
    .O(Zero899_892)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero1341_SW0 (
    .I0(Sh88),
    .I1(Sh89),
    .I2(Sh90),
    .I3(Sh91),
    .O(N274)
  );
  LUT4 #(
    .INIT ( 16'h0F01 ))
  Zero1341 (
    .I0(Sh77),
    .I1(Sh12),
    .I2(N274),
    .I3(N26),
    .O(Zero1341_841)
  );
  LUT4 #(
    .INIT ( 16'h0A08 ))
  Zero1398 (
    .I0(N118),
    .I1(old_C_12_or0000),
    .I2(N23),
    .I3(Zero1387_842),
    .O(Zero1398_843)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  Flag73_SW0 (
    .I0(_old_C_1[15]),
    .I1(C_or0000),
    .I2(B_15_IBUF_70),
    .O(N276)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh20_SW1 (
    .I0(B_3_IBUF_73),
    .I1(Sh72_806),
    .I2(A_15_IBUF_38),
    .O(N282)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Sh291 (
    .I0(N26),
    .I1(A_15_IBUF_38),
    .I2(B_1_IBUF_71),
    .I3(N24),
    .O(Sh29)
  );
  LUT4 #(
    .INIT ( 16'h5E44 ))
  \C<7>7  (
    .I0(A_7_IBUF_45),
    .I1(C_cmp_eq0015),
    .I2(B_7_IBUF_77),
    .I3(C_cmp_eq0014),
    .O(\C<7>7_181 )
  );
  LUT4 #(
    .INIT ( 16'h5E44 ))
  \C<8>7  (
    .I0(A_8_IBUF_46),
    .I1(C_cmp_eq0015),
    .I2(B_8_IBUF_78),
    .I3(C_cmp_eq0014),
    .O(\C<8>7_191 )
  );
  LUT4 #(
    .INIT ( 16'h5E44 ))
  \C<9>10  (
    .I0(A_9_IBUF_47),
    .I1(C_cmp_eq0015),
    .I2(B_9_IBUF_79),
    .I3(C_cmp_eq0014),
    .O(\C<9>10_194 )
  );
  LUT4 #(
    .INIT ( 16'h5E44 ))
  \C<11>7  (
    .I0(A_11_IBUF_34),
    .I1(C_cmp_eq0015),
    .I2(B_11_IBUF_66),
    .I3(C_cmp_eq0014),
    .O(\C<11>7_104 )
  );
  LUT4 #(
    .INIT ( 16'h5E44 ))
  \C<12>7  (
    .I0(A_12_IBUF_35),
    .I1(C_cmp_eq0015),
    .I2(B_12_IBUF_67),
    .I3(C_cmp_eq0014),
    .O(\C<12>7_109 )
  );
  LUT4 #(
    .INIT ( 16'h5E44 ))
  \C<14>15  (
    .I0(A_14_IBUF_37),
    .I1(C_cmp_eq0015),
    .I2(B_14_IBUF_69),
    .I3(C_cmp_eq0014),
    .O(\C<14>15_121 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \C<0>26  (
    .I0(old_C_12_or0000),
    .I1(C_or0003_228),
    .I2(Sh32),
    .I3(N26),
    .O(\C<0>26_82 )
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \C<0>39  (
    .I0(N118),
    .I1(N23),
    .I2(old_C_12_or0000),
    .I3(C_cmp_eq0021),
    .O(\C<0>39_83 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \C<0>44_SW0  (
    .I0(\C<0>39_83 ),
    .I1(B_2_IBUF_72),
    .I2(Sh1661_741),
    .I3(N25),
    .O(N286)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<0>44  (
    .I0(\C<0>12_81 ),
    .I1(\C<0>26_82 ),
    .I2(\C<0>4_84 ),
    .I3(N286),
    .O(\C<0>44_85 )
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Carry_SW1 (
    .I0(Madd_AUX_3_index0000),
    .I1(N39),
    .I2(N44),
    .I3(_AUX_5[16]),
    .O(N290)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Carry_710 (
    .I0(Opcode_5_IBUF_726),
    .I1(Opcode_6_IBUF_727),
    .I2(Opcode_7_IBUF_728),
    .I3(N290),
    .O(Carry_OBUF_232)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Sh301 (
    .I0(B_2_IBUF_72),
    .I1(A_15_IBUF_38),
    .I2(B_3_IBUF_73),
    .I3(Sh14),
    .O(Sh30)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Sh271 (
    .I0(B_2_IBUF_72),
    .I1(A_15_IBUF_38),
    .I2(B_3_IBUF_73),
    .I3(Sh11_730),
    .O(Sh27)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Sh791 (
    .I0(A_15_IBUF_38),
    .I1(B_0_IBUF_64),
    .I2(B_1_IBUF_71),
    .O(Sh79)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  C_or00021 (
    .I0(Opcode_2_IBUF_723),
    .I1(Opcode_1_IBUF_722),
    .I2(Opcode_3_IBUF_724),
    .I3(Opcode_4_IBUF_725),
    .O(C_or0002)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \C<2>20  (
    .I0(old_C_12_or0000),
    .I1(C_or0003_228),
    .I2(Sh34),
    .I3(N26),
    .O(\C<2>20_145 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \C<2>88  (
    .I0(_AUX_5[2]),
    .I1(N53),
    .I2(Opcode_1_IBUF_722),
    .O(\C<2>88_149 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \C<2>125  (
    .I0(_old_C_7[2]),
    .I1(Opcode_1_IBUF_722),
    .I2(Opcode_0_IBUF_721),
    .I3(N53),
    .O(\C<2>125_144 )
  );
  LUT4 #(
    .INIT ( 16'h0105 ))
  \C<2>139_SW0  (
    .I0(\C<2>104_142 ),
    .I1(C_cmp_eq0021),
    .I2(\C<2>125_144 ),
    .I3(Sh18),
    .O(N294)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<2>139  (
    .I0(Opcode_5_IBUF_726),
    .I1(Opcode_6_IBUF_727),
    .I2(Opcode_7_IBUF_728),
    .I3(N294),
    .O(C_2_OBUF_209)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \C<3>85_SW0  (
    .I0(N23),
    .I1(N118),
    .I2(Sh83),
    .I3(old_C_12_or0000),
    .O(N296)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<3>85  (
    .I0(\C<3>4_153 ),
    .I1(\C<3>57_154 ),
    .I2(\C<3>9_156 ),
    .I3(N296),
    .O(\C<3>85_155 )
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \C<3>96  (
    .I0(N54),
    .I1(B_2_IBUF_72),
    .I2(B_3_IBUF_73),
    .I3(A_15_IBUF_38),
    .O(\C<3>96_157 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \C<3>114  (
    .I0(_old_C_7[3]),
    .I1(Opcode_1_IBUF_722),
    .I2(Opcode_0_IBUF_721),
    .I3(N53),
    .O(\C<3>114_152 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \C<6>15  (
    .I0(Sh54),
    .I1(C_or0003_228),
    .I2(old_C_12_or0000),
    .O(\C<6>15_171 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<7>61_SW0  (
    .I0(A_7_IBUF_45),
    .I1(B_7_IBUF_77),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(N298)
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  \C<7>61  (
    .I0(N298),
    .I1(Sh55),
    .I2(old_C_12_or0000),
    .I3(C_or0003_228),
    .O(\C<7>61_179 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<7>67  (
    .I0(C_cmp_eq0021),
    .I1(A_15_IBUF_38),
    .I2(B_3_IBUF_73),
    .I3(N125),
    .O(\C<7>67_180 )
  );
  LUT4 #(
    .INIT ( 16'h0105 ))
  \C<7>112_SW0  (
    .I0(\C<7>44_178 ),
    .I1(C_cmp_eq0007),
    .I2(\C<7>79_182 ),
    .I3(_old_C_7[7]),
    .O(N300)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<7>112  (
    .I0(Opcode_5_IBUF_726),
    .I1(Opcode_6_IBUF_727),
    .I2(Opcode_7_IBUF_728),
    .I3(N300),
    .O(C_7_OBUF_214)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \C<8>18_SW0  (
    .I0(N23),
    .I1(N118),
    .I2(Sh88),
    .I3(old_C_12_or0000),
    .O(N302)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<8>18  (
    .I0(\C<8>7_191 ),
    .I1(B_8_IBUF_78),
    .I2(C_cmp_eq0013),
    .I3(N302),
    .O(\C<8>18_185 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<8>26  (
    .I0(C_cmp_eq0021),
    .I1(A_15_IBUF_38),
    .I2(B_3_IBUF_73),
    .I3(Sh88),
    .O(\C<8>26_186 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \C<8>90_SW0  (
    .I0(_AUX_5[8]),
    .I1(N53),
    .I2(Opcode_1_IBUF_722),
    .O(N304)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<8>90  (
    .I0(\C<8>41_187 ),
    .I1(\C<8>54_188 ),
    .I2(\C<8>64_190 ),
    .I3(N304),
    .O(\C<8>90_192 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \C<9>22_SW0  (
    .I0(N23),
    .I1(N118),
    .I2(Sh89),
    .I3(old_C_12_or0000),
    .O(N306)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<9>22  (
    .I0(\C<9>10_194 ),
    .I1(B_9_IBUF_79),
    .I2(C_cmp_eq0013),
    .I3(N306),
    .O(\C<9>22_195 )
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  \C<9>89_SW0  (
    .I0(\C<9>74_199 ),
    .I1(N53),
    .I2(Opcode_1_IBUF_722),
    .I3(_AUX_5[9]),
    .O(N308)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<9>89  (
    .I0(\C<9>22_195 ),
    .I1(\C<9>33_196 ),
    .I2(\C<9>56_198 ),
    .I3(N308),
    .O(\C<9>89_200 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \C<11>61_SW0  (
    .I0(C_or0003_228),
    .I1(Sh59_792),
    .I2(old_C_12_or0000),
    .O(N310)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<11>61  (
    .I0(\C<11>51_102 ),
    .I1(AUX_3_addsub0000[11]),
    .I2(N44),
    .I3(N310),
    .O(\C<11>61_103 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \C<12>70_SW0  (
    .I0(C_or0003_228),
    .I1(Sh60),
    .I2(old_C_12_or0000),
    .O(N312)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<12>70  (
    .I0(\C<12>56_108 ),
    .I1(AUX_3_addsub0000[12]),
    .I2(N44),
    .I3(N312),
    .O(\C<12>70_110 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \C<13>109_SW0  (
    .I0(_AUX_5[13]),
    .I1(N53),
    .I2(Opcode_1_IBUF_722),
    .O(N314)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<13>109  (
    .I0(\C<13>55_116 ),
    .I1(\C<13>69_117 ),
    .I2(\C<13>82_119 ),
    .I3(N314),
    .O(\C<13>109_113 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<14>74_SW0  (
    .I0(AUX_3_addsub0000[14]),
    .I1(N44),
    .I2(C_cmp_eq0006),
    .I3(_old_C_6[14]),
    .O(N316)
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  \C<14>74  (
    .I0(N316),
    .I1(Sh62),
    .I2(old_C_12_or0000),
    .I3(C_or0003_228),
    .O(\C<14>74_125 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \C<14>92_SW0  (
    .I0(_AUX_5[14]),
    .I1(N53),
    .I2(Opcode_1_IBUF_722),
    .O(N318)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<14>92  (
    .I0(\C<14>28_122 ),
    .I1(\C<14>51_124 ),
    .I2(\C<14>74_125 ),
    .I3(N318),
    .O(\C<14>92_126 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero1130 (
    .I0(old_C_12_or000014_964),
    .I1(old_C_12_or00004_965),
    .I2(old_C_12_or00009_966),
    .I3(N320),
    .O(Zero1130_832)
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  Zero1228_SW0 (
    .I0(Zero1183_835),
    .I1(Sh62),
    .I2(Sh63),
    .I3(old_C_12_or00009_966),
    .O(N322)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  Zero1228 (
    .I0(C_or0003_228),
    .I1(old_C_12_or000014_964),
    .I2(old_C_12_or00004_965),
    .I3(N322),
    .O(Zero1228_836)
  );
  LUT4 #(
    .INIT ( 16'hFFAB ))
  Zero1387 (
    .I0(B_2_IBUF_72),
    .I1(Sh78),
    .I2(Sh79),
    .I3(B_3_IBUF_73),
    .O(Zero1387_842)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Zero1438 (
    .I0(N53),
    .I1(Opcode_1_IBUF_722),
    .I2(_AUX_5[0]),
    .O(Zero1438_846)
  );
  LUT4 #(
    .INIT ( 16'hEE80 ))
  \C<11>38_SW1  (
    .I0(A_11_IBUF_34),
    .I1(B_11_IBUF_66),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(N324)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \C<11>38  (
    .I0(\C<11>7_104 ),
    .I1(N210),
    .I2(N324),
    .O(\C<11>38_101 )
  );
  LUT4 #(
    .INIT ( 16'hEE80 ))
  \C<12>38_SW1  (
    .I0(A_12_IBUF_35),
    .I1(B_12_IBUF_67),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(N326)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \C<12>38  (
    .I0(\C<12>7_109 ),
    .I1(N212),
    .I2(N326),
    .O(\C<12>38_107 )
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \C<1>83_SW1  (
    .I0(Opcode_1_IBUF_722),
    .I1(_AUX_5[1]),
    .I2(Opcode_0_IBUF_721),
    .I3(_old_C_7[1]),
    .O(N328)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<1>83  (
    .I0(\C<1>51_138 ),
    .I1(N53),
    .I2(N328),
    .I3(\C<1>28_136 ),
    .O(\C<1>83_139 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<13>11_SW0  (
    .I0(A_13_IBUF_36),
    .I1(C_or0002),
    .I2(C_cmp_eq0013),
    .O(N330)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<13>11  (
    .I0(Sh29),
    .I1(C_cmp_eq0021),
    .I2(N330),
    .I3(B_13_IBUF_68),
    .O(\C<13>11_114 )
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  \C<3>57_SW0  (
    .I0(N250),
    .I1(N61),
    .I2(N26),
    .I3(Sh35),
    .O(N332)
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \C<3>57  (
    .I0(A_3_IBUF_41),
    .I1(C_cmp_eq0013),
    .I2(N228),
    .I3(N332),
    .O(\C<3>57_154 )
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  Zero965_SW0 (
    .I0(Sh30),
    .I1(A_15_IBUF_38),
    .I2(N125),
    .I3(C_cmp_eq0021),
    .O(N334)
  );
  LUT4 #(
    .INIT ( 16'h010B ))
  Zero965 (
    .I0(B_2_IBUF_72),
    .I1(N25),
    .I2(N334),
    .I3(N282),
    .O(Zero965_895)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero1130_SW0_SW0 (
    .I0(Sh58_791),
    .I1(Sh59_792),
    .I2(Sh60),
    .I3(Sh61),
    .O(N336)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero1130_SW0 (
    .I0(Sh55),
    .I1(Sh56_789),
    .I2(Sh57_790),
    .I3(N336),
    .O(N320)
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \C<0>85_SW0  (
    .I0(Opcode_1_IBUF_722),
    .I1(_AUX_5[0]),
    .I2(Opcode_0_IBUF_721),
    .I3(_old_C_7[0]),
    .O(N338)
  );
  LUT4 #(
    .INIT ( 16'h5E44 ))
  \C<4>23_SW1  (
    .I0(A_4_IBUF_42),
    .I1(C_cmp_eq0015),
    .I2(B_4_IBUF_74),
    .I3(C_cmp_eq0014),
    .O(N340)
  );
  LUT4 #(
    .INIT ( 16'h5E44 ))
  \C<5>23_SW1  (
    .I0(A_5_IBUF_43),
    .I1(C_cmp_eq0015),
    .I2(B_5_IBUF_75),
    .I3(C_cmp_eq0014),
    .O(N342)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  Negative47 (
    .I0(C_and0000),
    .I1(\C<15>1116_128 ),
    .I2(\C<15>1129_130 ),
    .I3(N344),
    .O(Negative_OBUF_711)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero31 (
    .I0(Opcode_3_IBUF_724),
    .I1(Opcode_2_IBUF_723),
    .I2(Opcode_4_IBUF_725),
    .I3(Opcode_1_IBUF_722),
    .O(N39)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \C<10>121  (
    .I0(old_C_12_or00004_965),
    .I1(C_or0003_228),
    .I2(old_C_12_or00009_966),
    .I3(old_C_12_or000014_964),
    .O(N61)
  );
  LUT4 #(
    .INIT ( 16'h0028 ))
  \C<10>111  (
    .I0(N118),
    .I1(Opcode_0_IBUF_721),
    .I2(Opcode_1_IBUF_722),
    .I3(old_C_12_or0000),
    .O(N56)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  Sh281 (
    .I0(B_2_IBUF_72),
    .I1(A_15_IBUF_38),
    .I2(B_3_IBUF_73),
    .I3(Sh12),
    .O(Sh28)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Sh321 (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .I2(B_1_IBUF_71),
    .O(Sh32)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<1>28_SW1  (
    .I0(C_cmp_eq0014),
    .I1(\Madd__old_C_1_lut[1] ),
    .I2(C_or0000),
    .I3(_old_C_1[1]),
    .O(N346)
  );
  LUT4 #(
    .INIT ( 16'hEEFE ))
  \C<1>28  (
    .I0(N346),
    .I1(N222),
    .I2(C_cmp_eq0015),
    .I3(A_1_IBUF_39),
    .O(\C<1>28_136 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Low91 (
    .I0(Opcode_4_IBUF_725),
    .I1(Opcode_5_IBUF_726),
    .I2(Opcode_6_IBUF_727),
    .I3(N348),
    .O(Low_OBUF_271)
  );
  LUT4 #(
    .INIT ( 16'h0018 ))
  Zero460 (
    .I0(Opcode_1_IBUF_722),
    .I1(Opcode_2_IBUF_723),
    .I2(Opcode_3_IBUF_724),
    .I3(Opcode_4_IBUF_725),
    .O(Zero460_869)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<4>85_SW1  (
    .I0(N244),
    .I1(N56),
    .I2(Sh84),
    .I3(N340),
    .O(N350)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<4>85  (
    .I0(\C<4>60_159 ),
    .I1(\C<4>65_160 ),
    .I2(N224),
    .I3(N350),
    .O(\C<4>85_161 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<5>85_SW1  (
    .I0(N246),
    .I1(N56),
    .I2(Sh85_818),
    .I3(N342),
    .O(N352)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<5>85  (
    .I0(\C<5>60_165 ),
    .I1(\C<5>65_166 ),
    .I2(N226),
    .I3(N352),
    .O(\C<5>85_167 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  Low91_SW1_SW0 (
    .I0(Opcode_1_IBUF_722),
    .I1(Opcode_2_IBUF_723),
    .I2(Opcode_3_IBUF_724),
    .I3(Opcode_0_IBUF_721),
    .O(N354)
  );
  LUT4 #(
    .INIT ( 16'hF2F3 ))
  Low91_SW1 (
    .I0(N354),
    .I1(Low46_270),
    .I2(Opcode_7_IBUF_728),
    .I3(A_15_IBUF_38),
    .O(N348)
  );
  LUT4 #(
    .INIT ( 16'h0105 ))
  \C<0>106_SW0  (
    .I0(\C<0>44_85 ),
    .I1(N338),
    .I2(\C<0>66 ),
    .I3(N53),
    .O(N356)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<0>106  (
    .I0(Opcode_5_IBUF_726),
    .I1(Opcode_6_IBUF_727),
    .I2(Opcode_7_IBUF_728),
    .I3(N356),
    .O(C_0_OBUF_201)
  );
  LUT4 #(
    .INIT ( 16'hFF32 ))
  Zero1183_SW0 (
    .I0(Sh34),
    .I1(B_2_IBUF_72),
    .I2(Sh36_770),
    .I3(Sh32),
    .O(N360)
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  Zero1183 (
    .I0(N360),
    .I1(Zero1180_834),
    .I2(Sh53),
    .I3(B_3_IBUF_73),
    .O(Zero1183_835)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_D_cy<0>_rt  (
    .I0(B_0_IBUF_64),
    .O(\Madd_D_cy<0>_rt_305 )
  );
  MUXF5   Sh22 (
    .I0(N362),
    .I1(N363),
    .S(B_2_IBUF_72),
    .O(Sh22_751)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh22_F (
    .I0(B_3_IBUF_73),
    .I1(Sh6_793),
    .I2(Sh14),
    .O(N362)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh22_G (
    .I0(B_3_IBUF_73),
    .I1(Sh10_729),
    .I2(A_15_IBUF_38),
    .O(N363)
  );
  MUXF5   Sh21 (
    .I0(N364),
    .I1(N365),
    .S(B_2_IBUF_72),
    .O(Sh21_750)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh21_F (
    .I0(B_3_IBUF_73),
    .I1(Sh5),
    .I2(Sh13),
    .O(N364)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh21_G (
    .I0(B_3_IBUF_73),
    .I1(Sh73_807),
    .I2(A_15_IBUF_38),
    .O(N365)
  );
  MUXF5   Sh63102 (
    .I0(N366),
    .I1(N367),
    .S(B_2_IBUF_72),
    .O(Sh63)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh63102_F (
    .I0(B_3_IBUF_73),
    .I1(Sh6326_804),
    .I2(Sh6341_805),
    .I3(Sh39_773),
    .O(N366)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh63102_G (
    .I0(B_3_IBUF_73),
    .I1(Sh43),
    .I2(Sh35),
    .O(N367)
  );
  MUXF5   Sh62102 (
    .I0(N368),
    .I1(N369),
    .S(B_2_IBUF_72),
    .O(Sh62)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh62102_F (
    .I0(B_3_IBUF_73),
    .I1(Sh6226_801),
    .I2(Sh6241_802),
    .I3(Sh38_772),
    .O(N368)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh62102_G (
    .I0(B_3_IBUF_73),
    .I1(Sh42),
    .I2(Sh34),
    .O(N369)
  );
  MUXF5   Sh61102 (
    .I0(N370),
    .I1(N371),
    .S(B_2_IBUF_72),
    .O(Sh61)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh61102_F (
    .I0(B_3_IBUF_73),
    .I1(Sh6126_798),
    .I2(Sh6141_799),
    .I3(Sh37_771),
    .O(N370)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh61102_G (
    .I0(B_3_IBUF_73),
    .I1(Sh41_775),
    .I2(Sh33),
    .O(N371)
  );
  MUXF5   \C<2>58  (
    .I0(N372),
    .I1(N373),
    .S(B_2_IBUF_72),
    .O(\C<2>58_147 )
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \C<2>58_F  (
    .I0(A_2_IBUF_40),
    .I1(C_cmp_eq0013),
    .I2(C_cmp_eq0015),
    .I3(C_cmp_eq0014),
    .O(N372)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \C<2>58_G  (
    .I0(A_2_IBUF_40),
    .I1(C_cmp_eq0014),
    .I2(C_cmp_eq0015),
    .I3(C_cmp_eq0013),
    .O(N373)
  );
  MUXF5   \C<6>51  (
    .I0(N374),
    .I1(N375),
    .S(B_6_IBUF_76),
    .O(\C<6>51_173 )
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \C<6>51_F  (
    .I0(A_6_IBUF_44),
    .I1(C_cmp_eq0013),
    .I2(C_cmp_eq0015),
    .I3(C_cmp_eq0014),
    .O(N374)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \C<6>51_G  (
    .I0(A_6_IBUF_44),
    .I1(C_cmp_eq0014),
    .I2(C_cmp_eq0015),
    .I3(C_cmp_eq0013),
    .O(N375)
  );
  MUXF5   Sh59 (
    .I0(N376),
    .I1(N377),
    .S(B_2_IBUF_72),
    .O(Sh59_792)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh59_F (
    .I0(B_3_IBUF_73),
    .I1(Sh43),
    .I2(Sh35),
    .O(N376)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh59_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N166),
    .I3(N172),
    .O(N377)
  );
  MUXF5   Sh58 (
    .I0(N378),
    .I1(N379),
    .S(B_2_IBUF_72),
    .O(Sh58_791)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh58_F (
    .I0(B_3_IBUF_73),
    .I1(Sh42),
    .I2(Sh34),
    .O(N378)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh58_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N169),
    .I3(N175),
    .O(N379)
  );
  MUXF5   Sh57 (
    .I0(N380),
    .I1(N381),
    .S(B_2_IBUF_72),
    .O(Sh57_790)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh57_F (
    .I0(B_3_IBUF_73),
    .I1(Sh41_775),
    .I2(Sh33),
    .O(N380)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh57_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N172),
    .I3(N178),
    .O(N381)
  );
  MUXF5   Sh86 (
    .I0(N382),
    .I1(N383),
    .S(B_2_IBUF_72),
    .O(Sh86_819)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh86_F (
    .I0(B_3_IBUF_73),
    .I1(Sh6_793),
    .I2(Sh78),
    .O(N382)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh86_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N196),
    .I3(N204),
    .O(N383)
  );
  MUXF5   Sh85 (
    .I0(N384),
    .I1(N385),
    .S(B_2_IBUF_72),
    .O(Sh85_818)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh85_F (
    .I0(B_3_IBUF_73),
    .I1(Sh5),
    .I2(Sh77),
    .O(N384)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh85_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N157),
    .I3(N186),
    .O(N385)
  );
  MUXF5   Low46 (
    .I0(N386),
    .I1(N387),
    .S(Opcode_2_IBUF_723),
    .O(Low46_270)
  );
  LUT4 #(
    .INIT ( 16'h3237 ))
  Low46_F (
    .I0(Opcode_3_IBUF_724),
    .I1(Mcompar_Low_cmp_lt0001_cy[15]),
    .I2(Opcode_0_IBUF_721),
    .I3(Mcompar_Low_cmp_lt0000_cy[15]),
    .O(N386)
  );
  LUT4 #(
    .INIT ( 16'h111B ))
  Low46_G (
    .I0(Opcode_1_IBUF_722),
    .I1(Mcompar_Low_cmp_lt0001_cy[15]),
    .I2(Mcompar_Low_cmp_lt0000_cy[15]),
    .I3(Opcode_3_IBUF_724),
    .O(N387)
  );
  MUXF5   Sh60102 (
    .I0(N388),
    .I1(N389),
    .S(B_2_IBUF_72),
    .O(Sh60)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh60102_F (
    .I0(B_3_IBUF_73),
    .I1(Sh6026_795),
    .I2(Sh6041_796),
    .I3(Sh36_770),
    .O(N388)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh60102_G (
    .I0(B_3_IBUF_73),
    .I1(Sh40_774),
    .I2(Sh32),
    .O(N389)
  );
  MUXF5   Flag96 (
    .I0(N390),
    .I1(N391),
    .S(A_15_IBUF_38),
    .O(Flag_OBUF_268)
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  Flag96_F (
    .I0(C_and0000),
    .I1(Flag53_267),
    .I2(D[15]),
    .I3(N276),
    .O(N390)
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  Flag96_G (
    .I0(C_and0000),
    .I1(D[15]),
    .I2(Flag10_265),
    .I3(Flag21_266),
    .O(N391)
  );
  MUXF5   Sh56 (
    .I0(N392),
    .I1(N393),
    .S(B_2_IBUF_72),
    .O(Sh56_789)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  Sh56_F (
    .I0(B_3_IBUF_73),
    .I1(Sh40_774),
    .I2(N59),
    .I3(A_0_IBUF_32),
    .O(N392)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh56_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N175),
    .I3(N181),
    .O(N393)
  );
  MUXF5   Sh83195 (
    .I0(N394),
    .I1(N395),
    .S(B_2_IBUF_72),
    .O(N54)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  Sh83195_F (
    .I0(Sh11_730),
    .I1(B_3_IBUF_73),
    .I2(Sh83153),
    .O(N394)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh83195_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N156),
    .I3(N157),
    .O(N395)
  );
  MUXF5   Sh18195 (
    .I0(N396),
    .I1(N397),
    .S(B_2_IBUF_72),
    .O(N58)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  Sh18195_F (
    .I0(Sh10_729),
    .I1(B_3_IBUF_73),
    .I2(Sh18153),
    .O(N396)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh18195_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N198),
    .I3(N195),
    .O(N397)
  );
  MUXF5   Sh17194 (
    .I0(N398),
    .I1(N399),
    .S(B_3_IBUF_73),
    .O(N57)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh17194_F (
    .I0(B_2_IBUF_72),
    .I1(Sh17134_744),
    .I2(Sh17119_743),
    .I3(Sh5),
    .O(N398)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh17194_G (
    .I0(B_2_IBUF_72),
    .I1(B_1_IBUF_71),
    .I2(N157),
    .I3(N186),
    .O(N399)
  );
  MUXF5   C_or0003 (
    .I0(N400),
    .I1(N401),
    .S(Opcode_2_IBUF_723),
    .O(C_or0003_228)
  );
  LUT4 #(
    .INIT ( 16'h0900 ))
  C_or0003_F (
    .I0(Opcode_0_IBUF_721),
    .I1(Opcode_1_IBUF_722),
    .I2(Opcode_3_IBUF_724),
    .I3(Opcode_4_IBUF_725),
    .O(N400)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  C_or0003_G (
    .I0(Opcode_0_IBUF_721),
    .I1(Opcode_1_IBUF_722),
    .I2(Opcode_3_IBUF_724),
    .I3(Opcode_4_IBUF_725),
    .O(N401)
  );
  MUXF5   \C<12>56  (
    .I0(N402),
    .I1(N403),
    .S(C_cmp_eq0021),
    .O(\C<12>56_108 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \C<12>56_F  (
    .I0(B_2_IBUF_72),
    .I1(N56),
    .I2(Sh12),
    .I3(B_3_IBUF_73),
    .O(N402)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \C<12>56_G  (
    .I0(B_2_IBUF_72),
    .I1(A_15_IBUF_38),
    .I2(B_3_IBUF_73),
    .I3(Sh12),
    .O(N403)
  );
  MUXF5   Negative47_SW0 (
    .I0(N404),
    .I1(N405),
    .S(Opcode_2_IBUF_723),
    .O(N344)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Negative47_SW0_F (
    .I0(Opcode_3_IBUF_724),
    .I1(Opcode_4_IBUF_725),
    .I2(N288),
    .O(N404)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  Negative47_SW0_G (
    .I0(Opcode_3_IBUF_724),
    .I1(Opcode_1_IBUF_722),
    .I2(Negative_sub0000[16]),
    .I3(Opcode_4_IBUF_725),
    .O(N405)
  );
  INV   \D_not0000<15>1_INV_0  (
    .I(B_15_IBUF_70),
    .O(D_not0000[15])
  );
  INV   \D_not0000<14>1_INV_0  (
    .I(B_14_IBUF_69),
    .O(D_not0000[14])
  );
  INV   \D_not0000<13>1_INV_0  (
    .I(B_13_IBUF_68),
    .O(D_not0000[13])
  );
  INV   \D_not0000<12>1_INV_0  (
    .I(B_12_IBUF_67),
    .O(D_not0000[12])
  );
  INV   \D_not0000<11>1_INV_0  (
    .I(B_11_IBUF_66),
    .O(D_not0000[11])
  );
  INV   \D_not0000<10>1_INV_0  (
    .I(B_10_IBUF_65),
    .O(D_not0000[10])
  );
  INV   \D_not0000<9>1_INV_0  (
    .I(B_9_IBUF_79),
    .O(D_not0000[9])
  );
  INV   \D_not0000<8>1_INV_0  (
    .I(B_8_IBUF_78),
    .O(D_not0000[8])
  );
  INV   \D_not0000<7>1_INV_0  (
    .I(B_7_IBUF_77),
    .O(D_not0000[7])
  );
  INV   \D_not0000<6>1_INV_0  (
    .I(B_6_IBUF_76),
    .O(D_not0000[6])
  );
  INV   \D_not0000<5>1_INV_0  (
    .I(B_5_IBUF_75),
    .O(D_not0000[5])
  );
  INV   \D_not0000<4>1_INV_0  (
    .I(B_4_IBUF_74),
    .O(D_not0000[4])
  );
  INV   \D_not0000<3>1_INV_0  (
    .I(B_3_IBUF_73),
    .O(D_not0000[3])
  );
  INV   \D_not0000<2>1_INV_0  (
    .I(B_2_IBUF_72),
    .O(D_not0000[2])
  );
  INV   \D_not0000<1>1_INV_0  (
    .I(B_1_IBUF_71),
    .O(D_not0000[1])
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  C_cmp_eq00151 (
    .I0(Opcode_1_IBUF_722),
    .I1(Opcode_2_IBUF_723),
    .I2(Opcode_3_IBUF_724),
    .I3(Opcode_0_IBUF_721),
    .O(C_cmp_eq00151_224)
  );
  MUXF5   C_cmp_eq0015_f5 (
    .I0(C_cmp_eq00151_224),
    .I1(N0),
    .S(Opcode_4_IBUF_725),
    .O(C_cmp_eq0015)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  C_cmp_eq001411 (
    .I0(Opcode_2_IBUF_723),
    .I1(Opcode_0_IBUF_721),
    .I2(Opcode_3_IBUF_724),
    .I3(Opcode_1_IBUF_722),
    .O(C_cmp_eq00141)
  );
  MUXF5   C_cmp_eq00141_f5 (
    .I0(C_cmp_eq00141),
    .I1(N0),
    .S(Opcode_4_IBUF_725),
    .O(C_cmp_eq0014)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  Sh87111 (
    .I0(Sh11_730),
    .I1(B_3_IBUF_73),
    .O(Sh8711)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh87112 (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N156),
    .I3(N157),
    .O(Sh87111_822)
  );
  MUXF5   Sh8711_f5 (
    .I0(Sh87111_822),
    .I1(Sh8711),
    .S(B_2_IBUF_72),
    .O(N125)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  Sh341 (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .O(Sh341_765)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh342 (
    .I0(B_0_IBUF_64),
    .I1(A_2_IBUF_40),
    .I2(A_1_IBUF_39),
    .O(Sh342_766)
  );
  MUXF5   Sh34_f5 (
    .I0(Sh342_766),
    .I1(Sh341_765),
    .S(B_1_IBUF_71),
    .O(Sh34)
  );
  LUT4 #(
    .INIT ( 16'hFBEA ))
  Sh431 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_10_IBUF_33),
    .I3(A_11_IBUF_34),
    .O(Sh431_780)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh432 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_11_IBUF_34),
    .I3(A_10_IBUF_33),
    .O(Sh432_781)
  );
  MUXF5   Sh43_f5 (
    .I0(Sh432_781),
    .I1(Sh431_780),
    .S(N160),
    .O(Sh43)
  );
  LUT4 #(
    .INIT ( 16'hFBEA ))
  Sh421 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_9_IBUF_47),
    .I3(A_10_IBUF_33),
    .O(Sh421_777)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh422 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_10_IBUF_33),
    .I3(A_9_IBUF_47),
    .O(Sh422_778)
  );
  MUXF5   Sh42_f5 (
    .I0(Sh422_778),
    .I1(Sh421_777),
    .S(N163),
    .O(Sh42)
  );
  LUT4 #(
    .INIT ( 16'hE4FF ))
  Sh351 (
    .I0(B_0_IBUF_64),
    .I1(A_1_IBUF_39),
    .I2(A_0_IBUF_32),
    .I3(B_1_IBUF_71),
    .O(Sh351_768)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh352 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_1_IBUF_39),
    .I3(A_0_IBUF_32),
    .O(Sh352_769)
  );
  MUXF5   Sh35_f5 (
    .I0(Sh352_769),
    .I1(Sh351_768),
    .S(N178),
    .O(Sh35)
  );
  LUT4 #(
    .INIT ( 16'hFBEA ))
  Sh51 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_6_IBUF_44),
    .I3(A_5_IBUF_43),
    .O(Sh51_783)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh52 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_5_IBUF_43),
    .I3(A_6_IBUF_44),
    .O(Sh510)
  );
  MUXF5   Sh5_f5 (
    .I0(Sh510),
    .I1(Sh51_783),
    .S(N156),
    .O(Sh5)
  );
  LUT4 #(
    .INIT ( 16'hE4FF ))
  Sh121 (
    .I0(B_0_IBUF_64),
    .I1(A_14_IBUF_37),
    .I2(A_15_IBUF_38),
    .I3(B_1_IBUF_71),
    .O(Sh121_732)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh122 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_14_IBUF_37),
    .I3(A_15_IBUF_38),
    .O(Sh122_733)
  );
  MUXF5   Sh12_f5 (
    .I0(Sh122_733),
    .I1(Sh121_732),
    .S(N204),
    .O(Sh12)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh831531 (
    .I0(B_3_IBUF_73),
    .I1(B_0_IBUF_64),
    .I2(Sh18114),
    .I3(A_6_IBUF_44),
    .O(Sh831531_815)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh831532 (
    .I0(B_3_IBUF_73),
    .I1(B_0_IBUF_64),
    .I2(Sh18114),
    .I3(A_4_IBUF_42),
    .O(Sh831532_816)
  );
  MUXF5   Sh83153_f5 (
    .I0(Sh831532_816),
    .I1(Sh831531_815),
    .S(B_1_IBUF_71),
    .O(Sh83153)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh181531 (
    .I0(B_3_IBUF_73),
    .I1(B_0_IBUF_64),
    .I2(A_4_IBUF_42),
    .I3(Sh18114),
    .O(Sh181531_748)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh181532 (
    .I0(B_3_IBUF_73),
    .I1(B_0_IBUF_64),
    .I2(A_2_IBUF_40),
    .I3(Sh18114),
    .O(Sh181532_749)
  );
  MUXF5   Sh18153_f5 (
    .I0(Sh181532_749),
    .I1(Sh181531_748),
    .S(B_1_IBUF_71),
    .O(Sh18153)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero7701 (
    .I0(AUX_3_addsub0000[15]),
    .I1(AUX_3_addsub0000[6]),
    .I2(AUX_3_addsub0000[14]),
    .I3(AUX_3_addsub0000[13]),
    .O(Zero7701_886)
  );
  MUXF5   Zero770_f5 (
    .I0(Zero7701_886),
    .I1(N0),
    .S(AUX_3_addsub0000[7]),
    .O(Zero770)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero14991 (
    .I0(_AUX_5[12]),
    .I1(_AUX_5[4]),
    .I2(_AUX_5[14]),
    .I3(_AUX_5[13]),
    .O(Zero14991_850)
  );
  MUXF5   Zero1499_f5 (
    .I0(Zero14991_850),
    .I1(N0),
    .S(_AUX_5[5]),
    .O(Zero1499)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero15191 (
    .I0(_AUX_5[11]),
    .I1(_AUX_5[3]),
    .I2(_AUX_5[2]),
    .I3(_AUX_5[10]),
    .O(Zero15191_852)
  );
  MUXF5   Zero1519_f5 (
    .I0(Zero15191_852),
    .I1(N0),
    .S(_AUX_5[9]),
    .O(Zero1519)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh261 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh10_729),
    .I3(A_15_IBUF_38),
    .O(Sh261_756)
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  Sh262 (
    .I0(B_3_IBUF_73),
    .I1(A_15_IBUF_38),
    .I2(B_2_IBUF_72),
    .I3(Sh10_729),
    .O(Sh262_757)
  );
  MUXF5   Sh26_f5 (
    .I0(Sh262_757),
    .I1(Sh261_756),
    .S(Sh14),
    .O(Sh26)
  );
  LUT4 #(
    .INIT ( 16'hF5B1 ))
  Sh251 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(A_15_IBUF_38),
    .I3(Sh13),
    .O(Sh251_753)
  );
  LUT4 #(
    .INIT ( 16'hEC20 ))
  Sh252 (
    .I0(Sh13),
    .I1(B_3_IBUF_73),
    .I2(B_2_IBUF_72),
    .I3(A_15_IBUF_38),
    .O(Sh252_754)
  );
  MUXF5   Sh25_f5 (
    .I0(Sh252_754),
    .I1(Sh251_753),
    .S(Sh73_807),
    .O(Sh25)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \C<10>621  (
    .I0(A_10_IBUF_33),
    .I1(C_cmp_eq0013),
    .I2(B_10_IBUF_65),
    .I3(C_cmp_eq0014),
    .O(\C<10>621_96 )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \C<10>622  (
    .I0(A_10_IBUF_33),
    .I1(C_cmp_eq0014),
    .I2(B_10_IBUF_65),
    .I3(C_cmp_eq0013),
    .O(\C<10>622_97 )
  );
  MUXF5   \C<10>62_f5  (
    .I0(\C<10>622_97 ),
    .I1(\C<10>621_96 ),
    .S(C_or0002),
    .O(\C<10>62 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<4>85_SW01  (
    .I0(C_cmp_eq0021),
    .I1(N282),
    .I2(N39),
    .I3(_AUX_5[4]),
    .O(\C<4>85_SW0 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<4>85_SW02  (
    .I0(C_cmp_eq0021),
    .I1(N25),
    .I2(N39),
    .I3(_AUX_5[4]),
    .O(\C<4>85_SW01_163 )
  );
  MUXF5   \C<4>85_SW0_f5  (
    .I0(\C<4>85_SW01_163 ),
    .I1(\C<4>85_SW0 ),
    .S(B_2_IBUF_72),
    .O(N244)
  );
  LUT4 #(
    .INIT ( 16'h74FC ))
  Negative27_SW01 (
    .I0(B_15_IBUF_70),
    .I1(Opcode_0_IBUF_721),
    .I2(Mcompar_Low_cmp_lt0000_cy[15]),
    .I3(A_15_IBUF_38),
    .O(Negative27_SW0)
  );
  MUXF5   Negative27_SW0_f5 (
    .I0(Mcompar_Low_cmp_lt0000_cy[15]),
    .I1(Negative27_SW0),
    .S(Opcode_1_IBUF_722),
    .O(N288)
  );
  LUT4 #(
    .INIT ( 16'hEEE8 ))
  \C<0>661  (
    .I0(B_0_IBUF_64),
    .I1(A_0_IBUF_32),
    .I2(C_cmp_eq0014),
    .I3(C_cmp_eq0013),
    .O(\C<0>661_87 )
  );
  LUT4 #(
    .INIT ( 16'hDAC8 ))
  \C<0>662  (
    .I0(B_0_IBUF_64),
    .I1(C_cmp_eq0013),
    .I2(A_0_IBUF_32),
    .I3(C_cmp_eq0014),
    .O(\C<0>662_88 )
  );
  MUXF5   \C<0>66_f5  (
    .I0(\C<0>662_88 ),
    .I1(\C<0>661_87 ),
    .S(C_or0002),
    .O(\C<0>66 )
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

