////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: Traffic_synthesis.v
// /___/   /\     Timestamp: Sun May 01 10:11:47 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Traffic.ngc Traffic_synthesis.v 
// Device	: xc6slx9-3-tqg144
// Input file	: Traffic.ngc
// Output file	: D:\Personal\XIE\Semesters\TE\Sem VI\Mini Project 2-B\Simulation\Traffic_Light_Control\netgen\synthesis\Traffic_synthesis.v
// # of Modules	: 1
// Design Name	: Traffic
// Xilinx        : C:\Xilinx\14.5\ISE_DS\ISE\
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

module Traffic (
  clk, rst, clock_out, light_M1_R, light_M1_Y, light_M1_G, light_S_R, light_S_Y, light_S_G, light_MT_R, light_MT_Y, light_MT_G, light_M2_R, light_M2_Y
, light_M2_G, light_M1, light_S, light_MT, light_M2
);
  input clk;
  input rst;
  output clock_out;
  output light_M1_R;
  output light_M1_Y;
  output light_M1_G;
  output light_S_R;
  output light_S_Y;
  output light_S_G;
  output light_MT_R;
  output light_MT_Y;
  output light_MT_G;
  output light_M2_R;
  output light_M2_Y;
  output light_M2_G;
  output [2 : 0] light_M1;
  output [2 : 0] light_S;
  output [2 : 0] light_MT;
  output [2 : 0] light_M2;
  wire clk_BUFGP_0;
  wire rst_IBUF_1;
  wire clock_out_OBUF_2;
  wire ps_FSM_FFd2_31;
  wire ps_FSM_FFd3_32;
  wire light_S_R_OBUF_33;
  wire light_S_Y_OBUF_34;
  wire light_S_G_OBUF_35;
  wire light_MT_R_OBUF_36;
  wire light_MT_G_OBUF_37;
  wire light_M2_R_OBUF_38;
  wire light_M2_Y_OBUF_39;
  wire light_M2_G_OBUF_40;
  wire ps_FSM_FFd1_41;
  wire light_M1_Y_OBUF_42;
  wire light_M1_G_OBUF_43;
  wire \counter[27]_GND_1_o_LessThan_5_o ;
  wire \ps[2]_count[3]_wide_mux_32_OUT<2> ;
  wire \ps[2]_count[3]_wide_mux_32_OUT<1> ;
  wire \ps[2]_count[3]_wide_mux_32_OUT<0> ;
  wire N0;
  wire N1;
  wire _n0087_inv;
  wire \ps_FSM_FFd3-In ;
  wire \ps_FSM_FFd2-In ;
  wire \ps_FSM_FFd1-In ;
  wire Mcompar_n0001_lutdi_86;
  wire Mcompar_n0001_lutdi1_89;
  wire Mcompar_n0001_lutdi2_92;
  wire Mcompar_n0001_lutdi3_95;
  wire \counter[27]_GND_1_o_LessThan_5_o3 ;
  wire \counter[27]_GND_1_o_LessThan_5_o31_130 ;
  wire \counter[27]_GND_1_o_LessThan_5_o32_131 ;
  wire \Mcount_counter_cy<1>_rt_159 ;
  wire \Mcount_counter_cy<2>_rt_160 ;
  wire \Mcount_counter_cy<3>_rt_161 ;
  wire \Mcount_counter_cy<4>_rt_162 ;
  wire \Mcount_counter_cy<5>_rt_163 ;
  wire \Mcount_counter_cy<6>_rt_164 ;
  wire \Mcount_counter_cy<7>_rt_165 ;
  wire \Mcount_counter_cy<8>_rt_166 ;
  wire \Mcount_counter_cy<9>_rt_167 ;
  wire \Mcount_counter_cy<10>_rt_168 ;
  wire \Mcount_counter_cy<11>_rt_169 ;
  wire \Mcount_counter_cy<12>_rt_170 ;
  wire \Mcount_counter_cy<13>_rt_171 ;
  wire \Mcount_counter_cy<14>_rt_172 ;
  wire \Mcount_counter_cy<15>_rt_173 ;
  wire \Mcount_counter_cy<16>_rt_174 ;
  wire \Mcount_counter_cy<17>_rt_175 ;
  wire \Mcount_counter_cy<18>_rt_176 ;
  wire \Mcount_counter_cy<19>_rt_177 ;
  wire \Mcount_counter_cy<20>_rt_178 ;
  wire \Mcount_counter_cy<21>_rt_179 ;
  wire \Mcount_counter_cy<22>_rt_180 ;
  wire \Mcount_counter_cy<23>_rt_181 ;
  wire \Mcount_counter_cy<24>_rt_182 ;
  wire \Mcount_counter_cy<25>_rt_183 ;
  wire \Mcount_counter_cy<26>_rt_184 ;
  wire \Mcount_counter_xor<27>_rt_185 ;
  wire N01;
  wire N11;
  wire N3;
  wire N4;
  wire counter_0_rstpot_190;
  wire counter_1_rstpot_191;
  wire counter_2_rstpot_192;
  wire counter_3_rstpot_193;
  wire counter_4_rstpot_194;
  wire counter_5_rstpot_195;
  wire counter_6_rstpot_196;
  wire counter_7_rstpot_197;
  wire counter_8_rstpot_198;
  wire counter_9_rstpot_199;
  wire counter_10_rstpot_200;
  wire counter_11_rstpot_201;
  wire counter_12_rstpot_202;
  wire counter_13_rstpot_203;
  wire counter_14_rstpot_204;
  wire counter_15_rstpot_205;
  wire counter_16_rstpot_206;
  wire counter_17_rstpot_207;
  wire counter_18_rstpot_208;
  wire counter_19_rstpot_209;
  wire counter_20_rstpot_210;
  wire counter_21_rstpot_211;
  wire counter_22_rstpot_212;
  wire counter_23_rstpot_213;
  wire counter_24_rstpot_214;
  wire counter_25_rstpot_215;
  wire counter_26_rstpot_216;
  wire counter_27_rstpot_217;
  wire [27 : 0] counter;
  wire [27 : 0] Result;
  wire [5 : 0] Mcompar_n0001_lut;
  wire [5 : 0] Mcompar_n0001_cy;
  wire [2 : 0] count;
  wire [0 : 0] Mcount_counter_lut;
  wire [26 : 0] Mcount_counter_cy;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FD   clock_out_3 (
    .C(clk_BUFGP_0),
    .D(\counter[27]_GND_1_o_LessThan_5_o ),
    .Q(clock_out_OBUF_2)
  );
  FDCE   count_0 (
    .C(clock_out_OBUF_2),
    .CE(_n0087_inv),
    .CLR(rst_IBUF_1),
    .D(\ps[2]_count[3]_wide_mux_32_OUT<0> ),
    .Q(count[0])
  );
  FDCE   count_1 (
    .C(clock_out_OBUF_2),
    .CE(_n0087_inv),
    .CLR(rst_IBUF_1),
    .D(\ps[2]_count[3]_wide_mux_32_OUT<1> ),
    .Q(count[1])
  );
  FDCE   count_2 (
    .C(clock_out_OBUF_2),
    .CE(_n0087_inv),
    .CLR(rst_IBUF_1),
    .D(\ps[2]_count[3]_wide_mux_32_OUT<2> ),
    .Q(count[2])
  );
  FDC   ps_FSM_FFd3 (
    .C(clock_out_OBUF_2),
    .CLR(rst_IBUF_1),
    .D(\ps_FSM_FFd3-In ),
    .Q(ps_FSM_FFd3_32)
  );
  FDC   ps_FSM_FFd2 (
    .C(clock_out_OBUF_2),
    .CLR(rst_IBUF_1),
    .D(\ps_FSM_FFd2-In ),
    .Q(ps_FSM_FFd2_31)
  );
  FDC   ps_FSM_FFd1 (
    .C(clock_out_OBUF_2),
    .CLR(rst_IBUF_1),
    .D(\ps_FSM_FFd1-In ),
    .Q(ps_FSM_FFd1_41)
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \Mcompar_n0001_lut<0>  (
    .I0(counter[0]),
    .I1(counter[1]),
    .I2(counter[2]),
    .I3(counter[3]),
    .I4(counter[4]),
    .O(Mcompar_n0001_lut[0])
  );
  MUXCY   \Mcompar_n0001_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(Mcompar_n0001_lut[0]),
    .O(Mcompar_n0001_cy[0])
  );
  LUT5 #(
    .INIT ( 32'h00008000 ))
  \Mcompar_n0001_lut<1>  (
    .I0(counter[5]),
    .I1(counter[7]),
    .I2(counter[6]),
    .I3(counter[8]),
    .I4(counter[9]),
    .O(Mcompar_n0001_lut[1])
  );
  MUXCY   \Mcompar_n0001_cy<1>  (
    .CI(Mcompar_n0001_cy[0]),
    .DI(counter[9]),
    .S(Mcompar_n0001_lut[1]),
    .O(Mcompar_n0001_cy[1])
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  Mcompar_n0001_lutdi (
    .I0(counter[13]),
    .I1(counter[12]),
    .I2(counter[11]),
    .I3(counter[14]),
    .O(Mcompar_n0001_lutdi_86)
  );
  LUT5 #(
    .INIT ( 32'h00004000 ))
  \Mcompar_n0001_lut<2>  (
    .I0(counter[11]),
    .I1(counter[10]),
    .I2(counter[12]),
    .I3(counter[13]),
    .I4(counter[14]),
    .O(Mcompar_n0001_lut[2])
  );
  MUXCY   \Mcompar_n0001_cy<2>  (
    .CI(Mcompar_n0001_cy[1]),
    .DI(Mcompar_n0001_lutdi_86),
    .S(Mcompar_n0001_lut[2]),
    .O(Mcompar_n0001_cy[2])
  );
  LUT5 #(
    .INIT ( 32'h80808000 ))
  Mcompar_n0001_lutdi1 (
    .I0(counter[19]),
    .I1(counter[18]),
    .I2(counter[17]),
    .I3(counter[16]),
    .I4(counter[15]),
    .O(Mcompar_n0001_lutdi1_89)
  );
  LUT5 #(
    .INIT ( 32'h00004000 ))
  \Mcompar_n0001_lut<3>  (
    .I0(counter[15]),
    .I1(counter[19]),
    .I2(counter[17]),
    .I3(counter[18]),
    .I4(counter[16]),
    .O(Mcompar_n0001_lut[3])
  );
  MUXCY   \Mcompar_n0001_cy<3>  (
    .CI(Mcompar_n0001_cy[2]),
    .DI(Mcompar_n0001_lutdi1_89),
    .S(Mcompar_n0001_lut[3]),
    .O(Mcompar_n0001_cy[3])
  );
  LUT5 #(
    .INIT ( 32'hAAAA8000 ))
  Mcompar_n0001_lutdi2 (
    .I0(counter[24]),
    .I1(counter[22]),
    .I2(counter[21]),
    .I3(counter[20]),
    .I4(counter[23]),
    .O(Mcompar_n0001_lutdi2_92)
  );
  LUT5 #(
    .INIT ( 32'h00004000 ))
  \Mcompar_n0001_lut<4>  (
    .I0(counter[20]),
    .I1(counter[24]),
    .I2(counter[22]),
    .I3(counter[21]),
    .I4(counter[23]),
    .O(Mcompar_n0001_lut[4])
  );
  MUXCY   \Mcompar_n0001_cy<4>  (
    .CI(Mcompar_n0001_cy[3]),
    .DI(Mcompar_n0001_lutdi2_92),
    .S(Mcompar_n0001_lut[4]),
    .O(Mcompar_n0001_cy[4])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  Mcompar_n0001_lutdi3 (
    .I0(counter[27]),
    .I1(counter[26]),
    .I2(counter[25]),
    .O(Mcompar_n0001_lutdi3_95)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \Mcompar_n0001_lut<5>  (
    .I0(counter[25]),
    .I1(counter[26]),
    .I2(counter[27]),
    .O(Mcompar_n0001_lut[5])
  );
  MUXCY   \Mcompar_n0001_cy<5>  (
    .CI(Mcompar_n0001_cy[4]),
    .DI(Mcompar_n0001_lutdi3_95),
    .S(Mcompar_n0001_lut[5]),
    .O(Mcompar_n0001_cy[5])
  );
  MUXCY   \Mcount_counter_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(Mcount_counter_lut[0]),
    .O(Mcount_counter_cy[0])
  );
  XORCY   \Mcount_counter_xor<0>  (
    .CI(N1),
    .LI(Mcount_counter_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_counter_cy<1>  (
    .CI(Mcount_counter_cy[0]),
    .DI(N1),
    .S(\Mcount_counter_cy<1>_rt_159 ),
    .O(Mcount_counter_cy[1])
  );
  XORCY   \Mcount_counter_xor<1>  (
    .CI(Mcount_counter_cy[0]),
    .LI(\Mcount_counter_cy<1>_rt_159 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_counter_cy<2>  (
    .CI(Mcount_counter_cy[1]),
    .DI(N1),
    .S(\Mcount_counter_cy<2>_rt_160 ),
    .O(Mcount_counter_cy[2])
  );
  XORCY   \Mcount_counter_xor<2>  (
    .CI(Mcount_counter_cy[1]),
    .LI(\Mcount_counter_cy<2>_rt_160 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_counter_cy<3>  (
    .CI(Mcount_counter_cy[2]),
    .DI(N1),
    .S(\Mcount_counter_cy<3>_rt_161 ),
    .O(Mcount_counter_cy[3])
  );
  XORCY   \Mcount_counter_xor<3>  (
    .CI(Mcount_counter_cy[2]),
    .LI(\Mcount_counter_cy<3>_rt_161 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_counter_cy<4>  (
    .CI(Mcount_counter_cy[3]),
    .DI(N1),
    .S(\Mcount_counter_cy<4>_rt_162 ),
    .O(Mcount_counter_cy[4])
  );
  XORCY   \Mcount_counter_xor<4>  (
    .CI(Mcount_counter_cy[3]),
    .LI(\Mcount_counter_cy<4>_rt_162 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_counter_cy<5>  (
    .CI(Mcount_counter_cy[4]),
    .DI(N1),
    .S(\Mcount_counter_cy<5>_rt_163 ),
    .O(Mcount_counter_cy[5])
  );
  XORCY   \Mcount_counter_xor<5>  (
    .CI(Mcount_counter_cy[4]),
    .LI(\Mcount_counter_cy<5>_rt_163 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_counter_cy<6>  (
    .CI(Mcount_counter_cy[5]),
    .DI(N1),
    .S(\Mcount_counter_cy<6>_rt_164 ),
    .O(Mcount_counter_cy[6])
  );
  XORCY   \Mcount_counter_xor<6>  (
    .CI(Mcount_counter_cy[5]),
    .LI(\Mcount_counter_cy<6>_rt_164 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_counter_cy<7>  (
    .CI(Mcount_counter_cy[6]),
    .DI(N1),
    .S(\Mcount_counter_cy<7>_rt_165 ),
    .O(Mcount_counter_cy[7])
  );
  XORCY   \Mcount_counter_xor<7>  (
    .CI(Mcount_counter_cy[6]),
    .LI(\Mcount_counter_cy<7>_rt_165 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_counter_cy<8>  (
    .CI(Mcount_counter_cy[7]),
    .DI(N1),
    .S(\Mcount_counter_cy<8>_rt_166 ),
    .O(Mcount_counter_cy[8])
  );
  XORCY   \Mcount_counter_xor<8>  (
    .CI(Mcount_counter_cy[7]),
    .LI(\Mcount_counter_cy<8>_rt_166 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_counter_cy<9>  (
    .CI(Mcount_counter_cy[8]),
    .DI(N1),
    .S(\Mcount_counter_cy<9>_rt_167 ),
    .O(Mcount_counter_cy[9])
  );
  XORCY   \Mcount_counter_xor<9>  (
    .CI(Mcount_counter_cy[8]),
    .LI(\Mcount_counter_cy<9>_rt_167 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_counter_cy<10>  (
    .CI(Mcount_counter_cy[9]),
    .DI(N1),
    .S(\Mcount_counter_cy<10>_rt_168 ),
    .O(Mcount_counter_cy[10])
  );
  XORCY   \Mcount_counter_xor<10>  (
    .CI(Mcount_counter_cy[9]),
    .LI(\Mcount_counter_cy<10>_rt_168 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_counter_cy<11>  (
    .CI(Mcount_counter_cy[10]),
    .DI(N1),
    .S(\Mcount_counter_cy<11>_rt_169 ),
    .O(Mcount_counter_cy[11])
  );
  XORCY   \Mcount_counter_xor<11>  (
    .CI(Mcount_counter_cy[10]),
    .LI(\Mcount_counter_cy<11>_rt_169 ),
    .O(Result[11])
  );
  MUXCY   \Mcount_counter_cy<12>  (
    .CI(Mcount_counter_cy[11]),
    .DI(N1),
    .S(\Mcount_counter_cy<12>_rt_170 ),
    .O(Mcount_counter_cy[12])
  );
  XORCY   \Mcount_counter_xor<12>  (
    .CI(Mcount_counter_cy[11]),
    .LI(\Mcount_counter_cy<12>_rt_170 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_counter_cy<13>  (
    .CI(Mcount_counter_cy[12]),
    .DI(N1),
    .S(\Mcount_counter_cy<13>_rt_171 ),
    .O(Mcount_counter_cy[13])
  );
  XORCY   \Mcount_counter_xor<13>  (
    .CI(Mcount_counter_cy[12]),
    .LI(\Mcount_counter_cy<13>_rt_171 ),
    .O(Result[13])
  );
  MUXCY   \Mcount_counter_cy<14>  (
    .CI(Mcount_counter_cy[13]),
    .DI(N1),
    .S(\Mcount_counter_cy<14>_rt_172 ),
    .O(Mcount_counter_cy[14])
  );
  XORCY   \Mcount_counter_xor<14>  (
    .CI(Mcount_counter_cy[13]),
    .LI(\Mcount_counter_cy<14>_rt_172 ),
    .O(Result[14])
  );
  MUXCY   \Mcount_counter_cy<15>  (
    .CI(Mcount_counter_cy[14]),
    .DI(N1),
    .S(\Mcount_counter_cy<15>_rt_173 ),
    .O(Mcount_counter_cy[15])
  );
  XORCY   \Mcount_counter_xor<15>  (
    .CI(Mcount_counter_cy[14]),
    .LI(\Mcount_counter_cy<15>_rt_173 ),
    .O(Result[15])
  );
  MUXCY   \Mcount_counter_cy<16>  (
    .CI(Mcount_counter_cy[15]),
    .DI(N1),
    .S(\Mcount_counter_cy<16>_rt_174 ),
    .O(Mcount_counter_cy[16])
  );
  XORCY   \Mcount_counter_xor<16>  (
    .CI(Mcount_counter_cy[15]),
    .LI(\Mcount_counter_cy<16>_rt_174 ),
    .O(Result[16])
  );
  MUXCY   \Mcount_counter_cy<17>  (
    .CI(Mcount_counter_cy[16]),
    .DI(N1),
    .S(\Mcount_counter_cy<17>_rt_175 ),
    .O(Mcount_counter_cy[17])
  );
  XORCY   \Mcount_counter_xor<17>  (
    .CI(Mcount_counter_cy[16]),
    .LI(\Mcount_counter_cy<17>_rt_175 ),
    .O(Result[17])
  );
  MUXCY   \Mcount_counter_cy<18>  (
    .CI(Mcount_counter_cy[17]),
    .DI(N1),
    .S(\Mcount_counter_cy<18>_rt_176 ),
    .O(Mcount_counter_cy[18])
  );
  XORCY   \Mcount_counter_xor<18>  (
    .CI(Mcount_counter_cy[17]),
    .LI(\Mcount_counter_cy<18>_rt_176 ),
    .O(Result[18])
  );
  MUXCY   \Mcount_counter_cy<19>  (
    .CI(Mcount_counter_cy[18]),
    .DI(N1),
    .S(\Mcount_counter_cy<19>_rt_177 ),
    .O(Mcount_counter_cy[19])
  );
  XORCY   \Mcount_counter_xor<19>  (
    .CI(Mcount_counter_cy[18]),
    .LI(\Mcount_counter_cy<19>_rt_177 ),
    .O(Result[19])
  );
  MUXCY   \Mcount_counter_cy<20>  (
    .CI(Mcount_counter_cy[19]),
    .DI(N1),
    .S(\Mcount_counter_cy<20>_rt_178 ),
    .O(Mcount_counter_cy[20])
  );
  XORCY   \Mcount_counter_xor<20>  (
    .CI(Mcount_counter_cy[19]),
    .LI(\Mcount_counter_cy<20>_rt_178 ),
    .O(Result[20])
  );
  MUXCY   \Mcount_counter_cy<21>  (
    .CI(Mcount_counter_cy[20]),
    .DI(N1),
    .S(\Mcount_counter_cy<21>_rt_179 ),
    .O(Mcount_counter_cy[21])
  );
  XORCY   \Mcount_counter_xor<21>  (
    .CI(Mcount_counter_cy[20]),
    .LI(\Mcount_counter_cy<21>_rt_179 ),
    .O(Result[21])
  );
  MUXCY   \Mcount_counter_cy<22>  (
    .CI(Mcount_counter_cy[21]),
    .DI(N1),
    .S(\Mcount_counter_cy<22>_rt_180 ),
    .O(Mcount_counter_cy[22])
  );
  XORCY   \Mcount_counter_xor<22>  (
    .CI(Mcount_counter_cy[21]),
    .LI(\Mcount_counter_cy<22>_rt_180 ),
    .O(Result[22])
  );
  MUXCY   \Mcount_counter_cy<23>  (
    .CI(Mcount_counter_cy[22]),
    .DI(N1),
    .S(\Mcount_counter_cy<23>_rt_181 ),
    .O(Mcount_counter_cy[23])
  );
  XORCY   \Mcount_counter_xor<23>  (
    .CI(Mcount_counter_cy[22]),
    .LI(\Mcount_counter_cy<23>_rt_181 ),
    .O(Result[23])
  );
  MUXCY   \Mcount_counter_cy<24>  (
    .CI(Mcount_counter_cy[23]),
    .DI(N1),
    .S(\Mcount_counter_cy<24>_rt_182 ),
    .O(Mcount_counter_cy[24])
  );
  XORCY   \Mcount_counter_xor<24>  (
    .CI(Mcount_counter_cy[23]),
    .LI(\Mcount_counter_cy<24>_rt_182 ),
    .O(Result[24])
  );
  MUXCY   \Mcount_counter_cy<25>  (
    .CI(Mcount_counter_cy[24]),
    .DI(N1),
    .S(\Mcount_counter_cy<25>_rt_183 ),
    .O(Mcount_counter_cy[25])
  );
  XORCY   \Mcount_counter_xor<25>  (
    .CI(Mcount_counter_cy[24]),
    .LI(\Mcount_counter_cy<25>_rt_183 ),
    .O(Result[25])
  );
  MUXCY   \Mcount_counter_cy<26>  (
    .CI(Mcount_counter_cy[25]),
    .DI(N1),
    .S(\Mcount_counter_cy<26>_rt_184 ),
    .O(Mcount_counter_cy[26])
  );
  XORCY   \Mcount_counter_xor<26>  (
    .CI(Mcount_counter_cy[25]),
    .LI(\Mcount_counter_cy<26>_rt_184 ),
    .O(Result[26])
  );
  XORCY   \Mcount_counter_xor<27>  (
    .CI(Mcount_counter_cy[26]),
    .LI(\Mcount_counter_xor<27>_rt_185 ),
    .O(Result[27])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  _n0087_inv1 (
    .I0(ps_FSM_FFd1_41),
    .I1(ps_FSM_FFd2_31),
    .O(_n0087_inv)
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \ps__n0096<0>1  (
    .I0(ps_FSM_FFd2_31),
    .I1(ps_FSM_FFd1_41),
    .I2(ps_FSM_FFd3_32),
    .O(light_M1_G_OBUF_43)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  light_M1_Y1 (
    .I0(ps_FSM_FFd3_32),
    .I1(ps_FSM_FFd2_31),
    .O(light_M1_Y_OBUF_42)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \ps__n0096<3>1  (
    .I0(ps_FSM_FFd3_32),
    .I1(ps_FSM_FFd2_31),
    .I2(ps_FSM_FFd1_41),
    .O(light_M2_G_OBUF_40)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \ps__n0096<5>1  (
    .I0(ps_FSM_FFd1_41),
    .I1(ps_FSM_FFd2_31),
    .O(light_M2_R_OBUF_38)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \ps__n0096<6>1  (
    .I0(ps_FSM_FFd3_32),
    .I1(ps_FSM_FFd2_31),
    .O(light_MT_G_OBUF_37)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \ps__n0096<9>1  (
    .I0(ps_FSM_FFd3_32),
    .I1(ps_FSM_FFd1_41),
    .O(light_S_G_OBUF_35)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ps__n0096<10>1  (
    .I0(ps_FSM_FFd3_32),
    .I1(ps_FSM_FFd1_41),
    .O(light_S_Y_OBUF_34)
  );
  LUT6 #(
    .INIT ( 64'h0100001001101010 ))
  \Mmux_ps[2]_count[3]_wide_mux_32_OUT31  (
    .I0(ps_FSM_FFd1_41),
    .I1(ps_FSM_FFd3_32),
    .I2(count[2]),
    .I3(count[0]),
    .I4(count[1]),
    .I5(ps_FSM_FFd2_31),
    .O(\ps[2]_count[3]_wide_mux_32_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h0001010111551155 ))
  \Mmux_ps[2]_count[3]_wide_mux_32_OUT11  (
    .I0(count[0]),
    .I1(ps_FSM_FFd3_32),
    .I2(ps_FSM_FFd1_41),
    .I3(count[1]),
    .I4(ps_FSM_FFd2_31),
    .I5(count[2]),
    .O(\ps[2]_count[3]_wide_mux_32_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h001C001C001C141C ))
  \Mmux_ps[2]_count[3]_wide_mux_32_OUT21  (
    .I0(ps_FSM_FFd3_32),
    .I1(count[0]),
    .I2(count[1]),
    .I3(count[2]),
    .I4(ps_FSM_FFd1_41),
    .I5(ps_FSM_FFd2_31),
    .O(\ps[2]_count[3]_wide_mux_32_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h5656464646424202 ))
  \ps_FSM_FFd3-In1  (
    .I0(ps_FSM_FFd3_32),
    .I1(count[2]),
    .I2(count[1]),
    .I3(ps_FSM_FFd2_31),
    .I4(count[0]),
    .I5(ps_FSM_FFd1_41),
    .O(\ps_FSM_FFd3-In )
  );
  LUT5 #(
    .INIT ( 32'h464646CC ))
  \ps_FSM_FFd2-In21  (
    .I0(ps_FSM_FFd3_32),
    .I1(ps_FSM_FFd2_31),
    .I2(ps_FSM_FFd1_41),
    .I3(count[2]),
    .I4(count[1]),
    .O(\ps_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'hDDDF8880 ))
  \ps_FSM_FFd1-In11  (
    .I0(ps_FSM_FFd3_32),
    .I1(ps_FSM_FFd2_31),
    .I2(count[1]),
    .I3(count[2]),
    .I4(ps_FSM_FFd1_41),
    .O(\ps_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  light_M2_Y1 (
    .I0(ps_FSM_FFd3_32),
    .I1(ps_FSM_FFd2_31),
    .I2(ps_FSM_FFd1_41),
    .O(light_M2_Y_OBUF_39)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \counter[27]_GND_1_o_LessThan_5_o31  (
    .I0(counter[26]),
    .I1(counter[27]),
    .I2(counter[25]),
    .I3(counter[24]),
    .O(\counter[27]_GND_1_o_LessThan_5_o3 )
  );
  LUT6 #(
    .INIT ( 64'h0111555555555555 ))
  \counter[27]_GND_1_o_LessThan_5_o32  (
    .I0(counter[15]),
    .I1(counter[10]),
    .I2(counter[8]),
    .I3(counter[9]),
    .I4(counter[11]),
    .I5(counter[12]),
    .O(\counter[27]_GND_1_o_LessThan_5_o31_130 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \counter[27]_GND_1_o_LessThan_5_o33  (
    .I0(counter[13]),
    .I1(counter[14]),
    .O(\counter[27]_GND_1_o_LessThan_5_o32_131 )
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_1)
  );
  OBUF   light_M1_2_OBUF (
    .I(ps_FSM_FFd1_41),
    .O(light_M1[2])
  );
  OBUF   light_M1_1_OBUF (
    .I(light_M1_Y_OBUF_42),
    .O(light_M1[1])
  );
  OBUF   light_M1_0_OBUF (
    .I(light_M1_G_OBUF_43),
    .O(light_M1[0])
  );
  OBUF   light_S_2_OBUF (
    .I(light_S_R_OBUF_33),
    .O(light_S[2])
  );
  OBUF   light_S_1_OBUF (
    .I(light_S_Y_OBUF_34),
    .O(light_S[1])
  );
  OBUF   light_S_0_OBUF (
    .I(light_S_G_OBUF_35),
    .O(light_S[0])
  );
  OBUF   light_MT_2_OBUF (
    .I(light_MT_R_OBUF_36),
    .O(light_MT[2])
  );
  OBUF   light_MT_1_OBUF (
    .I(light_M1_Y_OBUF_42),
    .O(light_MT[1])
  );
  OBUF   light_MT_0_OBUF (
    .I(light_MT_G_OBUF_37),
    .O(light_MT[0])
  );
  OBUF   light_M2_2_OBUF (
    .I(light_M2_R_OBUF_38),
    .O(light_M2[2])
  );
  OBUF   light_M2_1_OBUF (
    .I(light_M2_Y_OBUF_39),
    .O(light_M2[1])
  );
  OBUF   light_M2_0_OBUF (
    .I(light_M2_G_OBUF_40),
    .O(light_M2[0])
  );
  OBUF   clock_out_OBUF (
    .I(clock_out_OBUF_2),
    .O(clock_out)
  );
  OBUF   light_M1_R_OBUF (
    .I(ps_FSM_FFd1_41),
    .O(light_M1_R)
  );
  OBUF   light_M1_Y_OBUF (
    .I(light_M1_Y_OBUF_42),
    .O(light_M1_Y)
  );
  OBUF   light_M1_G_OBUF (
    .I(light_M1_G_OBUF_43),
    .O(light_M1_G)
  );
  OBUF   light_S_R_OBUF (
    .I(light_S_R_OBUF_33),
    .O(light_S_R)
  );
  OBUF   light_S_Y_OBUF (
    .I(light_S_Y_OBUF_34),
    .O(light_S_Y)
  );
  OBUF   light_S_G_OBUF (
    .I(light_S_G_OBUF_35),
    .O(light_S_G)
  );
  OBUF   light_MT_R_OBUF (
    .I(light_MT_R_OBUF_36),
    .O(light_MT_R)
  );
  OBUF   light_MT_Y_OBUF (
    .I(light_M1_Y_OBUF_42),
    .O(light_MT_Y)
  );
  OBUF   light_MT_G_OBUF (
    .I(light_MT_G_OBUF_37),
    .O(light_MT_G)
  );
  OBUF   light_M2_R_OBUF (
    .I(light_M2_R_OBUF_38),
    .O(light_M2_R)
  );
  OBUF   light_M2_Y_OBUF (
    .I(light_M2_Y_OBUF_39),
    .O(light_M2_Y)
  );
  OBUF   light_M2_G_OBUF (
    .I(light_M2_G_OBUF_40),
    .O(light_M2_G)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<1>_rt  (
    .I0(counter[1]),
    .O(\Mcount_counter_cy<1>_rt_159 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<2>_rt  (
    .I0(counter[2]),
    .O(\Mcount_counter_cy<2>_rt_160 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<3>_rt  (
    .I0(counter[3]),
    .O(\Mcount_counter_cy<3>_rt_161 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<4>_rt  (
    .I0(counter[4]),
    .O(\Mcount_counter_cy<4>_rt_162 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<5>_rt  (
    .I0(counter[5]),
    .O(\Mcount_counter_cy<5>_rt_163 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<6>_rt  (
    .I0(counter[6]),
    .O(\Mcount_counter_cy<6>_rt_164 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<7>_rt  (
    .I0(counter[7]),
    .O(\Mcount_counter_cy<7>_rt_165 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<8>_rt  (
    .I0(counter[8]),
    .O(\Mcount_counter_cy<8>_rt_166 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<9>_rt  (
    .I0(counter[9]),
    .O(\Mcount_counter_cy<9>_rt_167 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<10>_rt  (
    .I0(counter[10]),
    .O(\Mcount_counter_cy<10>_rt_168 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<11>_rt  (
    .I0(counter[11]),
    .O(\Mcount_counter_cy<11>_rt_169 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<12>_rt  (
    .I0(counter[12]),
    .O(\Mcount_counter_cy<12>_rt_170 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<13>_rt  (
    .I0(counter[13]),
    .O(\Mcount_counter_cy<13>_rt_171 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<14>_rt  (
    .I0(counter[14]),
    .O(\Mcount_counter_cy<14>_rt_172 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<15>_rt  (
    .I0(counter[15]),
    .O(\Mcount_counter_cy<15>_rt_173 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<16>_rt  (
    .I0(counter[16]),
    .O(\Mcount_counter_cy<16>_rt_174 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<17>_rt  (
    .I0(counter[17]),
    .O(\Mcount_counter_cy<17>_rt_175 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<18>_rt  (
    .I0(counter[18]),
    .O(\Mcount_counter_cy<18>_rt_176 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<19>_rt  (
    .I0(counter[19]),
    .O(\Mcount_counter_cy<19>_rt_177 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<20>_rt  (
    .I0(counter[20]),
    .O(\Mcount_counter_cy<20>_rt_178 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<21>_rt  (
    .I0(counter[21]),
    .O(\Mcount_counter_cy<21>_rt_179 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<22>_rt  (
    .I0(counter[22]),
    .O(\Mcount_counter_cy<22>_rt_180 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<23>_rt  (
    .I0(counter[23]),
    .O(\Mcount_counter_cy<23>_rt_181 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<24>_rt  (
    .I0(counter[24]),
    .O(\Mcount_counter_cy<24>_rt_182 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<25>_rt  (
    .I0(counter[25]),
    .O(\Mcount_counter_cy<25>_rt_183 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<26>_rt  (
    .I0(counter[26]),
    .O(\Mcount_counter_cy<26>_rt_184 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_xor<27>_rt  (
    .I0(counter[27]),
    .O(\Mcount_counter_xor<27>_rt_185 )
  );
  LUT5 #(
    .INIT ( 32'hECCC0000 ))
  \counter[27]_GND_1_o_LessThan_5_o34_SW0  (
    .I0(counter[19]),
    .I1(counter[22]),
    .I2(counter[20]),
    .I3(counter[21]),
    .I4(counter[23]),
    .O(N01)
  );
  LUT6 #(
    .INIT ( 64'h0000D05020A0F0F0 ))
  \counter[27]_GND_1_o_LessThan_5_o35  (
    .I0(counter[18]),
    .I1(\counter[27]_GND_1_o_LessThan_5_o32_131 ),
    .I2(\counter[27]_GND_1_o_LessThan_5_o3 ),
    .I3(\counter[27]_GND_1_o_LessThan_5_o31_130 ),
    .I4(N01),
    .I5(N11),
    .O(\counter[27]_GND_1_o_LessThan_5_o )
  );
  MUXF7   \counter[27]_GND_1_o_LessThan_5_o34_SW1  (
    .I0(N3),
    .I1(N4),
    .S(counter[19]),
    .O(N11)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA80000000 ))
  \counter[27]_GND_1_o_LessThan_5_o34_SW1_F  (
    .I0(counter[23]),
    .I1(counter[17]),
    .I2(counter[16]),
    .I3(counter[21]),
    .I4(counter[20]),
    .I5(counter[22]),
    .O(N3)
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \counter[27]_GND_1_o_LessThan_5_o34_SW1_G  (
    .I0(counter[23]),
    .I1(counter[21]),
    .I2(counter[20]),
    .I3(counter[22]),
    .O(N4)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_0_rstpot (
    .I0(Result[0]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_0_rstpot_190)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_0 (
    .C(clk_BUFGP_0),
    .D(counter_0_rstpot_190),
    .Q(counter[0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_1_rstpot (
    .I0(Result[1]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_1_rstpot_191)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_1 (
    .C(clk_BUFGP_0),
    .D(counter_1_rstpot_191),
    .Q(counter[1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_2_rstpot (
    .I0(Result[2]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_2_rstpot_192)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_2 (
    .C(clk_BUFGP_0),
    .D(counter_2_rstpot_192),
    .Q(counter[2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_3_rstpot (
    .I0(Result[3]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_3_rstpot_193)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_3 (
    .C(clk_BUFGP_0),
    .D(counter_3_rstpot_193),
    .Q(counter[3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_4_rstpot (
    .I0(Result[4]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_4_rstpot_194)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_4 (
    .C(clk_BUFGP_0),
    .D(counter_4_rstpot_194),
    .Q(counter[4])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_5_rstpot (
    .I0(Result[5]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_5_rstpot_195)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_5 (
    .C(clk_BUFGP_0),
    .D(counter_5_rstpot_195),
    .Q(counter[5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_6_rstpot (
    .I0(Result[6]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_6_rstpot_196)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_6 (
    .C(clk_BUFGP_0),
    .D(counter_6_rstpot_196),
    .Q(counter[6])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_7_rstpot (
    .I0(Result[7]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_7_rstpot_197)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_7 (
    .C(clk_BUFGP_0),
    .D(counter_7_rstpot_197),
    .Q(counter[7])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_8_rstpot (
    .I0(Result[8]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_8_rstpot_198)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_8 (
    .C(clk_BUFGP_0),
    .D(counter_8_rstpot_198),
    .Q(counter[8])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_9_rstpot (
    .I0(Result[9]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_9_rstpot_199)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_9 (
    .C(clk_BUFGP_0),
    .D(counter_9_rstpot_199),
    .Q(counter[9])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_10_rstpot (
    .I0(Result[10]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_10_rstpot_200)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_10 (
    .C(clk_BUFGP_0),
    .D(counter_10_rstpot_200),
    .Q(counter[10])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_11_rstpot (
    .I0(Result[11]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_11_rstpot_201)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_11 (
    .C(clk_BUFGP_0),
    .D(counter_11_rstpot_201),
    .Q(counter[11])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_12_rstpot (
    .I0(Result[12]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_12_rstpot_202)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_12 (
    .C(clk_BUFGP_0),
    .D(counter_12_rstpot_202),
    .Q(counter[12])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_13_rstpot (
    .I0(Result[13]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_13_rstpot_203)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_13 (
    .C(clk_BUFGP_0),
    .D(counter_13_rstpot_203),
    .Q(counter[13])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_14_rstpot (
    .I0(Result[14]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_14_rstpot_204)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_14 (
    .C(clk_BUFGP_0),
    .D(counter_14_rstpot_204),
    .Q(counter[14])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_15_rstpot (
    .I0(Result[15]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_15_rstpot_205)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_15 (
    .C(clk_BUFGP_0),
    .D(counter_15_rstpot_205),
    .Q(counter[15])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_16_rstpot (
    .I0(Result[16]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_16_rstpot_206)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_16 (
    .C(clk_BUFGP_0),
    .D(counter_16_rstpot_206),
    .Q(counter[16])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_17_rstpot (
    .I0(Result[17]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_17_rstpot_207)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_17 (
    .C(clk_BUFGP_0),
    .D(counter_17_rstpot_207),
    .Q(counter[17])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_18_rstpot (
    .I0(Result[18]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_18_rstpot_208)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_18 (
    .C(clk_BUFGP_0),
    .D(counter_18_rstpot_208),
    .Q(counter[18])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_19_rstpot (
    .I0(Result[19]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_19_rstpot_209)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_19 (
    .C(clk_BUFGP_0),
    .D(counter_19_rstpot_209),
    .Q(counter[19])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_20_rstpot (
    .I0(Result[20]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_20_rstpot_210)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_20 (
    .C(clk_BUFGP_0),
    .D(counter_20_rstpot_210),
    .Q(counter[20])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_21_rstpot (
    .I0(Result[21]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_21_rstpot_211)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_21 (
    .C(clk_BUFGP_0),
    .D(counter_21_rstpot_211),
    .Q(counter[21])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_22_rstpot (
    .I0(Result[22]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_22_rstpot_212)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_22 (
    .C(clk_BUFGP_0),
    .D(counter_22_rstpot_212),
    .Q(counter[22])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_23_rstpot (
    .I0(Result[23]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_23_rstpot_213)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_23 (
    .C(clk_BUFGP_0),
    .D(counter_23_rstpot_213),
    .Q(counter[23])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_24_rstpot (
    .I0(Result[24]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_24_rstpot_214)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_24 (
    .C(clk_BUFGP_0),
    .D(counter_24_rstpot_214),
    .Q(counter[24])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_25_rstpot (
    .I0(Result[25]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_25_rstpot_215)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_25 (
    .C(clk_BUFGP_0),
    .D(counter_25_rstpot_215),
    .Q(counter[25])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_26_rstpot (
    .I0(Result[26]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_26_rstpot_216)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_26 (
    .C(clk_BUFGP_0),
    .D(counter_26_rstpot_216),
    .Q(counter[26])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_27_rstpot (
    .I0(Result[27]),
    .I1(Mcompar_n0001_cy[5]),
    .O(counter_27_rstpot_217)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_27 (
    .C(clk_BUFGP_0),
    .D(counter_27_rstpot_217),
    .Q(counter[27])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \Mcount_counter_lut<0>_INV_0  (
    .I(counter[0]),
    .O(Mcount_counter_lut[0])
  );
  INV   \ps__n0096<8>1_INV_0  (
    .I(ps_FSM_FFd2_31),
    .O(light_MT_R_OBUF_36)
  );
  INV   \ps__n0096<11>1_INV_0  (
    .I(ps_FSM_FFd1_41),
    .O(light_S_R_OBUF_33)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

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

