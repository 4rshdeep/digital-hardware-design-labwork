// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Fri Sep 15 15:22:47 2017
// Host        : ad-ubuntu running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /media/ad/Area51/workspace/col215_prac_lab/vivado/lab5/lab5.sim/sim_1/synth/func/lab5_gcd_tb_func_synth.v
// Design      : lab5_gcd
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module FTC_HXILINX_lab5_gcd
   (q_tmp_reg_0,
    clk_IBUF_BUFG);
  output q_tmp_reg_0;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire q_tmp_i_1__17_n_0;
  wire q_tmp_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__17
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__17_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_tmp_i_1__17_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_0
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__18_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__18
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__18_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__18_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_1
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__19_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__19
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__19_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__19_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_10
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__28_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__28
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__28_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__28_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_11
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__29_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__29
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__29_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__29_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_12
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__30_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__30
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__30_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__30_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_13
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__31_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__31
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__31_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__31_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_14
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__32_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__32
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__32_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__32_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_15
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__33_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__33
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__33_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__33_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_16
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__34_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__34
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__34_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__34_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_17
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__35_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__35
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__35_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__35_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_18
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__36_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__36
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__36_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__36_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_19
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__37_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__37
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__37_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__37_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_2
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__20_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__20
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__20_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__20_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_20
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__38_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__38
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__38_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__38_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_21
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__39_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__39
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__39_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__39_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_22
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__40_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__40
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__40_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__40_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_23
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__41_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__41
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__41_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__41_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_24
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__42_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__42
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__42_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__42_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_25
   (clock,
    q_tmp_reg_0,
    clk_IBUF,
    pushbutton_IBUF);
  output clock;
  input q_tmp_reg_0;
  input clk_IBUF;
  input pushbutton_IBUF;

  wire clk_IBUF;
  wire clock;
  wire pushbutton_IBUF;
  wire q2;
  wire q_tmp_i_1__0_n_0;
  wire q_tmp_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    clock_BUFG_inst_i_1
       (.I0(clk_IBUF),
        .I1(q2),
        .I2(pushbutton_IBUF),
        .O(clock));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__0
       (.I0(q2),
        .O(q_tmp_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_0),
        .CE(1'b1),
        .D(q_tmp_i_1__0_n_0),
        .Q(q2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_26
   (q_tmp_reg_0,
    \cathode[0] ,
    \cathode[0]_0 ,
    \cathode[0]_1 ,
    \cathode[0]_2 ,
    q_tmp_reg_1,
    XLXN_21,
    p_0_in,
    p_1_in,
    \c_reg[3]_P ,
    q_tmp_reg_2,
    \d_reg[3]_P ,
    \c_reg[2]_P ,
    \d_reg[2]_P ,
    \c_reg[1]_P ,
    \d_reg[1]_P ,
    \c_reg[0]_P ,
    \d_reg[0]_P );
  output q_tmp_reg_0;
  output \cathode[0] ;
  output \cathode[0]_0 ;
  output \cathode[0]_1 ;
  output \cathode[0]_2 ;
  output q_tmp_reg_1;
  input XLXN_21;
  input [3:0]p_0_in;
  input [3:0]p_1_in;
  input \c_reg[3]_P ;
  input q_tmp_reg_2;
  input \d_reg[3]_P ;
  input \c_reg[2]_P ;
  input \d_reg[2]_P ;
  input \c_reg[1]_P ;
  input \d_reg[1]_P ;
  input \c_reg[0]_P ;
  input \d_reg[0]_P ;

  wire XLXN_21;
  wire \c_reg[0]_P ;
  wire \c_reg[1]_P ;
  wire \c_reg[2]_P ;
  wire \c_reg[3]_P ;
  wire \cathode[0] ;
  wire \cathode[0]_0 ;
  wire \cathode[0]_1 ;
  wire \cathode[0]_2 ;
  wire \d_reg[0]_P ;
  wire \d_reg[1]_P ;
  wire \d_reg[2]_P ;
  wire \d_reg[3]_P ;
  wire [3:0]p_0_in;
  wire [3:0]p_1_in;
  wire q_tmp_i_1_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;
  wire q_tmp_reg_2;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    XLXI_2_i_1
       (.I0(p_0_in[0]),
        .I1(p_1_in[0]),
        .I2(q_tmp_reg_0),
        .I3(\c_reg[0]_P ),
        .I4(q_tmp_reg_2),
        .I5(\d_reg[0]_P ),
        .O(\cathode[0]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    XLXI_2_i_2
       (.I0(p_0_in[3]),
        .I1(p_1_in[3]),
        .I2(q_tmp_reg_0),
        .I3(\c_reg[3]_P ),
        .I4(q_tmp_reg_2),
        .I5(\d_reg[3]_P ),
        .O(\cathode[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    XLXI_3_i_1
       (.I0(p_0_in[2]),
        .I1(p_1_in[2]),
        .I2(q_tmp_reg_0),
        .I3(\c_reg[2]_P ),
        .I4(q_tmp_reg_2),
        .I5(\d_reg[2]_P ),
        .O(\cathode[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    XLXI_4_i_1
       (.I0(p_0_in[1]),
        .I1(p_1_in[1]),
        .I2(q_tmp_reg_0),
        .I3(\c_reg[1]_P ),
        .I4(q_tmp_reg_2),
        .I5(\d_reg[1]_P ),
        .O(\cathode[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    q_tmp_i_1__43
       (.I0(q_tmp_reg_0),
        .I1(q_tmp_reg_2),
        .O(q_tmp_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(XLXN_21),
        .CE(1'b1),
        .D(q_tmp_i_1_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_27
   (XLXN_4_0,
    q_tmp_reg_0,
    XLXN_21);
  output [0:0]XLXN_4_0;
  input q_tmp_reg_0;
  input XLXN_21;

  wire XLXN_21;
  wire [0:0]XLXN_4_0;
  wire q_tmp_reg_0;

  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(XLXN_21),
        .CE(1'b1),
        .D(q_tmp_reg_0),
        .Q(XLXN_4_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_29
   (q_tmp_reg_0,
    clk_IBUF_BUFG);
  output q_tmp_reg_0;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire q_tmp_i_1__1_n_0;
  wire q_tmp_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__1
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(q_tmp_i_1__1_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_3
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__21_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__21
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__21_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__21_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_30
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__2_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__2
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__2_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_31
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__3_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__3
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__3_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_32
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__4_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__4
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__4_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_33
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__5_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__5
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__5_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_34
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__6_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__6
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__6_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_35
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__7_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__7
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__7_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_36
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__8_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__8
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__8_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_37
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__9_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__9
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__9_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_38
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__10_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__10
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__10_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__10_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_39
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__11_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__11
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__11_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__11_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_4
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__22_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__22
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__22_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__22_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_40
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__12_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__12
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__12_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__12_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_41
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__13_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__13
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__13_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__13_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_42
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__14_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__14
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__14_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__14_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_43
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__15_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__15
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__15_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__15_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_44
   (XLXN_18,
    q_tmp_reg_0);
  output XLXN_18;
  input q_tmp_reg_0;

  wire XLXN_18;
  wire q_tmp_i_1__16_n_0;
  wire q_tmp_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__16
       (.I0(XLXN_18),
        .O(q_tmp_i_1__16_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_0),
        .CE(1'b1),
        .D(q_tmp_i_1__16_n_0),
        .Q(XLXN_18),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_5
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__23_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__23
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__23_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__23_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_6
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__24_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__24
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__24_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__24_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_7
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__25_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__25
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__25_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__25_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_8
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__26_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__26
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__26_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__26_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FTC_HXILINX_lab5_gcd" *) 
module FTC_HXILINX_lab5_gcd_9
   (q_tmp_reg_0,
    q_tmp_reg_1);
  output q_tmp_reg_0;
  input q_tmp_reg_1;

  wire q_tmp_i_1__27_n_0;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    q_tmp_i_1__27
       (.I0(q_tmp_reg_0),
        .O(q_tmp_i_1__27_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_tmp_reg
       (.C(q_tmp_reg_1),
        .CE(1'b1),
        .D(q_tmp_i_1__27_n_0),
        .Q(q_tmp_reg_0),
        .R(1'b0));
endmodule

module OR6_HXILINX_lab5_gcd
   (cathode_OBUF,
    XLXN_8,
    XLXN_7,
    XLXN_4,
    XLXN_9,
    XLXN_6,
    XLXN_5);
  output [0:0]cathode_OBUF;
  input XLXN_8;
  input XLXN_7;
  input XLXN_4;
  input XLXN_9;
  input XLXN_6;
  input XLXN_5;

  wire XLXN_4;
  wire XLXN_5;
  wire XLXN_6;
  wire XLXN_7;
  wire XLXN_8;
  wire XLXN_9;
  wire [0:0]cathode_OBUF;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    O
       (.I0(XLXN_8),
        .I1(XLXN_7),
        .I2(XLXN_4),
        .I3(XLXN_9),
        .I4(XLXN_6),
        .I5(XLXN_5),
        .O(cathode_OBUF));
endmodule

(* ORIG_REF_NAME = "OR6_HXILINX_lab5_gcd" *) 
module OR6_HXILINX_lab5_gcd_28
   (cathode_OBUF,
    XLXN_37,
    XLXN_36,
    XLXN_33,
    XLXN_38,
    XLXN_35,
    XLXN_34);
  output [0:0]cathode_OBUF;
  input XLXN_37;
  input XLXN_36;
  input XLXN_33;
  input XLXN_38;
  input XLXN_35;
  input XLXN_34;

  wire XLXN_33;
  wire XLXN_34;
  wire XLXN_35;
  wire XLXN_36;
  wire XLXN_37;
  wire XLXN_38;
  wire [0:0]cathode_OBUF;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    O
       (.I0(XLXN_37),
        .I1(XLXN_36),
        .I2(XLXN_33),
        .I3(XLXN_38),
        .I4(XLXN_35),
        .I5(XLXN_34),
        .O(cathode_OBUF));
endmodule

module ca_MUSER_lab5_gcd
   (cathode_OBUF,
    myx);
  output [0:0]cathode_OBUF;
  input [3:0]myx;

  wire XLXN_10;
  wire XLXN_11;
  wire XLXN_12;
  wire XLXN_14;
  wire XLXN_17;
  wire XLXN_18;
  wire [0:0]cathode_OBUF;
  wire [3:0]myx;

  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_1
       (.I0(XLXN_10),
        .I1(XLXN_12),
        .I2(XLXN_14),
        .O(XLXN_17));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    XLXI_2
       (.I0(myx[0]),
        .I1(XLXN_11),
        .I2(myx[3]),
        .O(XLXN_18));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    XLXI_3
       (.I0(myx[2]),
        .I1(myx[0]),
        .O(XLXN_12));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "XOR2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    XLXI_4
       (.I0(myx[2]),
        .I1(myx[1]),
        .O(XLXN_11));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_5
       (.I0(XLXN_18),
        .I1(XLXN_17),
        .O(cathode_OBUF));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_6
       (.I0(myx[3]),
        .O(XLXN_10));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_7
       (.I0(myx[1]),
        .O(XLXN_14));
endmodule

module cc_MUSER_lab5_gcd
   (cathode_OBUF,
    myx);
  output [0:0]cathode_OBUF;
  input [3:0]myx;

  wire XLXN_17;
  wire XLXN_18;
  wire XLXN_19;
  wire XLXN_20;
  wire [0:0]cathode_OBUF;
  wire [3:0]myx;

  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_10
       (.I0(XLXN_20),
        .I1(XLXN_19),
        .I2(XLXN_18),
        .I3(XLXN_17),
        .O(cathode_OBUF));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    XLXI_11
       (.I0(myx[3]),
        .I1(myx[2]),
        .I2(myx[0]),
        .I3(myx[1]),
        .O(XLXN_17));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    XLXI_12
       (.I0(myx[1]),
        .I1(myx[0]),
        .I2(myx[2]),
        .I3(myx[3]),
        .O(XLXN_18));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XLXI_13
       (.I0(myx[0]),
        .I1(myx[3]),
        .I2(myx[2]),
        .I3(myx[1]),
        .O(XLXN_19));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_14
       (.I0(myx[3]),
        .I1(myx[2]),
        .I2(myx[1]),
        .I3(myx[0]),
        .O(XLXN_20));
endmodule

module cd_MUSER_lab5_gcd
   (cathode_OBUF,
    myx);
  output [0:0]cathode_OBUF;
  input [3:0]myx;

  wire XLXN_18;
  wire XLXN_19;
  wire XLXN_20;
  wire XLXN_21;
  wire XLXN_22;
  wire [0:0]cathode_OBUF;
  wire [3:0]myx;

  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "OR5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    XLXI_10
       (.I0(XLXN_22),
        .I1(XLXN_21),
        .I2(XLXN_20),
        .I3(XLXN_19),
        .I4(XLXN_18),
        .O(cathode_OBUF));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    XLXI_11
       (.I0(myx[3]),
        .I1(myx[2]),
        .I2(myx[1]),
        .I3(myx[0]),
        .O(XLXN_18));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    XLXI_12
       (.I0(myx[3]),
        .I1(myx[1]),
        .I2(myx[0]),
        .I3(myx[2]),
        .O(XLXN_19));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XLXI_13
       (.I0(myx[3]),
        .I1(myx[0]),
        .I2(myx[1]),
        .I3(myx[2]),
        .O(XLXN_20));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    XLXI_14
       (.I0(myx[0]),
        .I1(myx[2]),
        .I2(myx[3]),
        .I3(myx[1]),
        .O(XLXN_21));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_15
       (.I0(myx[3]),
        .I1(myx[2]),
        .I2(myx[1]),
        .I3(myx[0]),
        .O(XLXN_22));
endmodule

module ce_MUSER_lab5_gcd
   (cathode_OBUF,
    myx);
  output [0:0]cathode_OBUF;
  input [3:0]myx;

  wire XLXN_33;
  wire XLXN_34;
  wire XLXN_35;
  wire XLXN_36;
  wire XLXN_37;
  wire XLXN_38;
  wire [0:0]cathode_OBUF;
  wire [3:0]myx;

  (* HU_SET = "XLXI_10_1" *) 
  OR6_HXILINX_lab5_gcd_28 XLXI_10
       (.XLXN_33(XLXN_33),
        .XLXN_34(XLXN_34),
        .XLXN_35(XLXN_35),
        .XLXN_36(XLXN_36),
        .XLXN_37(XLXN_37),
        .XLXN_38(XLXN_38),
        .cathode_OBUF(cathode_OBUF));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    XLXI_11
       (.I0(myx[3]),
        .I1(myx[2]),
        .I2(myx[1]),
        .I3(myx[0]),
        .O(XLXN_33));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    XLXI_12
       (.I0(myx[3]),
        .I1(myx[2]),
        .I2(myx[1]),
        .I3(myx[0]),
        .O(XLXN_34));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    XLXI_13
       (.I0(myx[3]),
        .I1(myx[1]),
        .I2(myx[0]),
        .I3(myx[2]),
        .O(XLXN_35));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    XLXI_14
       (.I0(myx[3]),
        .I1(myx[1]),
        .I2(myx[0]),
        .I3(myx[2]),
        .O(XLXN_36));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XLXI_15
       (.I0(myx[3]),
        .I1(myx[2]),
        .I2(myx[1]),
        .I3(myx[0]),
        .O(XLXN_37));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    XLXI_16
       (.I0(myx[2]),
        .I1(myx[1]),
        .I2(myx[3]),
        .I3(myx[0]),
        .O(XLXN_38));
endmodule

module cf_MUSER_lab5_gcd
   (cathode_OBUF,
    myx);
  output [0:0]cathode_OBUF;
  input [3:0]myx;

  wire XLXN_30;
  wire XLXN_31;
  wire XLXN_32;
  wire XLXN_33;
  wire XLXN_34;
  wire [0:0]cathode_OBUF;
  wire [3:0]myx;

  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "OR5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    XLXI_10
       (.I0(XLXN_30),
        .I1(XLXN_31),
        .I2(XLXN_32),
        .I3(XLXN_33),
        .I4(XLXN_34),
        .O(cathode_OBUF));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    XLXI_11
       (.I0(myx[3]),
        .I1(myx[2]),
        .I2(myx[1]),
        .I3(myx[0]),
        .O(XLXN_34));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    XLXI_12
       (.I0(myx[3]),
        .I1(myx[2]),
        .I2(myx[0]),
        .I3(myx[1]),
        .O(XLXN_33));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    XLXI_13
       (.I0(myx[3]),
        .I1(myx[2]),
        .I2(myx[0]),
        .I3(myx[1]),
        .O(XLXN_32));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XLXI_14
       (.I0(myx[3]),
        .I1(myx[2]),
        .I2(myx[1]),
        .I3(myx[0]),
        .O(XLXN_31));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XLXI_15
       (.I0(myx[1]),
        .I1(myx[3]),
        .I2(myx[2]),
        .I3(myx[0]),
        .O(XLXN_30));
endmodule

module cg_MUSER_lab5_gcd
   (cathode_OBUF,
    myx);
  output [0:0]cathode_OBUF;
  input [3:0]myx;

  wire XLXN_24;
  wire XLXN_25;
  wire XLXN_26;
  wire XLXN_27;
  wire [0:0]cathode_OBUF;
  wire [3:0]myx;

  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "OR4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    XLXI_10
       (.I0(XLXN_27),
        .I1(XLXN_26),
        .I2(XLXN_25),
        .I3(XLXN_24),
        .O(cathode_OBUF));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    XLXI_11
       (.I0(myx[3]),
        .I1(myx[2]),
        .I2(myx[1]),
        .I3(myx[0]),
        .O(XLXN_24));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    XLXI_12
       (.I0(myx[3]),
        .I1(myx[2]),
        .I2(myx[1]),
        .I3(myx[0]),
        .O(XLXN_25));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XLXI_13
       (.I0(myx[3]),
        .I1(myx[2]),
        .I2(myx[1]),
        .I3(myx[0]),
        .O(XLXN_26));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    XLXI_14
       (.I0(myx[1]),
        .I1(myx[0]),
        .I2(myx[2]),
        .I3(myx[3]),
        .O(XLXN_27));
endmodule

(* NotValidForBitStream *)
module lab5_gcd
   (b_i,
    a_i,
    clk,
    pushbutton,
    push_i,
    load,
    sub,
    op_valid,
    anode,
    cathode);
  input [7:0]b_i;
  input [7:0]a_i;
  input clk;
  input pushbutton;
  input push_i;
  output load;
  output sub;
  output op_valid;
  output [3:0]anode;
  output [6:0]cathode;

  wire XLXI_14_n_12;
  wire XLXI_14_n_13;
  wire XLXI_14_n_14;
  wire XLXI_14_n_15;
  wire XLXI_14_n_4;
  wire XLXI_14_n_5;
  wire XLXI_14_n_6;
  wire XLXI_14_n_7;
  wire XLXI_5_n_2;
  wire XLXI_5_n_3;
  wire XLXI_5_n_4;
  wire XLXI_5_n_5;
  wire XLXN_18;
  wire XLXN_19;
  wire XLXN_20;
  wire XLXN_21;
  wire [1:0]XLXN_4_0;
  wire [7:0]a_i;
  wire [7:0]a_i_IBUF;
  wire [3:0]anode;
  wire [3:0]anode_OBUF;
  wire [7:0]b_i;
  wire [7:0]b_i_IBUF;
  wire \c[0]_C_i_1_n_0 ;
  wire \c[0]_C_i_2_n_0 ;
  wire \c[0]_C_i_3_n_0 ;
  wire \c[0]_P_i_2_n_0 ;
  wire \c[1]_C_i_1_n_0 ;
  wire \c[1]_C_i_2_n_0 ;
  wire \c[1]_C_i_3_n_0 ;
  wire \c[1]_P_i_2_n_0 ;
  wire \c[2]_C_i_1_n_0 ;
  wire \c[2]_C_i_2_n_0 ;
  wire \c[2]_C_i_3_n_0 ;
  wire \c[2]_P_i_2_n_0 ;
  wire \c[2]_P_i_3_n_0 ;
  wire \c[3]_C_i_1_n_0 ;
  wire \c[3]_C_i_2_n_0 ;
  wire \c[3]_C_i_3_n_0 ;
  wire \c[3]_C_i_4_n_0 ;
  wire \c[3]_P_i_3_n_0 ;
  wire \c[3]_P_i_4_n_0 ;
  wire \c[3]_P_i_5_n_0 ;
  wire \c[3]_P_i_6_n_0 ;
  wire \c[3]_P_i_7_n_0 ;
  wire \c[3]_P_i_8_n_0 ;
  wire \c[4]_C_i_1_n_0 ;
  wire \c[4]_C_i_2_n_0 ;
  wire \c[4]_C_i_3_n_0 ;
  wire \c[4]_C_i_4_n_0 ;
  wire \c[4]_P_i_2_n_0 ;
  wire \c[5]_C_i_1_n_0 ;
  wire \c[5]_C_i_2_n_0 ;
  wire \c[5]_C_i_3_n_0 ;
  wire \c[5]_C_i_4_n_0 ;
  wire \c[5]_P_i_2_n_0 ;
  wire \c[6]_C_i_1_n_0 ;
  wire \c[6]_C_i_2_n_0 ;
  wire \c[6]_C_i_3_n_0 ;
  wire \c[6]_P_i_2_n_0 ;
  wire \c[7]_C_i_1_n_0 ;
  wire \c[7]_C_i_2_n_0 ;
  wire \c[7]_C_i_3_n_0 ;
  wire \c[7]_C_i_4_n_0 ;
  wire \c[7]_C_i_5_n_0 ;
  wire \c[7]_P_i_10_n_0 ;
  wire \c[7]_P_i_11_n_0 ;
  wire \c[7]_P_i_12_n_0 ;
  wire \c[7]_P_i_13_n_0 ;
  wire \c[7]_P_i_14_n_0 ;
  wire \c[7]_P_i_15_n_0 ;
  wire \c[7]_P_i_16_n_0 ;
  wire \c[7]_P_i_17_n_0 ;
  wire \c[7]_P_i_1_n_0 ;
  wire \c[7]_P_i_3_n_0 ;
  wire \c[7]_P_i_4_n_0 ;
  wire \c[7]_P_i_5_n_0 ;
  wire \c[7]_P_i_7_n_0 ;
  wire \c[7]_P_i_8_n_0 ;
  wire \c[7]_P_i_9_n_0 ;
  wire \c_reg[0]_C_n_0 ;
  wire \c_reg[0]_LDC_i_1_n_0 ;
  wire \c_reg[0]_LDC_i_2_n_0 ;
  wire \c_reg[0]_LDC_n_0 ;
  wire \c_reg[0]_P_n_0 ;
  wire \c_reg[1]_C_n_0 ;
  wire \c_reg[1]_LDC_i_1_n_0 ;
  wire \c_reg[1]_LDC_i_2_n_0 ;
  wire \c_reg[1]_LDC_n_0 ;
  wire \c_reg[1]_P_n_0 ;
  wire \c_reg[2]_C_n_0 ;
  wire \c_reg[2]_LDC_i_1_n_0 ;
  wire \c_reg[2]_LDC_i_2_n_0 ;
  wire \c_reg[2]_LDC_n_0 ;
  wire \c_reg[2]_P_n_0 ;
  wire \c_reg[3]_C_n_0 ;
  wire \c_reg[3]_LDC_i_1_n_0 ;
  wire \c_reg[3]_LDC_i_2_n_0 ;
  wire \c_reg[3]_LDC_n_0 ;
  wire \c_reg[3]_P_i_2_n_0 ;
  wire \c_reg[3]_P_i_2_n_1 ;
  wire \c_reg[3]_P_i_2_n_2 ;
  wire \c_reg[3]_P_i_2_n_3 ;
  wire \c_reg[3]_P_i_2_n_4 ;
  wire \c_reg[3]_P_i_2_n_5 ;
  wire \c_reg[3]_P_i_2_n_6 ;
  wire \c_reg[3]_P_i_2_n_7 ;
  wire \c_reg[3]_P_n_0 ;
  wire \c_reg[4]_C_n_0 ;
  wire \c_reg[4]_LDC_i_1_n_0 ;
  wire \c_reg[4]_LDC_i_2_n_0 ;
  wire \c_reg[4]_LDC_n_0 ;
  wire \c_reg[4]_P_n_0 ;
  wire \c_reg[5]_C_n_0 ;
  wire \c_reg[5]_LDC_i_1_n_0 ;
  wire \c_reg[5]_LDC_i_2_n_0 ;
  wire \c_reg[5]_LDC_n_0 ;
  wire \c_reg[5]_P_n_0 ;
  wire \c_reg[6]_C_n_0 ;
  wire \c_reg[6]_LDC_i_1_n_0 ;
  wire \c_reg[6]_LDC_i_2_n_0 ;
  wire \c_reg[6]_LDC_n_0 ;
  wire \c_reg[6]_P_n_0 ;
  wire \c_reg[7]_C_n_0 ;
  wire \c_reg[7]_LDC_i_1_n_0 ;
  wire \c_reg[7]_LDC_i_2_n_0 ;
  wire \c_reg[7]_LDC_i_3_n_0 ;
  wire \c_reg[7]_LDC_n_0 ;
  wire \c_reg[7]_P_i_6_n_1 ;
  wire \c_reg[7]_P_i_6_n_2 ;
  wire \c_reg[7]_P_i_6_n_3 ;
  wire \c_reg[7]_P_i_6_n_4 ;
  wire \c_reg[7]_P_i_6_n_5 ;
  wire \c_reg[7]_P_i_6_n_6 ;
  wire \c_reg[7]_P_i_6_n_7 ;
  wire \c_reg[7]_P_n_0 ;
  wire [6:0]cathode;
  wire [6:0]cathode_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clock;
  wire clock_BUFG;
  wire [7:0]d0;
  wire \d[0]_C_i_1_n_0 ;
  wire \d[0]_C_i_2_n_0 ;
  wire \d[0]_P_i_1_n_0 ;
  wire \d[1]_C_i_1_n_0 ;
  wire \d[1]_C_i_2_n_0 ;
  wire \d[1]_P_i_1_n_0 ;
  wire \d[1]_P_i_2_n_0 ;
  wire \d[2]_C_i_1_n_0 ;
  wire \d[2]_C_i_2_n_0 ;
  wire \d[2]_P_i_1_n_0 ;
  wire \d[2]_P_i_2_n_0 ;
  wire \d[2]_P_i_3_n_0 ;
  wire \d[3]_C_i_1_n_0 ;
  wire \d[3]_C_i_2_n_0 ;
  wire \d[3]_P_i_1_n_0 ;
  wire \d[3]_P_i_3_n_0 ;
  wire \d[3]_P_i_4_n_0 ;
  wire \d[3]_P_i_5_n_0 ;
  wire \d[3]_P_i_6_n_0 ;
  wire \d[3]_P_i_7_n_0 ;
  wire \d[3]_P_i_8_n_0 ;
  wire \d[4]_C_i_1_n_0 ;
  wire \d[4]_C_i_2_n_0 ;
  wire \d[4]_P_i_1_n_0 ;
  wire \d[5]_C_i_1_n_0 ;
  wire \d[5]_C_i_2_n_0 ;
  wire \d[5]_P_i_1_n_0 ;
  wire \d[5]_P_i_2_n_0 ;
  wire \d[5]_P_i_3_n_0 ;
  wire \d[6]_C_i_1_n_0 ;
  wire \d[6]_C_i_2_n_0 ;
  wire \d[6]_P_i_1_n_0 ;
  wire \d[6]_P_i_2_n_0 ;
  wire \d[6]_P_i_3_n_0 ;
  wire \d[7]_C_i_1_n_0 ;
  wire \d[7]_C_i_2_n_0 ;
  wire \d[7]_C_i_3_n_0 ;
  wire \d[7]_C_i_4_n_0 ;
  wire \d[7]_P_i_10_n_0 ;
  wire \d[7]_P_i_11_n_0 ;
  wire \d[7]_P_i_12_n_0 ;
  wire \d[7]_P_i_1_n_0 ;
  wire \d[7]_P_i_2_n_0 ;
  wire \d[7]_P_i_3_n_0 ;
  wire \d[7]_P_i_5_n_0 ;
  wire \d[7]_P_i_6_n_0 ;
  wire \d[7]_P_i_7_n_0 ;
  wire \d[7]_P_i_8_n_0 ;
  wire \d[7]_P_i_9_n_0 ;
  wire \d_reg[0]_C_n_0 ;
  wire \d_reg[0]_LDC_i_1_n_0 ;
  wire \d_reg[0]_LDC_i_2_n_0 ;
  wire \d_reg[0]_LDC_n_0 ;
  wire \d_reg[0]_P_n_0 ;
  wire \d_reg[1]_C_n_0 ;
  wire \d_reg[1]_LDC_i_1_n_0 ;
  wire \d_reg[1]_LDC_i_2_n_0 ;
  wire \d_reg[1]_LDC_n_0 ;
  wire \d_reg[1]_P_n_0 ;
  wire \d_reg[2]_C_n_0 ;
  wire \d_reg[2]_LDC_i_1_n_0 ;
  wire \d_reg[2]_LDC_i_2_n_0 ;
  wire \d_reg[2]_LDC_n_0 ;
  wire \d_reg[2]_P_n_0 ;
  wire \d_reg[3]_C_n_0 ;
  wire \d_reg[3]_LDC_i_1_n_0 ;
  wire \d_reg[3]_LDC_i_2_n_0 ;
  wire \d_reg[3]_LDC_n_0 ;
  wire \d_reg[3]_P_i_2_n_0 ;
  wire \d_reg[3]_P_i_2_n_1 ;
  wire \d_reg[3]_P_i_2_n_2 ;
  wire \d_reg[3]_P_i_2_n_3 ;
  wire \d_reg[3]_P_n_0 ;
  wire \d_reg[4]_C_n_0 ;
  wire \d_reg[4]_LDC_i_1_n_0 ;
  wire \d_reg[4]_LDC_i_2_n_0 ;
  wire \d_reg[4]_LDC_n_0 ;
  wire \d_reg[4]_P_n_0 ;
  wire \d_reg[5]_C_n_0 ;
  wire \d_reg[5]_LDC_i_1_n_0 ;
  wire \d_reg[5]_LDC_i_2_n_0 ;
  wire \d_reg[5]_LDC_n_0 ;
  wire \d_reg[5]_P_n_0 ;
  wire \d_reg[6]_C_n_0 ;
  wire \d_reg[6]_LDC_i_1_n_0 ;
  wire \d_reg[6]_LDC_i_2_n_0 ;
  wire \d_reg[6]_LDC_n_0 ;
  wire \d_reg[6]_P_n_0 ;
  wire \d_reg[7]_C_n_0 ;
  wire \d_reg[7]_LDC_i_1_n_0 ;
  wire \d_reg[7]_LDC_i_2_n_0 ;
  wire \d_reg[7]_LDC_n_0 ;
  wire \d_reg[7]_P_i_4_n_1 ;
  wire \d_reg[7]_P_i_4_n_2 ;
  wire \d_reg[7]_P_i_4_n_3 ;
  wire \d_reg[7]_P_n_0 ;
  wire load;
  wire load_OBUF;
  wire load_OBUF_inst_i_2_n_0;
  wire load_OBUF_inst_i_3_n_0;
  wire load_OBUF_inst_i_4_n_0;
  wire load_OBUF_inst_i_5_n_0;
  wire load_OBUF_inst_i_6_n_0;
  wire load_OBUF_inst_i_7_n_0;
  wire load_OBUF_inst_i_8_n_0;
  wire [2:0]mlk;
  wire \mlk1[0]_i_2_n_0 ;
  wire \mlk1[0]_i_3_n_0 ;
  wire \mlk1[0]_i_4_n_0 ;
  wire [2:0]mlk1_reg;
  wire \mlk1_reg[0]_i_1_n_0 ;
  wire \mlk1_reg[0]_i_1_n_1 ;
  wire \mlk1_reg[0]_i_1_n_2 ;
  wire \mlk1_reg[0]_i_1_n_3 ;
  wire \mlk1_reg[0]_i_1_n_4 ;
  wire \mlk1_reg[0]_i_1_n_5 ;
  wire \mlk1_reg[0]_i_1_n_6 ;
  wire \mlk1_reg[0]_i_1_n_7 ;
  wire \mlk1_reg_n_0_[3] ;
  wire op_valid;
  wire op_valid_OBUF;
  wire [3:0]p_0_in;
  wire [0:0]p_0_in__0;
  wire [3:0]p_1_in;
  wire [7:0]p_3_in;
  wire push_i;
  wire push_i_IBUF;
  wire pushbutton;
  wire pushbutton_IBUF;
  wire sub;
  wire sub1;
  wire sub1_reg_i_10_n_0;
  wire sub1_reg_i_1_n_0;
  wire sub1_reg_i_2_n_0;
  wire sub1_reg_i_3_n_0;
  wire sub1_reg_i_4_n_0;
  wire sub1_reg_i_5_n_0;
  wire sub1_reg_i_6_n_0;
  wire sub1_reg_i_7_n_0;
  wire sub1_reg_i_8_n_0;
  wire sub1_reg_i_9_n_0;
  wire sub_OBUF;
  wire sub_reg_i_1_n_0;
  wire [3:3]\NLW_c_reg[7]_P_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_d_reg[7]_P_i_4_CO_UNCONNECTED ;

  myclock_MUSER_lab5_gcd XLXI_10
       (.XLXN_18(XLXN_18),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2B1" *) 
  LUT2 #(
    .INIT(4'h4)) 
    XLXI_11
       (.I0(pushbutton_IBUF),
        .I1(XLXN_18),
        .O(XLXN_19));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_12
       (.I0(clk_IBUF),
        .I1(pushbutton_IBUF),
        .O(XLXN_20));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "OR2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    XLXI_13
       (.I0(XLXN_20),
        .I1(XLXN_19),
        .O(XLXN_21));
  mycathode2_MUSER_lab5_gcd XLXI_14
       (.\c_reg[0]_C (\c_reg[0]_C_n_0 ),
        .\c_reg[0]_P (\c_reg[0]_P_n_0 ),
        .\c_reg[1]_C (XLXI_14_n_6),
        .\c_reg[1]_C_0 (\c_reg[1]_C_n_0 ),
        .\c_reg[1]_P (XLXI_14_n_14),
        .\c_reg[1]_P_0 (\c_reg[1]_P_n_0 ),
        .\c_reg[2]_C (\c_reg[2]_C_n_0 ),
        .\c_reg[2]_P (\c_reg[2]_P_n_0 ),
        .\c_reg[3]_C (\c_reg[3]_C_n_0 ),
        .\c_reg[3]_P (\c_reg[3]_P_n_0 ),
        .\c_reg[4]_C (\c_reg[4]_C_n_0 ),
        .\c_reg[4]_P (\c_reg[4]_P_n_0 ),
        .\c_reg[5]_C (\c_reg[5]_C_n_0 ),
        .\c_reg[5]_P (\c_reg[5]_P_n_0 ),
        .\c_reg[6]_C (\c_reg[6]_C_n_0 ),
        .\c_reg[6]_P (\c_reg[6]_P_n_0 ),
        .\c_reg[7]_C (\c_reg[7]_C_n_0 ),
        .\c_reg[7]_P (XLXI_14_n_4),
        .\c_reg[7]_P_0 (XLXI_14_n_5),
        .\c_reg[7]_P_1 (XLXI_14_n_12),
        .\c_reg[7]_P_2 (XLXI_14_n_13),
        .\c_reg[7]_P_3 (\c_reg[7]_P_n_0 ),
        .cathode_OBUF(cathode_OBUF),
        .\d_reg[0]_C (\d_reg[0]_C_n_0 ),
        .\d_reg[0]_P (XLXI_14_n_7),
        .\d_reg[0]_P_0 (XLXI_14_n_15),
        .\d_reg[0]_P_1 (\d_reg[0]_P_n_0 ),
        .\d_reg[1]_C (\d_reg[1]_C_n_0 ),
        .\d_reg[1]_P (\d_reg[1]_P_n_0 ),
        .\d_reg[2]_C (\d_reg[2]_C_n_0 ),
        .\d_reg[2]_P (\d_reg[2]_P_n_0 ),
        .\d_reg[3]_C (\d_reg[3]_C_n_0 ),
        .\d_reg[3]_P (\d_reg[3]_P_n_0 ),
        .\d_reg[4]_C (\d_reg[4]_C_n_0 ),
        .\d_reg[4]_P (\d_reg[4]_P_n_0 ),
        .\d_reg[5]_C (\d_reg[5]_C_n_0 ),
        .\d_reg[5]_P (\d_reg[5]_P_n_0 ),
        .\d_reg[6]_C (\d_reg[6]_C_n_0 ),
        .\d_reg[6]_P (\d_reg[6]_P_n_0 ),
        .\d_reg[7]_C (\d_reg[7]_C_n_0 ),
        .\d_reg[7]_P (\d_reg[7]_P_n_0 ),
        .\mlk_reg[1] (\c_reg[7]_LDC_n_0 ),
        .\mlk_reg[1]_0 (\c_reg[6]_LDC_n_0 ),
        .\mlk_reg[1]_1 (\c_reg[5]_LDC_n_0 ),
        .\mlk_reg[1]_10 (\d_reg[4]_LDC_n_0 ),
        .\mlk_reg[1]_11 (\d_reg[3]_LDC_n_0 ),
        .\mlk_reg[1]_12 (\d_reg[2]_LDC_n_0 ),
        .\mlk_reg[1]_13 (\d_reg[1]_LDC_n_0 ),
        .\mlk_reg[1]_14 (\d_reg[0]_LDC_n_0 ),
        .\mlk_reg[1]_2 (\c_reg[4]_LDC_n_0 ),
        .\mlk_reg[1]_3 (\c_reg[3]_LDC_n_0 ),
        .\mlk_reg[1]_4 (\c_reg[2]_LDC_n_0 ),
        .\mlk_reg[1]_5 (\c_reg[1]_LDC_n_0 ),
        .\mlk_reg[1]_6 (\c_reg[0]_LDC_n_0 ),
        .\mlk_reg[1]_7 (\d_reg[7]_LDC_n_0 ),
        .\mlk_reg[1]_8 (\d_reg[6]_LDC_n_0 ),
        .\mlk_reg[1]_9 (\d_reg[5]_LDC_n_0 ),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .q_tmp_reg(XLXI_5_n_5),
        .q_tmp_reg_0(XLXI_5_n_2),
        .q_tmp_reg_1(XLXI_5_n_3),
        .q_tmp_reg_2(XLXI_5_n_4));
  myanode_MUSER_lab5_gcd XLXI_4
       (.XLXN_4_0(XLXN_4_0),
        .anode(anode_OBUF));
  mycounter2_MUSER_lab5_gcd XLXI_5
       (.XLXN_21(XLXN_21),
        .XLXN_4_0(XLXN_4_0),
        .\c_reg[0]_P (XLXI_14_n_7),
        .\c_reg[1]_P (XLXI_14_n_6),
        .\c_reg[2]_P (XLXI_14_n_5),
        .\c_reg[3]_P (XLXI_14_n_4),
        .\cathode[0] (XLXI_5_n_2),
        .\cathode[0]_0 (XLXI_5_n_3),
        .\cathode[0]_1 (XLXI_5_n_4),
        .\cathode[0]_2 (XLXI_5_n_5),
        .\d_reg[0]_P (XLXI_14_n_15),
        .\d_reg[1]_P (XLXI_14_n_14),
        .\d_reg[2]_P (XLXI_14_n_13),
        .\d_reg[3]_P (XLXI_14_n_12),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in));
  myclock2_MUSER_lab5_gcd XLXI_90
       (.clk_IBUF(clk_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clock(clock),
        .pushbutton_IBUF(pushbutton_IBUF));
  IBUF \a_i_IBUF[0]_inst 
       (.I(a_i[0]),
        .O(a_i_IBUF[0]));
  IBUF \a_i_IBUF[1]_inst 
       (.I(a_i[1]),
        .O(a_i_IBUF[1]));
  IBUF \a_i_IBUF[2]_inst 
       (.I(a_i[2]),
        .O(a_i_IBUF[2]));
  IBUF \a_i_IBUF[3]_inst 
       (.I(a_i[3]),
        .O(a_i_IBUF[3]));
  IBUF \a_i_IBUF[4]_inst 
       (.I(a_i[4]),
        .O(a_i_IBUF[4]));
  IBUF \a_i_IBUF[5]_inst 
       (.I(a_i[5]),
        .O(a_i_IBUF[5]));
  IBUF \a_i_IBUF[6]_inst 
       (.I(a_i[6]),
        .O(a_i_IBUF[6]));
  IBUF \a_i_IBUF[7]_inst 
       (.I(a_i[7]),
        .O(a_i_IBUF[7]));
  OBUF \anode_OBUF[0]_inst 
       (.I(anode_OBUF[0]),
        .O(anode[0]));
  OBUF \anode_OBUF[1]_inst 
       (.I(anode_OBUF[1]),
        .O(anode[1]));
  OBUF \anode_OBUF[2]_inst 
       (.I(anode_OBUF[2]),
        .O(anode[2]));
  OBUF \anode_OBUF[3]_inst 
       (.I(anode_OBUF[3]),
        .O(anode[3]));
  IBUF \b_i_IBUF[0]_inst 
       (.I(b_i[0]),
        .O(b_i_IBUF[0]));
  IBUF \b_i_IBUF[1]_inst 
       (.I(b_i[1]),
        .O(b_i_IBUF[1]));
  IBUF \b_i_IBUF[2]_inst 
       (.I(b_i[2]),
        .O(b_i_IBUF[2]));
  IBUF \b_i_IBUF[3]_inst 
       (.I(b_i[3]),
        .O(b_i_IBUF[3]));
  IBUF \b_i_IBUF[4]_inst 
       (.I(b_i[4]),
        .O(b_i_IBUF[4]));
  IBUF \b_i_IBUF[5]_inst 
       (.I(b_i[5]),
        .O(b_i_IBUF[5]));
  IBUF \b_i_IBUF[6]_inst 
       (.I(b_i[6]),
        .O(b_i_IBUF[6]));
  IBUF \b_i_IBUF[7]_inst 
       (.I(b_i[7]),
        .O(b_i_IBUF[7]));
  LUT6 #(
    .INIT(64'hAFCCAACCA0CCAACC)) 
    \c[0]_C_i_1 
       (.I0(\c[0]_C_i_2_n_0 ),
        .I1(\c[0]_C_i_3_n_0 ),
        .I2(\c[7]_C_i_4_n_0 ),
        .I3(\c[7]_P_i_4_n_0 ),
        .I4(\c[7]_P_i_5_n_0 ),
        .I5(\c_reg[0]_C_n_0 ),
        .O(\c[0]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBABAAAA88A8AAAA)) 
    \c[0]_C_i_2 
       (.I0(a_i_IBUF[0]),
        .I1(\c[7]_C_i_5_n_0 ),
        .I2(XLXI_14_n_12),
        .I3(XLXI_14_n_4),
        .I4(sub1_reg_i_3_n_0),
        .I5(\c_reg[3]_P_i_2_n_7 ),
        .O(\c[0]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5DDF5D5D51105151)) 
    \c[0]_C_i_3 
       (.I0(\c[0]_P_i_2_n_0 ),
        .I1(XLXI_14_n_4),
        .I2(XLXI_14_n_12),
        .I3(sub1_reg_i_6_n_0),
        .I4(\c[4]_C_i_4_n_0 ),
        .I5(\c_reg[3]_P_i_2_n_7 ),
        .O(\c[0]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFB0BF8080808F)) 
    \c[0]_P_i_1 
       (.I0(a_i_IBUF[0]),
        .I1(\c[7]_P_i_5_n_0 ),
        .I2(\c[7]_P_i_4_n_0 ),
        .I3(\c[0]_P_i_2_n_0 ),
        .I4(\c[7]_P_i_3_n_0 ),
        .I5(\c_reg[3]_P_i_2_n_7 ),
        .O(p_3_in[0]));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \c[0]_P_i_2 
       (.I0(\c_reg[0]_C_n_0 ),
        .I1(\c_reg[0]_LDC_n_0 ),
        .I2(\c_reg[0]_P_n_0 ),
        .I3(\d_reg[0]_C_n_0 ),
        .I4(\d_reg[0]_LDC_n_0 ),
        .I5(\d_reg[0]_P_n_0 ),
        .O(\c[0]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCCAACCA0CCAACC)) 
    \c[1]_C_i_1 
       (.I0(\c[1]_C_i_2_n_0 ),
        .I1(\c[1]_C_i_3_n_0 ),
        .I2(\c[7]_C_i_4_n_0 ),
        .I3(\c[7]_P_i_4_n_0 ),
        .I4(\c[7]_P_i_5_n_0 ),
        .I5(\c_reg[1]_C_n_0 ),
        .O(\c[1]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBABAAAA88A8AAAA)) 
    \c[1]_C_i_2 
       (.I0(a_i_IBUF[1]),
        .I1(\c[7]_C_i_5_n_0 ),
        .I2(XLXI_14_n_12),
        .I3(XLXI_14_n_4),
        .I4(sub1_reg_i_3_n_0),
        .I5(\c_reg[3]_P_i_2_n_6 ),
        .O(\c[1]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8ABABA8ABA8A8AB)) 
    \c[1]_C_i_3 
       (.I0(\c_reg[3]_P_i_2_n_6 ),
        .I1(\d[7]_P_i_7_n_0 ),
        .I2(\d[7]_P_i_8_n_0 ),
        .I3(XLXI_14_n_14),
        .I4(XLXI_14_n_6),
        .I5(sub1_reg_i_10_n_0),
        .O(\c[1]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BF8FBF80B080)) 
    \c[1]_P_i_1 
       (.I0(a_i_IBUF[1]),
        .I1(\c[7]_P_i_5_n_0 ),
        .I2(\c[7]_P_i_4_n_0 ),
        .I3(\c_reg[3]_P_i_2_n_6 ),
        .I4(\c[7]_P_i_3_n_0 ),
        .I5(\c[1]_P_i_2_n_0 ),
        .O(p_3_in[1]));
  LUT6 #(
    .INIT(64'h9A95656A9A959A95)) 
    \c[1]_P_i_2 
       (.I0(XLXI_14_n_14),
        .I1(\c_reg[1]_P_n_0 ),
        .I2(\c_reg[1]_LDC_n_0 ),
        .I3(\c_reg[1]_C_n_0 ),
        .I4(XLXI_14_n_7),
        .I5(XLXI_14_n_15),
        .O(\c[1]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCCAACCA0CCAACC)) 
    \c[2]_C_i_1 
       (.I0(\c[2]_C_i_2_n_0 ),
        .I1(\c[2]_C_i_3_n_0 ),
        .I2(\c[7]_C_i_4_n_0 ),
        .I3(\c[7]_P_i_4_n_0 ),
        .I4(\c[7]_P_i_5_n_0 ),
        .I5(\c_reg[2]_C_n_0 ),
        .O(\c[2]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBABAAAA88A8AAAA)) 
    \c[2]_C_i_2 
       (.I0(a_i_IBUF[2]),
        .I1(\c[7]_C_i_5_n_0 ),
        .I2(XLXI_14_n_12),
        .I3(XLXI_14_n_4),
        .I4(sub1_reg_i_3_n_0),
        .I5(\c_reg[3]_P_i_2_n_5 ),
        .O(\c[2]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8ABABA8ABA8A8AB)) 
    \c[2]_C_i_3 
       (.I0(\c_reg[3]_P_i_2_n_5 ),
        .I1(\d[7]_P_i_7_n_0 ),
        .I2(\d[7]_P_i_8_n_0 ),
        .I3(\c[3]_P_i_8_n_0 ),
        .I4(\c[7]_P_i_9_n_0 ),
        .I5(\c[2]_P_i_3_n_0 ),
        .O(\c[2]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BF8FBF80B080)) 
    \c[2]_P_i_1 
       (.I0(a_i_IBUF[2]),
        .I1(\c[7]_P_i_5_n_0 ),
        .I2(\c[7]_P_i_4_n_0 ),
        .I3(\c_reg[3]_P_i_2_n_5 ),
        .I4(\c[7]_P_i_3_n_0 ),
        .I5(\c[2]_P_i_2_n_0 ),
        .O(p_3_in[2]));
  LUT6 #(
    .INIT(64'h02A25404FD5DABFB)) 
    \c[2]_P_i_2 
       (.I0(sub1_reg_i_10_n_0),
        .I1(\c_reg[1]_C_n_0 ),
        .I2(\c_reg[1]_LDC_n_0 ),
        .I3(\c_reg[1]_P_n_0 ),
        .I4(XLXI_14_n_14),
        .I5(\c[2]_P_i_3_n_0 ),
        .O(\c[2]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \c[2]_P_i_3 
       (.I0(\c_reg[2]_C_n_0 ),
        .I1(\c_reg[2]_LDC_n_0 ),
        .I2(\c_reg[2]_P_n_0 ),
        .I3(\d_reg[2]_C_n_0 ),
        .I4(\d_reg[2]_LDC_n_0 ),
        .I5(\d_reg[2]_P_n_0 ),
        .O(\c[2]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFCCAACCA0CCAACC)) 
    \c[3]_C_i_1 
       (.I0(\c[3]_C_i_2_n_0 ),
        .I1(\c[3]_C_i_3_n_0 ),
        .I2(\c[7]_C_i_4_n_0 ),
        .I3(\c[7]_P_i_4_n_0 ),
        .I4(\c[7]_P_i_5_n_0 ),
        .I5(\c_reg[3]_C_n_0 ),
        .O(\c[3]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBABAAAA88A8AAAA)) 
    \c[3]_C_i_2 
       (.I0(a_i_IBUF[3]),
        .I1(\c[7]_C_i_5_n_0 ),
        .I2(XLXI_14_n_12),
        .I3(XLXI_14_n_4),
        .I4(sub1_reg_i_3_n_0),
        .I5(\c_reg[3]_P_i_2_n_4 ),
        .O(\c[3]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAE3AA2CAA2CAAE3)) 
    \c[3]_C_i_3 
       (.I0(\c_reg[3]_P_i_2_n_4 ),
        .I1(XLXI_14_n_12),
        .I2(XLXI_14_n_4),
        .I3(\d[7]_P_i_8_n_0 ),
        .I4(sub1_reg_i_9_n_0),
        .I5(\c[3]_C_i_4_n_0 ),
        .O(\c[3]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h54D5545454D5D5D5)) 
    \c[3]_C_i_4 
       (.I0(\c[2]_P_i_3_n_0 ),
        .I1(sub1_reg_i_10_n_0),
        .I2(XLXI_14_n_14),
        .I3(\c_reg[1]_P_n_0 ),
        .I4(\c_reg[1]_LDC_n_0 ),
        .I5(\c_reg[1]_C_n_0 ),
        .O(\c[3]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BF8FBF80B080)) 
    \c[3]_P_i_1 
       (.I0(a_i_IBUF[3]),
        .I1(\c[7]_P_i_5_n_0 ),
        .I2(\c[7]_P_i_4_n_0 ),
        .I3(\c_reg[3]_P_i_2_n_4 ),
        .I4(\c[7]_P_i_3_n_0 ),
        .I5(\c[3]_P_i_3_n_0 ),
        .O(p_3_in[3]));
  LUT6 #(
    .INIT(64'h9699996966969699)) 
    \c[3]_P_i_3 
       (.I0(XLXI_14_n_4),
        .I1(XLXI_14_n_12),
        .I2(\c[7]_P_i_9_n_0 ),
        .I3(\c[3]_P_i_8_n_0 ),
        .I4(XLXI_14_n_13),
        .I5(XLXI_14_n_5),
        .O(\c[3]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \c[3]_P_i_4 
       (.I0(\c_reg[3]_C_n_0 ),
        .I1(\c_reg[3]_LDC_n_0 ),
        .I2(\c_reg[3]_P_n_0 ),
        .I3(\d_reg[3]_C_n_0 ),
        .I4(\d_reg[3]_LDC_n_0 ),
        .I5(\d_reg[3]_P_n_0 ),
        .O(\c[3]_P_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \c[3]_P_i_5 
       (.I0(\c_reg[2]_C_n_0 ),
        .I1(\c_reg[2]_LDC_n_0 ),
        .I2(\c_reg[2]_P_n_0 ),
        .I3(\d_reg[2]_C_n_0 ),
        .I4(\d_reg[2]_LDC_n_0 ),
        .I5(\d_reg[2]_P_n_0 ),
        .O(\c[3]_P_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \c[3]_P_i_6 
       (.I0(\c_reg[1]_C_n_0 ),
        .I1(\c_reg[1]_LDC_n_0 ),
        .I2(\c_reg[1]_P_n_0 ),
        .I3(\d_reg[1]_C_n_0 ),
        .I4(\d_reg[1]_LDC_n_0 ),
        .I5(\d_reg[1]_P_n_0 ),
        .O(\c[3]_P_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \c[3]_P_i_7 
       (.I0(\c_reg[0]_C_n_0 ),
        .I1(\c_reg[0]_LDC_n_0 ),
        .I2(\c_reg[0]_P_n_0 ),
        .I3(\d_reg[0]_C_n_0 ),
        .I4(\d_reg[0]_LDC_n_0 ),
        .I5(\d_reg[0]_P_n_0 ),
        .O(\c[3]_P_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000454045400000)) 
    \c[3]_P_i_8 
       (.I0(XLXI_14_n_7),
        .I1(\d_reg[0]_P_n_0 ),
        .I2(\d_reg[0]_LDC_n_0 ),
        .I3(\d_reg[0]_C_n_0 ),
        .I4(XLXI_14_n_14),
        .I5(XLXI_14_n_6),
        .O(\c[3]_P_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFCCAACCA0CCAACC)) 
    \c[4]_C_i_1 
       (.I0(\c[4]_C_i_2_n_0 ),
        .I1(\c[4]_C_i_3_n_0 ),
        .I2(\c[7]_C_i_4_n_0 ),
        .I3(\c[7]_P_i_4_n_0 ),
        .I4(\c[7]_P_i_5_n_0 ),
        .I5(\c_reg[4]_C_n_0 ),
        .O(\c[4]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBABAAAA88A8AAAA)) 
    \c[4]_C_i_2 
       (.I0(a_i_IBUF[4]),
        .I1(\c[7]_C_i_5_n_0 ),
        .I2(XLXI_14_n_12),
        .I3(XLXI_14_n_4),
        .I4(sub1_reg_i_3_n_0),
        .I5(\c_reg[7]_P_i_6_n_7 ),
        .O(\c[4]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBBAFBFB088A0808)) 
    \c[4]_C_i_3 
       (.I0(\c_reg[7]_P_i_6_n_7 ),
        .I1(XLXI_14_n_4),
        .I2(XLXI_14_n_12),
        .I3(sub1_reg_i_6_n_0),
        .I4(\c[4]_C_i_4_n_0 ),
        .I5(\c[4]_P_i_2_n_0 ),
        .O(\c[4]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDDCCCDCFFFDDDFD)) 
    \c[4]_C_i_4 
       (.I0(sub1_reg_i_10_n_0),
        .I1(sub1_reg_i_9_n_0),
        .I2(\c_reg[1]_C_n_0 ),
        .I3(\c_reg[1]_LDC_n_0 ),
        .I4(\c_reg[1]_P_n_0 ),
        .I5(XLXI_14_n_14),
        .O(\c[4]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BF8FBF80B080)) 
    \c[4]_P_i_1 
       (.I0(a_i_IBUF[4]),
        .I1(\c[7]_P_i_5_n_0 ),
        .I2(\c[7]_P_i_4_n_0 ),
        .I3(\c_reg[7]_P_i_6_n_7 ),
        .I4(\c[7]_P_i_3_n_0 ),
        .I5(\c[4]_P_i_2_n_0 ),
        .O(p_3_in[4]));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \c[4]_P_i_2 
       (.I0(\c_reg[4]_C_n_0 ),
        .I1(\c_reg[4]_LDC_n_0 ),
        .I2(\c_reg[4]_P_n_0 ),
        .I3(\d_reg[4]_C_n_0 ),
        .I4(\d_reg[4]_LDC_n_0 ),
        .I5(\d_reg[4]_P_n_0 ),
        .O(\c[4]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCCAACCA0CCAACC)) 
    \c[5]_C_i_1 
       (.I0(\c[5]_C_i_2_n_0 ),
        .I1(\c[5]_C_i_3_n_0 ),
        .I2(\c[7]_C_i_4_n_0 ),
        .I3(\c[7]_P_i_4_n_0 ),
        .I4(\c[7]_P_i_5_n_0 ),
        .I5(\c_reg[5]_C_n_0 ),
        .O(\c[5]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBABAAAA88A8AAAA)) 
    \c[5]_C_i_2 
       (.I0(a_i_IBUF[5]),
        .I1(\c[7]_C_i_5_n_0 ),
        .I2(XLXI_14_n_12),
        .I3(XLXI_14_n_4),
        .I4(sub1_reg_i_3_n_0),
        .I5(\c_reg[7]_P_i_6_n_6 ),
        .O(\c[5]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8ABABA8ABA8A8AB)) 
    \c[5]_C_i_3 
       (.I0(\c_reg[7]_P_i_6_n_6 ),
        .I1(\d[7]_P_i_7_n_0 ),
        .I2(\d[7]_P_i_8_n_0 ),
        .I3(p_1_in[1]),
        .I4(p_0_in[1]),
        .I5(\c[5]_C_i_4_n_0 ),
        .O(\c[5]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \c[5]_C_i_4 
       (.I0(\c_reg[4]_C_n_0 ),
        .I1(\c_reg[4]_LDC_n_0 ),
        .I2(\c_reg[4]_P_n_0 ),
        .I3(\d_reg[4]_C_n_0 ),
        .I4(\d_reg[4]_LDC_n_0 ),
        .I5(\d_reg[4]_P_n_0 ),
        .O(\c[5]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BF8FBF80B080)) 
    \c[5]_P_i_1 
       (.I0(a_i_IBUF[5]),
        .I1(\c[7]_P_i_5_n_0 ),
        .I2(\c[7]_P_i_4_n_0 ),
        .I3(\c_reg[7]_P_i_6_n_6 ),
        .I4(\c[7]_P_i_3_n_0 ),
        .I5(\c[5]_P_i_2_n_0 ),
        .O(p_3_in[5]));
  LUT6 #(
    .INIT(64'h9A95656A9A959A95)) 
    \c[5]_P_i_2 
       (.I0(p_1_in[1]),
        .I1(\c_reg[5]_P_n_0 ),
        .I2(\c_reg[5]_LDC_n_0 ),
        .I3(\c_reg[5]_C_n_0 ),
        .I4(p_1_in[0]),
        .I5(p_0_in[0]),
        .O(\c[5]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCCAACCA0CCAACC)) 
    \c[6]_C_i_1 
       (.I0(\c[6]_C_i_2_n_0 ),
        .I1(\c[6]_C_i_3_n_0 ),
        .I2(\c[7]_C_i_4_n_0 ),
        .I3(\c[7]_P_i_4_n_0 ),
        .I4(\c[7]_P_i_5_n_0 ),
        .I5(\c_reg[6]_C_n_0 ),
        .O(\c[6]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBABAAAA88A8AAAA)) 
    \c[6]_C_i_2 
       (.I0(a_i_IBUF[6]),
        .I1(\c[7]_C_i_5_n_0 ),
        .I2(XLXI_14_n_12),
        .I3(XLXI_14_n_4),
        .I4(sub1_reg_i_3_n_0),
        .I5(\c_reg[7]_P_i_6_n_5 ),
        .O(\c[6]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA20AAEFAAEFAA20)) 
    \c[6]_C_i_3 
       (.I0(\c_reg[7]_P_i_6_n_5 ),
        .I1(XLXI_14_n_12),
        .I2(XLXI_14_n_4),
        .I3(\d[7]_P_i_8_n_0 ),
        .I4(\d[6]_P_i_2_n_0 ),
        .I5(\c[7]_P_i_16_n_0 ),
        .O(\c[6]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BF8FBF80B080)) 
    \c[6]_P_i_1 
       (.I0(a_i_IBUF[6]),
        .I1(\c[7]_P_i_5_n_0 ),
        .I2(\c[7]_P_i_4_n_0 ),
        .I3(\c_reg[7]_P_i_6_n_5 ),
        .I4(\c[7]_P_i_3_n_0 ),
        .I5(\c[6]_P_i_2_n_0 ),
        .O(p_3_in[6]));
  LUT5 #(
    .INIT(32'h9A599A9A)) 
    \c[6]_P_i_2 
       (.I0(\d[6]_P_i_2_n_0 ),
        .I1(p_1_in[1]),
        .I2(p_0_in[1]),
        .I3(p_1_in[0]),
        .I4(p_0_in[0]),
        .O(\c[6]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFCCAACCA0CCAACC)) 
    \c[7]_C_i_1 
       (.I0(\c[7]_C_i_2_n_0 ),
        .I1(\c[7]_C_i_3_n_0 ),
        .I2(\c[7]_C_i_4_n_0 ),
        .I3(\c[7]_P_i_4_n_0 ),
        .I4(\c[7]_P_i_5_n_0 ),
        .I5(\c_reg[7]_C_n_0 ),
        .O(\c[7]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBABAAAA88A8AAAA)) 
    \c[7]_C_i_2 
       (.I0(a_i_IBUF[7]),
        .I1(\c[7]_C_i_5_n_0 ),
        .I2(XLXI_14_n_12),
        .I3(XLXI_14_n_4),
        .I4(sub1_reg_i_3_n_0),
        .I5(\c_reg[7]_P_i_6_n_4 ),
        .O(\c[7]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA20AAEFAAEFAA20)) 
    \c[7]_C_i_3 
       (.I0(\c_reg[7]_P_i_6_n_4 ),
        .I1(XLXI_14_n_12),
        .I2(XLXI_14_n_4),
        .I3(\d[7]_P_i_8_n_0 ),
        .I4(sub1_reg_i_8_n_0),
        .I5(\c[7]_P_i_10_n_0 ),
        .O(\c[7]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000404444444444)) 
    \c[7]_C_i_4 
       (.I0(load_OBUF_inst_i_2_n_0),
        .I1(push_i_IBUF),
        .I2(XLXI_14_n_12),
        .I3(XLXI_14_n_4),
        .I4(\d[7]_P_i_8_n_0 ),
        .I5(sub1_reg_i_3_n_0),
        .O(\c[7]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000002BFF002B)) 
    \c[7]_C_i_5 
       (.I0(XLXI_14_n_14),
        .I1(XLXI_14_n_6),
        .I2(sub1_reg_i_5_n_0),
        .I3(XLXI_14_n_5),
        .I4(XLXI_14_n_13),
        .I5(\d[7]_P_i_7_n_0 ),
        .O(\c[7]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0222FFFFFFFFFFFF)) 
    \c[7]_P_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(sub1_reg_i_3_n_0),
        .I3(\c[7]_P_i_3_n_0 ),
        .I4(\c[7]_P_i_4_n_0 ),
        .I5(\c[7]_P_i_5_n_0 ),
        .O(\c[7]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    \c[7]_P_i_10 
       (.I0(p_0_in[0]),
        .I1(p_1_in[0]),
        .I2(p_0_in[1]),
        .I3(p_1_in[1]),
        .I4(p_0_in[2]),
        .I5(p_1_in[2]),
        .O(\c[7]_P_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF57F70151)) 
    \c[7]_P_i_11 
       (.I0(sub1_reg_i_5_n_0),
        .I1(\c_reg[1]_C_n_0 ),
        .I2(\c_reg[1]_LDC_n_0 ),
        .I3(\c_reg[1]_P_n_0 ),
        .I4(XLXI_14_n_14),
        .I5(sub1_reg_i_6_n_0),
        .O(\c[7]_P_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB847B8B8B8474747)) 
    \c[7]_P_i_12 
       (.I0(\d_reg[7]_P_n_0 ),
        .I1(\d_reg[7]_LDC_n_0 ),
        .I2(\d_reg[7]_C_n_0 ),
        .I3(\c_reg[7]_P_n_0 ),
        .I4(\c_reg[7]_LDC_n_0 ),
        .I5(\c_reg[7]_C_n_0 ),
        .O(\c[7]_P_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB847B8B8B8474747)) 
    \c[7]_P_i_13 
       (.I0(\d_reg[6]_P_n_0 ),
        .I1(\d_reg[6]_LDC_n_0 ),
        .I2(\d_reg[6]_C_n_0 ),
        .I3(\c_reg[6]_P_n_0 ),
        .I4(\c_reg[6]_LDC_n_0 ),
        .I5(\c_reg[6]_C_n_0 ),
        .O(\c[7]_P_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \c[7]_P_i_14 
       (.I0(\c_reg[5]_C_n_0 ),
        .I1(\c_reg[5]_LDC_n_0 ),
        .I2(\c_reg[5]_P_n_0 ),
        .I3(\d_reg[5]_C_n_0 ),
        .I4(\d_reg[5]_LDC_n_0 ),
        .I5(\d_reg[5]_P_n_0 ),
        .O(\c[7]_P_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \c[7]_P_i_15 
       (.I0(\c_reg[4]_C_n_0 ),
        .I1(\c_reg[4]_LDC_n_0 ),
        .I2(\c_reg[4]_P_n_0 ),
        .I3(\d_reg[4]_C_n_0 ),
        .I4(\d_reg[4]_LDC_n_0 ),
        .I5(\d_reg[4]_P_n_0 ),
        .O(\c[7]_P_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00E20000FFFF00E2)) 
    \c[7]_P_i_16 
       (.I0(\c_reg[4]_C_n_0 ),
        .I1(\c_reg[4]_LDC_n_0 ),
        .I2(\c_reg[4]_P_n_0 ),
        .I3(p_1_in[0]),
        .I4(p_0_in[1]),
        .I5(p_1_in[1]),
        .O(\c[7]_P_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2FFFFFFE2FF)) 
    \c[7]_P_i_17 
       (.I0(\c_reg[1]_C_n_0 ),
        .I1(\c_reg[1]_LDC_n_0 ),
        .I2(\c_reg[1]_P_n_0 ),
        .I3(\d_reg[1]_C_n_0 ),
        .I4(\d_reg[1]_LDC_n_0 ),
        .I5(\d_reg[1]_P_n_0 ),
        .O(\c[7]_P_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BF8FBF80B080)) 
    \c[7]_P_i_2 
       (.I0(a_i_IBUF[7]),
        .I1(\c[7]_P_i_5_n_0 ),
        .I2(\c[7]_P_i_4_n_0 ),
        .I3(\c_reg[7]_P_i_6_n_4 ),
        .I4(\c[7]_P_i_3_n_0 ),
        .I5(\c[7]_P_i_7_n_0 ),
        .O(p_3_in[7]));
  LUT6 #(
    .INIT(64'hB2BBB2BBB2BB22B2)) 
    \c[7]_P_i_3 
       (.I0(XLXI_14_n_4),
        .I1(XLXI_14_n_12),
        .I2(XLXI_14_n_5),
        .I3(XLXI_14_n_13),
        .I4(\c[7]_P_i_8_n_0 ),
        .I5(\c[7]_P_i_9_n_0 ),
        .O(\c[7]_P_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hABFB02A2)) 
    \c[7]_P_i_4 
       (.I0(\c[7]_P_i_10_n_0 ),
        .I1(\c_reg[7]_C_n_0 ),
        .I2(\c_reg[7]_LDC_n_0 ),
        .I3(\c_reg[7]_P_n_0 ),
        .I4(p_1_in[3]),
        .O(\c[7]_P_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA2FF00A2FFFFFFFF)) 
    \c[7]_P_i_5 
       (.I0(\c[7]_P_i_11_n_0 ),
        .I1(XLXI_14_n_5),
        .I2(XLXI_14_n_13),
        .I3(XLXI_14_n_4),
        .I4(XLXI_14_n_12),
        .I5(sub1_reg_i_3_n_0),
        .O(\c[7]_P_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAA66665666555)) 
    \c[7]_P_i_7 
       (.I0(sub1_reg_i_8_n_0),
        .I1(p_1_in[2]),
        .I2(\c_reg[6]_P_n_0 ),
        .I3(\c_reg[6]_LDC_n_0 ),
        .I4(\c_reg[6]_C_n_0 ),
        .I5(\c[7]_P_i_16_n_0 ),
        .O(\c[7]_P_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8A888AAA)) 
    \c[7]_P_i_8 
       (.I0(\c[7]_P_i_17_n_0 ),
        .I1(XLXI_14_n_7),
        .I2(\d_reg[0]_P_n_0 ),
        .I3(\d_reg[0]_LDC_n_0 ),
        .I4(\d_reg[0]_C_n_0 ),
        .O(\c[7]_P_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \c[7]_P_i_9 
       (.I0(\c_reg[1]_C_n_0 ),
        .I1(\c_reg[1]_LDC_n_0 ),
        .I2(\c_reg[1]_P_n_0 ),
        .I3(\d_reg[1]_C_n_0 ),
        .I4(\d_reg[1]_LDC_n_0 ),
        .I5(\d_reg[1]_P_n_0 ),
        .O(\c[7]_P_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[0]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\c_reg[0]_LDC_i_2_n_0 ),
        .D(\c[0]_C_i_1_n_0 ),
        .Q(\c_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \c_reg[0]_LDC 
       (.CLR(\c_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\c_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\c_reg[0]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \c_reg[0]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[0]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[0]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \c_reg[0]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[0]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \c_reg[0]_P 
       (.C(clock_BUFG),
        .CE(\c[7]_P_i_1_n_0 ),
        .D(p_3_in[0]),
        .PRE(\c_reg[0]_LDC_i_1_n_0 ),
        .Q(\c_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[1]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\c_reg[1]_LDC_i_2_n_0 ),
        .D(\c[1]_C_i_1_n_0 ),
        .Q(\c_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \c_reg[1]_LDC 
       (.CLR(\c_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\c_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\c_reg[1]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \c_reg[1]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[1]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[1]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \c_reg[1]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[1]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[1]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \c_reg[1]_P 
       (.C(clock_BUFG),
        .CE(\c[7]_P_i_1_n_0 ),
        .D(p_3_in[1]),
        .PRE(\c_reg[1]_LDC_i_1_n_0 ),
        .Q(\c_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[2]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\c_reg[2]_LDC_i_2_n_0 ),
        .D(\c[2]_C_i_1_n_0 ),
        .Q(\c_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \c_reg[2]_LDC 
       (.CLR(\c_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\c_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\c_reg[2]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \c_reg[2]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[2]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[2]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \c_reg[2]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[2]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[2]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \c_reg[2]_P 
       (.C(clock_BUFG),
        .CE(\c[7]_P_i_1_n_0 ),
        .D(p_3_in[2]),
        .PRE(\c_reg[2]_LDC_i_1_n_0 ),
        .Q(\c_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[3]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\c_reg[3]_LDC_i_2_n_0 ),
        .D(\c[3]_C_i_1_n_0 ),
        .Q(\c_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \c_reg[3]_LDC 
       (.CLR(\c_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\c_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\c_reg[3]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \c_reg[3]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[3]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[3]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \c_reg[3]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[3]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[3]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \c_reg[3]_P 
       (.C(clock_BUFG),
        .CE(\c[7]_P_i_1_n_0 ),
        .D(p_3_in[3]),
        .PRE(\c_reg[3]_LDC_i_1_n_0 ),
        .Q(\c_reg[3]_P_n_0 ));
  CARRY4 \c_reg[3]_P_i_2 
       (.CI(1'b0),
        .CO({\c_reg[3]_P_i_2_n_0 ,\c_reg[3]_P_i_2_n_1 ,\c_reg[3]_P_i_2_n_2 ,\c_reg[3]_P_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({XLXI_14_n_4,XLXI_14_n_5,XLXI_14_n_6,XLXI_14_n_7}),
        .O({\c_reg[3]_P_i_2_n_4 ,\c_reg[3]_P_i_2_n_5 ,\c_reg[3]_P_i_2_n_6 ,\c_reg[3]_P_i_2_n_7 }),
        .S({\c[3]_P_i_4_n_0 ,\c[3]_P_i_5_n_0 ,\c[3]_P_i_6_n_0 ,\c[3]_P_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[4]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\c_reg[4]_LDC_i_2_n_0 ),
        .D(\c[4]_C_i_1_n_0 ),
        .Q(\c_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \c_reg[4]_LDC 
       (.CLR(\c_reg[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\c_reg[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\c_reg[4]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \c_reg[4]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[4]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[4]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \c_reg[4]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[4]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[4]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \c_reg[4]_P 
       (.C(clock_BUFG),
        .CE(\c[7]_P_i_1_n_0 ),
        .D(p_3_in[4]),
        .PRE(\c_reg[4]_LDC_i_1_n_0 ),
        .Q(\c_reg[4]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[5]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\c_reg[5]_LDC_i_2_n_0 ),
        .D(\c[5]_C_i_1_n_0 ),
        .Q(\c_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \c_reg[5]_LDC 
       (.CLR(\c_reg[5]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\c_reg[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\c_reg[5]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \c_reg[5]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[5]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[5]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \c_reg[5]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[5]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[5]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \c_reg[5]_P 
       (.C(clock_BUFG),
        .CE(\c[7]_P_i_1_n_0 ),
        .D(p_3_in[5]),
        .PRE(\c_reg[5]_LDC_i_1_n_0 ),
        .Q(\c_reg[5]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[6]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\c_reg[6]_LDC_i_2_n_0 ),
        .D(\c[6]_C_i_1_n_0 ),
        .Q(\c_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \c_reg[6]_LDC 
       (.CLR(\c_reg[6]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\c_reg[6]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\c_reg[6]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \c_reg[6]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[6]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[6]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \c_reg[6]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[6]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[6]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \c_reg[6]_P 
       (.C(clock_BUFG),
        .CE(\c[7]_P_i_1_n_0 ),
        .D(p_3_in[6]),
        .PRE(\c_reg[6]_LDC_i_1_n_0 ),
        .Q(\c_reg[6]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \c_reg[7]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\c_reg[7]_LDC_i_2_n_0 ),
        .D(\c[7]_C_i_1_n_0 ),
        .Q(\c_reg[7]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \c_reg[7]_LDC 
       (.CLR(\c_reg[7]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\c_reg[7]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\c_reg[7]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \c_reg[7]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[7]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[7]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \c_reg[7]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(a_i_IBUF[7]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\c_reg[7]_LDC_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \c_reg[7]_LDC_i_3 
       (.I0(sub1),
        .I1(mlk[1]),
        .I2(mlk[0]),
        .I3(mlk[2]),
        .O(\c_reg[7]_LDC_i_3_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \c_reg[7]_P 
       (.C(clock_BUFG),
        .CE(\c[7]_P_i_1_n_0 ),
        .D(p_3_in[7]),
        .PRE(\c_reg[7]_LDC_i_1_n_0 ),
        .Q(\c_reg[7]_P_n_0 ));
  CARRY4 \c_reg[7]_P_i_6 
       (.CI(\c_reg[3]_P_i_2_n_0 ),
        .CO({\NLW_c_reg[7]_P_i_6_CO_UNCONNECTED [3],\c_reg[7]_P_i_6_n_1 ,\c_reg[7]_P_i_6_n_2 ,\c_reg[7]_P_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_0_in[2:0]}),
        .O({\c_reg[7]_P_i_6_n_4 ,\c_reg[7]_P_i_6_n_5 ,\c_reg[7]_P_i_6_n_6 ,\c_reg[7]_P_i_6_n_7 }),
        .S({\c[7]_P_i_12_n_0 ,\c[7]_P_i_13_n_0 ,\c[7]_P_i_14_n_0 ,\c[7]_P_i_15_n_0 }));
  OBUF \cathode_OBUF[0]_inst 
       (.I(cathode_OBUF[0]),
        .O(cathode[0]));
  OBUF \cathode_OBUF[1]_inst 
       (.I(cathode_OBUF[1]),
        .O(cathode[1]));
  OBUF \cathode_OBUF[2]_inst 
       (.I(cathode_OBUF[2]),
        .O(cathode[2]));
  OBUF \cathode_OBUF[3]_inst 
       (.I(cathode_OBUF[3]),
        .O(cathode[3]));
  OBUF \cathode_OBUF[4]_inst 
       (.I(cathode_OBUF[4]),
        .O(cathode[4]));
  OBUF \cathode_OBUF[5]_inst 
       (.I(cathode_OBUF[5]),
        .O(cathode[5]));
  OBUF \cathode_OBUF[6]_inst 
       (.I(cathode_OBUF[6]),
        .O(cathode[6]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  BUFG clock_BUFG_inst
       (.I(clock),
        .O(clock_BUFG));
  LUT6 #(
    .INIT(64'hFDFDFF002020FF00)) 
    \d[0]_C_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[0]),
        .I3(\d[0]_C_i_2_n_0 ),
        .I4(\d[7]_P_i_3_n_0 ),
        .I5(\d_reg[0]_C_n_0 ),
        .O(\d[0]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAABAAABAAA8)) 
    \d[0]_C_i_2 
       (.I0(d0[0]),
        .I1(sub1_reg_i_3_n_0),
        .I2(\c[7]_C_i_5_n_0 ),
        .I3(\d[7]_C_i_3_n_0 ),
        .I4(XLXI_14_n_15),
        .I5(XLXI_14_n_7),
        .O(\d[0]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \d[0]_P_i_1 
       (.I0(b_i_IBUF[0]),
        .I1(\d[7]_P_i_3_n_0 ),
        .I2(d0[0]),
        .I3(\d[7]_P_i_5_n_0 ),
        .I4(XLXI_14_n_15),
        .I5(XLXI_14_n_7),
        .O(\d[0]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFF002020FF00)) 
    \d[1]_C_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[1]),
        .I3(\d[1]_C_i_2_n_0 ),
        .I4(\d[7]_P_i_3_n_0 ),
        .I5(\d_reg[1]_C_n_0 ),
        .O(\d[1]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAABAAABAAA8)) 
    \d[1]_C_i_2 
       (.I0(d0[1]),
        .I1(sub1_reg_i_3_n_0),
        .I2(\c[7]_C_i_5_n_0 ),
        .I3(\d[7]_C_i_3_n_0 ),
        .I4(\d[1]_P_i_2_n_0 ),
        .I5(sub1_reg_i_5_n_0),
        .O(\d[1]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \d[1]_P_i_1 
       (.I0(b_i_IBUF[1]),
        .I1(\d[7]_P_i_3_n_0 ),
        .I2(d0[1]),
        .I3(\d[7]_P_i_5_n_0 ),
        .I4(\d[1]_P_i_2_n_0 ),
        .I5(sub1_reg_i_5_n_0),
        .O(\d[1]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \d[1]_P_i_2 
       (.I0(\d_reg[1]_C_n_0 ),
        .I1(\d_reg[1]_LDC_n_0 ),
        .I2(\d_reg[1]_P_n_0 ),
        .I3(\c_reg[1]_C_n_0 ),
        .I4(\c_reg[1]_LDC_n_0 ),
        .I5(\c_reg[1]_P_n_0 ),
        .O(\d[1]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFF002020FF00)) 
    \d[2]_C_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[2]),
        .I3(\d[2]_C_i_2_n_0 ),
        .I4(\d[7]_P_i_3_n_0 ),
        .I5(\d_reg[2]_C_n_0 ),
        .O(\d[2]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABAAABA8A8AAA8)) 
    \d[2]_C_i_2 
       (.I0(d0[2]),
        .I1(sub1_reg_i_3_n_0),
        .I2(\c[7]_C_i_5_n_0 ),
        .I3(XLXI_14_n_12),
        .I4(XLXI_14_n_4),
        .I5(\d[2]_P_i_2_n_0 ),
        .O(\d[2]_C_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \d[2]_P_i_1 
       (.I0(b_i_IBUF[2]),
        .I1(\d[7]_P_i_3_n_0 ),
        .I2(d0[2]),
        .I3(\d[7]_P_i_5_n_0 ),
        .I4(\d[2]_P_i_2_n_0 ),
        .O(\d[2]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0151A808FEAE57F7)) 
    \d[2]_P_i_2 
       (.I0(sub1_reg_i_5_n_0),
        .I1(\c_reg[1]_C_n_0 ),
        .I2(\c_reg[1]_LDC_n_0 ),
        .I3(\c_reg[1]_P_n_0 ),
        .I4(XLXI_14_n_14),
        .I5(\d[2]_P_i_3_n_0 ),
        .O(\d[2]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \d[2]_P_i_3 
       (.I0(\d_reg[2]_C_n_0 ),
        .I1(\d_reg[2]_LDC_n_0 ),
        .I2(\d_reg[2]_P_n_0 ),
        .I3(\c_reg[2]_C_n_0 ),
        .I4(\c_reg[2]_LDC_n_0 ),
        .I5(\c_reg[2]_P_n_0 ),
        .O(\d[2]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFF002020FF00)) 
    \d[3]_C_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[3]),
        .I3(\d[3]_C_i_2_n_0 ),
        .I4(\d[7]_P_i_3_n_0 ),
        .I5(\d_reg[3]_C_n_0 ),
        .O(\d[3]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABAAABA8A8AAA8)) 
    \d[3]_C_i_2 
       (.I0(d0[3]),
        .I1(sub1_reg_i_3_n_0),
        .I2(\c[7]_C_i_5_n_0 ),
        .I3(XLXI_14_n_12),
        .I4(XLXI_14_n_4),
        .I5(\d[3]_P_i_3_n_0 ),
        .O(\d[3]_C_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \d[3]_P_i_1 
       (.I0(b_i_IBUF[3]),
        .I1(\d[7]_P_i_3_n_0 ),
        .I2(d0[3]),
        .I3(\d[7]_P_i_5_n_0 ),
        .I4(\d[3]_P_i_3_n_0 ),
        .O(\d[3]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDF04FBDF20FB0420)) 
    \d[3]_P_i_3 
       (.I0(XLXI_14_n_6),
        .I1(XLXI_14_n_14),
        .I2(sub1_reg_i_5_n_0),
        .I3(XLXI_14_n_13),
        .I4(XLXI_14_n_5),
        .I5(\d[3]_P_i_8_n_0 ),
        .O(\d[3]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \d[3]_P_i_4 
       (.I0(\d_reg[3]_C_n_0 ),
        .I1(\d_reg[3]_LDC_n_0 ),
        .I2(\d_reg[3]_P_n_0 ),
        .I3(\c_reg[3]_C_n_0 ),
        .I4(\c_reg[3]_LDC_n_0 ),
        .I5(\c_reg[3]_P_n_0 ),
        .O(\d[3]_P_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \d[3]_P_i_5 
       (.I0(\d_reg[2]_C_n_0 ),
        .I1(\d_reg[2]_LDC_n_0 ),
        .I2(\d_reg[2]_P_n_0 ),
        .I3(\c_reg[2]_C_n_0 ),
        .I4(\c_reg[2]_LDC_n_0 ),
        .I5(\c_reg[2]_P_n_0 ),
        .O(\d[3]_P_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \d[3]_P_i_6 
       (.I0(\d_reg[1]_C_n_0 ),
        .I1(\d_reg[1]_LDC_n_0 ),
        .I2(\d_reg[1]_P_n_0 ),
        .I3(\c_reg[1]_C_n_0 ),
        .I4(\c_reg[1]_LDC_n_0 ),
        .I5(\c_reg[1]_P_n_0 ),
        .O(\d[3]_P_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \d[3]_P_i_7 
       (.I0(\d_reg[0]_C_n_0 ),
        .I1(\d_reg[0]_LDC_n_0 ),
        .I2(\d_reg[0]_P_n_0 ),
        .I3(\c_reg[0]_C_n_0 ),
        .I4(\c_reg[0]_LDC_n_0 ),
        .I5(\c_reg[0]_P_n_0 ),
        .O(\d[3]_P_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \d[3]_P_i_8 
       (.I0(\d_reg[3]_C_n_0 ),
        .I1(\d_reg[3]_LDC_n_0 ),
        .I2(\d_reg[3]_P_n_0 ),
        .I3(\c_reg[3]_C_n_0 ),
        .I4(\c_reg[3]_LDC_n_0 ),
        .I5(\c_reg[3]_P_n_0 ),
        .O(\d[3]_P_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFF002020FF00)) 
    \d[4]_C_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[4]),
        .I3(\d[4]_C_i_2_n_0 ),
        .I4(\d[7]_P_i_3_n_0 ),
        .I5(\d_reg[4]_C_n_0 ),
        .O(\d[4]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAA8AAA8AAAB)) 
    \d[4]_C_i_2 
       (.I0(d0[4]),
        .I1(sub1_reg_i_3_n_0),
        .I2(\c[7]_C_i_5_n_0 ),
        .I3(\d[7]_C_i_3_n_0 ),
        .I4(p_1_in[0]),
        .I5(p_0_in[0]),
        .O(\d[4]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B8BB)) 
    \d[4]_P_i_1 
       (.I0(b_i_IBUF[4]),
        .I1(\d[7]_P_i_3_n_0 ),
        .I2(d0[4]),
        .I3(\d[7]_P_i_5_n_0 ),
        .I4(p_1_in[0]),
        .I5(p_0_in[0]),
        .O(\d[4]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFF002020FF00)) 
    \d[5]_C_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[5]),
        .I3(\d[5]_C_i_2_n_0 ),
        .I4(\d[7]_P_i_3_n_0 ),
        .I5(\d_reg[5]_C_n_0 ),
        .O(\d[5]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAABAAABAAA8)) 
    \d[5]_C_i_2 
       (.I0(d0[5]),
        .I1(sub1_reg_i_3_n_0),
        .I2(\c[7]_C_i_5_n_0 ),
        .I3(\d[7]_C_i_3_n_0 ),
        .I4(\d[5]_P_i_2_n_0 ),
        .I5(\d[5]_P_i_3_n_0 ),
        .O(\d[5]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \d[5]_P_i_1 
       (.I0(b_i_IBUF[5]),
        .I1(\d[7]_P_i_3_n_0 ),
        .I2(d0[5]),
        .I3(\d[7]_P_i_5_n_0 ),
        .I4(\d[5]_P_i_2_n_0 ),
        .I5(\d[5]_P_i_3_n_0 ),
        .O(\d[5]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \d[5]_P_i_2 
       (.I0(\d_reg[5]_C_n_0 ),
        .I1(\d_reg[5]_LDC_n_0 ),
        .I2(\d_reg[5]_P_n_0 ),
        .I3(\c_reg[5]_C_n_0 ),
        .I4(\c_reg[5]_LDC_n_0 ),
        .I5(\c_reg[5]_P_n_0 ),
        .O(\d[5]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \d[5]_P_i_3 
       (.I0(\d_reg[4]_C_n_0 ),
        .I1(\d_reg[4]_LDC_n_0 ),
        .I2(\d_reg[4]_P_n_0 ),
        .I3(\c_reg[4]_C_n_0 ),
        .I4(\c_reg[4]_LDC_n_0 ),
        .I5(\c_reg[4]_P_n_0 ),
        .O(\d[5]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFF002020FF00)) 
    \d[6]_C_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[6]),
        .I3(\d[6]_C_i_2_n_0 ),
        .I4(\d[7]_P_i_3_n_0 ),
        .I5(\d_reg[6]_C_n_0 ),
        .O(\d[6]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAABAAABAAA8)) 
    \d[6]_C_i_2 
       (.I0(d0[6]),
        .I1(sub1_reg_i_3_n_0),
        .I2(\c[7]_C_i_5_n_0 ),
        .I3(\d[7]_C_i_3_n_0 ),
        .I4(\d[6]_P_i_2_n_0 ),
        .I5(\d[6]_P_i_3_n_0 ),
        .O(\d[6]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \d[6]_P_i_1 
       (.I0(b_i_IBUF[6]),
        .I1(\d[7]_P_i_3_n_0 ),
        .I2(d0[6]),
        .I3(\d[7]_P_i_5_n_0 ),
        .I4(\d[6]_P_i_2_n_0 ),
        .I5(\d[6]_P_i_3_n_0 ),
        .O(\d[6]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB847B8B8B8474747)) 
    \d[6]_P_i_2 
       (.I0(\d_reg[6]_P_n_0 ),
        .I1(\d_reg[6]_LDC_n_0 ),
        .I2(\d_reg[6]_C_n_0 ),
        .I3(\c_reg[6]_P_n_0 ),
        .I4(\c_reg[6]_LDC_n_0 ),
        .I5(\c_reg[6]_C_n_0 ),
        .O(\d[6]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E20000FFFF00E2)) 
    \d[6]_P_i_3 
       (.I0(\d_reg[4]_C_n_0 ),
        .I1(\d_reg[4]_LDC_n_0 ),
        .I2(\d_reg[4]_P_n_0 ),
        .I3(p_0_in[0]),
        .I4(p_1_in[1]),
        .I5(p_0_in[1]),
        .O(\d[6]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFF002020FF00)) 
    \d[7]_C_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[7]),
        .I3(\d[7]_C_i_2_n_0 ),
        .I4(\d[7]_P_i_3_n_0 ),
        .I5(\d_reg[7]_C_n_0 ),
        .O(\d[7]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAABAAABAAA8)) 
    \d[7]_C_i_2 
       (.I0(d0[7]),
        .I1(sub1_reg_i_3_n_0),
        .I2(\c[7]_C_i_5_n_0 ),
        .I3(\d[7]_C_i_3_n_0 ),
        .I4(sub1_reg_i_8_n_0),
        .I5(\d[7]_C_i_4_n_0 ),
        .O(\d[7]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \d[7]_C_i_3 
       (.I0(\d_reg[3]_C_n_0 ),
        .I1(\d_reg[3]_LDC_n_0 ),
        .I2(\d_reg[3]_P_n_0 ),
        .I3(\c_reg[3]_C_n_0 ),
        .I4(\c_reg[3]_LDC_n_0 ),
        .I5(\c_reg[3]_P_n_0 ),
        .O(\d[7]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    \d[7]_C_i_4 
       (.I0(p_1_in[0]),
        .I1(p_0_in[0]),
        .I2(p_1_in[1]),
        .I3(p_0_in[1]),
        .I4(p_1_in[2]),
        .I5(p_0_in[2]),
        .O(\d[7]_C_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2F)) 
    \d[7]_P_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(\d[7]_P_i_3_n_0 ),
        .O(\d[7]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB847B8B8B8474747)) 
    \d[7]_P_i_10 
       (.I0(\d_reg[6]_P_n_0 ),
        .I1(\d_reg[6]_LDC_n_0 ),
        .I2(\d_reg[6]_C_n_0 ),
        .I3(\c_reg[6]_P_n_0 ),
        .I4(\c_reg[6]_LDC_n_0 ),
        .I5(\c_reg[6]_C_n_0 ),
        .O(\d[7]_P_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \d[7]_P_i_11 
       (.I0(\d_reg[5]_C_n_0 ),
        .I1(\d_reg[5]_LDC_n_0 ),
        .I2(\d_reg[5]_P_n_0 ),
        .I3(\c_reg[5]_C_n_0 ),
        .I4(\c_reg[5]_LDC_n_0 ),
        .I5(\c_reg[5]_P_n_0 ),
        .O(\d[7]_P_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E21D1D1DE21D)) 
    \d[7]_P_i_12 
       (.I0(\d_reg[4]_C_n_0 ),
        .I1(\d_reg[4]_LDC_n_0 ),
        .I2(\d_reg[4]_P_n_0 ),
        .I3(\c_reg[4]_C_n_0 ),
        .I4(\c_reg[4]_LDC_n_0 ),
        .I5(\c_reg[4]_P_n_0 ),
        .O(\d[7]_P_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \d[7]_P_i_2 
       (.I0(b_i_IBUF[7]),
        .I1(\d[7]_P_i_3_n_0 ),
        .I2(d0[7]),
        .I3(\d[7]_P_i_5_n_0 ),
        .I4(\d[7]_P_i_6_n_0 ),
        .O(\d[7]_P_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE0FFE0E0FFFFE0FF)) 
    \d[7]_P_i_3 
       (.I0(\d[7]_P_i_7_n_0 ),
        .I1(\d[7]_P_i_8_n_0 ),
        .I2(sub1_reg_i_3_n_0),
        .I3(p_1_in[3]),
        .I4(p_0_in[3]),
        .I5(\c[7]_P_i_10_n_0 ),
        .O(\d[7]_P_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEAEFFFFAAAAEEAE)) 
    \d[7]_P_i_5 
       (.I0(sub1_reg_i_3_n_0),
        .I1(\c[7]_P_i_11_n_0 ),
        .I2(XLXI_14_n_5),
        .I3(XLXI_14_n_13),
        .I4(XLXI_14_n_4),
        .I5(XLXI_14_n_12),
        .O(\d[7]_P_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAA66665666555)) 
    \d[7]_P_i_6 
       (.I0(sub1_reg_i_8_n_0),
        .I1(p_0_in[2]),
        .I2(\d_reg[6]_P_n_0 ),
        .I3(\d_reg[6]_LDC_n_0 ),
        .I4(\d_reg[6]_C_n_0 ),
        .I5(\d[6]_P_i_3_n_0 ),
        .O(\d[7]_P_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \d[7]_P_i_7 
       (.I0(\c_reg[3]_C_n_0 ),
        .I1(\c_reg[3]_LDC_n_0 ),
        .I2(\c_reg[3]_P_n_0 ),
        .I3(\d_reg[3]_C_n_0 ),
        .I4(\d_reg[3]_LDC_n_0 ),
        .I5(\d_reg[3]_P_n_0 ),
        .O(\d[7]_P_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000004DFF004D)) 
    \d[7]_P_i_8 
       (.I0(XLXI_14_n_14),
        .I1(XLXI_14_n_6),
        .I2(sub1_reg_i_10_n_0),
        .I3(XLXI_14_n_13),
        .I4(XLXI_14_n_5),
        .I5(\d[7]_C_i_3_n_0 ),
        .O(\d[7]_P_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB847B8B8B8474747)) 
    \d[7]_P_i_9 
       (.I0(\d_reg[7]_P_n_0 ),
        .I1(\d_reg[7]_LDC_n_0 ),
        .I2(\d_reg[7]_C_n_0 ),
        .I3(\c_reg[7]_P_n_0 ),
        .I4(\c_reg[7]_LDC_n_0 ),
        .I5(\c_reg[7]_C_n_0 ),
        .O(\d[7]_P_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[0]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\d_reg[0]_LDC_i_2_n_0 ),
        .D(\d[0]_C_i_1_n_0 ),
        .Q(\d_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_reg[0]_LDC 
       (.CLR(\d_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\d_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\d_reg[0]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \d_reg[0]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[0]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[0]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \d_reg[0]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[0]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \d_reg[0]_P 
       (.C(clock_BUFG),
        .CE(\d[7]_P_i_1_n_0 ),
        .D(\d[0]_P_i_1_n_0 ),
        .PRE(\d_reg[0]_LDC_i_1_n_0 ),
        .Q(\d_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[1]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\d_reg[1]_LDC_i_2_n_0 ),
        .D(\d[1]_C_i_1_n_0 ),
        .Q(\d_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_reg[1]_LDC 
       (.CLR(\d_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\d_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\d_reg[1]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \d_reg[1]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[1]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[1]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \d_reg[1]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[1]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[1]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \d_reg[1]_P 
       (.C(clock_BUFG),
        .CE(\d[7]_P_i_1_n_0 ),
        .D(\d[1]_P_i_1_n_0 ),
        .PRE(\d_reg[1]_LDC_i_1_n_0 ),
        .Q(\d_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[2]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\d_reg[2]_LDC_i_2_n_0 ),
        .D(\d[2]_C_i_1_n_0 ),
        .Q(\d_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_reg[2]_LDC 
       (.CLR(\d_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\d_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\d_reg[2]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \d_reg[2]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[2]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[2]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \d_reg[2]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[2]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[2]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \d_reg[2]_P 
       (.C(clock_BUFG),
        .CE(\d[7]_P_i_1_n_0 ),
        .D(\d[2]_P_i_1_n_0 ),
        .PRE(\d_reg[2]_LDC_i_1_n_0 ),
        .Q(\d_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[3]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\d_reg[3]_LDC_i_2_n_0 ),
        .D(\d[3]_C_i_1_n_0 ),
        .Q(\d_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_reg[3]_LDC 
       (.CLR(\d_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\d_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\d_reg[3]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \d_reg[3]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[3]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[3]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \d_reg[3]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[3]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[3]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \d_reg[3]_P 
       (.C(clock_BUFG),
        .CE(\d[7]_P_i_1_n_0 ),
        .D(\d[3]_P_i_1_n_0 ),
        .PRE(\d_reg[3]_LDC_i_1_n_0 ),
        .Q(\d_reg[3]_P_n_0 ));
  CARRY4 \d_reg[3]_P_i_2 
       (.CI(1'b0),
        .CO({\d_reg[3]_P_i_2_n_0 ,\d_reg[3]_P_i_2_n_1 ,\d_reg[3]_P_i_2_n_2 ,\d_reg[3]_P_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({XLXI_14_n_12,XLXI_14_n_13,XLXI_14_n_14,XLXI_14_n_15}),
        .O(d0[3:0]),
        .S({\d[3]_P_i_4_n_0 ,\d[3]_P_i_5_n_0 ,\d[3]_P_i_6_n_0 ,\d[3]_P_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[4]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\d_reg[4]_LDC_i_2_n_0 ),
        .D(\d[4]_C_i_1_n_0 ),
        .Q(\d_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_reg[4]_LDC 
       (.CLR(\d_reg[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\d_reg[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\d_reg[4]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \d_reg[4]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[4]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[4]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \d_reg[4]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[4]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[4]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \d_reg[4]_P 
       (.C(clock_BUFG),
        .CE(\d[7]_P_i_1_n_0 ),
        .D(\d[4]_P_i_1_n_0 ),
        .PRE(\d_reg[4]_LDC_i_1_n_0 ),
        .Q(\d_reg[4]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[5]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\d_reg[5]_LDC_i_2_n_0 ),
        .D(\d[5]_C_i_1_n_0 ),
        .Q(\d_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_reg[5]_LDC 
       (.CLR(\d_reg[5]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\d_reg[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\d_reg[5]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \d_reg[5]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[5]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[5]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \d_reg[5]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[5]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[5]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \d_reg[5]_P 
       (.C(clock_BUFG),
        .CE(\d[7]_P_i_1_n_0 ),
        .D(\d[5]_P_i_1_n_0 ),
        .PRE(\d_reg[5]_LDC_i_1_n_0 ),
        .Q(\d_reg[5]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[6]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\d_reg[6]_LDC_i_2_n_0 ),
        .D(\d[6]_C_i_1_n_0 ),
        .Q(\d_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_reg[6]_LDC 
       (.CLR(\d_reg[6]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\d_reg[6]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\d_reg[6]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \d_reg[6]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[6]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[6]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \d_reg[6]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[6]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[6]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \d_reg[6]_P 
       (.C(clock_BUFG),
        .CE(\d[7]_P_i_1_n_0 ),
        .D(\d[6]_P_i_1_n_0 ),
        .PRE(\d_reg[6]_LDC_i_1_n_0 ),
        .Q(\d_reg[6]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d_reg[7]_C 
       (.C(clock_BUFG),
        .CE(1'b1),
        .CLR(\d_reg[7]_LDC_i_2_n_0 ),
        .D(\d[7]_C_i_1_n_0 ),
        .Q(\d_reg[7]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \d_reg[7]_LDC 
       (.CLR(\d_reg[7]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\d_reg[7]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\d_reg[7]_LDC_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \d_reg[7]_LDC_i_1 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[7]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[7]_LDC_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \d_reg[7]_LDC_i_2 
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(b_i_IBUF[7]),
        .I3(\c_reg[7]_LDC_i_3_n_0 ),
        .O(\d_reg[7]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \d_reg[7]_P 
       (.C(clock_BUFG),
        .CE(\d[7]_P_i_1_n_0 ),
        .D(\d[7]_P_i_2_n_0 ),
        .PRE(\d_reg[7]_LDC_i_1_n_0 ),
        .Q(\d_reg[7]_P_n_0 ));
  CARRY4 \d_reg[7]_P_i_4 
       (.CI(\d_reg[3]_P_i_2_n_0 ),
        .CO({\NLW_d_reg[7]_P_i_4_CO_UNCONNECTED [3],\d_reg[7]_P_i_4_n_1 ,\d_reg[7]_P_i_4_n_2 ,\d_reg[7]_P_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in[2:0]}),
        .O(d0[7:4]),
        .S({\d[7]_P_i_9_n_0 ,\d[7]_P_i_10_n_0 ,\d[7]_P_i_11_n_0 ,\d[7]_P_i_12_n_0 }));
  OBUF load_OBUF_inst
       (.I(load_OBUF),
        .O(load));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    load_OBUF_inst_i_1
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .O(load_OBUF));
  LUT6 #(
    .INIT(64'hEEFEEEFEFFFFEEFE)) 
    load_OBUF_inst_i_2
       (.I0(load_OBUF_inst_i_3_n_0),
        .I1(load_OBUF_inst_i_4_n_0),
        .I2(load_OBUF_inst_i_5_n_0),
        .I3(load_OBUF_inst_i_6_n_0),
        .I4(load_OBUF_inst_i_7_n_0),
        .I5(load_OBUF_inst_i_8_n_0),
        .O(load_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFA8FFA8FFA8A8A8)) 
    load_OBUF_inst_i_3
       (.I0(a_i_IBUF[3]),
        .I1(a_i_IBUF[2]),
        .I2(a_i_IBUF[1]),
        .I3(b_i_IBUF[3]),
        .I4(b_i_IBUF[2]),
        .I5(b_i_IBUF[1]),
        .O(load_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFE0FFE0FFE0E0E0)) 
    load_OBUF_inst_i_4
       (.I0(b_i_IBUF[6]),
        .I1(b_i_IBUF[5]),
        .I2(b_i_IBUF[7]),
        .I3(a_i_IBUF[7]),
        .I4(a_i_IBUF[6]),
        .I5(a_i_IBUF[5]),
        .O(load_OBUF_inst_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    load_OBUF_inst_i_5
       (.I0(a_i_IBUF[0]),
        .I1(a_i_IBUF[3]),
        .I2(a_i_IBUF[4]),
        .I3(a_i_IBUF[7]),
        .O(load_OBUF_inst_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    load_OBUF_inst_i_6
       (.I0(a_i_IBUF[5]),
        .I1(a_i_IBUF[6]),
        .I2(a_i_IBUF[1]),
        .I3(a_i_IBUF[2]),
        .O(load_OBUF_inst_i_6_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    load_OBUF_inst_i_7
       (.I0(b_i_IBUF[0]),
        .I1(b_i_IBUF[4]),
        .I2(b_i_IBUF[7]),
        .I3(b_i_IBUF[3]),
        .O(load_OBUF_inst_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    load_OBUF_inst_i_8
       (.I0(b_i_IBUF[1]),
        .I1(b_i_IBUF[2]),
        .I2(b_i_IBUF[5]),
        .I3(b_i_IBUF[6]),
        .O(load_OBUF_inst_i_8_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    \mlk1[0]_i_2 
       (.I0(\mlk1_reg_n_0_[3] ),
        .O(\mlk1[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \mlk1[0]_i_3 
       (.I0(mlk1_reg[2]),
        .O(\mlk1[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \mlk1[0]_i_4 
       (.I0(mlk1_reg[1]),
        .O(\mlk1[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mlk1[0]_i_5 
       (.I0(mlk1_reg[0]),
        .O(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \mlk1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mlk1_reg[0]_i_1_n_7 ),
        .Q(mlk1_reg[0]),
        .R(1'b0));
  CARRY4 \mlk1_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\mlk1_reg[0]_i_1_n_0 ,\mlk1_reg[0]_i_1_n_1 ,\mlk1_reg[0]_i_1_n_2 ,\mlk1_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\mlk1_reg[0]_i_1_n_4 ,\mlk1_reg[0]_i_1_n_5 ,\mlk1_reg[0]_i_1_n_6 ,\mlk1_reg[0]_i_1_n_7 }),
        .S({\mlk1[0]_i_2_n_0 ,\mlk1[0]_i_3_n_0 ,\mlk1[0]_i_4_n_0 ,p_0_in__0}));
  FDRE #(
    .INIT(1'b0)) 
    \mlk1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mlk1_reg[0]_i_1_n_6 ),
        .Q(mlk1_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mlk1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mlk1_reg[0]_i_1_n_5 ),
        .Q(mlk1_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mlk1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mlk1_reg[0]_i_1_n_4 ),
        .Q(\mlk1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mlk_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(mlk1_reg[0]),
        .Q(mlk[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mlk_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(mlk1_reg[1]),
        .Q(mlk[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mlk_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(mlk1_reg[2]),
        .Q(mlk[2]),
        .R(1'b0));
  OBUF op_valid_OBUF_inst
       (.I(op_valid_OBUF),
        .O(op_valid));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    op_valid_OBUF_inst_i_1
       (.I0(load_OBUF_inst_i_2_n_0),
        .O(op_valid_OBUF));
  IBUF push_i_IBUF_inst
       (.I(push_i),
        .O(push_i_IBUF));
  IBUF pushbutton_IBUF_inst
       (.I(pushbutton),
        .O(pushbutton_IBUF));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    sub1_reg
       (.CLR(sub1_reg_i_2_n_0),
        .D(1'b1),
        .G(sub1_reg_i_1_n_0),
        .GE(1'b1),
        .Q(sub1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hD)) 
    sub1_reg_i_1
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .O(sub1_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    sub1_reg_i_10
       (.I0(\d_reg[0]_C_n_0 ),
        .I1(\d_reg[0]_LDC_n_0 ),
        .I2(\d_reg[0]_P_n_0 ),
        .I3(\c_reg[0]_C_n_0 ),
        .I4(\c_reg[0]_LDC_n_0 ),
        .I5(\c_reg[0]_P_n_0 ),
        .O(sub1_reg_i_10_n_0));
  LUT6 #(
    .INIT(64'h0002000000000002)) 
    sub1_reg_i_2
       (.I0(sub1_reg_i_3_n_0),
        .I1(sub1_reg_i_4_n_0),
        .I2(sub1_reg_i_5_n_0),
        .I3(sub1_reg_i_6_n_0),
        .I4(XLXI_14_n_4),
        .I5(XLXI_14_n_12),
        .O(sub1_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000041000041)) 
    sub1_reg_i_3
       (.I0(sub1_reg_i_7_n_0),
        .I1(p_0_in[1]),
        .I2(p_1_in[1]),
        .I3(p_0_in[0]),
        .I4(p_1_in[0]),
        .I5(sub1_reg_i_8_n_0),
        .O(sub1_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFEEEFE)) 
    sub1_reg_i_4
       (.I0(sub1_reg_i_9_n_0),
        .I1(sub1_reg_i_10_n_0),
        .I2(\c_reg[1]_C_n_0 ),
        .I3(\c_reg[1]_LDC_n_0 ),
        .I4(\c_reg[1]_P_n_0 ),
        .I5(XLXI_14_n_14),
        .O(sub1_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    sub1_reg_i_5
       (.I0(\c_reg[0]_C_n_0 ),
        .I1(\c_reg[0]_LDC_n_0 ),
        .I2(\c_reg[0]_P_n_0 ),
        .I3(\d_reg[0]_C_n_0 ),
        .I4(\d_reg[0]_LDC_n_0 ),
        .I5(\d_reg[0]_P_n_0 ),
        .O(sub1_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    sub1_reg_i_6
       (.I0(\d_reg[2]_C_n_0 ),
        .I1(\d_reg[2]_LDC_n_0 ),
        .I2(\d_reg[2]_P_n_0 ),
        .I3(\c_reg[2]_C_n_0 ),
        .I4(\c_reg[2]_LDC_n_0 ),
        .I5(\c_reg[2]_P_n_0 ),
        .O(sub1_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    sub1_reg_i_7
       (.I0(\c_reg[6]_C_n_0 ),
        .I1(\c_reg[6]_LDC_n_0 ),
        .I2(\c_reg[6]_P_n_0 ),
        .I3(\d_reg[6]_C_n_0 ),
        .I4(\d_reg[6]_LDC_n_0 ),
        .I5(\d_reg[6]_P_n_0 ),
        .O(sub1_reg_i_7_n_0));
  LUT6 #(
    .INIT(64'h1D1D1DE2E2E21DE2)) 
    sub1_reg_i_8
       (.I0(\c_reg[7]_C_n_0 ),
        .I1(\c_reg[7]_LDC_n_0 ),
        .I2(\c_reg[7]_P_n_0 ),
        .I3(\d_reg[7]_C_n_0 ),
        .I4(\d_reg[7]_LDC_n_0 ),
        .I5(\d_reg[7]_P_n_0 ),
        .O(sub1_reg_i_8_n_0));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    sub1_reg_i_9
       (.I0(\c_reg[2]_C_n_0 ),
        .I1(\c_reg[2]_LDC_n_0 ),
        .I2(\c_reg[2]_P_n_0 ),
        .I3(\d_reg[2]_C_n_0 ),
        .I4(\d_reg[2]_LDC_n_0 ),
        .I5(\d_reg[2]_P_n_0 ),
        .O(sub1_reg_i_9_n_0));
  OBUF sub_OBUF_inst
       (.I(sub_OBUF),
        .O(sub));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    sub_reg
       (.CLR(1'b0),
        .D(sub1),
        .G(sub_reg_i_1_n_0),
        .GE(1'b1),
        .Q(sub_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    sub_reg_i_1
       (.I0(push_i_IBUF),
        .I1(load_OBUF_inst_i_2_n_0),
        .I2(sub1_reg_i_2_n_0),
        .O(sub_reg_i_1_n_0));
endmodule

module myanode_MUSER_lab5_gcd
   (anode,
    XLXN_4_0);
  output [3:0]anode;
  input [1:0]XLXN_4_0;

  wire [1:0]XLXN_4_0;
  wire a0;
  wire a1;
  wire a2;
  wire a3;
  wire [3:0]anode;

  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    XLXI_1
       (.I0(XLXN_4_0[0]),
        .I1(XLXN_4_0[1]),
        .O(a3));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_10
       (.I0(a0),
        .O(anode[0]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_11
       (.I0(a2),
        .O(anode[2]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND2B1" *) 
  LUT2 #(
    .INIT(4'h4)) 
    XLXI_2
       (.I0(XLXN_4_0[1]),
        .I1(XLXN_4_0[0]),
        .O(a1));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND2B1" *) 
  LUT2 #(
    .INIT(4'h4)) 
    XLXI_3
       (.I0(XLXN_4_0[0]),
        .I1(XLXN_4_0[1]),
        .O(a2));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND2B2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    XLXI_4
       (.I0(XLXN_4_0[1]),
        .I1(XLXN_4_0[0]),
        .O(a0));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_7
       (.I0(a3),
        .O(anode[3]));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    XLXI_8
       (.I0(a1),
        .O(anode[1]));
endmodule

module mycathode2_MUSER_lab5_gcd
   (p_0_in,
    \c_reg[7]_P ,
    \c_reg[7]_P_0 ,
    \c_reg[1]_C ,
    \d_reg[0]_P ,
    p_1_in,
    \c_reg[7]_P_1 ,
    \c_reg[7]_P_2 ,
    \c_reg[1]_P ,
    \d_reg[0]_P_0 ,
    cathode_OBUF,
    \c_reg[7]_P_3 ,
    \mlk_reg[1] ,
    \c_reg[7]_C ,
    \c_reg[6]_P ,
    \mlk_reg[1]_0 ,
    \c_reg[6]_C ,
    \c_reg[5]_P ,
    \mlk_reg[1]_1 ,
    \c_reg[5]_C ,
    \c_reg[4]_P ,
    \mlk_reg[1]_2 ,
    \c_reg[4]_C ,
    \c_reg[3]_P ,
    \mlk_reg[1]_3 ,
    \c_reg[3]_C ,
    \c_reg[2]_P ,
    \mlk_reg[1]_4 ,
    \c_reg[2]_C ,
    \c_reg[1]_P_0 ,
    \mlk_reg[1]_5 ,
    \c_reg[1]_C_0 ,
    \c_reg[0]_P ,
    \mlk_reg[1]_6 ,
    \c_reg[0]_C ,
    \d_reg[7]_P ,
    \mlk_reg[1]_7 ,
    \d_reg[7]_C ,
    \d_reg[6]_P ,
    \mlk_reg[1]_8 ,
    \d_reg[6]_C ,
    \d_reg[5]_P ,
    \mlk_reg[1]_9 ,
    \d_reg[5]_C ,
    \d_reg[4]_P ,
    \mlk_reg[1]_10 ,
    \d_reg[4]_C ,
    \d_reg[3]_P ,
    \mlk_reg[1]_11 ,
    \d_reg[3]_C ,
    \d_reg[2]_P ,
    \mlk_reg[1]_12 ,
    \d_reg[2]_C ,
    \d_reg[1]_P ,
    \mlk_reg[1]_13 ,
    \d_reg[1]_C ,
    \d_reg[0]_P_1 ,
    \mlk_reg[1]_14 ,
    \d_reg[0]_C ,
    q_tmp_reg,
    q_tmp_reg_0,
    q_tmp_reg_1,
    q_tmp_reg_2);
  output [3:0]p_0_in;
  output \c_reg[7]_P ;
  output \c_reg[7]_P_0 ;
  output \c_reg[1]_C ;
  output \d_reg[0]_P ;
  output [3:0]p_1_in;
  output \c_reg[7]_P_1 ;
  output \c_reg[7]_P_2 ;
  output \c_reg[1]_P ;
  output \d_reg[0]_P_0 ;
  output [6:0]cathode_OBUF;
  input \c_reg[7]_P_3 ;
  input \mlk_reg[1] ;
  input \c_reg[7]_C ;
  input \c_reg[6]_P ;
  input \mlk_reg[1]_0 ;
  input \c_reg[6]_C ;
  input \c_reg[5]_P ;
  input \mlk_reg[1]_1 ;
  input \c_reg[5]_C ;
  input \c_reg[4]_P ;
  input \mlk_reg[1]_2 ;
  input \c_reg[4]_C ;
  input \c_reg[3]_P ;
  input \mlk_reg[1]_3 ;
  input \c_reg[3]_C ;
  input \c_reg[2]_P ;
  input \mlk_reg[1]_4 ;
  input \c_reg[2]_C ;
  input \c_reg[1]_P_0 ;
  input \mlk_reg[1]_5 ;
  input \c_reg[1]_C_0 ;
  input \c_reg[0]_P ;
  input \mlk_reg[1]_6 ;
  input \c_reg[0]_C ;
  input \d_reg[7]_P ;
  input \mlk_reg[1]_7 ;
  input \d_reg[7]_C ;
  input \d_reg[6]_P ;
  input \mlk_reg[1]_8 ;
  input \d_reg[6]_C ;
  input \d_reg[5]_P ;
  input \mlk_reg[1]_9 ;
  input \d_reg[5]_C ;
  input \d_reg[4]_P ;
  input \mlk_reg[1]_10 ;
  input \d_reg[4]_C ;
  input \d_reg[3]_P ;
  input \mlk_reg[1]_11 ;
  input \d_reg[3]_C ;
  input \d_reg[2]_P ;
  input \mlk_reg[1]_12 ;
  input \d_reg[2]_C ;
  input \d_reg[1]_P ;
  input \mlk_reg[1]_13 ;
  input \d_reg[1]_C ;
  input \d_reg[0]_P_1 ;
  input \mlk_reg[1]_14 ;
  input \d_reg[0]_C ;
  input q_tmp_reg;
  input q_tmp_reg_0;
  input q_tmp_reg_1;
  input q_tmp_reg_2;

  wire \c_reg[0]_C ;
  wire \c_reg[0]_P ;
  wire \c_reg[1]_C ;
  wire \c_reg[1]_C_0 ;
  wire \c_reg[1]_P ;
  wire \c_reg[1]_P_0 ;
  wire \c_reg[2]_C ;
  wire \c_reg[2]_P ;
  wire \c_reg[3]_C ;
  wire \c_reg[3]_P ;
  wire \c_reg[4]_C ;
  wire \c_reg[4]_P ;
  wire \c_reg[5]_C ;
  wire \c_reg[5]_P ;
  wire \c_reg[6]_C ;
  wire \c_reg[6]_P ;
  wire \c_reg[7]_C ;
  wire \c_reg[7]_P ;
  wire \c_reg[7]_P_0 ;
  wire \c_reg[7]_P_1 ;
  wire \c_reg[7]_P_2 ;
  wire \c_reg[7]_P_3 ;
  wire [6:0]cathode_OBUF;
  wire \d_reg[0]_C ;
  wire \d_reg[0]_P ;
  wire \d_reg[0]_P_0 ;
  wire \d_reg[0]_P_1 ;
  wire \d_reg[1]_C ;
  wire \d_reg[1]_P ;
  wire \d_reg[2]_C ;
  wire \d_reg[2]_P ;
  wire \d_reg[3]_C ;
  wire \d_reg[3]_P ;
  wire \d_reg[4]_C ;
  wire \d_reg[4]_P ;
  wire \d_reg[5]_C ;
  wire \d_reg[5]_P ;
  wire \d_reg[6]_C ;
  wire \d_reg[6]_P ;
  wire \d_reg[7]_C ;
  wire \d_reg[7]_P ;
  wire \mlk_reg[1] ;
  wire \mlk_reg[1]_0 ;
  wire \mlk_reg[1]_1 ;
  wire \mlk_reg[1]_10 ;
  wire \mlk_reg[1]_11 ;
  wire \mlk_reg[1]_12 ;
  wire \mlk_reg[1]_13 ;
  wire \mlk_reg[1]_14 ;
  wire \mlk_reg[1]_2 ;
  wire \mlk_reg[1]_3 ;
  wire \mlk_reg[1]_4 ;
  wire \mlk_reg[1]_5 ;
  wire \mlk_reg[1]_6 ;
  wire \mlk_reg[1]_7 ;
  wire \mlk_reg[1]_8 ;
  wire \mlk_reg[1]_9 ;
  wire [3:0]p_0_in;
  wire [3:0]p_1_in;
  wire q_tmp_reg;
  wire q_tmp_reg_0;
  wire q_tmp_reg_1;
  wire q_tmp_reg_2;

  ca_MUSER_lab5_gcd XLXI_1
       (.cathode_OBUF(cathode_OBUF[0]),
        .myx({q_tmp_reg_0,q_tmp_reg_1,q_tmp_reg_2,q_tmp_reg}));
  cc_MUSER_lab5_gcd XLXI_3
       (.cathode_OBUF(cathode_OBUF[2]),
        .myx({q_tmp_reg_0,q_tmp_reg_1,q_tmp_reg_2,q_tmp_reg}));
  cd_MUSER_lab5_gcd XLXI_4
       (.cathode_OBUF(cathode_OBUF[3]),
        .myx({q_tmp_reg_0,q_tmp_reg_1,q_tmp_reg_2,q_tmp_reg}));
  ce_MUSER_lab5_gcd XLXI_5
       (.cathode_OBUF(cathode_OBUF[4]),
        .myx({q_tmp_reg_0,q_tmp_reg_1,q_tmp_reg_2,q_tmp_reg}));
  cf_MUSER_lab5_gcd XLXI_6
       (.cathode_OBUF(cathode_OBUF[5]),
        .myx({q_tmp_reg_0,q_tmp_reg_1,q_tmp_reg_2,q_tmp_reg}));
  cg_MUSER_lab5_gcd XLXI_7
       (.cathode_OBUF(cathode_OBUF[6]),
        .myx({q_tmp_reg_0,q_tmp_reg_1,q_tmp_reg_2,q_tmp_reg}));
  mycb_MUSER_lab5_gcd XLXI_8
       (.\c_reg[0]_C (\c_reg[0]_C ),
        .\c_reg[0]_P (\c_reg[0]_P ),
        .\c_reg[1]_C (\c_reg[1]_C ),
        .\c_reg[1]_C_0 (\c_reg[1]_C_0 ),
        .\c_reg[1]_P (\c_reg[1]_P ),
        .\c_reg[1]_P_0 (\c_reg[1]_P_0 ),
        .\c_reg[2]_C (\c_reg[2]_C ),
        .\c_reg[2]_P (\c_reg[2]_P ),
        .\c_reg[3]_C (\c_reg[3]_C ),
        .\c_reg[3]_P (\c_reg[3]_P ),
        .\c_reg[4]_C (\c_reg[4]_C ),
        .\c_reg[4]_P (\c_reg[4]_P ),
        .\c_reg[5]_C (\c_reg[5]_C ),
        .\c_reg[5]_P (\c_reg[5]_P ),
        .\c_reg[6]_C (\c_reg[6]_C ),
        .\c_reg[6]_P (\c_reg[6]_P ),
        .\c_reg[7]_C (\c_reg[7]_C ),
        .\c_reg[7]_P (\c_reg[7]_P ),
        .\c_reg[7]_P_0 (\c_reg[7]_P_0 ),
        .\c_reg[7]_P_1 (\c_reg[7]_P_1 ),
        .\c_reg[7]_P_2 (\c_reg[7]_P_2 ),
        .\c_reg[7]_P_3 (\c_reg[7]_P_3 ),
        .cathode_OBUF(cathode_OBUF[1]),
        .\d_reg[0]_C (\d_reg[0]_C ),
        .\d_reg[0]_P (\d_reg[0]_P ),
        .\d_reg[0]_P_0 (\d_reg[0]_P_0 ),
        .\d_reg[0]_P_1 (\d_reg[0]_P_1 ),
        .\d_reg[1]_C (\d_reg[1]_C ),
        .\d_reg[1]_P (\d_reg[1]_P ),
        .\d_reg[2]_C (\d_reg[2]_C ),
        .\d_reg[2]_P (\d_reg[2]_P ),
        .\d_reg[3]_C (\d_reg[3]_C ),
        .\d_reg[3]_P (\d_reg[3]_P ),
        .\d_reg[4]_C (\d_reg[4]_C ),
        .\d_reg[4]_P (\d_reg[4]_P ),
        .\d_reg[5]_C (\d_reg[5]_C ),
        .\d_reg[5]_P (\d_reg[5]_P ),
        .\d_reg[6]_C (\d_reg[6]_C ),
        .\d_reg[6]_P (\d_reg[6]_P ),
        .\d_reg[7]_C (\d_reg[7]_C ),
        .\d_reg[7]_P (\d_reg[7]_P ),
        .\mlk_reg[1] (\mlk_reg[1] ),
        .\mlk_reg[1]_0 (\mlk_reg[1]_0 ),
        .\mlk_reg[1]_1 (\mlk_reg[1]_1 ),
        .\mlk_reg[1]_10 (\mlk_reg[1]_10 ),
        .\mlk_reg[1]_11 (\mlk_reg[1]_11 ),
        .\mlk_reg[1]_12 (\mlk_reg[1]_12 ),
        .\mlk_reg[1]_13 (\mlk_reg[1]_13 ),
        .\mlk_reg[1]_14 (\mlk_reg[1]_14 ),
        .\mlk_reg[1]_2 (\mlk_reg[1]_2 ),
        .\mlk_reg[1]_3 (\mlk_reg[1]_3 ),
        .\mlk_reg[1]_4 (\mlk_reg[1]_4 ),
        .\mlk_reg[1]_5 (\mlk_reg[1]_5 ),
        .\mlk_reg[1]_6 (\mlk_reg[1]_6 ),
        .\mlk_reg[1]_7 (\mlk_reg[1]_7 ),
        .\mlk_reg[1]_8 (\mlk_reg[1]_8 ),
        .\mlk_reg[1]_9 (\mlk_reg[1]_9 ),
        .myx({q_tmp_reg_0,q_tmp_reg_1,q_tmp_reg_2,q_tmp_reg}),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in));
endmodule

module mycb_MUSER_lab5_gcd
   (p_0_in,
    \c_reg[7]_P ,
    \c_reg[7]_P_0 ,
    \c_reg[1]_C ,
    \d_reg[0]_P ,
    p_1_in,
    \c_reg[7]_P_1 ,
    \c_reg[7]_P_2 ,
    \c_reg[1]_P ,
    \d_reg[0]_P_0 ,
    cathode_OBUF,
    \c_reg[7]_P_3 ,
    \mlk_reg[1] ,
    \c_reg[7]_C ,
    \c_reg[6]_P ,
    \mlk_reg[1]_0 ,
    \c_reg[6]_C ,
    \c_reg[5]_P ,
    \mlk_reg[1]_1 ,
    \c_reg[5]_C ,
    \c_reg[4]_P ,
    \mlk_reg[1]_2 ,
    \c_reg[4]_C ,
    \c_reg[3]_P ,
    \mlk_reg[1]_3 ,
    \c_reg[3]_C ,
    \c_reg[2]_P ,
    \mlk_reg[1]_4 ,
    \c_reg[2]_C ,
    \c_reg[1]_P_0 ,
    \mlk_reg[1]_5 ,
    \c_reg[1]_C_0 ,
    \c_reg[0]_P ,
    \mlk_reg[1]_6 ,
    \c_reg[0]_C ,
    \d_reg[7]_P ,
    \mlk_reg[1]_7 ,
    \d_reg[7]_C ,
    \d_reg[6]_P ,
    \mlk_reg[1]_8 ,
    \d_reg[6]_C ,
    \d_reg[5]_P ,
    \mlk_reg[1]_9 ,
    \d_reg[5]_C ,
    \d_reg[4]_P ,
    \mlk_reg[1]_10 ,
    \d_reg[4]_C ,
    \d_reg[3]_P ,
    \mlk_reg[1]_11 ,
    \d_reg[3]_C ,
    \d_reg[2]_P ,
    \mlk_reg[1]_12 ,
    \d_reg[2]_C ,
    \d_reg[1]_P ,
    \mlk_reg[1]_13 ,
    \d_reg[1]_C ,
    \d_reg[0]_P_1 ,
    \mlk_reg[1]_14 ,
    \d_reg[0]_C ,
    myx);
  output [3:0]p_0_in;
  output \c_reg[7]_P ;
  output \c_reg[7]_P_0 ;
  output \c_reg[1]_C ;
  output \d_reg[0]_P ;
  output [3:0]p_1_in;
  output \c_reg[7]_P_1 ;
  output \c_reg[7]_P_2 ;
  output \c_reg[1]_P ;
  output \d_reg[0]_P_0 ;
  output [0:0]cathode_OBUF;
  input \c_reg[7]_P_3 ;
  input \mlk_reg[1] ;
  input \c_reg[7]_C ;
  input \c_reg[6]_P ;
  input \mlk_reg[1]_0 ;
  input \c_reg[6]_C ;
  input \c_reg[5]_P ;
  input \mlk_reg[1]_1 ;
  input \c_reg[5]_C ;
  input \c_reg[4]_P ;
  input \mlk_reg[1]_2 ;
  input \c_reg[4]_C ;
  input \c_reg[3]_P ;
  input \mlk_reg[1]_3 ;
  input \c_reg[3]_C ;
  input \c_reg[2]_P ;
  input \mlk_reg[1]_4 ;
  input \c_reg[2]_C ;
  input \c_reg[1]_P_0 ;
  input \mlk_reg[1]_5 ;
  input \c_reg[1]_C_0 ;
  input \c_reg[0]_P ;
  input \mlk_reg[1]_6 ;
  input \c_reg[0]_C ;
  input \d_reg[7]_P ;
  input \mlk_reg[1]_7 ;
  input \d_reg[7]_C ;
  input \d_reg[6]_P ;
  input \mlk_reg[1]_8 ;
  input \d_reg[6]_C ;
  input \d_reg[5]_P ;
  input \mlk_reg[1]_9 ;
  input \d_reg[5]_C ;
  input \d_reg[4]_P ;
  input \mlk_reg[1]_10 ;
  input \d_reg[4]_C ;
  input \d_reg[3]_P ;
  input \mlk_reg[1]_11 ;
  input \d_reg[3]_C ;
  input \d_reg[2]_P ;
  input \mlk_reg[1]_12 ;
  input \d_reg[2]_C ;
  input \d_reg[1]_P ;
  input \mlk_reg[1]_13 ;
  input \d_reg[1]_C ;
  input \d_reg[0]_P_1 ;
  input \mlk_reg[1]_14 ;
  input \d_reg[0]_C ;
  input [3:0]myx;

  wire XLXN_4;
  wire XLXN_5;
  wire XLXN_6;
  wire XLXN_7;
  wire XLXN_8;
  wire XLXN_9;
  wire \c_reg[0]_C ;
  wire \c_reg[0]_P ;
  wire \c_reg[1]_C ;
  wire \c_reg[1]_C_0 ;
  wire \c_reg[1]_P ;
  wire \c_reg[1]_P_0 ;
  wire \c_reg[2]_C ;
  wire \c_reg[2]_P ;
  wire \c_reg[3]_C ;
  wire \c_reg[3]_P ;
  wire \c_reg[4]_C ;
  wire \c_reg[4]_P ;
  wire \c_reg[5]_C ;
  wire \c_reg[5]_P ;
  wire \c_reg[6]_C ;
  wire \c_reg[6]_P ;
  wire \c_reg[7]_C ;
  wire \c_reg[7]_P ;
  wire \c_reg[7]_P_0 ;
  wire \c_reg[7]_P_1 ;
  wire \c_reg[7]_P_2 ;
  wire \c_reg[7]_P_3 ;
  wire [0:0]cathode_OBUF;
  wire \d_reg[0]_C ;
  wire \d_reg[0]_P ;
  wire \d_reg[0]_P_0 ;
  wire \d_reg[0]_P_1 ;
  wire \d_reg[1]_C ;
  wire \d_reg[1]_P ;
  wire \d_reg[2]_C ;
  wire \d_reg[2]_P ;
  wire \d_reg[3]_C ;
  wire \d_reg[3]_P ;
  wire \d_reg[4]_C ;
  wire \d_reg[4]_P ;
  wire \d_reg[5]_C ;
  wire \d_reg[5]_P ;
  wire \d_reg[6]_C ;
  wire \d_reg[6]_P ;
  wire \d_reg[7]_C ;
  wire \d_reg[7]_P ;
  wire \mlk_reg[1] ;
  wire \mlk_reg[1]_0 ;
  wire \mlk_reg[1]_1 ;
  wire \mlk_reg[1]_10 ;
  wire \mlk_reg[1]_11 ;
  wire \mlk_reg[1]_12 ;
  wire \mlk_reg[1]_13 ;
  wire \mlk_reg[1]_14 ;
  wire \mlk_reg[1]_2 ;
  wire \mlk_reg[1]_3 ;
  wire \mlk_reg[1]_4 ;
  wire \mlk_reg[1]_5 ;
  wire \mlk_reg[1]_6 ;
  wire \mlk_reg[1]_7 ;
  wire \mlk_reg[1]_8 ;
  wire \mlk_reg[1]_9 ;
  wire [3:0]myx;
  wire [3:0]p_0_in;
  wire [3:0]p_1_in;

  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    XLXI_2
       (.I0(myx[3]),
        .I1(myx[1]),
        .I2(myx[2]),
        .I3(myx[0]),
        .O(XLXN_4));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_2_i_10
       (.I0(\d_reg[3]_P ),
        .I1(\mlk_reg[1]_11 ),
        .I2(\d_reg[3]_C ),
        .O(\c_reg[7]_P_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_2_i_3
       (.I0(\c_reg[4]_P ),
        .I1(\mlk_reg[1]_2 ),
        .I2(\c_reg[4]_C ),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_2_i_4
       (.I0(\d_reg[4]_P ),
        .I1(\mlk_reg[1]_10 ),
        .I2(\d_reg[4]_C ),
        .O(p_1_in[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_2_i_5
       (.I0(\c_reg[0]_P ),
        .I1(\mlk_reg[1]_6 ),
        .I2(\c_reg[0]_C ),
        .O(\d_reg[0]_P ));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_2_i_6
       (.I0(\d_reg[0]_P_1 ),
        .I1(\mlk_reg[1]_14 ),
        .I2(\d_reg[0]_C ),
        .O(\d_reg[0]_P_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_2_i_7
       (.I0(\c_reg[7]_P_3 ),
        .I1(\mlk_reg[1] ),
        .I2(\c_reg[7]_C ),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_2_i_8
       (.I0(\d_reg[7]_P ),
        .I1(\mlk_reg[1]_7 ),
        .I2(\d_reg[7]_C ),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_2_i_9
       (.I0(\c_reg[3]_P ),
        .I1(\mlk_reg[1]_3 ),
        .I2(\c_reg[3]_C ),
        .O(\c_reg[7]_P ));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    XLXI_3
       (.I0(myx[3]),
        .I1(myx[0]),
        .I2(myx[1]),
        .I3(myx[2]),
        .O(XLXN_5));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_3_i_2
       (.I0(\c_reg[6]_P ),
        .I1(\mlk_reg[1]_0 ),
        .I2(\c_reg[6]_C ),
        .O(p_0_in[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_3_i_3
       (.I0(\d_reg[6]_P ),
        .I1(\mlk_reg[1]_8 ),
        .I2(\d_reg[6]_C ),
        .O(p_1_in[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_3_i_4
       (.I0(\c_reg[2]_P ),
        .I1(\mlk_reg[1]_4 ),
        .I2(\c_reg[2]_C ),
        .O(\c_reg[7]_P_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_3_i_5
       (.I0(\d_reg[2]_P ),
        .I1(\mlk_reg[1]_12 ),
        .I2(\d_reg[2]_C ),
        .O(\c_reg[7]_P_2 ));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XLXI_4
       (.I0(myx[2]),
        .I1(myx[0]),
        .I2(myx[3]),
        .I3(myx[1]),
        .O(XLXN_6));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_4_i_2
       (.I0(\c_reg[5]_P ),
        .I1(\mlk_reg[1]_1 ),
        .I2(\c_reg[5]_C ),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_4_i_3
       (.I0(\d_reg[5]_P ),
        .I1(\mlk_reg[1]_9 ),
        .I2(\d_reg[5]_C ),
        .O(p_1_in[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_4_i_4
       (.I0(\c_reg[1]_P_0 ),
        .I1(\mlk_reg[1]_5 ),
        .I2(\c_reg[1]_C_0 ),
        .O(\c_reg[1]_C ));
  LUT3 #(
    .INIT(8'hB8)) 
    XLXI_4_i_5
       (.I0(\d_reg[1]_P ),
        .I1(\mlk_reg[1]_13 ),
        .I2(\d_reg[1]_C ),
        .O(\c_reg[1]_P ));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    XLXI_5
       (.I0(myx[1]),
        .I1(myx[0]),
        .I2(myx[3]),
        .I3(myx[2]),
        .O(XLXN_7));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4B1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    XLXI_6
       (.I0(myx[0]),
        .I1(myx[3]),
        .I2(myx[2]),
        .I3(myx[1]),
        .O(XLXN_8));
  (* BOX_TYPE = "BLACK_BOX" *) 
  (* XILINX_LEGACY_PRIM = "AND4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    XLXI_7
       (.I0(myx[3]),
        .I1(myx[2]),
        .I2(myx[0]),
        .I3(myx[1]),
        .O(XLXN_9));
  (* HU_SET = "XLXI_8_0" *) 
  OR6_HXILINX_lab5_gcd XLXI_8
       (.XLXN_4(XLXN_4),
        .XLXN_5(XLXN_5),
        .XLXN_6(XLXN_6),
        .XLXN_7(XLXN_7),
        .XLXN_8(XLXN_8),
        .XLXN_9(XLXN_9),
        .cathode_OBUF(cathode_OBUF));
endmodule

module myclock2_MUSER_lab5_gcd
   (clock,
    clk_IBUF_BUFG,
    clk_IBUF,
    pushbutton_IBUF);
  output clock;
  input clk_IBUF_BUFG;
  input clk_IBUF;
  input pushbutton_IBUF;

  wire XLXI_17_n_0;
  wire XLXI_19_n_0;
  wire XLXI_21_n_0;
  wire XLXI_23_n_0;
  wire XLXI_25_n_0;
  wire XLXI_27_n_0;
  wire XLXI_29_n_0;
  wire XLXI_31_n_0;
  wire XLXI_33_n_0;
  wire XLXI_35_n_0;
  wire XLXI_37_n_0;
  wire XLXI_39_n_0;
  wire XLXI_41_n_0;
  wire XLXI_43_n_0;
  wire XLXI_45_n_0;
  wire XLXI_47_n_0;
  wire XLXI_49_n_0;
  wire XLXI_51_n_0;
  wire XLXI_53_n_0;
  wire XLXI_55_n_0;
  wire XLXI_57_n_0;
  wire XLXI_59_n_0;
  wire XLXI_61_n_0;
  wire XLXI_63_n_0;
  wire XLXI_65_n_0;
  wire XLXI_67_n_0;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clock;
  wire pushbutton_IBUF;

  (* HU_SET = "XLXI_17_2" *) 
  FTC_HXILINX_lab5_gcd XLXI_17
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .q_tmp_reg_0(XLXI_17_n_0));
  (* HU_SET = "XLXI_19_3" *) 
  FTC_HXILINX_lab5_gcd_0 XLXI_19
       (.q_tmp_reg_0(XLXI_19_n_0),
        .q_tmp_reg_1(XLXI_17_n_0));
  (* HU_SET = "XLXI_21_4" *) 
  FTC_HXILINX_lab5_gcd_1 XLXI_21
       (.q_tmp_reg_0(XLXI_21_n_0),
        .q_tmp_reg_1(XLXI_19_n_0));
  (* HU_SET = "XLXI_23_5" *) 
  FTC_HXILINX_lab5_gcd_2 XLXI_23
       (.q_tmp_reg_0(XLXI_23_n_0),
        .q_tmp_reg_1(XLXI_21_n_0));
  (* HU_SET = "XLXI_25_6" *) 
  FTC_HXILINX_lab5_gcd_3 XLXI_25
       (.q_tmp_reg_0(XLXI_25_n_0),
        .q_tmp_reg_1(XLXI_23_n_0));
  (* HU_SET = "XLXI_27_7" *) 
  FTC_HXILINX_lab5_gcd_4 XLXI_27
       (.q_tmp_reg_0(XLXI_27_n_0),
        .q_tmp_reg_1(XLXI_25_n_0));
  (* HU_SET = "XLXI_29_8" *) 
  FTC_HXILINX_lab5_gcd_5 XLXI_29
       (.q_tmp_reg_0(XLXI_29_n_0),
        .q_tmp_reg_1(XLXI_27_n_0));
  (* HU_SET = "XLXI_31_9" *) 
  FTC_HXILINX_lab5_gcd_6 XLXI_31
       (.q_tmp_reg_0(XLXI_31_n_0),
        .q_tmp_reg_1(XLXI_29_n_0));
  (* HU_SET = "XLXI_33_10" *) 
  FTC_HXILINX_lab5_gcd_7 XLXI_33
       (.q_tmp_reg_0(XLXI_33_n_0),
        .q_tmp_reg_1(XLXI_31_n_0));
  (* HU_SET = "XLXI_35_11" *) 
  FTC_HXILINX_lab5_gcd_8 XLXI_35
       (.q_tmp_reg_0(XLXI_35_n_0),
        .q_tmp_reg_1(XLXI_33_n_0));
  (* HU_SET = "XLXI_37_12" *) 
  FTC_HXILINX_lab5_gcd_9 XLXI_37
       (.q_tmp_reg_0(XLXI_37_n_0),
        .q_tmp_reg_1(XLXI_35_n_0));
  (* HU_SET = "XLXI_39_13" *) 
  FTC_HXILINX_lab5_gcd_10 XLXI_39
       (.q_tmp_reg_0(XLXI_39_n_0),
        .q_tmp_reg_1(XLXI_37_n_0));
  (* HU_SET = "XLXI_41_14" *) 
  FTC_HXILINX_lab5_gcd_11 XLXI_41
       (.q_tmp_reg_0(XLXI_41_n_0),
        .q_tmp_reg_1(XLXI_39_n_0));
  (* HU_SET = "XLXI_43_15" *) 
  FTC_HXILINX_lab5_gcd_12 XLXI_43
       (.q_tmp_reg_0(XLXI_43_n_0),
        .q_tmp_reg_1(XLXI_41_n_0));
  (* HU_SET = "XLXI_45_16" *) 
  FTC_HXILINX_lab5_gcd_13 XLXI_45
       (.q_tmp_reg_0(XLXI_45_n_0),
        .q_tmp_reg_1(XLXI_43_n_0));
  (* HU_SET = "XLXI_47_17" *) 
  FTC_HXILINX_lab5_gcd_14 XLXI_47
       (.q_tmp_reg_0(XLXI_47_n_0),
        .q_tmp_reg_1(XLXI_45_n_0));
  (* HU_SET = "XLXI_49_18" *) 
  FTC_HXILINX_lab5_gcd_15 XLXI_49
       (.q_tmp_reg_0(XLXI_49_n_0),
        .q_tmp_reg_1(XLXI_47_n_0));
  (* HU_SET = "XLXI_51_19" *) 
  FTC_HXILINX_lab5_gcd_16 XLXI_51
       (.q_tmp_reg_0(XLXI_51_n_0),
        .q_tmp_reg_1(XLXI_49_n_0));
  (* HU_SET = "XLXI_53_20" *) 
  FTC_HXILINX_lab5_gcd_17 XLXI_53
       (.q_tmp_reg_0(XLXI_53_n_0),
        .q_tmp_reg_1(XLXI_51_n_0));
  (* HU_SET = "XLXI_55_21" *) 
  FTC_HXILINX_lab5_gcd_18 XLXI_55
       (.q_tmp_reg_0(XLXI_55_n_0),
        .q_tmp_reg_1(XLXI_53_n_0));
  (* HU_SET = "XLXI_57_22" *) 
  FTC_HXILINX_lab5_gcd_19 XLXI_57
       (.q_tmp_reg_0(XLXI_57_n_0),
        .q_tmp_reg_1(XLXI_55_n_0));
  (* HU_SET = "XLXI_59_23" *) 
  FTC_HXILINX_lab5_gcd_20 XLXI_59
       (.q_tmp_reg_0(XLXI_59_n_0),
        .q_tmp_reg_1(XLXI_57_n_0));
  (* HU_SET = "XLXI_61_24" *) 
  FTC_HXILINX_lab5_gcd_21 XLXI_61
       (.q_tmp_reg_0(XLXI_61_n_0),
        .q_tmp_reg_1(XLXI_59_n_0));
  (* HU_SET = "XLXI_63_25" *) 
  FTC_HXILINX_lab5_gcd_22 XLXI_63
       (.q_tmp_reg_0(XLXI_63_n_0),
        .q_tmp_reg_1(XLXI_61_n_0));
  (* HU_SET = "XLXI_65_26" *) 
  FTC_HXILINX_lab5_gcd_23 XLXI_65
       (.q_tmp_reg_0(XLXI_65_n_0),
        .q_tmp_reg_1(XLXI_63_n_0));
  (* HU_SET = "XLXI_67_27" *) 
  FTC_HXILINX_lab5_gcd_24 XLXI_67
       (.q_tmp_reg_0(XLXI_67_n_0),
        .q_tmp_reg_1(XLXI_65_n_0));
  (* HU_SET = "XLXI_69_28" *) 
  FTC_HXILINX_lab5_gcd_25 XLXI_69
       (.clk_IBUF(clk_IBUF),
        .clock(clock),
        .pushbutton_IBUF(pushbutton_IBUF),
        .q_tmp_reg_0(XLXI_67_n_0));
endmodule

module myclock_MUSER_lab5_gcd
   (XLXN_18,
    clk_IBUF_BUFG);
  output XLXN_18;
  input clk_IBUF_BUFG;

  wire XLXI_17_n_0;
  wire XLXI_19_n_0;
  wire XLXI_21_n_0;
  wire XLXI_23_n_0;
  wire XLXI_25_n_0;
  wire XLXI_27_n_0;
  wire XLXI_29_n_0;
  wire XLXI_31_n_0;
  wire XLXI_33_n_0;
  wire XLXI_35_n_0;
  wire XLXI_37_n_0;
  wire XLXI_39_n_0;
  wire XLXI_41_n_0;
  wire XLXI_43_n_0;
  wire XLXI_45_n_0;
  wire XLXN_18;
  wire clk_IBUF_BUFG;

  (* HU_SET = "XLXI_17_2" *) 
  FTC_HXILINX_lab5_gcd_29 XLXI_17
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .q_tmp_reg_0(XLXI_17_n_0));
  (* HU_SET = "XLXI_19_3" *) 
  FTC_HXILINX_lab5_gcd_30 XLXI_19
       (.q_tmp_reg_0(XLXI_19_n_0),
        .q_tmp_reg_1(XLXI_17_n_0));
  (* HU_SET = "XLXI_21_4" *) 
  FTC_HXILINX_lab5_gcd_31 XLXI_21
       (.q_tmp_reg_0(XLXI_21_n_0),
        .q_tmp_reg_1(XLXI_19_n_0));
  (* HU_SET = "XLXI_23_5" *) 
  FTC_HXILINX_lab5_gcd_32 XLXI_23
       (.q_tmp_reg_0(XLXI_23_n_0),
        .q_tmp_reg_1(XLXI_21_n_0));
  (* HU_SET = "XLXI_25_6" *) 
  FTC_HXILINX_lab5_gcd_33 XLXI_25
       (.q_tmp_reg_0(XLXI_25_n_0),
        .q_tmp_reg_1(XLXI_23_n_0));
  (* HU_SET = "XLXI_27_7" *) 
  FTC_HXILINX_lab5_gcd_34 XLXI_27
       (.q_tmp_reg_0(XLXI_27_n_0),
        .q_tmp_reg_1(XLXI_25_n_0));
  (* HU_SET = "XLXI_29_8" *) 
  FTC_HXILINX_lab5_gcd_35 XLXI_29
       (.q_tmp_reg_0(XLXI_29_n_0),
        .q_tmp_reg_1(XLXI_27_n_0));
  (* HU_SET = "XLXI_31_9" *) 
  FTC_HXILINX_lab5_gcd_36 XLXI_31
       (.q_tmp_reg_0(XLXI_31_n_0),
        .q_tmp_reg_1(XLXI_29_n_0));
  (* HU_SET = "XLXI_33_10" *) 
  FTC_HXILINX_lab5_gcd_37 XLXI_33
       (.q_tmp_reg_0(XLXI_33_n_0),
        .q_tmp_reg_1(XLXI_31_n_0));
  (* HU_SET = "XLXI_35_11" *) 
  FTC_HXILINX_lab5_gcd_38 XLXI_35
       (.q_tmp_reg_0(XLXI_35_n_0),
        .q_tmp_reg_1(XLXI_33_n_0));
  (* HU_SET = "XLXI_37_12" *) 
  FTC_HXILINX_lab5_gcd_39 XLXI_37
       (.q_tmp_reg_0(XLXI_37_n_0),
        .q_tmp_reg_1(XLXI_35_n_0));
  (* HU_SET = "XLXI_39_13" *) 
  FTC_HXILINX_lab5_gcd_40 XLXI_39
       (.q_tmp_reg_0(XLXI_39_n_0),
        .q_tmp_reg_1(XLXI_37_n_0));
  (* HU_SET = "XLXI_41_14" *) 
  FTC_HXILINX_lab5_gcd_41 XLXI_41
       (.q_tmp_reg_0(XLXI_41_n_0),
        .q_tmp_reg_1(XLXI_39_n_0));
  (* HU_SET = "XLXI_43_15" *) 
  FTC_HXILINX_lab5_gcd_42 XLXI_43
       (.q_tmp_reg_0(XLXI_43_n_0),
        .q_tmp_reg_1(XLXI_41_n_0));
  (* HU_SET = "XLXI_45_16" *) 
  FTC_HXILINX_lab5_gcd_43 XLXI_45
       (.q_tmp_reg_0(XLXI_45_n_0),
        .q_tmp_reg_1(XLXI_43_n_0));
  (* HU_SET = "XLXI_47_17" *) 
  FTC_HXILINX_lab5_gcd_44 XLXI_47
       (.XLXN_18(XLXN_18),
        .q_tmp_reg_0(XLXI_45_n_0));
endmodule

module mycounter2_MUSER_lab5_gcd
   (XLXN_4_0,
    \cathode[0] ,
    \cathode[0]_0 ,
    \cathode[0]_1 ,
    \cathode[0]_2 ,
    XLXN_21,
    p_0_in,
    p_1_in,
    \c_reg[3]_P ,
    \d_reg[3]_P ,
    \c_reg[2]_P ,
    \d_reg[2]_P ,
    \c_reg[1]_P ,
    \d_reg[1]_P ,
    \c_reg[0]_P ,
    \d_reg[0]_P );
  output [1:0]XLXN_4_0;
  output \cathode[0] ;
  output \cathode[0]_0 ;
  output \cathode[0]_1 ;
  output \cathode[0]_2 ;
  input XLXN_21;
  input [3:0]p_0_in;
  input [3:0]p_1_in;
  input \c_reg[3]_P ;
  input \d_reg[3]_P ;
  input \c_reg[2]_P ;
  input \d_reg[2]_P ;
  input \c_reg[1]_P ;
  input \d_reg[1]_P ;
  input \c_reg[0]_P ;
  input \d_reg[0]_P ;

  wire XLXI_1_n_5;
  wire XLXN_21;
  wire [1:0]XLXN_4_0;
  wire \c_reg[0]_P ;
  wire \c_reg[1]_P ;
  wire \c_reg[2]_P ;
  wire \c_reg[3]_P ;
  wire \cathode[0] ;
  wire \cathode[0]_0 ;
  wire \cathode[0]_1 ;
  wire \cathode[0]_2 ;
  wire \d_reg[0]_P ;
  wire \d_reg[1]_P ;
  wire \d_reg[2]_P ;
  wire \d_reg[3]_P ;
  wire [3:0]p_0_in;
  wire [3:0]p_1_in;

  (* HU_SET = "XLXI_1_18" *) 
  FTC_HXILINX_lab5_gcd_26 XLXI_1
       (.XLXN_21(XLXN_21),
        .\c_reg[0]_P (\c_reg[0]_P ),
        .\c_reg[1]_P (\c_reg[1]_P ),
        .\c_reg[2]_P (\c_reg[2]_P ),
        .\c_reg[3]_P (\c_reg[3]_P ),
        .\cathode[0] (\cathode[0] ),
        .\cathode[0]_0 (\cathode[0]_0 ),
        .\cathode[0]_1 (\cathode[0]_1 ),
        .\cathode[0]_2 (\cathode[0]_2 ),
        .\d_reg[0]_P (\d_reg[0]_P ),
        .\d_reg[1]_P (\d_reg[1]_P ),
        .\d_reg[2]_P (\d_reg[2]_P ),
        .\d_reg[3]_P (\d_reg[3]_P ),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .q_tmp_reg_0(XLXN_4_0[0]),
        .q_tmp_reg_1(XLXI_1_n_5),
        .q_tmp_reg_2(XLXN_4_0[1]));
  (* HU_SET = "XLXI_2_19" *) 
  FTC_HXILINX_lab5_gcd_27 XLXI_2
       (.XLXN_21(XLXN_21),
        .XLXN_4_0(XLXN_4_0[1]),
        .q_tmp_reg_0(XLXI_1_n_5));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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
