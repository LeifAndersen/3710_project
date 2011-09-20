////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.63c
//  \   \         Application: netgen
//  /   /         Filename: ALU_synthesis.v
// /___/   /\     Timestamp: Tue Sep 20 14:51:42 2011
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
  wire \C<0>4_83 ;
  wire \C<0>41_84 ;
  wire \C<0>55_85 ;
  wire \C<0>63_86 ;
  wire \C<0>82_87 ;
  wire \C<10>18 ;
  wire \C<10>181_90 ;
  wire \C<10>182_91 ;
  wire \C<10>35_92 ;
  wire \C<10>4_93 ;
  wire \C<10>49_94 ;
  wire \C<10>53_95 ;
  wire \C<10>62_96 ;
  wire \C<10>93_97 ;
  wire \C<11>18_99 ;
  wire \C<11>30_100 ;
  wire \C<11>32_101 ;
  wire \C<11>50_102 ;
  wire \C<11>6_103 ;
  wire \C<11>63_104 ;
  wire \C<11>66_105 ;
  wire \C<11>8_106 ;
  wire \C<11>84_107 ;
  wire \C<12>17_109 ;
  wire \C<12>23_110 ;
  wire \C<12>37_111 ;
  wire \C<12>39_112 ;
  wire \C<12>58_113 ;
  wire \C<12>7_114 ;
  wire \C<12>71_115 ;
  wire \C<12>74_116 ;
  wire \C<12>8_117 ;
  wire \C<12>92_118 ;
  wire \C<13>118_120 ;
  wire \C<13>16_121 ;
  wire \C<13>22_122 ;
  wire \C<13>36_123 ;
  wire \C<13>50_124 ;
  wire \C<13>73_125 ;
  wire \C<13>94_126 ;
  wire \C<14>10_128 ;
  wire \C<14>104_129 ;
  wire \C<14>27_130 ;
  wire \C<14>36_131 ;
  wire \C<14>53_132 ;
  wire \C<14>75_133 ;
  wire \C<14>81_134 ;
  wire \C<15>10_136 ;
  wire \C<15>1116_137 ;
  wire \C<15>1120_138 ;
  wire \C<15>1129_139 ;
  wire \C<15>21_140 ;
  wire \C<15>28_141 ;
  wire \C<15>4_142 ;
  wire \C<15>43_143 ;
  wire \C<15>67_144 ;
  wire \C<1>28_146 ;
  wire \C<1>43_147 ;
  wire \C<1>51_148 ;
  wire \C<1>68_149 ;
  wire \C<1>83_150 ;
  wire \C<1>92_151 ;
  wire \C<2>10_153 ;
  wire \C<2>103_154 ;
  wire \C<2>125_155 ;
  wire \C<2>22_156 ;
  wire \C<2>38_157 ;
  wire \C<2>44_158 ;
  wire \C<2>51_159 ;
  wire \C<2>57_160 ;
  wire \C<2>6_161 ;
  wire \C<2>77_162 ;
  wire \C<3>118_164 ;
  wire \C<3>34_165 ;
  wire \C<3>4_166 ;
  wire \C<3>52 ;
  wire \C<3>521_168 ;
  wire \C<3>522_169 ;
  wire \C<3>71_170 ;
  wire \C<3>9_171 ;
  wire \C<3>97_172 ;
  wire \C<4>11 ;
  wire \C<4>111 ;
  wire \C<4>1111_176 ;
  wire \C<4>20_177 ;
  wire \C<4>34_178 ;
  wire \C<4>48_179 ;
  wire \C<4>53_180 ;
  wire \C<4>64_181 ;
  wire \C<4>85_182 ;
  wire \C<5>11 ;
  wire \C<5>111_185 ;
  wire \C<5>112_186 ;
  wire \C<5>20_187 ;
  wire \C<5>34_188 ;
  wire \C<5>48_189 ;
  wire \C<5>53_190 ;
  wire \C<5>64_191 ;
  wire \C<5>85_192 ;
  wire \C<6>10_194 ;
  wire \C<6>108_195 ;
  wire \C<6>22_196 ;
  wire \C<6>37_197 ;
  wire \C<6>52_198 ;
  wire \C<6>6_199 ;
  wire \C<6>63_200 ;
  wire \C<6>65_201 ;
  wire \C<6>83_202 ;
  wire \C<7>22_204 ;
  wire \C<7>60_205 ;
  wire \C<7>65_206 ;
  wire \C<7>76_207 ;
  wire \C<7>85_208 ;
  wire \C<8>34_210 ;
  wire \C<8>48_211 ;
  wire \C<8>53_212 ;
  wire \C<8>64_213 ;
  wire \C<8>85_214 ;
  wire \C<9>38_216 ;
  wire \C<9>53_217 ;
  wire \C<9>58_218 ;
  wire \C<9>84_219 ;
  wire C_0_OBUF_220;
  wire C_10_OBUF_221;
  wire C_11_OBUF_222;
  wire C_12_OBUF_223;
  wire C_13_OBUF_224;
  wire C_14_OBUF_225;
  wire C_15_OBUF_226;
  wire C_1_OBUF_227;
  wire C_2_OBUF_228;
  wire C_3_OBUF_229;
  wire C_4_OBUF_230;
  wire C_5_OBUF_231;
  wire C_6_OBUF_232;
  wire C_7_OBUF_233;
  wire C_8_OBUF_234;
  wire C_9_OBUF_235;
  wire C_and0000;
  wire C_cmp_eq0006;
  wire C_cmp_eq0007;
  wire C_cmp_eq0013;
  wire C_cmp_eq0014;
  wire C_cmp_eq00141;
  wire C_cmp_eq0015;
  wire C_cmp_eq00151_243;
  wire C_cmp_eq0021;
  wire C_or0000;
  wire C_or0002;
  wire C_or0003_247;
  wire CarryIn_IBUF_250;
  wire Carry_OBUF_251;
  wire Flag10_284;
  wire Flag21_285;
  wire Flag53_286;
  wire Flag_OBUF_287;
  wire Low46_289;
  wire Low_OBUF_290;
  wire Madd_AUX_3_index0000;
  wire \Madd_D_cy<0>_rt_324 ;
  wire \Madd__AUX_5_cy<10>_rt_341 ;
  wire \Madd__AUX_5_cy<11>_rt_343 ;
  wire \Madd__AUX_5_cy<12>_rt_345 ;
  wire \Madd__AUX_5_cy<13>_rt_347 ;
  wire \Madd__AUX_5_cy<14>_rt_349 ;
  wire \Madd__AUX_5_cy<15>_rt_351 ;
  wire \Madd__AUX_5_cy<1>_rt_353 ;
  wire \Madd__AUX_5_cy<2>_rt_355 ;
  wire \Madd__AUX_5_cy<3>_rt_357 ;
  wire \Madd__AUX_5_cy<4>_rt_359 ;
  wire \Madd__AUX_5_cy<5>_rt_361 ;
  wire \Madd__AUX_5_cy<6>_rt_363 ;
  wire \Madd__AUX_5_cy<7>_rt_365 ;
  wire \Madd__AUX_5_cy<8>_rt_367 ;
  wire \Madd__AUX_5_cy<9>_rt_369 ;
  wire \Madd__AUX_5_xor<16>_rt_371 ;
  wire \Madd__old_C_1_lut[0] ;
  wire \Madd__old_C_1_lut<0>1_388 ;
  wire \Madd__old_C_1_lut[10] ;
  wire \Madd__old_C_1_lut<11>1_390 ;
  wire \Madd__old_C_1_lut[12] ;
  wire \Madd__old_C_1_lut<12>1_392 ;
  wire \Madd__old_C_1_lut[13] ;
  wire \Madd__old_C_1_lut[14] ;
  wire \Madd__old_C_1_lut[15] ;
  wire \Madd__old_C_1_lut[1] ;
  wire \Madd__old_C_1_lut<1>1_397 ;
  wire \Madd__old_C_1_lut[2] ;
  wire \Madd__old_C_1_lut[3] ;
  wire \Madd__old_C_1_lut[4] ;
  wire \Madd__old_C_1_lut<4>1_401 ;
  wire \Madd__old_C_1_lut[5] ;
  wire \Madd__old_C_1_lut<5>1_403 ;
  wire \Madd__old_C_1_lut[6] ;
  wire \Madd__old_C_1_lut[7] ;
  wire \Madd__old_C_1_lut<7>1_406 ;
  wire \Madd__old_C_1_lut[8] ;
  wire \Madd__old_C_1_lut<8>1_408 ;
  wire \Madd__old_C_1_lut[9] ;
  wire \Msub__old_C_6_lut[0] ;
  wire \Msub__old_C_6_lut<10>1_569 ;
  wire \Msub__old_C_6_lut[11] ;
  wire \Msub__old_C_6_lut[12] ;
  wire \Msub__old_C_6_lut[13] ;
  wire \Msub__old_C_6_lut[14] ;
  wire \Msub__old_C_6_lut<14>1_574 ;
  wire \Msub__old_C_6_lut<15>1_575 ;
  wire \Msub__old_C_6_lut[1] ;
  wire \Msub__old_C_6_lut[2] ;
  wire \Msub__old_C_6_lut<3>1_578 ;
  wire \Msub__old_C_6_lut[4] ;
  wire \Msub__old_C_6_lut[5] ;
  wire \Msub__old_C_6_lut[6] ;
  wire \Msub__old_C_6_lut[7] ;
  wire \Msub__old_C_6_lut[8] ;
  wire \Msub__old_C_6_lut[9] ;
  wire \Msub__old_C_6_lut<9>1_585 ;
  wire N0;
  wire N1;
  wire N117;
  wire N123;
  wire N124;
  wire N129;
  wire N133;
  wire N134;
  wire N144;
  wire N145;
  wire N147;
  wire N161;
  wire N163;
  wire N165;
  wire N170;
  wire N171;
  wire N180;
  wire N183;
  wire N186;
  wire N189;
  wire N192;
  wire N195;
  wire N198;
  wire N201;
  wire N206;
  wire N207;
  wire N212;
  wire N213;
  wire N215;
  wire N216;
  wire N218;
  wire N219;
  wire N221;
  wire N223;
  wire N225;
  wire N227;
  wire N229;
  wire N23;
  wire N24;
  wire N241;
  wire N25;
  wire N251;
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
  wire N273;
  wire N275;
  wire N277;
  wire N283;
  wire N285;
  wire N287;
  wire N289;
  wire N291;
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
  wire N327;
  wire N329;
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
  wire N367;
  wire N368;
  wire N369;
  wire N370;
  wire N38;
  wire N39;
  wire N44;
  wire N53;
  wire N54;
  wire N56;
  wire N57;
  wire N58;
  wire N59;
  wire N60;
  wire N62;
  wire N65;
  wire N66;
  wire N67;
  wire Negative27_SW0;
  wire Negative_OBUF_721;
  wire Opcode_0_IBUF_731;
  wire Opcode_1_IBUF_732;
  wire Opcode_2_IBUF_733;
  wire Opcode_3_IBUF_734;
  wire Opcode_4_IBUF_735;
  wire Opcode_5_IBUF_736;
  wire Opcode_6_IBUF_737;
  wire Opcode_7_IBUF_738;
  wire Sh10_739;
  wire Sh11_740;
  wire Sh12_741;
  wire Sh13;
  wire Sh14;
  wire Sh16;
  wire Sh16113_745;
  wire Sh16128_746;
  wire Sh16146_747;
  wire Sh1629_748;
  wire Sh17119_749;
  wire Sh17134_750;
  wire Sh18119_751;
  wire Sh18134_752;
  wire Sh32;
  wire Sh33;
  wire Sh34;
  wire Sh341_756;
  wire Sh342_757;
  wire Sh35;
  wire Sh351_759;
  wire Sh352_760;
  wire Sh36_761;
  wire Sh37_762;
  wire Sh38_763;
  wire Sh39_764;
  wire Sh40_765;
  wire Sh41_766;
  wire Sh42;
  wire Sh421_768;
  wire Sh422_769;
  wire Sh43;
  wire Sh431_771;
  wire Sh432_772;
  wire Sh5;
  wire Sh51_774;
  wire Sh510;
  wire Sh52_776;
  wire Sh53;
  wire Sh54;
  wire Sh55;
  wire Sh56_780;
  wire Sh57_781;
  wire Sh58_782;
  wire Sh59_783;
  wire Sh6;
  wire Sh60;
  wire Sh601;
  wire Sh6026_787;
  wire Sh6041_788;
  wire Sh61_789;
  wire Sh6126_790;
  wire Sh6141_791;
  wire Sh62_792;
  wire Sh6226_793;
  wire Sh6241_794;
  wire Sh63;
  wire Sh6326_796;
  wire Sh6341_797;
  wire Sh64;
  wire Sh65;
  wire Sh7_800;
  wire Sh72_801;
  wire Sh73_802;
  wire Sh77;
  wire Sh78;
  wire Sh79;
  wire Sh81;
  wire Sh82;
  wire Sh83;
  wire Sh83119_809;
  wire Sh83134_810;
  wire Sh84;
  wire Sh85_812;
  wire Sh86_813;
  wire Sh87;
  wire Sh88;
  wire Sh89;
  wire Sh90;
  wire Sh91;
  wire Zero1006_820;
  wire Zero1051_821;
  wire Zero1081_822;
  wire Zero1102_823;
  wire Zero112_824;
  wire Zero1128_825;
  wire Zero1178_826;
  wire Zero1178_SW0;
  wire Zero1212_828;
  wire Zero1221_829;
  wire Zero1232_830;
  wire Zero125_831;
  wire Zero1286_832;
  wire Zero1299_833;
  wire Zero1309_834;
  wire Zero1360_835;
  wire Zero138_836;
  wire Zero1397_837;
  wire Zero1413_838;
  wire Zero1438_839;
  wire Zero1478_840;
  wire Zero1508_841;
  wire Zero162_842;
  wire Zero175_843;
  wire Zero189_844;
  wire Zero21_845;
  wire Zero216_846;
  wire Zero259_847;
  wire Zero26_848;
  wire Zero27_849;
  wire Zero300_850;
  wire Zero316_851;
  wire Zero334_852;
  wire Zero359_853;
  wire Zero4_854;
  wire Zero400_855;
  wire Zero411_856;
  wire Zero457_857;
  wire Zero47_858;
  wire Zero479_859;
  wire Zero492_860;
  wire Zero528_861;
  wire Zero541_862;
  wire Zero565_863;
  wire Zero578_864;
  wire Zero592_865;
  wire Zero617_866;
  wire Zero644_867;
  wire Zero665_868;
  wire Zero68_869;
  wire Zero683_870;
  wire Zero699_871;
  wire Zero726_872;
  wire Zero767;
  wire Zero7671_874;
  wire Zero789_875;
  wire Zero807_876;
  wire Zero81_877;
  wire Zero82_878;
  wire Zero823_879;
  wire Zero850_880;
  wire Zero896_881;
  wire Zero9_882;
  wire Zero932_883;
  wire Zero955_884;
  wire Zero975_885;
  wire Zero979_886;
  wire Zero_OBUF_887;
  wire \_old_C_14<10>0 ;
  wire \_old_C_14<10>15_908 ;
  wire \_old_C_14<4>30 ;
  wire \_old_C_14<4>301_919 ;
  wire \_old_C_14<4>302_920 ;
  wire old_C_12_or0000;
  wire old_C_12_or000014_976;
  wire old_C_12_or00004_977;
  wire old_C_12_or00009_978;
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
  wire [15 : 0] _old_C_14;
  wire [15 : 0] _old_C_1;
  wire [15 : 0] _old_C_6;
  wire [15 : 0] _old_C_7;
  wire [15 : 15] _old_C_8;
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
    .S(\Madd__old_C_1_lut<0>1_388 ),
    .O(Madd__old_C_1_cy[0])
  );
  XORCY   \Madd__old_C_1_xor<0>  (
    .CI(N0),
    .LI(\Madd__old_C_1_lut<0>1_388 ),
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
    .S(\Madd__old_C_1_lut<1>1_397 ),
    .O(Madd__old_C_1_cy[1])
  );
  XORCY   \Madd__old_C_1_xor<1>  (
    .CI(Madd__old_C_1_cy[0]),
    .LI(\Madd__old_C_1_lut<1>1_397 ),
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
    .S(\Madd__old_C_1_lut<4>1_401 ),
    .O(Madd__old_C_1_cy[4])
  );
  XORCY   \Madd__old_C_1_xor<4>  (
    .CI(Madd__old_C_1_cy[3]),
    .LI(\Madd__old_C_1_lut<4>1_401 ),
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
    .S(\Madd__old_C_1_lut<5>1_403 ),
    .O(Madd__old_C_1_cy[5])
  );
  XORCY   \Madd__old_C_1_xor<5>  (
    .CI(Madd__old_C_1_cy[4]),
    .LI(\Madd__old_C_1_lut<5>1_403 ),
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
    .S(\Madd__old_C_1_lut<7>1_406 ),
    .O(Madd__old_C_1_cy[7])
  );
  XORCY   \Madd__old_C_1_xor<7>  (
    .CI(Madd__old_C_1_cy[6]),
    .LI(\Madd__old_C_1_lut<7>1_406 ),
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
    .S(\Madd__old_C_1_lut<8>1_408 ),
    .O(Madd__old_C_1_cy[8])
  );
  XORCY   \Madd__old_C_1_xor<8>  (
    .CI(Madd__old_C_1_cy[7]),
    .LI(\Madd__old_C_1_lut<8>1_408 ),
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
    .S(\Madd__old_C_1_lut<11>1_390 ),
    .O(Madd__old_C_1_cy[11])
  );
  XORCY   \Madd__old_C_1_xor<11>  (
    .CI(Madd__old_C_1_cy[10]),
    .LI(\Madd__old_C_1_lut<11>1_390 ),
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
    .S(\Madd__old_C_1_lut<12>1_392 ),
    .O(Madd__old_C_1_cy[12])
  );
  XORCY   \Madd__old_C_1_xor<12>  (
    .CI(Madd__old_C_1_cy[11]),
    .LI(\Madd__old_C_1_lut<12>1_392 ),
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
    .S(\Msub__old_C_6_lut<3>1_578 ),
    .O(Msub__old_C_6_cy[3])
  );
  XORCY   \Msub__old_C_6_xor<3>  (
    .CI(Msub__old_C_6_cy[2]),
    .LI(\Msub__old_C_6_lut<3>1_578 ),
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
    .S(\Msub__old_C_6_lut<9>1_585 ),
    .O(Msub__old_C_6_cy[9])
  );
  XORCY   \Msub__old_C_6_xor<9>  (
    .CI(Msub__old_C_6_cy[8]),
    .LI(\Msub__old_C_6_lut<9>1_585 ),
    .O(_old_C_6[9])
  );
  MUXCY   \Msub__old_C_6_cy<10>  (
    .CI(Msub__old_C_6_cy[9]),
    .DI(A_10_IBUF_33),
    .S(\Msub__old_C_6_lut<10>1_569 ),
    .O(Msub__old_C_6_cy[10])
  );
  XORCY   \Msub__old_C_6_xor<10>  (
    .CI(Msub__old_C_6_cy[9]),
    .LI(\Msub__old_C_6_lut<10>1_569 ),
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
    .S(\Msub__old_C_6_lut<14>1_574 ),
    .O(Msub__old_C_6_cy[14])
  );
  XORCY   \Msub__old_C_6_xor<14>  (
    .CI(Msub__old_C_6_cy[13]),
    .LI(\Msub__old_C_6_lut<14>1_574 ),
    .O(_old_C_6[14])
  );
  XORCY   \Msub__old_C_6_xor<15>  (
    .CI(Msub__old_C_6_cy[14]),
    .LI(\Msub__old_C_6_lut<15>1_575 ),
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
    .S(\Madd_D_cy<0>_rt_324 ),
    .O(Madd_D_cy[0])
  );
  XORCY   \Madd_D_xor<0>  (
    .CI(N0),
    .LI(\Madd_D_cy<0>_rt_324 ),
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
    .I1(CarryIn_IBUF_250),
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
    .S(\Madd__AUX_5_cy<1>_rt_353 ),
    .O(Madd__AUX_5_cy[1])
  );
  XORCY   \Madd__AUX_5_xor<1>  (
    .CI(Madd__AUX_5_cy[0]),
    .LI(\Madd__AUX_5_cy<1>_rt_353 ),
    .O(_AUX_5[1])
  );
  MUXCY   \Madd__AUX_5_cy<2>  (
    .CI(Madd__AUX_5_cy[1]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<2>_rt_355 ),
    .O(Madd__AUX_5_cy[2])
  );
  XORCY   \Madd__AUX_5_xor<2>  (
    .CI(Madd__AUX_5_cy[1]),
    .LI(\Madd__AUX_5_cy<2>_rt_355 ),
    .O(_AUX_5[2])
  );
  MUXCY   \Madd__AUX_5_cy<3>  (
    .CI(Madd__AUX_5_cy[2]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<3>_rt_357 ),
    .O(Madd__AUX_5_cy[3])
  );
  XORCY   \Madd__AUX_5_xor<3>  (
    .CI(Madd__AUX_5_cy[2]),
    .LI(\Madd__AUX_5_cy<3>_rt_357 ),
    .O(_AUX_5[3])
  );
  MUXCY   \Madd__AUX_5_cy<4>  (
    .CI(Madd__AUX_5_cy[3]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<4>_rt_359 ),
    .O(Madd__AUX_5_cy[4])
  );
  XORCY   \Madd__AUX_5_xor<4>  (
    .CI(Madd__AUX_5_cy[3]),
    .LI(\Madd__AUX_5_cy<4>_rt_359 ),
    .O(_AUX_5[4])
  );
  MUXCY   \Madd__AUX_5_cy<5>  (
    .CI(Madd__AUX_5_cy[4]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<5>_rt_361 ),
    .O(Madd__AUX_5_cy[5])
  );
  XORCY   \Madd__AUX_5_xor<5>  (
    .CI(Madd__AUX_5_cy[4]),
    .LI(\Madd__AUX_5_cy<5>_rt_361 ),
    .O(_AUX_5[5])
  );
  MUXCY   \Madd__AUX_5_cy<6>  (
    .CI(Madd__AUX_5_cy[5]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<6>_rt_363 ),
    .O(Madd__AUX_5_cy[6])
  );
  XORCY   \Madd__AUX_5_xor<6>  (
    .CI(Madd__AUX_5_cy[5]),
    .LI(\Madd__AUX_5_cy<6>_rt_363 ),
    .O(_AUX_5[6])
  );
  MUXCY   \Madd__AUX_5_cy<7>  (
    .CI(Madd__AUX_5_cy[6]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<7>_rt_365 ),
    .O(Madd__AUX_5_cy[7])
  );
  XORCY   \Madd__AUX_5_xor<7>  (
    .CI(Madd__AUX_5_cy[6]),
    .LI(\Madd__AUX_5_cy<7>_rt_365 ),
    .O(_AUX_5[7])
  );
  MUXCY   \Madd__AUX_5_cy<8>  (
    .CI(Madd__AUX_5_cy[7]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<8>_rt_367 ),
    .O(Madd__AUX_5_cy[8])
  );
  XORCY   \Madd__AUX_5_xor<8>  (
    .CI(Madd__AUX_5_cy[7]),
    .LI(\Madd__AUX_5_cy<8>_rt_367 ),
    .O(_AUX_5[8])
  );
  MUXCY   \Madd__AUX_5_cy<9>  (
    .CI(Madd__AUX_5_cy[8]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<9>_rt_369 ),
    .O(Madd__AUX_5_cy[9])
  );
  XORCY   \Madd__AUX_5_xor<9>  (
    .CI(Madd__AUX_5_cy[8]),
    .LI(\Madd__AUX_5_cy<9>_rt_369 ),
    .O(_AUX_5[9])
  );
  MUXCY   \Madd__AUX_5_cy<10>  (
    .CI(Madd__AUX_5_cy[9]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<10>_rt_341 ),
    .O(Madd__AUX_5_cy[10])
  );
  XORCY   \Madd__AUX_5_xor<10>  (
    .CI(Madd__AUX_5_cy[9]),
    .LI(\Madd__AUX_5_cy<10>_rt_341 ),
    .O(_AUX_5[10])
  );
  MUXCY   \Madd__AUX_5_cy<11>  (
    .CI(Madd__AUX_5_cy[10]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<11>_rt_343 ),
    .O(Madd__AUX_5_cy[11])
  );
  XORCY   \Madd__AUX_5_xor<11>  (
    .CI(Madd__AUX_5_cy[10]),
    .LI(\Madd__AUX_5_cy<11>_rt_343 ),
    .O(_AUX_5[11])
  );
  MUXCY   \Madd__AUX_5_cy<12>  (
    .CI(Madd__AUX_5_cy[11]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<12>_rt_345 ),
    .O(Madd__AUX_5_cy[12])
  );
  XORCY   \Madd__AUX_5_xor<12>  (
    .CI(Madd__AUX_5_cy[11]),
    .LI(\Madd__AUX_5_cy<12>_rt_345 ),
    .O(_AUX_5[12])
  );
  MUXCY   \Madd__AUX_5_cy<13>  (
    .CI(Madd__AUX_5_cy[12]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<13>_rt_347 ),
    .O(Madd__AUX_5_cy[13])
  );
  XORCY   \Madd__AUX_5_xor<13>  (
    .CI(Madd__AUX_5_cy[12]),
    .LI(\Madd__AUX_5_cy<13>_rt_347 ),
    .O(_AUX_5[13])
  );
  MUXCY   \Madd__AUX_5_cy<14>  (
    .CI(Madd__AUX_5_cy[13]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<14>_rt_349 ),
    .O(Madd__AUX_5_cy[14])
  );
  XORCY   \Madd__AUX_5_xor<14>  (
    .CI(Madd__AUX_5_cy[13]),
    .LI(\Madd__AUX_5_cy<14>_rt_349 ),
    .O(_AUX_5[14])
  );
  MUXCY   \Madd__AUX_5_cy<15>  (
    .CI(Madd__AUX_5_cy[14]),
    .DI(N0),
    .S(\Madd__AUX_5_cy<15>_rt_351 ),
    .O(Madd__AUX_5_cy[15])
  );
  XORCY   \Madd__AUX_5_xor<15>  (
    .CI(Madd__AUX_5_cy[14]),
    .LI(\Madd__AUX_5_cy<15>_rt_351 ),
    .O(_AUX_5[15])
  );
  XORCY   \Madd__AUX_5_xor<16>  (
    .CI(Madd__AUX_5_cy[15]),
    .LI(\Madd__AUX_5_xor<16>_rt_371 ),
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
    .I0(Opcode_5_IBUF_736),
    .I1(Opcode_6_IBUF_737),
    .I2(Opcode_7_IBUF_738),
    .O(C_and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Sh2311 (
    .I0(A_15_IBUF_38),
    .I1(B_3_IBUF_73),
    .O(\_old_C_14<10>0 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero41 (
    .I0(Opcode_2_IBUF_733),
    .I1(Opcode_0_IBUF_731),
    .I2(Opcode_4_IBUF_735),
    .I3(Opcode_3_IBUF_734),
    .O(N44)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<0>4  (
    .I0(_old_C_6[0]),
    .I1(C_cmp_eq0006),
    .I2(AUX_3_addsub0000[0]),
    .I3(N44),
    .O(\C<0>4_83 )
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
    .INIT ( 16'hAA80 ))
  \C<0>26  (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(\C<0>26_82 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \_old_C_14<0>11  (
    .I0(B_4_IBUF_74),
    .I1(_old_C_14[15]),
    .O(N56)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  C_cmp_eq002111 (
    .I0(Opcode_0_IBUF_731),
    .I1(Opcode_1_IBUF_732),
    .O(N123)
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \_old_C_14<15>1  (
    .I0(A_15_IBUF_38),
    .I1(B_4_IBUF_74),
    .I2(N56),
    .O(_old_C_14[15])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  C_or00001 (
    .I0(Opcode_2_IBUF_733),
    .I1(Opcode_0_IBUF_731),
    .I2(Opcode_4_IBUF_735),
    .I3(Opcode_3_IBUF_734),
    .O(C_or0000)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  C_cmp_eq00211 (
    .I0(Opcode_4_IBUF_735),
    .I1(Opcode_2_IBUF_733),
    .I2(N123),
    .I3(Opcode_3_IBUF_734),
    .O(C_cmp_eq0021)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  C_cmp_eq00131 (
    .I0(Opcode_3_IBUF_734),
    .I1(N123),
    .I2(Opcode_2_IBUF_733),
    .I3(Opcode_4_IBUF_735),
    .O(C_cmp_eq0013)
  );
  LUT4 #(
    .INIT ( 16'hACA8 ))
  \C<15>1116  (
    .I0(C_cmp_eq0013),
    .I1(A_15_IBUF_38),
    .I2(B_15_IBUF_70),
    .I3(C_cmp_eq0014),
    .O(\C<15>1116_137 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<15>1120  (
    .I0(B_15_IBUF_70),
    .I1(C_cmp_eq0014),
    .I2(C_cmp_eq0015),
    .O(\C<15>1120_138 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \C<15>1129  (
    .I0(\C<15>1120_138 ),
    .I1(A_15_IBUF_38),
    .I2(C_or0000),
    .I3(_old_C_1[15]),
    .O(\C<15>1129_139 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \C<15>1132  (
    .I0(\C<15>1116_137 ),
    .I1(\C<15>1129_139 ),
    .O(N38)
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<4>20  (
    .I0(A_4_IBUF_42),
    .I1(B_4_IBUF_74),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(\C<4>20_177 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<4>34  (
    .I0(\C<4>11 ),
    .I1(N57),
    .I2(Sh84),
    .I3(\C<4>20_177 ),
    .O(\C<4>34_178 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<4>48  (
    .I0(N62),
    .I1(Sh52_776),
    .I2(AUX_3_addsub0000[4]),
    .I3(N44),
    .O(\C<4>48_179 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<4>53  (
    .I0(_old_C_6[4]),
    .I1(C_cmp_eq0006),
    .I2(_old_C_1[4]),
    .I3(C_or0000),
    .O(\C<4>53_180 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<4>64  (
    .I0(\C<4>48_179 ),
    .I1(_AUX_5[4]),
    .I2(N39),
    .I3(\C<4>53_180 ),
    .O(\C<4>64_181 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<4>85  (
    .I0(\C<4>34_178 ),
    .I1(_old_C_14[4]),
    .I2(C_cmp_eq0021),
    .I3(\C<4>64_181 ),
    .O(\C<4>85_182 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<4>108  (
    .I0(C_and0000),
    .I1(_old_C_7[4]),
    .I2(C_cmp_eq0007),
    .I3(\C<4>85_182 ),
    .O(C_4_OBUF_230)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<1>43  (
    .I0(AUX_3_addsub0000[1]),
    .I1(N44),
    .I2(_old_C_6[1]),
    .I3(C_cmp_eq0006),
    .O(\C<1>43_147 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \C<1>68  (
    .I0(_AUX_5[1]),
    .I1(N39),
    .O(\C<1>68_149 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<5>20  (
    .I0(A_5_IBUF_43),
    .I1(B_5_IBUF_75),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(\C<5>20_187 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<5>34  (
    .I0(\C<5>11 ),
    .I1(N57),
    .I2(Sh85_812),
    .I3(\C<5>20_187 ),
    .O(\C<5>34_188 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<5>48  (
    .I0(N62),
    .I1(Sh53),
    .I2(AUX_3_addsub0000[5]),
    .I3(N44),
    .O(\C<5>48_189 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<5>53  (
    .I0(_old_C_6[5]),
    .I1(C_cmp_eq0006),
    .I2(_old_C_1[5]),
    .I3(C_or0000),
    .O(\C<5>53_190 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<5>64  (
    .I0(\C<5>48_189 ),
    .I1(_AUX_5[5]),
    .I2(N39),
    .I3(\C<5>53_190 ),
    .O(\C<5>64_191 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<5>85  (
    .I0(\C<5>34_188 ),
    .I1(_old_C_14[5]),
    .I2(C_cmp_eq0021),
    .I3(\C<5>64_191 ),
    .O(\C<5>85_192 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<5>108  (
    .I0(C_and0000),
    .I1(_old_C_7[5]),
    .I2(C_cmp_eq0007),
    .I3(\C<5>85_192 ),
    .O(C_5_OBUF_231)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \_old_C_8<15>1  (
    .I0(A_15_IBUF_38),
    .I1(B_15_IBUF_70),
    .O(_old_C_8[15])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  Sh2711 (
    .I0(B_2_IBUF_72),
    .I1(B_3_IBUF_73),
    .O(N26)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \C<6>111  (
    .I0(A_6_IBUF_44),
    .I1(B_6_IBUF_76),
    .O(N67)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \C<2>111  (
    .I0(A_2_IBUF_40),
    .I1(B_2_IBUF_72),
    .O(N65)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \C<13>111  (
    .I0(A_13_IBUF_36),
    .I1(B_13_IBUF_68),
    .O(N66)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  C_or000311 (
    .I0(Opcode_0_IBUF_731),
    .I1(Opcode_1_IBUF_732),
    .O(N23)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  C_or000331 (
    .I0(Opcode_4_IBUF_735),
    .I1(Opcode_3_IBUF_734),
    .I2(Opcode_2_IBUF_733),
    .O(N117)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  C_cmp_eq00071 (
    .I0(Opcode_1_IBUF_732),
    .I1(Opcode_0_IBUF_731),
    .I2(N53),
    .O(C_cmp_eq0007)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  C_cmp_eq00061 (
    .I0(N53),
    .I1(Opcode_1_IBUF_732),
    .I2(Opcode_0_IBUF_731),
    .O(C_cmp_eq0006)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  C_cmp_eq000411 (
    .I0(Opcode_2_IBUF_733),
    .I1(Opcode_3_IBUF_734),
    .I2(Opcode_4_IBUF_735),
    .O(N53)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh911 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh11_740),
    .I3(Sh79),
    .O(Sh91)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh901 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh10_739),
    .I3(Sh78),
    .O(Sh90)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh891 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh73_802),
    .I3(Sh77),
    .O(Sh89)
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
    .I2(Sh39_764),
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
    .INIT ( 16'hCDC8 ))
  Sh141 (
    .I0(B_1_IBUF_71),
    .I1(A_15_IBUF_38),
    .I2(B_0_IBUF_64),
    .I3(A_14_IBUF_37),
    .O(Sh14)
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \_old_C_14<14>  (
    .I0(N129),
    .I1(B_4_IBUF_74),
    .I2(N56),
    .O(_old_C_14[14])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  old_C_12_or00004 (
    .I0(B_14_IBUF_69),
    .I1(B_15_IBUF_70),
    .I2(B_4_IBUF_74),
    .I3(B_5_IBUF_75),
    .O(old_C_12_or00004_977)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  old_C_12_or00009 (
    .I0(B_6_IBUF_76),
    .I1(B_7_IBUF_77),
    .I2(B_8_IBUF_78),
    .I3(B_9_IBUF_79),
    .O(old_C_12_or00009_978)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  old_C_12_or000014 (
    .I0(B_10_IBUF_65),
    .I1(B_11_IBUF_66),
    .I2(B_12_IBUF_67),
    .I3(B_13_IBUF_68),
    .O(old_C_12_or000014_976)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  old_C_12_or000023 (
    .I0(old_C_12_or00004_977),
    .I1(old_C_12_or00009_978),
    .I2(old_C_12_or000014_976),
    .O(old_C_12_or0000)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<3>4  (
    .I0(AUX_3_addsub0000[3]),
    .I1(N44),
    .I2(_old_C_6[3]),
    .I3(C_cmp_eq0006),
    .O(\C<3>4_166 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<3>9  (
    .I0(_old_C_1[3]),
    .I1(C_or0000),
    .I2(B_3_IBUF_73),
    .I3(C_cmp_eq0013),
    .O(\C<3>9_171 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<3>71  (
    .I0(\C<3>4_166 ),
    .I1(\C<3>9_171 ),
    .I2(\C<3>34_165 ),
    .I3(\C<3>52 ),
    .O(\C<3>71_170 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<2>10  (
    .I0(_old_C_1[2]),
    .I1(C_or0000),
    .I2(\C<2>6_161 ),
    .O(\C<2>10_153 )
  );
  LUT4 #(
    .INIT ( 16'h3222 ))
  \C<2>22  (
    .I0(C_cmp_eq0015),
    .I1(A_2_IBUF_40),
    .I2(C_cmp_eq0014),
    .I3(B_2_IBUF_72),
    .O(\C<2>22_156 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<2>38  (
    .I0(AUX_3_addsub0000[2]),
    .I1(N44),
    .I2(_old_C_6[2]),
    .I3(C_cmp_eq0006),
    .O(\C<2>38_157 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \C<2>44  (
    .I0(C_cmp_eq0014),
    .I1(B_2_IBUF_72),
    .I2(C_cmp_eq0013),
    .O(\C<2>44_158 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<2>57  (
    .I0(A_2_IBUF_40),
    .I1(\C<2>44_158 ),
    .I2(N62),
    .I3(\C<2>51_159 ),
    .O(\C<2>57_160 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<2>77  (
    .I0(\C<2>10_153 ),
    .I1(\C<2>22_156 ),
    .I2(\C<2>38_157 ),
    .I3(\C<2>57_160 ),
    .O(\C<2>77_162 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<6>10  (
    .I0(_old_C_1[6]),
    .I1(C_or0000),
    .I2(\C<6>6_199 ),
    .O(\C<6>10_194 )
  );
  LUT4 #(
    .INIT ( 16'h3222 ))
  \C<6>22  (
    .I0(C_cmp_eq0015),
    .I1(A_6_IBUF_44),
    .I2(C_cmp_eq0014),
    .I3(B_6_IBUF_76),
    .O(\C<6>22_196 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<6>37  (
    .I0(\C<6>10_194 ),
    .I1(N57),
    .I2(Sh86_813),
    .I3(\C<6>22_196 ),
    .O(\C<6>37_197 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<6>52  (
    .I0(AUX_3_addsub0000[6]),
    .I1(N44),
    .I2(_old_C_6[6]),
    .I3(C_cmp_eq0006),
    .O(\C<6>52_198 )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \C<6>63  (
    .I0(A_6_IBUF_44),
    .I1(C_cmp_eq0014),
    .I2(B_6_IBUF_76),
    .I3(C_cmp_eq0013),
    .O(\C<6>63_200 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<6>65  (
    .I0(N62),
    .I1(Sh54),
    .I2(\C<6>63_200 ),
    .O(\C<6>65_201 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<6>83  (
    .I0(\C<6>52_198 ),
    .I1(_AUX_5[6]),
    .I2(N39),
    .I3(\C<6>65_201 ),
    .O(\C<6>83_202 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<6>108  (
    .I0(\C<6>37_197 ),
    .I1(_old_C_14[6]),
    .I2(C_cmp_eq0021),
    .I3(\C<6>83_202 ),
    .O(\C<6>108_195 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<6>131  (
    .I0(C_and0000),
    .I1(_old_C_7[6]),
    .I2(C_cmp_eq0007),
    .I3(\C<6>108_195 ),
    .O(C_6_OBUF_232)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<7>60  (
    .I0(N62),
    .I1(Sh55),
    .I2(AUX_3_addsub0000[7]),
    .I3(N44),
    .O(\C<7>60_205 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<7>65  (
    .I0(_old_C_6[7]),
    .I1(C_cmp_eq0006),
    .I2(_old_C_1[7]),
    .I3(C_or0000),
    .O(\C<7>65_206 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<7>76  (
    .I0(\C<7>60_205 ),
    .I1(N57),
    .I2(Sh87),
    .I3(\C<7>65_206 ),
    .O(\C<7>76_207 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<7>108  (
    .I0(C_and0000),
    .I1(_old_C_7[7]),
    .I2(C_cmp_eq0007),
    .I3(\C<7>85_208 ),
    .O(C_7_OBUF_233)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<8>48  (
    .I0(N57),
    .I1(Sh88),
    .I2(AUX_3_addsub0000[8]),
    .I3(N44),
    .O(\C<8>48_211 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<8>53  (
    .I0(_old_C_6[8]),
    .I1(C_cmp_eq0006),
    .I2(_old_C_1[8]),
    .I3(C_or0000),
    .O(\C<8>53_212 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<8>64  (
    .I0(\C<8>48_211 ),
    .I1(N62),
    .I2(Sh56_780),
    .I3(\C<8>53_212 ),
    .O(\C<8>64_213 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<8>85  (
    .I0(\C<8>34_210 ),
    .I1(_AUX_5[8]),
    .I2(N39),
    .I3(\C<8>64_213 ),
    .O(\C<8>85_214 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<8>108  (
    .I0(C_and0000),
    .I1(_old_C_7[8]),
    .I2(C_cmp_eq0007),
    .I3(\C<8>85_214 ),
    .O(C_8_OBUF_234)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<9>53  (
    .I0(N57),
    .I1(Sh89),
    .I2(AUX_3_addsub0000[9]),
    .I3(N44),
    .O(\C<9>53_217 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<9>58  (
    .I0(_old_C_6[9]),
    .I1(C_cmp_eq0006),
    .I2(_old_C_1[9]),
    .I3(C_or0000),
    .O(\C<9>58_218 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<9>107  (
    .I0(C_and0000),
    .I1(_old_C_7[9]),
    .I2(C_cmp_eq0007),
    .I3(\C<9>84_219 ),
    .O(C_9_OBUF_235)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<10>4  (
    .I0(N57),
    .I1(Sh90),
    .I2(B_10_IBUF_65),
    .I3(C_cmp_eq0013),
    .O(\C<10>4_93 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<10>35  (
    .I0(\C<10>4_93 ),
    .I1(N62),
    .I2(Sh58_782),
    .I3(\C<10>18 ),
    .O(\C<10>35_92 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<10>49  (
    .I0(AUX_3_addsub0000[10]),
    .I1(N44),
    .I2(_old_C_6[10]),
    .I3(C_cmp_eq0006),
    .O(\C<10>49_94 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<10>53  (
    .I0(B_10_IBUF_65),
    .I1(C_cmp_eq0014),
    .I2(C_cmp_eq0015),
    .O(\C<10>53_95 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \C<10>62  (
    .I0(\C<10>53_95 ),
    .I1(A_10_IBUF_33),
    .I2(C_or0000),
    .I3(_old_C_1[10]),
    .O(\C<10>62_96 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<10>116  (
    .I0(C_and0000),
    .I1(_old_C_7[10]),
    .I2(C_cmp_eq0007),
    .I3(\C<10>93_97 ),
    .O(C_10_OBUF_221)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<11>18  (
    .I0(\C<11>6_103 ),
    .I1(_old_C_1[11]),
    .I2(C_or0000),
    .I3(\C<11>8_106 ),
    .O(\C<11>18_99 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<11>30  (
    .I0(A_11_IBUF_34),
    .I1(B_11_IBUF_66),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(\C<11>30_100 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<11>32  (
    .I0(N57),
    .I1(Sh91),
    .I2(\C<11>30_100 ),
    .O(\C<11>32_101 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<11>50  (
    .I0(\C<11>18_99 ),
    .I1(N62),
    .I2(Sh59_783),
    .I3(\C<11>32_101 ),
    .O(\C<11>50_102 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<11>63  (
    .I0(AUX_3_addsub0000[11]),
    .I1(N44),
    .I2(_old_C_6[11]),
    .I3(C_cmp_eq0006),
    .O(\C<11>63_104 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<11>66  (
    .I0(_old_C_14[11]),
    .I1(C_cmp_eq0021),
    .I2(\C<11>63_104 ),
    .O(\C<11>66_105 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<11>84  (
    .I0(\C<11>50_102 ),
    .I1(_AUX_5[11]),
    .I2(N39),
    .I3(\C<11>66_105 ),
    .O(\C<11>84_107 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<11>107  (
    .I0(C_and0000),
    .I1(_old_C_7[11]),
    .I2(C_cmp_eq0007),
    .I3(\C<11>84_107 ),
    .O(C_11_OBUF_222)
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  Sh872 (
    .I0(N124),
    .I1(Sh79),
    .I2(B_2_IBUF_72),
    .I3(B_3_IBUF_73),
    .O(Sh87)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh541 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh38_763),
    .I3(Sh34),
    .O(Sh54)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \C<12>8  (
    .I0(B_12_IBUF_67),
    .I1(C_cmp_eq0013),
    .O(\C<12>8_117 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<12>23  (
    .I0(\C<12>7_114 ),
    .I1(N57),
    .I2(\C<12>17_109 ),
    .I3(\C<12>8_117 ),
    .O(\C<12>23_110 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<12>37  (
    .I0(A_12_IBUF_35),
    .I1(B_12_IBUF_67),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(\C<12>37_111 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<12>39  (
    .I0(_old_C_1[12]),
    .I1(C_or0000),
    .I2(\C<12>37_111 ),
    .O(\C<12>39_112 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<12>58  (
    .I0(\C<12>23_110 ),
    .I1(_old_C_14[12]),
    .I2(C_cmp_eq0021),
    .I3(\C<12>39_112 ),
    .O(\C<12>58_113 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<12>71  (
    .I0(_old_C_6[12]),
    .I1(C_cmp_eq0006),
    .I2(AUX_3_addsub0000[12]),
    .I3(N44),
    .O(\C<12>71_115 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \C<12>74  (
    .I0(N62),
    .I1(Sh60),
    .I2(\C<12>71_115 ),
    .O(\C<12>74_116 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<12>92  (
    .I0(\C<12>58_113 ),
    .I1(_AUX_5[12]),
    .I2(N39),
    .I3(\C<12>74_116 ),
    .O(\C<12>92_118 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<12>115  (
    .I0(C_and0000),
    .I1(_old_C_7[12]),
    .I2(C_cmp_eq0007),
    .I3(\C<12>92_118 ),
    .O(C_12_OBUF_223)
  );
  LUT4 #(
    .INIT ( 16'hFF54 ))
  \_old_C_14<8>1  (
    .I0(B_4_IBUF_74),
    .I1(\_old_C_14<10>0 ),
    .I2(Sh88),
    .I3(N56),
    .O(_old_C_14[8])
  );
  LUT4 #(
    .INIT ( 16'hFF54 ))
  \_old_C_14<7>1  (
    .I0(B_4_IBUF_74),
    .I1(\_old_C_14<10>0 ),
    .I2(N124),
    .I3(N56),
    .O(_old_C_14[7])
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh881 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh72_801),
    .I3(Sh12_741),
    .O(Sh88)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh8711 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh7_800),
    .I3(Sh11_740),
    .O(N124)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh531 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh37_762),
    .I3(Sh33),
    .O(Sh53)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh521 (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh36_761),
    .I3(Sh32),
    .O(Sh52_776)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \_old_C_14<13>  (
    .I0(Sh13),
    .I1(N134),
    .I2(N133),
    .I3(N56),
    .O(_old_C_14[13])
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \_old_C_14<12>  (
    .I0(Sh12_741),
    .I1(N134),
    .I2(N133),
    .I3(N56),
    .O(_old_C_14[12])
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \_old_C_14<11>  (
    .I0(Sh11_740),
    .I1(N134),
    .I2(N133),
    .I3(N56),
    .O(_old_C_14[11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh7_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_7_IBUF_45),
    .I2(A_8_IBUF_46),
    .O(N144)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh7_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_9_IBUF_47),
    .I2(A_10_IBUF_33),
    .O(N145)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh7 (
    .I0(B_1_IBUF_71),
    .I1(N144),
    .I2(N145),
    .O(Sh7_800)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \_old_C_14<10>15  (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh10_739),
    .I3(Sh14),
    .O(\_old_C_14<10>15_908 )
  );
  LUT4 #(
    .INIT ( 16'hFF54 ))
  \_old_C_14<10>38  (
    .I0(B_4_IBUF_74),
    .I1(\_old_C_14<10>15_908 ),
    .I2(\_old_C_14<10>0 ),
    .I3(N56),
    .O(_old_C_14[10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \C<13>22  (
    .I0(_old_C_1[13]),
    .I1(C_or0000),
    .O(\C<13>22_122 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<13>36  (
    .I0(\C<13>16_121 ),
    .I1(N62),
    .I2(Sh61_789),
    .I3(\C<13>22_122 ),
    .O(\C<13>36_123 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<13>50  (
    .I0(_old_C_6[13]),
    .I1(C_cmp_eq0006),
    .I2(AUX_3_addsub0000[13]),
    .I3(N44),
    .O(\C<13>50_124 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<13>94  (
    .I0(\C<13>50_124 ),
    .I1(_old_C_14[13]),
    .I2(C_cmp_eq0021),
    .I3(\C<13>73_125 ),
    .O(\C<13>94_126 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<13>118  (
    .I0(\C<13>36_123 ),
    .I1(_AUX_5[13]),
    .I2(N39),
    .I3(\C<13>94_126 ),
    .O(\C<13>118_120 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<13>141  (
    .I0(C_and0000),
    .I1(_old_C_7[13]),
    .I2(C_cmp_eq0007),
    .I3(\C<13>118_120 ),
    .O(C_13_OBUF_224)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \C<14>36  (
    .I0(AUX_3_addsub0000[14]),
    .I1(N44),
    .O(\C<14>36_131 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<14>53  (
    .I0(\C<14>27_130 ),
    .I1(N62),
    .I2(Sh62_792),
    .I3(\C<14>36_131 ),
    .O(\C<14>53_132 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<14>75  (
    .I0(A_14_IBUF_37),
    .I1(B_14_IBUF_69),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(\C<14>75_133 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<14>104  (
    .I0(\C<14>53_132 ),
    .I1(_AUX_5[14]),
    .I2(N39),
    .I3(\C<14>81_134 ),
    .O(\C<14>104_129 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<14>127  (
    .I0(C_and0000),
    .I1(_old_C_7[14]),
    .I2(C_cmp_eq0007),
    .I3(\C<14>104_129 ),
    .O(C_14_OBUF_225)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<15>4  (
    .I0(_old_C_8[15]),
    .I1(C_or0002),
    .I2(_old_C_14[15]),
    .I3(C_cmp_eq0021),
    .O(\C<15>4_142 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<15>21  (
    .I0(\C<15>4_142 ),
    .I1(AUX_3_addsub0000[15]),
    .I2(N44),
    .I3(\C<15>10_136 ),
    .O(\C<15>21_140 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<15>43  (
    .I0(\C<15>21_140 ),
    .I1(Sh63),
    .I2(N62),
    .I3(\C<15>28_141 ),
    .O(\C<15>43_143 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<15>67  (
    .I0(N38),
    .I1(_AUX_5[15]),
    .I2(N39),
    .I3(\C<15>43_143 ),
    .O(\C<15>67_144 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<15>90  (
    .I0(C_and0000),
    .I1(_old_C_7[15]),
    .I2(C_cmp_eq0007),
    .I3(\C<15>67_144 ),
    .O(C_15_OBUF_226)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  Zero731 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .O(N60)
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \_old_C_14<0>1  (
    .I0(Sh16),
    .I1(B_4_IBUF_74),
    .I2(N56),
    .O(_old_C_14[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh131 (
    .I0(B_1_IBUF_71),
    .I1(N24),
    .I2(A_15_IBUF_38),
    .O(Sh13)
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
    .I0(N59),
    .I1(Sh78),
    .I2(B_3_IBUF_73),
    .I3(B_2_IBUF_72),
    .O(Sh82)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  Sh811 (
    .I0(N58),
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
    .I3(Sh72_801),
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
    .O(N147)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh11 (
    .I0(B_1_IBUF_71),
    .I1(N147),
    .I2(N24),
    .O(Sh11_740)
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \_old_C_14<3>_SW0  (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(A_15_IBUF_38),
    .O(N161)
  );
  LUT4 #(
    .INIT ( 16'hFF23 ))
  \_old_C_14<3>  (
    .I0(N54),
    .I1(B_4_IBUF_74),
    .I2(N161),
    .I3(N56),
    .O(_old_C_14[3])
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \_old_C_14<2>_SW0  (
    .I0(Sh14),
    .I1(B_3_IBUF_73),
    .I2(B_2_IBUF_72),
    .O(N163)
  );
  LUT4 #(
    .INIT ( 16'hFF23 ))
  \_old_C_14<2>  (
    .I0(N59),
    .I1(B_4_IBUF_74),
    .I2(N163),
    .I3(N56),
    .O(_old_C_14[2])
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \_old_C_14<1>_SW0  (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(Sh13),
    .O(N165)
  );
  LUT4 #(
    .INIT ( 16'hFF23 ))
  \_old_C_14<1>  (
    .I0(N58),
    .I1(B_4_IBUF_74),
    .I2(N165),
    .I3(N56),
    .O(_old_C_14[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh73 (
    .I0(B_1_IBUF_71),
    .I1(N145),
    .I2(N147),
    .O(Sh73_802)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh72_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_8_IBUF_46),
    .I2(A_9_IBUF_47),
    .O(N170)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh72_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_10_IBUF_33),
    .I2(A_11_IBUF_34),
    .O(N171)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh72 (
    .I0(B_1_IBUF_71),
    .I1(N170),
    .I2(N171),
    .O(Sh72_801)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh43_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_9_IBUF_47),
    .I2(A_8_IBUF_46),
    .O(N180)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh42_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_8_IBUF_46),
    .I2(A_7_IBUF_45),
    .O(N183)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh41_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_7_IBUF_45),
    .I2(A_6_IBUF_44),
    .O(N186)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh41 (
    .I0(B_1_IBUF_71),
    .I1(N180),
    .I2(N186),
    .O(Sh41_766)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh40_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_6_IBUF_44),
    .I2(A_5_IBUF_43),
    .O(N189)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh40 (
    .I0(B_1_IBUF_71),
    .I1(N183),
    .I2(N189),
    .O(Sh40_765)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh39_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_5_IBUF_43),
    .I2(A_4_IBUF_42),
    .O(N192)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh39 (
    .I0(B_1_IBUF_71),
    .I1(N186),
    .I2(N192),
    .O(Sh39_764)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh38_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_4_IBUF_42),
    .I2(A_3_IBUF_41),
    .O(N195)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh38 (
    .I0(B_1_IBUF_71),
    .I1(N189),
    .I2(N195),
    .O(Sh38_763)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh37_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_3_IBUF_41),
    .I2(A_2_IBUF_40),
    .O(N198)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh37 (
    .I0(B_1_IBUF_71),
    .I1(N192),
    .I2(N198),
    .O(Sh37_762)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh36_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_2_IBUF_40),
    .I2(A_1_IBUF_39),
    .O(N201)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh36 (
    .I0(B_1_IBUF_71),
    .I1(N195),
    .I2(N201),
    .O(Sh36_761)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh12_SW0 (
    .I0(B_0_IBUF_64),
    .I1(A_12_IBUF_35),
    .I2(A_13_IBUF_36),
    .O(N206)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh12_SW1 (
    .I0(B_0_IBUF_64),
    .I1(A_14_IBUF_37),
    .I2(A_15_IBUF_38),
    .O(N207)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh12 (
    .I0(B_1_IBUF_71),
    .I1(N206),
    .I2(N207),
    .O(Sh12_741)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh10 (
    .I0(B_1_IBUF_71),
    .I1(N171),
    .I2(N206),
    .O(Sh10_739)
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \_old_C_14<9>_SW0  (
    .I0(B_2_IBUF_72),
    .I1(Sh73_802),
    .I2(Sh13),
    .I3(B_4_IBUF_74),
    .O(N212)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \_old_C_14<9>_SW1  (
    .I0(B_4_IBUF_74),
    .I1(A_15_IBUF_38),
    .O(N213)
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \_old_C_14<9>  (
    .I0(B_3_IBUF_73),
    .I1(N212),
    .I2(N213),
    .I3(N56),
    .O(_old_C_14[9])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \_old_C_14<4>35  (
    .I0(N56),
    .I1(\_old_C_14<4>30 ),
    .O(_old_C_14[4])
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \_old_C_14<6>_SW0  (
    .I0(B_2_IBUF_72),
    .I1(Sh6),
    .I2(Sh10_739),
    .I3(B_4_IBUF_74),
    .O(N215)
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \_old_C_14<6>_SW1  (
    .I0(B_2_IBUF_72),
    .I1(Sh14),
    .I2(A_15_IBUF_38),
    .I3(B_4_IBUF_74),
    .O(N216)
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \_old_C_14<6>  (
    .I0(B_3_IBUF_73),
    .I1(N215),
    .I2(N216),
    .I3(N56),
    .O(_old_C_14[6])
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \_old_C_14<5>_SW0  (
    .I0(B_2_IBUF_72),
    .I1(Sh5),
    .I2(Sh73_802),
    .I3(B_4_IBUF_74),
    .O(N218)
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \_old_C_14<5>_SW1  (
    .I0(B_2_IBUF_72),
    .I1(Sh13),
    .I2(A_15_IBUF_38),
    .I3(B_4_IBUF_74),
    .O(N219)
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \_old_C_14<5>  (
    .I0(B_3_IBUF_73),
    .I1(N218),
    .I2(N219),
    .I3(N56),
    .O(_old_C_14[5])
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh16113 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_5_IBUF_43),
    .I3(A_7_IBUF_45),
    .O(Sh16113_745)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh16128 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_4_IBUF_42),
    .I3(A_6_IBUF_44),
    .O(Sh16128_746)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh16160 (
    .I0(B_3_IBUF_73),
    .I1(Sh16113_745),
    .I2(Sh16128_746),
    .I3(Sh12_741),
    .O(N25)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh16146 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_1_IBUF_39),
    .I3(A_3_IBUF_41),
    .O(Sh16146_747)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh1629 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_0_IBUF_32),
    .I3(A_2_IBUF_40),
    .O(Sh1629_748)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh83119 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_4_IBUF_42),
    .I3(A_6_IBUF_44),
    .O(Sh83119_809)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh83134 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_3_IBUF_41),
    .I3(A_5_IBUF_43),
    .O(Sh83134_810)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh18119 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_3_IBUF_41),
    .I3(A_5_IBUF_43),
    .O(Sh18119_751)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh18134 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_2_IBUF_40),
    .I3(A_4_IBUF_42),
    .O(Sh18134_752)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh17119 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_2_IBUF_40),
    .I3(A_4_IBUF_42),
    .O(Sh17119_749)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh17134 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_1_IBUF_39),
    .I3(A_3_IBUF_41),
    .O(Sh17134_750)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh6326 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_14_IBUF_37),
    .I3(A_12_IBUF_35),
    .O(Sh6326_796)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh6341 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_15_IBUF_38),
    .I3(A_13_IBUF_36),
    .O(Sh6341_797)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh6226 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_13_IBUF_36),
    .I3(A_11_IBUF_34),
    .O(Sh6226_793)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh6241 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_14_IBUF_37),
    .I3(A_12_IBUF_35),
    .O(Sh6241_794)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh6126 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_12_IBUF_35),
    .I3(A_10_IBUF_33),
    .O(Sh6126_790)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh6141 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_13_IBUF_36),
    .I3(A_11_IBUF_34),
    .O(Sh6141_791)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh6026 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_11_IBUF_34),
    .I3(A_9_IBUF_47),
    .O(Sh6026_787)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh6041 (
    .I0(B_0_IBUF_64),
    .I1(B_1_IBUF_71),
    .I2(A_12_IBUF_35),
    .I3(A_10_IBUF_33),
    .O(Sh6041_788)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero4 (
    .I0(A_2_IBUF_40),
    .I1(A_3_IBUF_41),
    .I2(A_4_IBUF_42),
    .I3(A_5_IBUF_43),
    .O(Zero4_854)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero9 (
    .I0(A_6_IBUF_44),
    .I1(A_7_IBUF_45),
    .I2(A_8_IBUF_46),
    .I3(A_9_IBUF_47),
    .O(Zero9_882)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero21 (
    .I0(A_0_IBUF_32),
    .I1(A_10_IBUF_33),
    .I2(A_11_IBUF_34),
    .I3(A_12_IBUF_35),
    .O(Zero21_845)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero26 (
    .I0(A_13_IBUF_36),
    .I1(A_14_IBUF_37),
    .I2(A_15_IBUF_38),
    .I3(A_1_IBUF_39),
    .O(Zero26_848)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Zero27 (
    .I0(Zero21_845),
    .I1(Zero26_848),
    .O(Zero27_849)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero47 (
    .I0(C_cmp_eq0015),
    .I1(Zero4_854),
    .I2(Zero9_882),
    .I3(Zero27_849),
    .O(Zero47_858)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero68 (
    .I0(B_14_IBUF_69),
    .I1(B_0_IBUF_64),
    .I2(A_14_IBUF_37),
    .I3(A_0_IBUF_32),
    .O(Zero68_869)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero81 (
    .I0(B_3_IBUF_73),
    .I1(B_4_IBUF_74),
    .I2(A_3_IBUF_41),
    .I3(A_4_IBUF_42),
    .O(Zero81_877)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Zero82 (
    .I0(Zero68_869),
    .I1(Zero81_877),
    .O(Zero82_878)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  Zero112 (
    .I0(N65),
    .I1(N66),
    .I2(N67),
    .I3(_old_C_8[15]),
    .O(Zero112_824)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero125 (
    .I0(B_1_IBUF_71),
    .I1(B_5_IBUF_75),
    .I2(A_1_IBUF_39),
    .I3(A_5_IBUF_43),
    .O(Zero125_831)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero138 (
    .I0(B_10_IBUF_65),
    .I1(B_11_IBUF_66),
    .I2(A_10_IBUF_33),
    .I3(A_11_IBUF_34),
    .O(Zero138_836)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero162 (
    .I0(B_8_IBUF_78),
    .I1(B_9_IBUF_79),
    .I2(A_8_IBUF_46),
    .I3(A_9_IBUF_47),
    .O(Zero162_842)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Zero175 (
    .I0(B_12_IBUF_67),
    .I1(B_7_IBUF_77),
    .I2(A_12_IBUF_35),
    .I3(A_7_IBUF_45),
    .O(Zero175_843)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero189 (
    .I0(Zero125_831),
    .I1(Zero138_836),
    .I2(Zero162_842),
    .I3(Zero175_843),
    .O(Zero189_844)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero216 (
    .I0(C_or0002),
    .I1(Zero82_878),
    .I2(Zero112_824),
    .I3(Zero189_844),
    .O(Zero216_846)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero316 (
    .I0(\Madd__old_C_1_lut[4] ),
    .I1(\Msub__old_C_6_lut[14] ),
    .I2(\Madd__old_C_1_lut[0] ),
    .I3(\Madd__old_C_1_lut[1] ),
    .O(Zero316_851)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero334 (
    .I0(C_cmp_eq0014),
    .I1(Zero259_847),
    .I2(Zero300_850),
    .I3(Zero316_851),
    .O(Zero334_852)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero359 (
    .I0(\Madd__old_C_1_lut[8] ),
    .I1(\Msub__old_C_6_lut[9] ),
    .I2(\Madd__old_C_1_lut[5] ),
    .I3(\Madd__old_C_1_lut[7] ),
    .O(Zero359_853)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Zero411 (
    .I0(Zero359_853),
    .I1(Zero400_855),
    .O(Zero411_856)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero479 (
    .I0(A_0_IBUF_32),
    .I1(A_10_IBUF_33),
    .I2(A_11_IBUF_34),
    .I3(A_12_IBUF_35),
    .O(Zero479_859)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero492 (
    .I0(A_13_IBUF_36),
    .I1(A_14_IBUF_37),
    .I2(A_1_IBUF_39),
    .I3(A_2_IBUF_40),
    .O(Zero492_860)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero528 (
    .I0(A_3_IBUF_41),
    .I1(A_4_IBUF_42),
    .I2(A_5_IBUF_43),
    .I3(A_6_IBUF_44),
    .O(Zero528_861)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero541 (
    .I0(A_7_IBUF_45),
    .I1(A_8_IBUF_46),
    .I2(A_9_IBUF_47),
    .I3(B_10_IBUF_65),
    .O(Zero541_862)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero565 (
    .I0(B_11_IBUF_66),
    .I1(B_12_IBUF_67),
    .I2(B_13_IBUF_68),
    .I3(B_14_IBUF_69),
    .O(Zero565_863)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero578 (
    .I0(B_4_IBUF_74),
    .I1(B_5_IBUF_75),
    .I2(B_6_IBUF_76),
    .I3(B_7_IBUF_77),
    .O(Zero578_864)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Zero592 (
    .I0(Zero528_861),
    .I1(Zero541_862),
    .I2(Zero565_863),
    .I3(Zero578_864),
    .O(Zero592_865)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero617 (
    .I0(B_8_IBUF_78),
    .I1(B_9_IBUF_79),
    .I2(A_15_IBUF_38),
    .I3(B_15_IBUF_70),
    .O(Zero617_866)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Zero683 (
    .I0(N44),
    .I1(AUX_3_addsub0000[0]),
    .I2(AUX_3_addsub0000[1]),
    .O(Zero683_870)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero699 (
    .I0(AUX_3_addsub0000[8]),
    .I1(Zero683_870),
    .I2(AUX_3_addsub0000[10]),
    .I3(AUX_3_addsub0000[9]),
    .O(Zero699_871)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  Zero789 (
    .I0(Zero665_868),
    .I1(Zero699_871),
    .I2(Zero726_872),
    .I3(Zero767),
    .O(Zero789_875)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Zero807 (
    .I0(C_or0000),
    .I1(_old_C_1[0]),
    .I2(_old_C_1[1]),
    .O(Zero807_876)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero823 (
    .I0(_old_C_1[8]),
    .I1(Zero807_876),
    .I2(_old_C_1[10]),
    .I3(_old_C_1[9]),
    .O(Zero823_879)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  Zero979 (
    .I0(Sh52_776),
    .I1(Sh53),
    .O(Zero979_886)
  );
  LUT4 #(
    .INIT ( 16'h0F01 ))
  Zero1006 (
    .I0(Sh35),
    .I1(Sh33),
    .I2(Sh54),
    .I3(N26),
    .O(Zero1006_820)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  Zero1081 (
    .I0(Zero789_875),
    .I1(Zero955_884),
    .I2(Zero1051_821),
    .I3(Zero896_881),
    .O(Zero1081_822)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero1102 (
    .I0(Sh16),
    .I1(Sh84),
    .I2(Sh85_812),
    .I3(Sh86_813),
    .O(Zero1102_823)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero1286 (
    .I0(_AUX_5[0]),
    .I1(N39),
    .I2(_AUX_5[1]),
    .I3(_AUX_5[8]),
    .O(Zero1286_832)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  Zero1299 (
    .I0(_AUX_5[7]),
    .I1(_AUX_5[6]),
    .O(Zero1299_833)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  Zero1309 (
    .I0(_AUX_5[16]),
    .I1(Zero1286_832),
    .I2(Zero1299_833),
    .I3(_AUX_5[15]),
    .O(Zero1309_834)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Zero1397 (
    .I0(C_cmp_eq0021),
    .I1(_old_C_14[15]),
    .I2(_old_C_14[14]),
    .O(Zero1397_837)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero1413 (
    .I0(_old_C_14[11]),
    .I1(Zero1397_837),
    .I2(_old_C_14[12]),
    .I3(_old_C_14[13]),
    .O(Zero1413_838)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero1438 (
    .I0(_old_C_14[10]),
    .I1(Zero1413_838),
    .I2(_old_C_14[1]),
    .I3(_old_C_14[2]),
    .O(Zero1438_839)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  Zero1508 (
    .I0(Zero1309_834),
    .I1(Zero1360_835),
    .I2(Zero1438_839),
    .I3(Zero1478_840),
    .O(Zero1508_841)
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  Flag10 (
    .I0(C_cmp_eq0006),
    .I1(_old_C_6[15]),
    .I2(C_cmp_eq0007),
    .I3(_old_C_7[15]),
    .O(Flag10_284)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  Flag21 (
    .I0(C_or0000),
    .I1(B_15_IBUF_70),
    .I2(_old_C_1[15]),
    .O(Flag21_285)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  Flag53 (
    .I0(_old_C_6[15]),
    .I1(C_cmp_eq0006),
    .I2(_old_C_7[15]),
    .I3(C_cmp_eq0007),
    .O(Flag53_286)
  );
  IBUF   CarryIn_IBUF (
    .I(CarryIn),
    .O(CarryIn_IBUF_250)
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
    .O(Opcode_7_IBUF_738)
  );
  IBUF   Opcode_6_IBUF (
    .I(Opcode[6]),
    .O(Opcode_6_IBUF_737)
  );
  IBUF   Opcode_5_IBUF (
    .I(Opcode[5]),
    .O(Opcode_5_IBUF_736)
  );
  IBUF   Opcode_4_IBUF (
    .I(Opcode[4]),
    .O(Opcode_4_IBUF_735)
  );
  IBUF   Opcode_3_IBUF (
    .I(Opcode[3]),
    .O(Opcode_3_IBUF_734)
  );
  IBUF   Opcode_2_IBUF (
    .I(Opcode[2]),
    .O(Opcode_2_IBUF_733)
  );
  IBUF   Opcode_1_IBUF (
    .I(Opcode[1]),
    .O(Opcode_1_IBUF_732)
  );
  IBUF   Opcode_0_IBUF (
    .I(Opcode[0]),
    .O(Opcode_0_IBUF_731)
  );
  OBUF   Flag_OBUF (
    .I(Flag_OBUF_287),
    .O(Flag)
  );
  OBUF   Carry_OBUF (
    .I(Carry_OBUF_251),
    .O(Carry)
  );
  OBUF   Low_OBUF (
    .I(Low_OBUF_290),
    .O(Low)
  );
  OBUF   Negative_OBUF (
    .I(Negative_OBUF_721),
    .O(Negative)
  );
  OBUF   Zero_OBUF (
    .I(Zero_OBUF_887),
    .O(Zero)
  );
  OBUF   C_15_OBUF (
    .I(C_15_OBUF_226),
    .O(C[15])
  );
  OBUF   C_14_OBUF (
    .I(C_14_OBUF_225),
    .O(C[14])
  );
  OBUF   C_13_OBUF (
    .I(C_13_OBUF_224),
    .O(C[13])
  );
  OBUF   C_12_OBUF (
    .I(C_12_OBUF_223),
    .O(C[12])
  );
  OBUF   C_11_OBUF (
    .I(C_11_OBUF_222),
    .O(C[11])
  );
  OBUF   C_10_OBUF (
    .I(C_10_OBUF_221),
    .O(C[10])
  );
  OBUF   C_9_OBUF (
    .I(C_9_OBUF_235),
    .O(C[9])
  );
  OBUF   C_8_OBUF (
    .I(C_8_OBUF_234),
    .O(C[8])
  );
  OBUF   C_7_OBUF (
    .I(C_7_OBUF_233),
    .O(C[7])
  );
  OBUF   C_6_OBUF (
    .I(C_6_OBUF_232),
    .O(C[6])
  );
  OBUF   C_5_OBUF (
    .I(C_5_OBUF_231),
    .O(C[5])
  );
  OBUF   C_4_OBUF (
    .I(C_4_OBUF_230),
    .O(C[4])
  );
  OBUF   C_3_OBUF (
    .I(C_3_OBUF_229),
    .O(C[3])
  );
  OBUF   C_2_OBUF (
    .I(C_2_OBUF_228),
    .O(C[2])
  );
  OBUF   C_1_OBUF (
    .I(C_1_OBUF_227),
    .O(C[1])
  );
  OBUF   C_0_OBUF (
    .I(C_0_OBUF_220),
    .O(C[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<0>1  (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .O(\Madd__old_C_1_lut<0>1_388 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<1>1  (
    .I0(A_1_IBUF_39),
    .I1(B_1_IBUF_71),
    .O(\Madd__old_C_1_lut<1>1_397 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<4>1  (
    .I0(A_4_IBUF_42),
    .I1(B_4_IBUF_74),
    .O(\Madd__old_C_1_lut<4>1_401 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<5>1  (
    .I0(A_5_IBUF_43),
    .I1(B_5_IBUF_75),
    .O(\Madd__old_C_1_lut<5>1_403 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<7>1  (
    .I0(A_7_IBUF_45),
    .I1(B_7_IBUF_77),
    .O(\Madd__old_C_1_lut<7>1_406 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<8>1  (
    .I0(A_8_IBUF_46),
    .I1(B_8_IBUF_78),
    .O(\Madd__old_C_1_lut<8>1_408 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<11>1  (
    .I0(A_11_IBUF_34),
    .I1(B_11_IBUF_66),
    .O(\Madd__old_C_1_lut<11>1_390 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd__old_C_1_lut<12>1  (
    .I0(A_12_IBUF_35),
    .I1(B_12_IBUF_67),
    .O(\Madd__old_C_1_lut<12>1_392 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<3>1  (
    .I0(A_3_IBUF_41),
    .I1(B_3_IBUF_73),
    .O(\Msub__old_C_6_lut<3>1_578 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<9>1  (
    .I0(A_9_IBUF_47),
    .I1(B_9_IBUF_79),
    .O(\Msub__old_C_6_lut<9>1_585 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<10>1  (
    .I0(A_10_IBUF_33),
    .I1(B_10_IBUF_65),
    .O(\Msub__old_C_6_lut<10>1_569 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<14>1  (
    .I0(A_14_IBUF_37),
    .I1(B_14_IBUF_69),
    .O(\Msub__old_C_6_lut<14>1_574 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<1>_rt  (
    .I0(AUX_3_addsub0000[1]),
    .O(\Madd__AUX_5_cy<1>_rt_353 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<2>_rt  (
    .I0(AUX_3_addsub0000[2]),
    .O(\Madd__AUX_5_cy<2>_rt_355 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<3>_rt  (
    .I0(AUX_3_addsub0000[3]),
    .O(\Madd__AUX_5_cy<3>_rt_357 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<4>_rt  (
    .I0(AUX_3_addsub0000[4]),
    .O(\Madd__AUX_5_cy<4>_rt_359 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<5>_rt  (
    .I0(AUX_3_addsub0000[5]),
    .O(\Madd__AUX_5_cy<5>_rt_361 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<6>_rt  (
    .I0(AUX_3_addsub0000[6]),
    .O(\Madd__AUX_5_cy<6>_rt_363 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<7>_rt  (
    .I0(AUX_3_addsub0000[7]),
    .O(\Madd__AUX_5_cy<7>_rt_365 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<8>_rt  (
    .I0(AUX_3_addsub0000[8]),
    .O(\Madd__AUX_5_cy<8>_rt_367 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<9>_rt  (
    .I0(AUX_3_addsub0000[9]),
    .O(\Madd__AUX_5_cy<9>_rt_369 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<10>_rt  (
    .I0(AUX_3_addsub0000[10]),
    .O(\Madd__AUX_5_cy<10>_rt_341 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<11>_rt  (
    .I0(AUX_3_addsub0000[11]),
    .O(\Madd__AUX_5_cy<11>_rt_343 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<12>_rt  (
    .I0(AUX_3_addsub0000[12]),
    .O(\Madd__AUX_5_cy<12>_rt_345 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<13>_rt  (
    .I0(AUX_3_addsub0000[13]),
    .O(\Madd__AUX_5_cy<13>_rt_347 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<14>_rt  (
    .I0(AUX_3_addsub0000[14]),
    .O(\Madd__AUX_5_cy<14>_rt_349 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_cy<15>_rt  (
    .I0(AUX_3_addsub0000[15]),
    .O(\Madd__AUX_5_cy<15>_rt_351 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Msub__old_C_6_lut<15>1  (
    .I0(A_15_IBUF_38),
    .I1(B_15_IBUF_70),
    .O(\Msub__old_C_6_lut<15>1_575 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd__AUX_5_xor<16>_rt  (
    .I0(Madd_AUX_3_index0000),
    .O(\Madd__AUX_5_xor<16>_rt_371 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  Zero300 (
    .I0(A_13_IBUF_36),
    .I1(B_13_IBUF_68),
    .I2(A_6_IBUF_44),
    .I3(B_6_IBUF_76),
    .O(Zero300_850)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  Zero259 (
    .I0(A_3_IBUF_41),
    .I1(B_3_IBUF_73),
    .I2(A_2_IBUF_40),
    .I3(B_2_IBUF_72),
    .O(Zero259_847)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<9>84_SW0  (
    .I0(_AUX_5[9]),
    .I1(N39),
    .I2(_old_C_14[9]),
    .I3(C_cmp_eq0021),
    .O(N221)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<9>84  (
    .I0(\C<9>38_216 ),
    .I1(\C<9>53_217 ),
    .I2(\C<9>58_218 ),
    .I3(N221),
    .O(\C<9>84_219 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<10>93_SW0  (
    .I0(_AUX_5[10]),
    .I1(N39),
    .I2(_old_C_14[10]),
    .I3(C_cmp_eq0021),
    .O(N223)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<10>93  (
    .I0(\C<10>35_92 ),
    .I1(\C<10>49_94 ),
    .I2(\C<10>62_96 ),
    .I3(N223),
    .O(\C<10>93_97 )
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  \C<13>16  (
    .I0(N225),
    .I1(N57),
    .I2(N26),
    .I3(Sh77),
    .O(\C<13>16_121 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero1478_SW0 (
    .I0(_old_C_14[5]),
    .I1(_old_C_14[7]),
    .I2(_old_C_14[8]),
    .I3(_old_C_14[9]),
    .O(N227)
  );
  LUT4 #(
    .INIT ( 16'hEE80 ))
  \C<1>28_SW0  (
    .I0(A_1_IBUF_39),
    .I1(B_1_IBUF_71),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(N229)
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  Zero1051_SW0 (
    .I0(Zero1006_820),
    .I1(Zero975_885),
    .I2(Zero979_886),
    .I3(Sh63),
    .O(N241)
  );
  LUT4 #(
    .INIT ( 16'hAA02 ))
  Zero1051 (
    .I0(C_or0003_247),
    .I1(Sh62_792),
    .I2(N241),
    .I3(old_C_12_or0000),
    .O(Zero1051_821)
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  Zero1232 (
    .I0(Zero1221_829),
    .I1(Zero1212_828),
    .I2(Zero1178_826),
    .I3(old_C_12_or0000),
    .O(Zero1232_830)
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  \C<0>63  (
    .I0(\C<0>55_85 ),
    .I1(Sh32),
    .I2(N26),
    .I3(N62),
    .O(\C<0>63_86 )
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  \C<1>51  (
    .I0(\C<1>43_147 ),
    .I1(Sh33),
    .I2(N26),
    .I3(N62),
    .O(\C<1>51_148 )
  );
  LUT4 #(
    .INIT ( 16'h3222 ))
  \C<3>34_SW0  (
    .I0(C_cmp_eq0015),
    .I1(A_3_IBUF_41),
    .I2(B_3_IBUF_73),
    .I3(C_cmp_eq0014),
    .O(N251)
  );
  LUT4 #(
    .INIT ( 16'hAEAA ))
  \C<3>34  (
    .I0(N251),
    .I1(N62),
    .I2(N26),
    .I3(Sh35),
    .O(\C<3>34_165 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<14>81_SW0  (
    .I0(C_cmp_eq0021),
    .I1(_old_C_14[14]),
    .I2(C_or0000),
    .I3(_old_C_1[14]),
    .O(N259)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<14>81  (
    .I0(\C<14>75_133 ),
    .I1(C_cmp_eq0006),
    .I2(_old_C_6[14]),
    .I3(N259),
    .O(\C<14>81_134 )
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  Zero400_SW0 (
    .I0(B_15_IBUF_70),
    .I1(A_15_IBUF_38),
    .I2(B_11_IBUF_66),
    .I3(A_11_IBUF_34),
    .O(N261)
  );
  LUT4 #(
    .INIT ( 16'h0009 ))
  Zero400 (
    .I0(A_10_IBUF_33),
    .I1(B_10_IBUF_65),
    .I2(\Madd__old_C_1_lut[12] ),
    .I3(N261),
    .O(Zero400_855)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  Zero644_SW0 (
    .I0(Zero479_859),
    .I1(Zero492_860),
    .I2(Zero592_865),
    .I3(Zero617_866),
    .O(N263)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero644 (
    .I0(N26),
    .I1(C_cmp_eq0013),
    .I2(N60),
    .I3(N263),
    .O(Zero644_867)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  Zero665_SW0 (
    .I0(Zero47_858),
    .I1(Zero334_852),
    .I2(Zero411_856),
    .I3(Zero644_867),
    .O(N265)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  Zero665 (
    .I0(Zero216_846),
    .I1(Mcompar_Zero_cmp_eq0009_cy[7]),
    .I2(Zero457_857),
    .I3(N265),
    .O(Zero665_868)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  Zero726_SW0 (
    .I0(AUX_3_addsub0000[3]),
    .I1(AUX_3_addsub0000[4]),
    .I2(AUX_3_addsub0000[5]),
    .O(N267)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero726 (
    .I0(AUX_3_addsub0000[11]),
    .I1(AUX_3_addsub0000[12]),
    .I2(AUX_3_addsub0000[2]),
    .I3(N267),
    .O(Zero726_872)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  Zero850_SW0 (
    .I0(_old_C_1[3]),
    .I1(_old_C_1[4]),
    .I2(_old_C_1[5]),
    .O(N269)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero850 (
    .I0(_old_C_1[11]),
    .I1(_old_C_1[12]),
    .I2(_old_C_1[2]),
    .I3(N269),
    .O(Zero850_880)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero896_SW0 (
    .I0(_old_C_1[14]),
    .I1(_old_C_1[15]),
    .I2(_old_C_1[6]),
    .I3(_old_C_1[7]),
    .O(N271)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  Zero896 (
    .I0(_old_C_1[13]),
    .I1(Zero850_880),
    .I2(Zero823_879),
    .I3(N271),
    .O(Zero896_881)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero932 (
    .I0(Sh58_782),
    .I1(Sh59_783),
    .I2(Sh61_789),
    .I3(Sh57_781),
    .O(Zero932_883)
  );
  LUT4 #(
    .INIT ( 16'h0F01 ))
  Zero1178 (
    .I0(Sh77),
    .I1(Sh12_741),
    .I2(N273),
    .I3(N26),
    .O(Zero1178_826)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero1360_SW0 (
    .I0(_AUX_5[13]),
    .I1(_AUX_5[14]),
    .I2(_AUX_5[4]),
    .I3(_AUX_5[5]),
    .O(N275)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  Flag73_SW0 (
    .I0(_old_C_1[15]),
    .I1(C_or0000),
    .I2(B_15_IBUF_70),
    .O(N277)
  );
  LUT4 #(
    .INIT ( 16'hF828 ))
  \C<0>55  (
    .I0(C_cmp_eq0014),
    .I1(A_0_IBUF_32),
    .I2(B_0_IBUF_64),
    .I3(C_cmp_eq0013),
    .O(\C<0>55_85 )
  );
  LUT4 #(
    .INIT ( 16'h7560 ))
  \C<12>7  (
    .I0(A_12_IBUF_35),
    .I1(B_12_IBUF_67),
    .I2(C_cmp_eq0014),
    .I3(C_cmp_eq0015),
    .O(\C<12>7_114 )
  );
  LUT4 #(
    .INIT ( 16'h7560 ))
  \C<14>10  (
    .I0(A_14_IBUF_37),
    .I1(B_14_IBUF_69),
    .I2(C_cmp_eq0014),
    .I3(C_cmp_eq0015),
    .O(\C<14>10_128 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero31 (
    .I0(Opcode_3_IBUF_734),
    .I1(Opcode_2_IBUF_733),
    .I2(Opcode_4_IBUF_735),
    .I3(Opcode_1_IBUF_732),
    .O(N39)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  Carry_SW1 (
    .I0(Madd_AUX_3_index0000),
    .I1(N39),
    .I2(N44),
    .I3(_AUX_5[16]),
    .O(N285)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Carry_750 (
    .I0(Opcode_5_IBUF_736),
    .I1(Opcode_6_IBUF_737),
    .I2(Opcode_7_IBUF_738),
    .I3(N285),
    .O(Carry_OBUF_251)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \C<0>41_SW0  (
    .I0(N23),
    .I1(N117),
    .I2(Sh16),
    .I3(old_C_12_or0000),
    .O(N287)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<0>41  (
    .I0(\C<0>12_81 ),
    .I1(\C<0>26_82 ),
    .I2(\C<0>4_83 ),
    .I3(N287),
    .O(\C<0>41_84 )
  );
  LUT4 #(
    .INIT ( 16'h0105 ))
  \C<0>114_SW0  (
    .I0(\C<0>41_84 ),
    .I1(C_cmp_eq0021),
    .I2(\C<0>82_87 ),
    .I3(_old_C_14[0]),
    .O(N289)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<0>114  (
    .I0(Opcode_5_IBUF_736),
    .I1(Opcode_6_IBUF_737),
    .I2(Opcode_7_IBUF_738),
    .I3(N289),
    .O(C_0_OBUF_220)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \C<1>83_SW0  (
    .I0(N53),
    .I1(Opcode_0_IBUF_731),
    .I2(Opcode_1_IBUF_732),
    .I3(_old_C_7[1]),
    .O(N291)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \C<1>83  (
    .I0(\C<1>28_146 ),
    .I1(\C<1>51_148 ),
    .I2(\C<1>68_149 ),
    .I3(N291),
    .O(\C<1>83_150 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \C<1>92  (
    .I0(N23),
    .I1(Sh81),
    .I2(N117),
    .I3(old_C_12_or0000),
    .O(\C<1>92_151 )
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
    .I0(Opcode_2_IBUF_733),
    .I1(Opcode_1_IBUF_732),
    .I2(Opcode_3_IBUF_734),
    .I3(Opcode_4_IBUF_735),
    .O(C_or0002)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \C<10>121  (
    .I0(old_C_12_or00004_977),
    .I1(C_or0003_247),
    .I2(old_C_12_or00009_978),
    .I3(old_C_12_or000014_976),
    .O(N62)
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \_old_C_14<14>_SW0  (
    .I0(B_2_IBUF_72),
    .I1(A_15_IBUF_38),
    .I2(B_3_IBUF_73),
    .I3(Sh14),
    .O(N129)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \C<3>97_SW0  (
    .I0(N23),
    .I1(N117),
    .I2(Sh83),
    .I3(old_C_12_or0000),
    .O(N293)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<3>97  (
    .I0(\C<3>71_170 ),
    .I1(N39),
    .I2(_AUX_5[3]),
    .I3(N293),
    .O(\C<3>97_172 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \C<3>118  (
    .I0(_old_C_7[3]),
    .I1(Opcode_1_IBUF_732),
    .I2(Opcode_0_IBUF_731),
    .I3(N53),
    .O(\C<3>118_164 )
  );
  LUT4 #(
    .INIT ( 16'h0105 ))
  \C<3>132_SW0  (
    .I0(\C<3>118_164 ),
    .I1(C_cmp_eq0021),
    .I2(\C<3>97_172 ),
    .I3(_old_C_14[3]),
    .O(N295)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<3>132  (
    .I0(Opcode_5_IBUF_736),
    .I1(Opcode_6_IBUF_737),
    .I2(Opcode_7_IBUF_738),
    .I3(N295),
    .O(C_3_OBUF_229)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \C<2>51  (
    .I0(Sh34),
    .I1(B_2_IBUF_72),
    .I2(B_3_IBUF_73),
    .O(\C<2>51_159 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \C<2>103_SW0  (
    .I0(N23),
    .I1(N117),
    .I2(Sh82),
    .I3(old_C_12_or0000),
    .O(N297)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<2>103  (
    .I0(\C<2>77_162 ),
    .I1(N39),
    .I2(_AUX_5[2]),
    .I3(N297),
    .O(\C<2>103_154 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \C<2>125  (
    .I0(_old_C_7[2]),
    .I1(Opcode_1_IBUF_732),
    .I2(Opcode_0_IBUF_731),
    .I3(N53),
    .O(\C<2>125_155 )
  );
  LUT4 #(
    .INIT ( 16'h0105 ))
  \C<2>139_SW0  (
    .I0(\C<2>103_154 ),
    .I1(C_cmp_eq0021),
    .I2(\C<2>125_155 ),
    .I3(_old_C_14[2]),
    .O(N299)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<2>139  (
    .I0(Opcode_5_IBUF_736),
    .I1(Opcode_6_IBUF_737),
    .I2(Opcode_7_IBUF_738),
    .I3(N299),
    .O(C_2_OBUF_228)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \C<11>6  (
    .I0(C_cmp_eq0015),
    .I1(A_11_IBUF_34),
    .I2(C_cmp_eq0013),
    .I3(B_11_IBUF_66),
    .O(\C<11>6_103 )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \C<11>8  (
    .I0(C_cmp_eq0014),
    .I1(A_11_IBUF_34),
    .I2(B_11_IBUF_66),
    .O(\C<11>8_106 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \C<12>17  (
    .I0(N26),
    .I1(B_1_IBUF_71),
    .I2(N206),
    .I3(N207),
    .O(\C<12>17_109 )
  );
  LUT4 #(
    .INIT ( 16'h0A08 ))
  \_old_C_14<13>_SW0  (
    .I0(A_15_IBUF_38),
    .I1(B_3_IBUF_73),
    .I2(B_4_IBUF_74),
    .I3(B_2_IBUF_72),
    .O(N133)
  );
  LUT4 #(
    .INIT ( 16'h0F01 ))
  \_old_C_14<13>_SW1  (
    .I0(B_3_IBUF_73),
    .I1(B_2_IBUF_72),
    .I2(B_4_IBUF_74),
    .I3(A_15_IBUF_38),
    .O(N134)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \C<15>10  (
    .I0(B_2_IBUF_72),
    .I1(Sh79),
    .I2(N57),
    .I3(B_3_IBUF_73),
    .O(\C<15>10_136 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \C<15>28  (
    .I0(_old_C_6[15]),
    .I1(N53),
    .I2(Opcode_1_IBUF_732),
    .I3(Opcode_0_IBUF_731),
    .O(\C<15>28_141 )
  );
  LUT4 #(
    .INIT ( 16'hFF23 ))
  Zero975 (
    .I0(N60),
    .I1(Sh34),
    .I2(A_0_IBUF_32),
    .I3(N26),
    .O(Zero975_885)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero1128_SW0 (
    .I0(Sh81),
    .I1(Zero1102_823),
    .I2(Sh82),
    .I3(Sh83),
    .O(N301)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero1128 (
    .I0(old_C_12_or000014_976),
    .I1(old_C_12_or00004_977),
    .I2(old_C_12_or00009_978),
    .I3(N301),
    .O(Zero1128_825)
  );
  LUT4 #(
    .INIT ( 16'hFFAB ))
  Zero1212 (
    .I0(B_2_IBUF_72),
    .I1(Sh78),
    .I2(Sh79),
    .I3(B_3_IBUF_73),
    .O(Zero1212_828)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero1221 (
    .I0(Opcode_3_IBUF_734),
    .I1(Opcode_4_IBUF_735),
    .I2(Opcode_2_IBUF_733),
    .I3(N23),
    .O(Zero1221_829)
  );
  LUT4 #(
    .INIT ( 16'h0105 ))
  Zero1532_SW0 (
    .I0(Zero1081_822),
    .I1(Zero1232_830),
    .I2(Zero1508_841),
    .I3(Zero1128_825),
    .O(N303)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero1532 (
    .I0(Opcode_5_IBUF_736),
    .I1(Opcode_6_IBUF_737),
    .I2(Opcode_7_IBUF_738),
    .I3(N303),
    .O(Zero_OBUF_887)
  );
  LUT4 #(
    .INIT ( 16'hEE80 ))
  \C<8>34_SW0  (
    .I0(A_8_IBUF_46),
    .I1(B_8_IBUF_78),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(N305)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<8>34  (
    .I0(N255),
    .I1(C_cmp_eq0021),
    .I2(_old_C_14[8]),
    .I3(N305),
    .O(\C<8>34_210 )
  );
  LUT4 #(
    .INIT ( 16'hEE80 ))
  \C<9>38_SW0  (
    .I0(A_9_IBUF_47),
    .I1(B_9_IBUF_79),
    .I2(C_or0002),
    .I3(C_cmp_eq0013),
    .O(N307)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<9>38  (
    .I0(N257),
    .I1(N62),
    .I2(Sh57_781),
    .I3(N307),
    .O(\C<9>38_216 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<7>85_SW0  (
    .I0(_AUX_5[7]),
    .I1(N39),
    .I2(_old_C_14[7]),
    .I3(C_cmp_eq0021),
    .O(N309)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \C<7>85  (
    .I0(\C<7>22_204 ),
    .I1(\C<7>76_207 ),
    .I2(N309),
    .O(\C<7>85_208 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero1360_SW1 (
    .I0(_AUX_5[12]),
    .I1(_AUX_5[2]),
    .I2(_AUX_5[3]),
    .I3(_AUX_5[9]),
    .O(N311)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero1360 (
    .I0(N275),
    .I1(_AUX_5[10]),
    .I2(_AUX_5[11]),
    .I3(N311),
    .O(Zero1360_835)
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<13>16_SW0  (
    .I0(B_13_IBUF_68),
    .I1(C_or0002),
    .I2(A_13_IBUF_36),
    .I3(C_cmp_eq0013),
    .O(N225)
  );
  LUT4 #(
    .INIT ( 16'hFFAE ))
  Zero1478_SW1 (
    .I0(\_old_C_14<4>30 ),
    .I1(Sh16),
    .I2(B_4_IBUF_74),
    .I3(_old_C_14[3]),
    .O(N313)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero1478 (
    .I0(N56),
    .I1(_old_C_14[6]),
    .I2(N227),
    .I3(N313),
    .O(Zero1478_840)
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<2>6  (
    .I0(B_2_IBUF_72),
    .I1(C_or0002),
    .I2(A_2_IBUF_40),
    .I3(C_cmp_eq0013),
    .O(\C<2>6_161 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \C<6>6  (
    .I0(B_6_IBUF_76),
    .I1(C_or0002),
    .I2(A_6_IBUF_44),
    .I3(C_cmp_eq0013),
    .O(\C<6>6_199 )
  );
  LUT4 #(
    .INIT ( 16'h7560 ))
  \C<8>9_SW0  (
    .I0(A_8_IBUF_46),
    .I1(B_8_IBUF_78),
    .I2(C_cmp_eq0014),
    .I3(C_cmp_eq0015),
    .O(N255)
  );
  LUT4 #(
    .INIT ( 16'h7560 ))
  \C<9>11_SW0  (
    .I0(A_9_IBUF_47),
    .I1(B_9_IBUF_79),
    .I2(C_cmp_eq0014),
    .I3(C_cmp_eq0015),
    .O(N257)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  Negative47 (
    .I0(C_and0000),
    .I1(\C<15>1116_137 ),
    .I2(\C<15>1129_139 ),
    .I3(N315),
    .O(Negative_OBUF_721)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \C<0>82_SW0  (
    .I0(N53),
    .I1(Opcode_0_IBUF_731),
    .I2(Opcode_1_IBUF_732),
    .I3(_old_C_7[0]),
    .O(N317)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<0>82  (
    .I0(\C<0>63_86 ),
    .I1(N39),
    .I2(_AUX_5[0]),
    .I3(N317),
    .O(\C<0>82_87 )
  );
  LUT4 #(
    .INIT ( 16'h0028 ))
  \C<10>111  (
    .I0(N117),
    .I1(Opcode_0_IBUF_731),
    .I2(Opcode_1_IBUF_732),
    .I3(old_C_12_or0000),
    .O(N57)
  );
  LUT4 #(
    .INIT ( 16'h0105 ))
  \C<1>118_SW0  (
    .I0(\C<1>83_150 ),
    .I1(C_cmp_eq0021),
    .I2(\C<1>92_151 ),
    .I3(_old_C_14[1]),
    .O(N319)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \C<1>118  (
    .I0(Opcode_5_IBUF_736),
    .I1(Opcode_6_IBUF_737),
    .I2(Opcode_7_IBUF_738),
    .I3(N319),
    .O(C_1_OBUF_227)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  Zero955_SW0 (
    .I0(Sh55),
    .I1(Zero932_883),
    .I2(Sh56_780),
    .I3(Sh60),
    .O(N321)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero955 (
    .I0(old_C_12_or000014_976),
    .I1(old_C_12_or00004_977),
    .I2(old_C_12_or00009_978),
    .I3(N321),
    .O(Zero955_884)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \C<1>28_SW1  (
    .I0(C_cmp_eq0014),
    .I1(\Madd__old_C_1_lut[1] ),
    .I2(C_or0000),
    .I3(_old_C_1[1]),
    .O(N323)
  );
  LUT4 #(
    .INIT ( 16'hFFAE ))
  \C<1>28  (
    .I0(N323),
    .I1(C_cmp_eq0015),
    .I2(A_1_IBUF_39),
    .I3(N229),
    .O(\C<1>28_146 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Low91 (
    .I0(Opcode_4_IBUF_735),
    .I1(Opcode_5_IBUF_736),
    .I2(Opcode_6_IBUF_737),
    .I3(N325),
    .O(Low_OBUF_290)
  );
  LUT4 #(
    .INIT ( 16'h0018 ))
  Zero457 (
    .I0(Opcode_1_IBUF_732),
    .I1(Opcode_2_IBUF_733),
    .I2(Opcode_3_IBUF_734),
    .I3(Opcode_4_IBUF_735),
    .O(Zero457_857)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \C<14>27_SW0  (
    .I0(B_2_IBUF_72),
    .I1(Sh78),
    .I2(N57),
    .I3(B_3_IBUF_73),
    .O(N327)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \C<14>27  (
    .I0(\C<14>10_128 ),
    .I1(B_14_IBUF_69),
    .I2(C_cmp_eq0013),
    .I3(N327),
    .O(\C<14>27_130 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  Low91_SW1_SW0 (
    .I0(Opcode_1_IBUF_732),
    .I1(Opcode_2_IBUF_733),
    .I2(Opcode_3_IBUF_734),
    .I3(Opcode_0_IBUF_731),
    .O(N329)
  );
  LUT4 #(
    .INIT ( 16'hFF23 ))
  Low91_SW1 (
    .I0(N329),
    .I1(Low46_289),
    .I2(A_15_IBUF_38),
    .I3(Opcode_7_IBUF_738),
    .O(N325)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Sh321 (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .I2(B_1_IBUF_71),
    .O(Sh32)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_D_cy<0>_rt  (
    .I0(B_0_IBUF_64),
    .O(\Madd_D_cy<0>_rt_324 )
  );
  MUXF5   Sh63102 (
    .I0(N331),
    .I1(N332),
    .S(B_2_IBUF_72),
    .O(Sh63)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh63102_F (
    .I0(B_3_IBUF_73),
    .I1(Sh6326_796),
    .I2(Sh6341_797),
    .I3(Sh39_764),
    .O(N331)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  Sh63102_G (
    .I0(B_3_IBUF_73),
    .I1(Sh35),
    .I2(Sh43),
    .I3(Sh601),
    .O(N332)
  );
  MUXF5   Sh62102 (
    .I0(N333),
    .I1(N334),
    .S(B_2_IBUF_72),
    .O(Sh62_792)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh62102_F (
    .I0(B_3_IBUF_73),
    .I1(Sh6226_793),
    .I2(Sh6241_794),
    .I3(Sh38_763),
    .O(N333)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  Sh62102_G (
    .I0(B_3_IBUF_73),
    .I1(Sh34),
    .I2(Sh42),
    .I3(Sh601),
    .O(N334)
  );
  MUXF5   Sh61102 (
    .I0(N335),
    .I1(N336),
    .S(B_2_IBUF_72),
    .O(Sh61_789)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh61102_F (
    .I0(B_3_IBUF_73),
    .I1(Sh6126_790),
    .I2(Sh6141_791),
    .I3(Sh37_762),
    .O(N335)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh61102_G (
    .I0(B_3_IBUF_73),
    .I1(Sh41_766),
    .I2(Sh33),
    .O(N336)
  );
  MUXF5   \C<13>73  (
    .I0(N337),
    .I1(N338),
    .S(B_13_IBUF_68),
    .O(\C<13>73_125 )
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \C<13>73_F  (
    .I0(A_13_IBUF_36),
    .I1(C_cmp_eq0013),
    .I2(C_cmp_eq0015),
    .I3(C_cmp_eq0014),
    .O(N337)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \C<13>73_G  (
    .I0(A_13_IBUF_36),
    .I1(C_cmp_eq0014),
    .I2(C_cmp_eq0015),
    .I3(C_cmp_eq0013),
    .O(N338)
  );
  MUXF5   Sh86 (
    .I0(N339),
    .I1(N340),
    .S(B_2_IBUF_72),
    .O(Sh86_813)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh86_F (
    .I0(B_3_IBUF_73),
    .I1(Sh6),
    .I2(Sh78),
    .O(N339)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh86_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N171),
    .I3(N206),
    .O(N340)
  );
  MUXF5   Sh85 (
    .I0(N341),
    .I1(N342),
    .S(B_2_IBUF_72),
    .O(Sh85_812)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh85_F (
    .I0(B_3_IBUF_73),
    .I1(Sh5),
    .I2(Sh77),
    .O(N341)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh85_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N145),
    .I3(N147),
    .O(N342)
  );
  MUXF5   Sh59 (
    .I0(N343),
    .I1(N344),
    .S(B_2_IBUF_72),
    .O(Sh59_783)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh59_F (
    .I0(B_3_IBUF_73),
    .I1(Sh43),
    .I2(Sh35),
    .O(N343)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh59_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N186),
    .I3(N192),
    .O(N344)
  );
  MUXF5   Sh58 (
    .I0(N345),
    .I1(N346),
    .S(B_2_IBUF_72),
    .O(Sh58_782)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh58_F (
    .I0(B_3_IBUF_73),
    .I1(Sh42),
    .I2(Sh34),
    .O(N345)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh58_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N189),
    .I3(N195),
    .O(N346)
  );
  MUXF5   Sh57 (
    .I0(N347),
    .I1(N348),
    .S(B_2_IBUF_72),
    .O(Sh57_781)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh57_F (
    .I0(B_3_IBUF_73),
    .I1(Sh41_766),
    .I2(Sh33),
    .O(N347)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh57_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N192),
    .I3(N198),
    .O(N348)
  );
  MUXF5   Sh1690 (
    .I0(N349),
    .I1(N350),
    .S(B_2_IBUF_72),
    .O(Sh16)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh1690_F (
    .I0(B_3_IBUF_73),
    .I1(Sh16146_747),
    .I2(Sh1629_748),
    .I3(Sh72_801),
    .O(N349)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh1690_G (
    .I0(B_3_IBUF_73),
    .I1(Sh16113_745),
    .I2(Sh16128_746),
    .I3(Sh12_741),
    .O(N350)
  );
  MUXF5   Low46 (
    .I0(N351),
    .I1(N352),
    .S(Opcode_2_IBUF_733),
    .O(Low46_289)
  );
  LUT4 #(
    .INIT ( 16'h3237 ))
  Low46_F (
    .I0(Opcode_3_IBUF_734),
    .I1(Mcompar_Low_cmp_lt0001_cy[15]),
    .I2(Opcode_0_IBUF_731),
    .I3(Mcompar_Low_cmp_lt0000_cy[15]),
    .O(N351)
  );
  LUT4 #(
    .INIT ( 16'h111B ))
  Low46_G (
    .I0(Opcode_1_IBUF_732),
    .I1(Mcompar_Low_cmp_lt0001_cy[15]),
    .I2(Mcompar_Low_cmp_lt0000_cy[15]),
    .I3(Opcode_3_IBUF_734),
    .O(N352)
  );
  MUXF5   Flag96 (
    .I0(N353),
    .I1(N354),
    .S(A_15_IBUF_38),
    .O(Flag_OBUF_287)
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  Flag96_F (
    .I0(C_and0000),
    .I1(Flag53_286),
    .I2(D[15]),
    .I3(N277),
    .O(N353)
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  Flag96_G (
    .I0(C_and0000),
    .I1(D[15]),
    .I2(Flag10_284),
    .I3(Flag21_285),
    .O(N354)
  );
  MUXF5   Sh60102 (
    .I0(N355),
    .I1(N356),
    .S(B_2_IBUF_72),
    .O(Sh60)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh60102_F (
    .I0(B_3_IBUF_73),
    .I1(Sh6026_787),
    .I2(Sh6041_788),
    .I3(Sh36_761),
    .O(N355)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  Sh60102_G (
    .I0(B_3_IBUF_73),
    .I1(Sh40_765),
    .I2(N60),
    .I3(A_0_IBUF_32),
    .O(N356)
  );
  MUXF5   Sh56 (
    .I0(N357),
    .I1(N358),
    .S(B_2_IBUF_72),
    .O(Sh56_780)
  );
  LUT4 #(
    .INIT ( 16'h4E44 ))
  Sh56_F (
    .I0(B_3_IBUF_73),
    .I1(Sh40_765),
    .I2(N60),
    .I3(A_0_IBUF_32),
    .O(N357)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh56_G (
    .I0(B_3_IBUF_73),
    .I1(B_1_IBUF_71),
    .I2(N195),
    .I3(N201),
    .O(N358)
  );
  MUXF5   Sh83194 (
    .I0(N359),
    .I1(N360),
    .S(B_3_IBUF_73),
    .O(N54)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh83194_F (
    .I0(B_2_IBUF_72),
    .I1(Sh83119_809),
    .I2(Sh83134_810),
    .I3(Sh7_800),
    .O(N359)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh83194_G (
    .I0(B_2_IBUF_72),
    .I1(B_1_IBUF_71),
    .I2(N147),
    .I3(N24),
    .O(N360)
  );
  MUXF5   Sh18194 (
    .I0(N361),
    .I1(N362),
    .S(B_3_IBUF_73),
    .O(N59)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh18194_F (
    .I0(B_2_IBUF_72),
    .I1(Sh18119_751),
    .I2(Sh18134_752),
    .I3(Sh6),
    .O(N361)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh18194_G (
    .I0(B_2_IBUF_72),
    .I1(B_1_IBUF_71),
    .I2(N171),
    .I3(N206),
    .O(N362)
  );
  MUXF5   Sh17194 (
    .I0(N363),
    .I1(N364),
    .S(B_3_IBUF_73),
    .O(N58)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Sh17194_F (
    .I0(B_2_IBUF_72),
    .I1(Sh17119_749),
    .I2(Sh17134_750),
    .I3(Sh5),
    .O(N363)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh17194_G (
    .I0(B_2_IBUF_72),
    .I1(B_1_IBUF_71),
    .I2(N145),
    .I3(N147),
    .O(N364)
  );
  MUXF5   C_or0003 (
    .I0(N365),
    .I1(N366),
    .S(Opcode_2_IBUF_733),
    .O(C_or0003_247)
  );
  LUT4 #(
    .INIT ( 16'h0900 ))
  C_or0003_F (
    .I0(Opcode_0_IBUF_731),
    .I1(Opcode_1_IBUF_732),
    .I2(Opcode_3_IBUF_734),
    .I3(Opcode_4_IBUF_735),
    .O(N365)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  C_or0003_G (
    .I0(Opcode_0_IBUF_731),
    .I1(Opcode_1_IBUF_732),
    .I2(Opcode_3_IBUF_734),
    .I3(Opcode_4_IBUF_735),
    .O(N366)
  );
  MUXF5   \C<7>22  (
    .I0(N367),
    .I1(N368),
    .S(A_7_IBUF_45),
    .O(\C<7>22_204 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \C<7>22_F  (
    .I0(B_7_IBUF_77),
    .I1(C_cmp_eq0013),
    .I2(C_cmp_eq0014),
    .I3(C_cmp_eq0015),
    .O(N367)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \C<7>22_G  (
    .I0(B_7_IBUF_77),
    .I1(C_or0002),
    .I2(C_cmp_eq0014),
    .I3(C_cmp_eq0013),
    .O(N368)
  );
  MUXF5   Negative47_SW0 (
    .I0(N369),
    .I1(N370),
    .S(Opcode_2_IBUF_733),
    .O(N315)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Negative47_SW0_F (
    .I0(Opcode_3_IBUF_734),
    .I1(Opcode_4_IBUF_735),
    .I2(N283),
    .O(N369)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  Negative47_SW0_G (
    .I0(Opcode_3_IBUF_734),
    .I1(Opcode_1_IBUF_732),
    .I2(Negative_sub0000[16]),
    .I3(Opcode_4_IBUF_735),
    .O(N370)
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
  INV   Sh631_INV_0 (
    .I(B_3_IBUF_73),
    .O(Sh601)
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
    .I0(Opcode_1_IBUF_732),
    .I1(Opcode_2_IBUF_733),
    .I2(Opcode_3_IBUF_734),
    .I3(Opcode_0_IBUF_731),
    .O(C_cmp_eq00151_243)
  );
  MUXF5   C_cmp_eq0015_f5 (
    .I0(C_cmp_eq00151_243),
    .I1(N0),
    .S(Opcode_4_IBUF_735),
    .O(C_cmp_eq0015)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  C_cmp_eq001411 (
    .I0(Opcode_2_IBUF_733),
    .I1(Opcode_0_IBUF_731),
    .I2(Opcode_3_IBUF_734),
    .I3(Opcode_1_IBUF_732),
    .O(C_cmp_eq00141)
  );
  MUXF5   C_cmp_eq00141_f5 (
    .I0(C_cmp_eq00141),
    .I1(N0),
    .S(Opcode_4_IBUF_735),
    .O(C_cmp_eq0014)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  Sh341 (
    .I0(A_0_IBUF_32),
    .I1(B_0_IBUF_64),
    .O(Sh341_756)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Sh342 (
    .I0(B_0_IBUF_64),
    .I1(A_2_IBUF_40),
    .I2(A_1_IBUF_39),
    .O(Sh342_757)
  );
  MUXF5   Sh34_f5 (
    .I0(Sh342_757),
    .I1(Sh341_756),
    .S(B_1_IBUF_71),
    .O(Sh34)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  Sh61 (
    .I0(B_0_IBUF_64),
    .I1(A_7_IBUF_45),
    .I2(A_6_IBUF_44),
    .I3(B_1_IBUF_71),
    .O(Sh64)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh62 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_6_IBUF_44),
    .I3(A_7_IBUF_45),
    .O(Sh65)
  );
  MUXF5   Sh6_f5 (
    .I0(Sh65),
    .I1(Sh64),
    .S(N170),
    .O(Sh6)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  Sh51 (
    .I0(B_0_IBUF_64),
    .I1(A_6_IBUF_44),
    .I2(A_5_IBUF_43),
    .I3(B_1_IBUF_71),
    .O(Sh51_774)
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
    .I1(Sh51_774),
    .S(N144),
    .O(Sh5)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  Sh431 (
    .I0(B_0_IBUF_64),
    .I1(A_10_IBUF_33),
    .I2(A_11_IBUF_34),
    .I3(B_1_IBUF_71),
    .O(Sh431_771)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh432 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_11_IBUF_34),
    .I3(A_10_IBUF_33),
    .O(Sh432_772)
  );
  MUXF5   Sh43_f5 (
    .I0(Sh432_772),
    .I1(Sh431_771),
    .S(N180),
    .O(Sh43)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  Sh421 (
    .I0(B_0_IBUF_64),
    .I1(A_9_IBUF_47),
    .I2(A_10_IBUF_33),
    .I3(B_1_IBUF_71),
    .O(Sh421_768)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  Sh422 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_10_IBUF_33),
    .I3(A_9_IBUF_47),
    .O(Sh422_769)
  );
  MUXF5   Sh42_f5 (
    .I0(Sh422_769),
    .I1(Sh421_768),
    .S(N183),
    .O(Sh42)
  );
  LUT4 #(
    .INIT ( 16'hE4FF ))
  Sh351 (
    .I0(B_0_IBUF_64),
    .I1(A_1_IBUF_39),
    .I2(A_0_IBUF_32),
    .I3(B_1_IBUF_71),
    .O(Sh351_759)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  Sh352 (
    .I0(B_1_IBUF_71),
    .I1(B_0_IBUF_64),
    .I2(A_1_IBUF_39),
    .I3(A_0_IBUF_32),
    .O(Sh352_760)
  );
  MUXF5   Sh35_f5 (
    .I0(Sh352_760),
    .I1(Sh351_759),
    .S(N198),
    .O(Sh35)
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \_old_C_14<4>301  (
    .I0(B_4_IBUF_74),
    .I1(B_2_IBUF_72),
    .I2(N25),
    .I3(A_15_IBUF_38),
    .O(\_old_C_14<4>301_919 )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \_old_C_14<4>302  (
    .I0(B_4_IBUF_74),
    .I1(B_2_IBUF_72),
    .I2(N25),
    .I3(Sh72_801),
    .O(\_old_C_14<4>302_920 )
  );
  MUXF5   \_old_C_14<4>30_f5  (
    .I0(\_old_C_14<4>302_920 ),
    .I1(\_old_C_14<4>301_919 ),
    .S(B_3_IBUF_73),
    .O(\_old_C_14<4>30 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Zero7671 (
    .I0(AUX_3_addsub0000[15]),
    .I1(AUX_3_addsub0000[6]),
    .I2(AUX_3_addsub0000[14]),
    .I3(AUX_3_addsub0000[13]),
    .O(Zero7671_874)
  );
  MUXF5   Zero767_f5 (
    .I0(Zero7671_874),
    .I1(N0),
    .S(AUX_3_addsub0000[7]),
    .O(Zero767)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \C<3>521  (
    .I0(A_3_IBUF_41),
    .I1(C_cmp_eq0013),
    .I2(B_3_IBUF_73),
    .I3(C_cmp_eq0014),
    .O(\C<3>521_168 )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \C<3>522  (
    .I0(A_3_IBUF_41),
    .I1(C_cmp_eq0014),
    .I2(B_3_IBUF_73),
    .I3(C_cmp_eq0013),
    .O(\C<3>522_169 )
  );
  MUXF5   \C<3>52_f5  (
    .I0(\C<3>522_169 ),
    .I1(\C<3>521_168 ),
    .S(C_or0002),
    .O(\C<3>52 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \C<10>181  (
    .I0(A_10_IBUF_33),
    .I1(C_cmp_eq0013),
    .I2(B_10_IBUF_65),
    .I3(C_cmp_eq0014),
    .O(\C<10>181_90 )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \C<10>182  (
    .I0(A_10_IBUF_33),
    .I1(C_cmp_eq0014),
    .I2(B_10_IBUF_65),
    .I3(C_cmp_eq0013),
    .O(\C<10>182_91 )
  );
  MUXF5   \C<10>18_f5  (
    .I0(\C<10>182_91 ),
    .I1(\C<10>181_90 ),
    .S(C_or0002),
    .O(\C<10>18 )
  );
  LUT4 #(
    .INIT ( 16'hE4FF ))
  \C<4>1111  (
    .I0(B_4_IBUF_74),
    .I1(C_cmp_eq0014),
    .I2(C_cmp_eq0013),
    .I3(A_4_IBUF_42),
    .O(\C<4>111 )
  );
  LUT4 #(
    .INIT ( 16'hF828 ))
  \C<4>1112  (
    .I0(C_cmp_eq0014),
    .I1(A_4_IBUF_42),
    .I2(B_4_IBUF_74),
    .I3(C_cmp_eq0013),
    .O(\C<4>1111_176 )
  );
  MUXF5   \C<4>111_f5  (
    .I0(\C<4>1111_176 ),
    .I1(\C<4>111 ),
    .S(C_cmp_eq0015),
    .O(\C<4>11 )
  );
  LUT4 #(
    .INIT ( 16'hE4FF ))
  \C<5>111  (
    .I0(B_5_IBUF_75),
    .I1(C_cmp_eq0014),
    .I2(C_cmp_eq0013),
    .I3(A_5_IBUF_43),
    .O(\C<5>111_185 )
  );
  LUT4 #(
    .INIT ( 16'hF828 ))
  \C<5>112  (
    .I0(C_cmp_eq0014),
    .I1(A_5_IBUF_43),
    .I2(B_5_IBUF_75),
    .I3(C_cmp_eq0013),
    .O(\C<5>112_186 )
  );
  MUXF5   \C<5>11_f5  (
    .I0(\C<5>112_186 ),
    .I1(\C<5>111_185 ),
    .S(C_cmp_eq0015),
    .O(\C<5>11 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  Zero1178_SW01 (
    .I0(Sh87),
    .I1(Sh89),
    .I2(Sh88),
    .I3(Sh90),
    .O(Zero1178_SW0)
  );
  MUXF5   Zero1178_SW0_f5 (
    .I0(Zero1178_SW0),
    .I1(N1),
    .S(Sh91),
    .O(N273)
  );
  LUT4 #(
    .INIT ( 16'h74FC ))
  Negative27_SW01 (
    .I0(B_15_IBUF_70),
    .I1(Opcode_0_IBUF_731),
    .I2(Mcompar_Low_cmp_lt0000_cy[15]),
    .I3(A_15_IBUF_38),
    .O(Negative27_SW0)
  );
  MUXF5   Negative27_SW0_f5 (
    .I0(Mcompar_Low_cmp_lt0000_cy[15]),
    .I1(Negative27_SW0),
    .S(Opcode_1_IBUF_732),
    .O(N283)
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

