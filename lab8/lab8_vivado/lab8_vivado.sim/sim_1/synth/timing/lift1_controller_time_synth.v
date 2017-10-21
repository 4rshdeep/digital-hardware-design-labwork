// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sun Oct 15 21:31:20 2017
// Host        : ad-ubuntu running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /media/ad/Area51/workspace/col215_prac_lab/lab8/test/lab8_vivado/lab8_vivado.sim/sim_1/synth/timing/lift1_controller_time_synth.v
// Design      : lab8_elevator_control
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module lab8_elevator_control
   (up_request,
    down_request,
    up_request_indicator,
    down_request_indicator,
    reset,
    clk,
    sim_mode,
    cathode,
    anode,
    door_open,
    door_close,
    lift1_floor,
    lift2_floor,
    lift1_floor_indicator,
    lift2_floor_indicator);
  input [3:0]up_request;
  input [3:0]down_request;
  output [3:0]up_request_indicator;
  output [3:0]down_request_indicator;
  input reset;
  input clk;
  input sim_mode;
  output [6:0]cathode;
  output [3:0]anode;
  input [1:0]door_open;
  input [1:0]door_close;
  input [3:0]lift1_floor;
  input [3:0]lift2_floor;
  output [3:0]lift1_floor_indicator;
  output [3:0]lift2_floor_indicator;

  wire [3:0]anode;
  wire [3:0]anode_OBUF;
  wire [6:0]cathode;
  wire [6:0]cathode_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]door_close;
  wire [1:1]door_close_IBUF;
  wire [1:0]door_open;
  wire [1:1]door_open_IBUF;
  wire [3:0]down_request_indicator;
  wire [3:1]down_request_indicator_OBUF;
  wire l1_control_n_0;
  wire l1_control_n_1;
  wire l1_control_n_2;
  wire [1:0]l2_floor;
  wire [1:0]l2_request_status;
  wire [1:0]l2_status;
  wire [3:0]lift1_floor;
  wire [3:1]lift1_floor_IBUF;
  wire [3:0]lift1_floor_indicator;
  wire [3:1]lift1_floor_indicator_OBUF;
  wire [3:0]lift2_floor;
  wire [3:0]lift2_floor_IBUF;
  wire [3:0]lift2_floor_indicator;
  wire [3:0]lift2_floor_indicator_OBUF;
  wire req_handle_n_2;
  wire req_handle_n_3;
  wire req_handle_n_4;
  wire reset;
  wire reset_IBUF;
  wire [2:1]s1;
  wire [3:1]s2;
  wire [3:0]up_request_indicator;
  wire [0:0]up_request_indicator_OBUF;

initial begin
 $sdf_annotate("lift1_controller_time_synth.sdf",,,,"tool_control");
end
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
  seven_segment_display display
       (.Q(anode_OBUF),
        .\cathode[6] (cathode_OBUF),
        .clk(clk_IBUF_BUFG),
        .l2_currentfloor(l2_floor),
        .l2_status(l2_status));
  IBUF \door_close_IBUF[1]_inst 
       (.I(door_close[1]),
        .O(door_close_IBUF));
  IBUF \door_open_IBUF[1]_inst 
       (.I(door_open[1]),
        .O(door_open_IBUF));
  OBUF \down_request_indicator_OBUF[0]_inst 
       (.I(1'b0),
        .O(down_request_indicator[0]));
  OBUF \down_request_indicator_OBUF[1]_inst 
       (.I(down_request_indicator_OBUF[1]),
        .O(down_request_indicator[1]));
  OBUF \down_request_indicator_OBUF[2]_inst 
       (.I(down_request_indicator_OBUF[2]),
        .O(down_request_indicator[2]));
  OBUF \down_request_indicator_OBUF[3]_inst 
       (.I(down_request_indicator_OBUF[3]),
        .O(down_request_indicator[3]));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \down_request_indicator_OBUF[3]_inst_i_1 
       (.I0(l2_floor[1]),
        .I1(l2_floor[0]),
        .I2(req_handle_n_4),
        .I3(l2_status[1]),
        .I4(l2_status[0]),
        .I5(reset_IBUF),
        .O(down_request_indicator_OBUF[3]));
  lift1_controller l1_control
       (.E(l1_control_n_0),
        .Q(s1),
        .\cath_reg[4]_inv (l1_control_n_1),
        .\cath_reg[4]_inv_0 (l1_control_n_2),
        .\cath_reg[4]_inv_1 (lift1_floor_indicator_OBUF),
        .down_request_indicator_OBUF(down_request_indicator_OBUF[2]),
        .l2_currentfloor(l2_floor[1]),
        .lift1_floor_IBUF(lift1_floor_IBUF),
        .r_status(l2_request_status),
        .reset(req_handle_n_2),
        .reset_IBUF(reset_IBUF));
  lift2_controller l2_control
       (.clock(clk_IBUF_BUFG),
        .door_close(door_close_IBUF),
        .door_open(door_open_IBUF),
        .l2_currentfloor(l2_floor),
        .l2_status(l2_status),
        .lift2_floor(lift2_floor_IBUF),
        .lift2_floor_indicator(lift2_floor_indicator_OBUF),
        .r_status(l2_request_status),
        .received_request({s2,1'b0}),
        .reset(reset_IBUF));
  IBUF \lift1_floor_IBUF[1]_inst 
       (.I(lift1_floor[1]),
        .O(lift1_floor_IBUF[1]));
  IBUF \lift1_floor_IBUF[2]_inst 
       (.I(lift1_floor[2]),
        .O(lift1_floor_IBUF[2]));
  IBUF \lift1_floor_IBUF[3]_inst 
       (.I(lift1_floor[3]),
        .O(lift1_floor_IBUF[3]));
  OBUF \lift1_floor_indicator_OBUF[0]_inst 
       (.I(1'b0),
        .O(lift1_floor_indicator[0]));
  OBUF \lift1_floor_indicator_OBUF[1]_inst 
       (.I(lift1_floor_indicator_OBUF[1]),
        .O(lift1_floor_indicator[1]));
  OBUF \lift1_floor_indicator_OBUF[2]_inst 
       (.I(lift1_floor_indicator_OBUF[2]),
        .O(lift1_floor_indicator[2]));
  OBUF \lift1_floor_indicator_OBUF[3]_inst 
       (.I(lift1_floor_indicator_OBUF[3]),
        .O(lift1_floor_indicator[3]));
  IBUF \lift2_floor_IBUF[0]_inst 
       (.I(lift2_floor[0]),
        .O(lift2_floor_IBUF[0]));
  IBUF \lift2_floor_IBUF[1]_inst 
       (.I(lift2_floor[1]),
        .O(lift2_floor_IBUF[1]));
  IBUF \lift2_floor_IBUF[2]_inst 
       (.I(lift2_floor[2]),
        .O(lift2_floor_IBUF[2]));
  IBUF \lift2_floor_IBUF[3]_inst 
       (.I(lift2_floor[3]),
        .O(lift2_floor_IBUF[3]));
  OBUF \lift2_floor_indicator_OBUF[0]_inst 
       (.I(lift2_floor_indicator_OBUF[0]),
        .O(lift2_floor_indicator[0]));
  OBUF \lift2_floor_indicator_OBUF[1]_inst 
       (.I(lift2_floor_indicator_OBUF[1]),
        .O(lift2_floor_indicator[1]));
  OBUF \lift2_floor_indicator_OBUF[2]_inst 
       (.I(lift2_floor_indicator_OBUF[2]),
        .O(lift2_floor_indicator[2]));
  OBUF \lift2_floor_indicator_OBUF[3]_inst 
       (.I(lift2_floor_indicator_OBUF[3]),
        .O(lift2_floor_indicator[3]));
  request_handler req_handle
       (.E(l1_control_n_0),
        .Q(s1),
        .\cath_reg[4]_inv (req_handle_n_2),
        .\cath_reg[4]_inv_0 (req_handle_n_3),
        .\cath_reg[4]_inv_1 (req_handle_n_4),
        .\cath_reg[4]_inv_2 (s2),
        .down_request_indicator_OBUF(down_request_indicator_OBUF[2:1]),
        .l2_currentfloor(l2_floor),
        .l2_status(l2_status),
        .\lift1_floor[3] (l1_control_n_1),
        .\lift1_floor[3]_0 (l1_control_n_2),
        .r_status(l2_request_status),
        .reset_IBUF(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \up_request_indicator_OBUF[0]_inst 
       (.I(up_request_indicator_OBUF),
        .O(up_request_indicator[0]));
  LUT5 #(
    .INIT(32'h0000FFF7)) 
    \up_request_indicator_OBUF[0]_inst_i_1 
       (.I0(down_request_indicator_OBUF[1]),
        .I1(down_request_indicator_OBUF[2]),
        .I2(req_handle_n_2),
        .I3(req_handle_n_3),
        .I4(reset_IBUF),
        .O(up_request_indicator_OBUF));
  OBUF \up_request_indicator_OBUF[1]_inst 
       (.I(down_request_indicator_OBUF[1]),
        .O(up_request_indicator[1]));
  OBUF \up_request_indicator_OBUF[2]_inst 
       (.I(down_request_indicator_OBUF[2]),
        .O(up_request_indicator[2]));
  OBUF \up_request_indicator_OBUF[3]_inst 
       (.I(1'b0),
        .O(up_request_indicator[3]));
endmodule

module lift1_controller
   (E,
    \cath_reg[4]_inv ,
    \cath_reg[4]_inv_0 ,
    \cath_reg[4]_inv_1 ,
    reset,
    reset_IBUF,
    r_status,
    l2_currentfloor,
    down_request_indicator_OBUF,
    Q,
    lift1_floor_IBUF);
  output [0:0]E;
  output \cath_reg[4]_inv ;
  output \cath_reg[4]_inv_0 ;
  output [2:0]\cath_reg[4]_inv_1 ;
  input reset;
  input reset_IBUF;
  input [1:0]r_status;
  input [0:0]l2_currentfloor;
  input [0:0]down_request_indicator_OBUF;
  input [1:0]Q;
  input [2:0]lift1_floor_IBUF;

  wire [0:0]E;
  wire [1:0]Q;
  wire \cath_reg[4]_inv ;
  wire \cath_reg[4]_inv_0 ;
  wire [2:0]\cath_reg[4]_inv_1 ;
  wire [0:0]down_request_indicator_OBUF;
  wire [0:0]l2_currentfloor;
  wire [2:0]lift1_floor_IBUF;
  wire [3:1]lift_register;
  wire \lift_register_reg[1]_i_2_n_0 ;
  wire \lift_register_reg[2]_i_2_n_0 ;
  wire \lift_register_reg[3]_i_2_n_0 ;
  wire [1:0]r_status;
  wire reset;
  wire reset_IBUF;
  wire \send2_reg[3]_i_5_n_0 ;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lift_register_reg[1] 
       (.CLR(1'b0),
        .D(lift_register[1]),
        .G(\lift_register_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\cath_reg[4]_inv_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lift_register_reg[1]_i_1 
       (.I0(lift1_floor_IBUF[0]),
        .I1(reset_IBUF),
        .O(lift_register[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lift_register_reg[1]_i_2 
       (.I0(reset_IBUF),
        .I1(lift1_floor_IBUF[0]),
        .O(\lift_register_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lift_register_reg[2] 
       (.CLR(1'b0),
        .D(lift_register[2]),
        .G(\lift_register_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\cath_reg[4]_inv_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lift_register_reg[2]_i_1 
       (.I0(lift1_floor_IBUF[1]),
        .I1(reset_IBUF),
        .O(lift_register[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lift_register_reg[2]_i_2 
       (.I0(reset_IBUF),
        .I1(lift1_floor_IBUF[1]),
        .O(\lift_register_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lift_register_reg[3] 
       (.CLR(1'b0),
        .D(lift_register[3]),
        .G(\lift_register_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\cath_reg[4]_inv_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lift_register_reg[3]_i_1 
       (.I0(lift1_floor_IBUF[2]),
        .I1(reset_IBUF),
        .O(lift_register[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \lift_register_reg[3]_i_2 
       (.I0(reset_IBUF),
        .I1(lift1_floor_IBUF[2]),
        .O(\lift_register_reg[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFBFBFBBB)) 
    \send2_reg[2]_i_5 
       (.I0(l2_currentfloor),
        .I1(down_request_indicator_OBUF),
        .I2(\cath_reg[4]_inv ),
        .I3(r_status[0]),
        .I4(r_status[1]),
        .O(\cath_reg[4]_inv_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \send2_reg[3]_i_2 
       (.I0(reset),
        .I1(reset_IBUF),
        .I2(r_status[1]),
        .I3(\cath_reg[4]_inv ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \send2_reg[3]_i_3 
       (.I0(\send2_reg[3]_i_5_n_0 ),
        .I1(reset_IBUF),
        .I2(r_status[1]),
        .I3(r_status[0]),
        .O(\cath_reg[4]_inv ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \send2_reg[3]_i_5 
       (.I0(Q[1]),
        .I1(\cath_reg[4]_inv_1 [1]),
        .I2(\cath_reg[4]_inv_1 [0]),
        .I3(Q[0]),
        .I4(\cath_reg[4]_inv_1 [2]),
        .O(\send2_reg[3]_i_5_n_0 ));
endmodule

module lift2_controller
   (clock,
    reset,
    received_request,
    lift2_floor,
    door_open,
    door_close,
    lift2_floor_indicator,
    l2_status,
    l2_currentfloor,
    r_status);
  input clock;
  input reset;
  input [3:0]received_request;
  input [3:0]lift2_floor;
  input door_open;
  input door_close;
  output [3:0]lift2_floor_indicator;
  output [1:0]l2_status;
  output [1:0]l2_currentfloor;
  output [1:0]r_status;


endmodule

module request_handler
   (down_request_indicator_OBUF,
    \cath_reg[4]_inv ,
    \cath_reg[4]_inv_0 ,
    \cath_reg[4]_inv_1 ,
    Q,
    \cath_reg[4]_inv_2 ,
    r_status,
    \lift1_floor[3] ,
    l2_currentfloor,
    reset_IBUF,
    \lift1_floor[3]_0 ,
    l2_status,
    E);
  output [1:0]down_request_indicator_OBUF;
  output \cath_reg[4]_inv ;
  output \cath_reg[4]_inv_0 ;
  output \cath_reg[4]_inv_1 ;
  output [1:0]Q;
  output [2:0]\cath_reg[4]_inv_2 ;
  input [1:0]r_status;
  input \lift1_floor[3] ;
  input [1:0]l2_currentfloor;
  input reset_IBUF;
  input \lift1_floor[3]_0 ;
  input [1:0]l2_status;
  input [0:0]E;

  wire [0:0]E;
  wire [1:0]Q;
  wire \cath_reg[4]_inv ;
  wire \cath_reg[4]_inv_0 ;
  wire \cath_reg[4]_inv_1 ;
  wire [2:0]\cath_reg[4]_inv_2 ;
  wire [3:1]downReqDown2;
  wire \downReqDown2_reg[2]_i_1_n_0 ;
  wire \downReqDown2_reg[3]_i_1_n_0 ;
  wire \downReqDown2_reg[3]_i_2_n_0 ;
  wire [1:0]down_request_indicator_OBUF;
  wire eqOp25_in;
  wire [1:0]l2_currentfloor;
  wire [1:0]l2_status;
  wire \lift1_floor[3] ;
  wire \lift1_floor[3]_0 ;
  wire [1:0]r_status;
  wire reset_IBUF;
  wire \send1_reg[1]_i_1_n_0 ;
  wire \send1_reg[1]_i_2_n_0 ;
  wire \send1_reg[2]_i_1_n_0 ;
  wire \send2_reg[1]_i_1_n_0 ;
  wire \send2_reg[1]_i_2_n_0 ;
  wire \send2_reg[1]_i_3_n_0 ;
  wire \send2_reg[1]_i_4_n_0 ;
  wire \send2_reg[2]_i_1_n_0 ;
  wire \send2_reg[2]_i_2_n_0 ;
  wire \send2_reg[2]_i_3_n_0 ;
  wire \send2_reg[2]_i_4_n_0 ;
  wire \send2_reg[3]_i_1_n_0 ;
  wire \send2_reg[3]_i_4_n_0 ;
  wire \send2_reg[3]_i_6_n_0 ;
  wire \send2_reg[3]_i_7_n_0 ;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \downReqDown2_reg[1] 
       (.CLR(eqOp25_in),
        .D(down_request_indicator_OBUF[0]),
        .G(\downReqDown2_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(downReqDown2[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \downReqDown2_reg[2] 
       (.CLR(eqOp25_in),
        .D(\downReqDown2_reg[2]_i_1_n_0 ),
        .G(\downReqDown2_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(downReqDown2[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \downReqDown2_reg[2]_i_1 
       (.I0(down_request_indicator_OBUF[1]),
        .I1(l2_currentfloor[1]),
        .I2(l2_currentfloor[0]),
        .O(\downReqDown2_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \downReqDown2_reg[3] 
       (.CLR(eqOp25_in),
        .D(\downReqDown2_reg[3]_i_1_n_0 ),
        .G(\downReqDown2_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(downReqDown2[3]));
  LUT6 #(
    .INIT(64'h0000000019999999)) 
    \downReqDown2_reg[3]_i_1 
       (.I0(l2_currentfloor[1]),
        .I1(l2_currentfloor[0]),
        .I2(\cath_reg[4]_inv_1 ),
        .I3(l2_status[1]),
        .I4(l2_status[0]),
        .I5(reset_IBUF),
        .O(\downReqDown2_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \downReqDown2_reg[3]_i_2 
       (.I0(l2_currentfloor[1]),
        .I1(l2_currentfloor[0]),
        .O(\downReqDown2_reg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \downReqDown2_reg[3]_i_3 
       (.I0(l2_currentfloor[0]),
        .I1(l2_currentfloor[1]),
        .O(eqOp25_in));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \send1_reg[1] 
       (.CLR(1'b0),
        .D(\send1_reg[1]_i_1_n_0 ),
        .G(\cath_reg[4]_inv ),
        .GE(1'b1),
        .Q(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0000DFFF)) 
    \send1_reg[1]_i_1 
       (.I0(l2_currentfloor[0]),
        .I1(l2_currentfloor[1]),
        .I2(l2_status[1]),
        .I3(l2_status[0]),
        .I4(\send1_reg[1]_i_2_n_0 ),
        .O(\send1_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \send1_reg[1]_i_2 
       (.I0(reset_IBUF),
        .I1(\cath_reg[4]_inv_0 ),
        .I2(\cath_reg[4]_inv ),
        .I3(down_request_indicator_OBUF[1]),
        .I4(down_request_indicator_OBUF[0]),
        .O(\send1_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \send1_reg[2] 
       (.CLR(1'b0),
        .D(\send1_reg[2]_i_1_n_0 ),
        .G(\cath_reg[4]_inv ),
        .GE(1'b1),
        .Q(Q[1]));
  LUT6 #(
    .INIT(64'h00000000DFFF0000)) 
    \send1_reg[2]_i_1 
       (.I0(l2_currentfloor[1]),
        .I1(l2_currentfloor[0]),
        .I2(l2_status[0]),
        .I3(l2_status[1]),
        .I4(\cath_reg[4]_inv_1 ),
        .I5(reset_IBUF),
        .O(\send1_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    \send1_reg[2]_i_2 
       (.I0(reset_IBUF),
        .I1(\cath_reg[4]_inv_0 ),
        .I2(\cath_reg[4]_inv ),
        .I3(down_request_indicator_OBUF[1]),
        .I4(down_request_indicator_OBUF[0]),
        .O(\cath_reg[4]_inv ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \send2_reg[1] 
       (.CLR(1'b0),
        .D(\send2_reg[1]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(\cath_reg[4]_inv_2 [0]));
  LUT6 #(
    .INIT(64'h3032303230323033)) 
    \send2_reg[1]_i_1 
       (.I0(\send2_reg[2]_i_3_n_0 ),
        .I1(\send1_reg[1]_i_2_n_0 ),
        .I2(\send2_reg[1]_i_2_n_0 ),
        .I3(\lift1_floor[3] ),
        .I4(\send2_reg[1]_i_3_n_0 ),
        .I5(\send2_reg[1]_i_4_n_0 ),
        .O(\send2_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \send2_reg[1]_i_2 
       (.I0(\send2_reg[2]_i_3_n_0 ),
        .I1(r_status[0]),
        .I2(downReqDown2[1]),
        .I3(r_status[1]),
        .O(\send2_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAFBFAABF)) 
    \send2_reg[1]_i_3 
       (.I0(\send2_reg[2]_i_3_n_0 ),
        .I1(l2_currentfloor[0]),
        .I2(l2_currentfloor[1]),
        .I3(reset_IBUF),
        .I4(down_request_indicator_OBUF[1]),
        .O(\send2_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000077F7F77777)) 
    \send2_reg[1]_i_4 
       (.I0(downReqDown2[1]),
        .I1(\cath_reg[4]_inv ),
        .I2(down_request_indicator_OBUF[1]),
        .I3(l2_currentfloor[0]),
        .I4(l2_currentfloor[1]),
        .I5(down_request_indicator_OBUF[0]),
        .O(\send2_reg[1]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \send2_reg[2] 
       (.CLR(1'b0),
        .D(\send2_reg[2]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(\cath_reg[4]_inv_2 [1]));
  LUT6 #(
    .INIT(64'h4445444455555555)) 
    \send2_reg[2]_i_1 
       (.I0(\send1_reg[1]_i_2_n_0 ),
        .I1(\send2_reg[2]_i_2_n_0 ),
        .I2(\lift1_floor[3] ),
        .I3(\send2_reg[2]_i_3_n_0 ),
        .I4(\send2_reg[2]_i_4_n_0 ),
        .I5(\lift1_floor[3]_0 ),
        .O(\send2_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \send2_reg[2]_i_2 
       (.I0(downReqDown2[2]),
        .I1(r_status[0]),
        .I2(r_status[1]),
        .O(\send2_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \send2_reg[2]_i_3 
       (.I0(reset_IBUF),
        .I1(l2_currentfloor[1]),
        .I2(l2_currentfloor[0]),
        .O(\send2_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F000F00FF22)) 
    \send2_reg[2]_i_4 
       (.I0(downReqDown2[2]),
        .I1(\send2_reg[3]_i_6_n_0 ),
        .I2(l2_currentfloor[1]),
        .I3(down_request_indicator_OBUF[1]),
        .I4(\send2_reg[3]_i_7_n_0 ),
        .I5(\send2_reg[2]_i_3_n_0 ),
        .O(\send2_reg[2]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \send2_reg[3] 
       (.CLR(1'b0),
        .D(\send2_reg[3]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(\cath_reg[4]_inv_2 [2]));
  LUT6 #(
    .INIT(64'h0040004000405555)) 
    \send2_reg[3]_i_1 
       (.I0(\send1_reg[1]_i_2_n_0 ),
        .I1(downReqDown2[3]),
        .I2(r_status[0]),
        .I3(r_status[1]),
        .I4(\lift1_floor[3] ),
        .I5(\send2_reg[3]_i_4_n_0 ),
        .O(\send2_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0F00FFFFBFBB)) 
    \send2_reg[3]_i_4 
       (.I0(\send2_reg[3]_i_6_n_0 ),
        .I1(downReqDown2[3]),
        .I2(l2_currentfloor[1]),
        .I3(down_request_indicator_OBUF[1]),
        .I4(\send2_reg[2]_i_3_n_0 ),
        .I5(\send2_reg[3]_i_7_n_0 ),
        .O(\send2_reg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F070F000F)) 
    \send2_reg[3]_i_6 
       (.I0(l2_status[1]),
        .I1(l2_status[0]),
        .I2(reset_IBUF),
        .I3(\cath_reg[4]_inv_1 ),
        .I4(l2_currentfloor[0]),
        .I5(l2_currentfloor[1]),
        .O(\send2_reg[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \send2_reg[3]_i_7 
       (.I0(reset_IBUF),
        .I1(l2_currentfloor[1]),
        .I2(l2_currentfloor[0]),
        .O(\send2_reg[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_request_indicator_OBUF[0]_inst_i_2 
       (.I0(reset_IBUF),
        .I1(l2_status[0]),
        .I2(l2_status[1]),
        .I3(\cath_reg[4]_inv_1 ),
        .I4(l2_currentfloor[0]),
        .I5(l2_currentfloor[1]),
        .O(\cath_reg[4]_inv_0 ));
  LUT6 #(
    .INIT(64'h5515555555555555)) 
    \up_request_indicator_OBUF[1]_inst_i_1 
       (.I0(reset_IBUF),
        .I1(l2_status[0]),
        .I2(l2_status[1]),
        .I3(l2_currentfloor[1]),
        .I4(l2_currentfloor[0]),
        .I5(\cath_reg[4]_inv_1 ),
        .O(down_request_indicator_OBUF[0]));
  LUT6 #(
    .INIT(64'h00000000DFFFFFFF)) 
    \up_request_indicator_OBUF[2]_inst_i_1 
       (.I0(l2_currentfloor[1]),
        .I1(l2_currentfloor[0]),
        .I2(l2_status[0]),
        .I3(l2_status[1]),
        .I4(\cath_reg[4]_inv_1 ),
        .I5(reset_IBUF),
        .O(down_request_indicator_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \up_request_indicator_OBUF[2]_inst_i_2 
       (.I0(down_request_indicator_OBUF[0]),
        .I1(down_request_indicator_OBUF[1]),
        .I2(\cath_reg[4]_inv ),
        .I3(\cath_reg[4]_inv_0 ),
        .O(\cath_reg[4]_inv_1 ));
endmodule

module seven_segment_display
   (Q,
    \cathode[6] ,
    clk,
    l2_currentfloor,
    l2_status);
  output [3:0]Q;
  output [6:0]\cathode[6] ;
  input clk;
  input [1:0]l2_currentfloor;
  input [1:0]l2_status;

  wire [3:0]Q;
  wire \anode[0]_i_1_n_0 ;
  wire \anode[1]_i_1_n_0 ;
  wire \anode[2]_i_1_n_0 ;
  wire \anode[3]_i_1_n_0 ;
  wire [6:0]cath;
  wire \cath[4]_inv_i_2_n_0 ;
  wire \cath[4]_inv_i_3_n_0 ;
  wire \cath[6]_inv_i_1_n_0 ;
  wire \cath[6]_inv_i_3_n_0 ;
  wire [6:0]\cathode[6] ;
  wire clear;
  wire clk;
  wire clock;
  wire clock_i_1_n_0;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[0]_i_8_n_0 ;
  wire \counter[0]_i_9_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [16:4]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire [2:0]flag;
  wire \flag[0]_i_1_n_0 ;
  wire \flag[1]_i_1_n_0 ;
  wire \flag[2]_i_1_n_0 ;
  wire [1:0]l2_currentfloor;
  wire [1:0]l2_status;
  wire [3:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_counter_reg[16]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \anode[0]_i_1 
       (.I0(flag[2]),
        .I1(flag[0]),
        .I2(flag[1]),
        .O(\anode[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \anode[1]_i_1 
       (.I0(flag[0]),
        .I1(flag[1]),
        .I2(flag[2]),
        .O(\anode[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \anode[2]_i_1 
       (.I0(flag[0]),
        .I1(flag[1]),
        .I2(flag[2]),
        .O(\anode[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \anode[3]_i_1 
       (.I0(flag[2]),
        .I1(flag[1]),
        .I2(flag[0]),
        .O(\anode[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \anode_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\anode[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \anode_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(\anode[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \anode_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(\anode[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \anode_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(\anode[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0070FF70)) 
    \cath[0]_inv_i_1 
       (.I0(l2_status[0]),
        .I1(flag[0]),
        .I2(flag[1]),
        .I3(flag[2]),
        .I4(l2_currentfloor[1]),
        .O(cath[0]));
  LUT6 #(
    .INIT(64'hEEFFEE0FEE0FEE0F)) 
    \cath[1]_inv_i_1 
       (.I0(l2_currentfloor[0]),
        .I1(l2_currentfloor[1]),
        .I2(flag[1]),
        .I3(flag[2]),
        .I4(l2_status[0]),
        .I5(flag[0]),
        .O(cath[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \cath[2]_inv_i_1 
       (.I0(l2_currentfloor[0]),
        .I1(flag[2]),
        .O(cath[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \cath[3]_inv_i_1 
       (.I0(flag[2]),
        .I1(l2_currentfloor[1]),
        .I2(l2_currentfloor[0]),
        .O(cath[3]));
  LUT6 #(
    .INIT(64'h0040115100400040)) 
    \cath[4]_inv_i_1 
       (.I0(\cath[4]_inv_i_2_n_0 ),
        .I1(\cath[4]_inv_i_3_n_0 ),
        .I2(l2_status[1]),
        .I3(l2_status[0]),
        .I4(l2_currentfloor[0]),
        .I5(l2_currentfloor[1]),
        .O(cath[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \cath[4]_inv_i_2 
       (.I0(flag[2]),
        .I1(flag[0]),
        .I2(flag[1]),
        .O(\cath[4]_inv_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cath[4]_inv_i_3 
       (.I0(flag[1]),
        .I1(flag[2]),
        .O(\cath[4]_inv_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h3111)) 
    \cath[5]_inv_i_1 
       (.I0(flag[1]),
        .I1(flag[2]),
        .I2(flag[0]),
        .I3(l2_status[1]),
        .O(cath[5]));
  LUT3 #(
    .INIT(8'h56)) 
    \cath[6]_inv_i_1 
       (.I0(flag[2]),
        .I1(flag[0]),
        .I2(flag[1]),
        .O(\cath[6]_inv_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8BBB8B8B8B8B)) 
    \cath[6]_inv_i_2 
       (.I0(\cath[6]_inv_i_3_n_0 ),
        .I1(flag[2]),
        .I2(flag[1]),
        .I3(l2_status[1]),
        .I4(l2_status[0]),
        .I5(flag[0]),
        .O(cath[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cath[6]_inv_i_3 
       (.I0(l2_currentfloor[0]),
        .I1(l2_currentfloor[1]),
        .O(\cath[6]_inv_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \cath_reg[0]_inv 
       (.C(clock),
        .CE(\cath[6]_inv_i_1_n_0 ),
        .D(cath[0]),
        .Q(\cathode[6] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \cath_reg[1]_inv 
       (.C(clock),
        .CE(\cath[6]_inv_i_1_n_0 ),
        .D(cath[1]),
        .Q(\cathode[6] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \cath_reg[2]_inv 
       (.C(clock),
        .CE(\cath[6]_inv_i_1_n_0 ),
        .D(cath[2]),
        .Q(\cathode[6] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \cath_reg[3]_inv 
       (.C(clock),
        .CE(\cath[6]_inv_i_1_n_0 ),
        .D(cath[3]),
        .Q(\cathode[6] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \cath_reg[4]_inv 
       (.C(clock),
        .CE(\cath[6]_inv_i_1_n_0 ),
        .D(cath[4]),
        .Q(\cathode[6] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \cath_reg[5]_inv 
       (.C(clock),
        .CE(\cath[6]_inv_i_1_n_0 ),
        .D(cath[5]),
        .Q(\cathode[6] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \cath_reg[6]_inv 
       (.C(clock),
        .CE(\cath[6]_inv_i_1_n_0 ),
        .D(cath[6]),
        .Q(\cathode[6] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    clock_i_1
       (.I0(clear),
        .I1(clock),
        .O(clock_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clock_reg
       (.C(clk),
        .CE(1'b1),
        .D(clock_i_1_n_0),
        .Q(clock),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0C0FFDDFFFFFFFF)) 
    \counter[0]_i_1 
       (.I0(\counter[0]_i_3_n_0 ),
        .I1(counter_reg[11]),
        .I2(counter_reg[13]),
        .I3(counter_reg[12]),
        .I4(\counter[0]_i_4_n_0 ),
        .I5(\counter[0]_i_5_n_0 ),
        .O(clear));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[0]_i_3 
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .I2(counter_reg[5]),
        .I3(counter_reg[4]),
        .O(\counter[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[0]_i_4 
       (.I0(counter_reg[8]),
        .I1(counter_reg[13]),
        .I2(counter_reg[9]),
        .I3(counter_reg[10]),
        .O(\counter[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \counter[0]_i_5 
       (.I0(counter_reg[16]),
        .I1(counter_reg[14]),
        .I2(counter_reg[15]),
        .O(\counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[0]_i_6 
       (.I0(\counter_reg_n_0_[3] ),
        .O(\counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[0]_i_7 
       (.I0(\counter_reg_n_0_[2] ),
        .O(\counter[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[0]_i_8 
       (.I0(\counter_reg_n_0_[1] ),
        .O(\counter[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_9 
       (.I0(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .O(\counter[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[12]_i_3 
       (.I0(counter_reg[14]),
        .O(\counter[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[12]_i_4 
       (.I0(counter_reg[13]),
        .O(\counter[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[12]_i_5 
       (.I0(counter_reg[12]),
        .O(\counter[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[16]_i_2 
       (.I0(counter_reg[16]),
        .O(\counter[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .O(\counter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .O(\counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .O(\counter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .O(\counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .O(\counter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .O(\counter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .O(\counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .O(\counter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(clear));
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({\counter[0]_i_6_n_0 ,\counter[0]_i_7_n_0 ,\counter[0]_i_8_n_0 ,\counter[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(clear));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(clear));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO(\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[16]_i_1_O_UNCONNECTED [3:1],\counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\counter[16]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(clear));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(clear));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(clear));
  LUT2 #(
    .INIT(4'hB)) 
    \flag[0]_i_1 
       (.I0(flag[2]),
        .I1(flag[0]),
        .O(\flag[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \flag[1]_i_1 
       (.I0(flag[2]),
        .I1(flag[0]),
        .I2(flag[1]),
        .O(\flag[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \flag[2]_i_1 
       (.I0(flag[2]),
        .I1(flag[1]),
        .I2(flag[0]),
        .O(\flag[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\flag[0]_i_1_n_0 ),
        .Q(flag[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(\flag[1]_i_1_n_0 ),
        .Q(flag[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(\flag[2]_i_1_n_0 ),
        .Q(flag[2]),
        .R(1'b0));
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
