// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sun Oct 15 23:00:14 2017
// Host        : ad-ubuntu running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /media/ad/Area51/workspace/col215_prac_lab/lab8/test/lab8_vivado/lab8_vivado.sim/sim_1/impl/timing/lab8_elevator_control_time_impl.v
// Design      : lab8_elevator_control
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "c86a928b" *) 
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
  wire [1:0]cathode_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]down_request;
  wire [3:1]down_request_IBUF;
  wire [3:0]down_request_indicator;
  wire [3:1]down_request_indicator_OBUF;
  wire [3:0]lift1_floor;
  wire [3:1]lift1_floor_IBUF;
  wire [3:0]lift1_floor_indicator;
  wire [3:1]lift1_floor_indicator_OBUF;
  wire [3:0]lift2_floor;
  wire [3:1]lift2_floor_IBUF;
  wire [3:0]lift2_floor_indicator;
  wire [3:1]lift2_floor_indicator_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [3:0]up_request;
  wire [2:0]up_request_IBUF;
  wire [3:0]up_request_indicator;
  wire [2:0]up_request_indicator_OBUF;

initial begin
 $sdf_annotate("lab8_elevator_control_time_impl.sdf",,,,"tool_control");
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
       (.I(1'b0),
        .O(cathode[2]));
  OBUF \cathode_OBUF[3]_inst 
       (.I(1'b0),
        .O(cathode[3]));
  OBUF \cathode_OBUF[4]_inst 
       (.I(1'b0),
        .O(cathode[4]));
  OBUF \cathode_OBUF[5]_inst 
       (.I(cathode_OBUF[1]),
        .O(cathode[5]));
  OBUF \cathode_OBUF[6]_inst 
       (.I(cathode_OBUF[1]),
        .O(cathode[6]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  seven_segment_display display
       (.Q(anode_OBUF),
        .cathode_OBUF(cathode_OBUF),
        .clk(clk_IBUF_BUFG));
  IBUF \down_request_IBUF[1]_inst 
       (.I(down_request[1]),
        .O(down_request_IBUF[1]));
  IBUF \down_request_IBUF[2]_inst 
       (.I(down_request[2]),
        .O(down_request_IBUF[2]));
  IBUF \down_request_IBUF[3]_inst 
       (.I(down_request[3]),
        .O(down_request_IBUF[3]));
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
  lift1_controller l1_control
       (.Q(lift1_floor_indicator_OBUF),
        .lift1_floor_IBUF(lift1_floor_IBUF),
        .reset_IBUF(reset_IBUF));
  lift2_controller l2_control
       (.Q(lift2_floor_indicator_OBUF),
        .lift2_floor_IBUF(lift2_floor_IBUF),
        .reset_IBUF(reset_IBUF));
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
       (.I(1'b0),
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
       (.Q(up_request_indicator_OBUF),
        .down_request_IBUF(down_request_IBUF),
        .\down_request_indicator[3] (down_request_indicator_OBUF),
        .reset_IBUF(reset_IBUF),
        .up_request_IBUF(up_request_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF \up_request_IBUF[0]_inst 
       (.I(up_request[0]),
        .O(up_request_IBUF[0]));
  IBUF \up_request_IBUF[1]_inst 
       (.I(up_request[1]),
        .O(up_request_IBUF[1]));
  IBUF \up_request_IBUF[2]_inst 
       (.I(up_request[2]),
        .O(up_request_IBUF[2]));
  OBUF \up_request_indicator_OBUF[0]_inst 
       (.I(up_request_indicator_OBUF[0]),
        .O(up_request_indicator[0]));
  OBUF \up_request_indicator_OBUF[1]_inst 
       (.I(up_request_indicator_OBUF[1]),
        .O(up_request_indicator[1]));
  OBUF \up_request_indicator_OBUF[2]_inst 
       (.I(up_request_indicator_OBUF[2]),
        .O(up_request_indicator[2]));
  OBUF \up_request_indicator_OBUF[3]_inst 
       (.I(1'b0),
        .O(up_request_indicator[3]));
endmodule

module lift1_controller
   (Q,
    reset_IBUF,
    lift1_floor_IBUF);
  output [2:0]Q;
  input reset_IBUF;
  input [2:0]lift1_floor_IBUF;

  wire [2:0]Q;
  wire [2:0]lift1_floor_IBUF;
  wire \lift_register_reg[1]_i_1_n_0 ;
  wire \lift_register_reg[1]_i_2_n_0 ;
  wire \lift_register_reg[2]_i_1_n_0 ;
  wire \lift_register_reg[2]_i_2_n_0 ;
  wire \lift_register_reg[3]_i_1_n_0 ;
  wire \lift_register_reg[3]_i_2_n_0 ;
  wire reset_IBUF;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lift_register_reg[1] 
       (.CLR(1'b0),
        .D(\lift_register_reg[1]_i_1_n_0 ),
        .G(\lift_register_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \lift_register_reg[1]_i_1 
       (.I0(lift1_floor_IBUF[0]),
        .I1(reset_IBUF),
        .O(\lift_register_reg[1]_i_1_n_0 ));
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
        .D(\lift_register_reg[2]_i_1_n_0 ),
        .G(\lift_register_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \lift_register_reg[2]_i_1 
       (.I0(lift1_floor_IBUF[1]),
        .I1(reset_IBUF),
        .O(\lift_register_reg[2]_i_1_n_0 ));
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
        .D(\lift_register_reg[3]_i_1_n_0 ),
        .G(\lift_register_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \lift_register_reg[3]_i_1 
       (.I0(lift1_floor_IBUF[2]),
        .I1(reset_IBUF),
        .O(\lift_register_reg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \lift_register_reg[3]_i_2 
       (.I0(reset_IBUF),
        .I1(lift1_floor_IBUF[2]),
        .O(\lift_register_reg[3]_i_2_n_0 ));
endmodule

module lift2_controller
   (Q,
    reset_IBUF,
    lift2_floor_IBUF);
  output [2:0]Q;
  input reset_IBUF;
  input [2:0]lift2_floor_IBUF;

  wire [2:0]Q;
  wire [2:0]lift2_floor_IBUF;
  wire \lift_register_reg[1]_i_1__0_n_0 ;
  wire \lift_register_reg[1]_i_2__0_n_0 ;
  wire \lift_register_reg[2]_i_1__0_n_0 ;
  wire \lift_register_reg[2]_i_2__0_n_0 ;
  wire \lift_register_reg[3]_i_1__0_n_0 ;
  wire \lift_register_reg[3]_i_2__0_n_0 ;
  wire reset_IBUF;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lift_register_reg[1] 
       (.CLR(1'b0),
        .D(\lift_register_reg[1]_i_1__0_n_0 ),
        .G(\lift_register_reg[1]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(Q[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \lift_register_reg[1]_i_1__0 
       (.I0(lift2_floor_IBUF[0]),
        .I1(reset_IBUF),
        .O(\lift_register_reg[1]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \lift_register_reg[1]_i_2__0 
       (.I0(reset_IBUF),
        .I1(lift2_floor_IBUF[0]),
        .O(\lift_register_reg[1]_i_2__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lift_register_reg[2] 
       (.CLR(1'b0),
        .D(\lift_register_reg[2]_i_1__0_n_0 ),
        .G(\lift_register_reg[2]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(Q[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \lift_register_reg[2]_i_1__0 
       (.I0(lift2_floor_IBUF[1]),
        .I1(reset_IBUF),
        .O(\lift_register_reg[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \lift_register_reg[2]_i_2__0 
       (.I0(reset_IBUF),
        .I1(lift2_floor_IBUF[1]),
        .O(\lift_register_reg[2]_i_2__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \lift_register_reg[3] 
       (.CLR(1'b0),
        .D(\lift_register_reg[3]_i_1__0_n_0 ),
        .G(\lift_register_reg[3]_i_2__0_n_0 ),
        .GE(1'b1),
        .Q(Q[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \lift_register_reg[3]_i_1__0 
       (.I0(lift2_floor_IBUF[2]),
        .I1(reset_IBUF),
        .O(\lift_register_reg[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \lift_register_reg[3]_i_2__0 
       (.I0(reset_IBUF),
        .I1(lift2_floor_IBUF[2]),
        .O(\lift_register_reg[3]_i_2__0_n_0 ));
endmodule

module request_handler
   (Q,
    \down_request_indicator[3] ,
    down_request_IBUF,
    up_request_IBUF,
    reset_IBUF);
  output [2:0]Q;
  output [2:0]\down_request_indicator[3] ;
  input [2:0]down_request_IBUF;
  input [2:0]up_request_IBUF;
  input reset_IBUF;

  wire [2:0]Q;
  wire [2:0]down_request_IBUF;
  wire [2:0]\down_request_indicator[3] ;
  wire \down_request_register_reg[1]_i_1_n_0 ;
  wire \down_request_register_reg[1]_i_2_n_0 ;
  wire \down_request_register_reg[2]_i_1_n_0 ;
  wire \down_request_register_reg[2]_i_2_n_0 ;
  wire \down_request_register_reg[3]_i_1_n_0 ;
  wire \down_request_register_reg[3]_i_2_n_0 ;
  wire reset_IBUF;
  wire [2:0]up_request_IBUF;
  wire \up_request_register_reg[0]_i_1_n_0 ;
  wire \up_request_register_reg[0]_i_2_n_0 ;
  wire \up_request_register_reg[0]_i_3_n_0 ;
  wire \up_request_register_reg[1]_i_1_n_0 ;
  wire \up_request_register_reg[1]_i_2_n_0 ;
  wire \up_request_register_reg[2]_i_1_n_0 ;
  wire \up_request_register_reg[2]_i_2_n_0 ;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \down_request_register_reg[1] 
       (.CLR(1'b0),
        .D(\down_request_register_reg[1]_i_1_n_0 ),
        .G(\down_request_register_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\down_request_indicator[3] [0]));
  LUT2 #(
    .INIT(4'h2)) 
    \down_request_register_reg[1]_i_1 
       (.I0(down_request_IBUF[0]),
        .I1(reset_IBUF),
        .O(\down_request_register_reg[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \down_request_register_reg[1]_i_2 
       (.I0(reset_IBUF),
        .I1(down_request_IBUF[0]),
        .O(\down_request_register_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \down_request_register_reg[2] 
       (.CLR(1'b0),
        .D(\down_request_register_reg[2]_i_1_n_0 ),
        .G(\down_request_register_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\down_request_indicator[3] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \down_request_register_reg[2]_i_1 
       (.I0(down_request_IBUF[1]),
        .I1(reset_IBUF),
        .O(\down_request_register_reg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \down_request_register_reg[2]_i_2 
       (.I0(reset_IBUF),
        .I1(down_request_IBUF[1]),
        .O(\down_request_register_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \down_request_register_reg[3] 
       (.CLR(1'b0),
        .D(\down_request_register_reg[3]_i_1_n_0 ),
        .G(\down_request_register_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\down_request_indicator[3] [2]));
  LUT2 #(
    .INIT(4'h2)) 
    \down_request_register_reg[3]_i_1 
       (.I0(down_request_IBUF[2]),
        .I1(reset_IBUF),
        .O(\down_request_register_reg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \down_request_register_reg[3]_i_2 
       (.I0(reset_IBUF),
        .I1(down_request_IBUF[2]),
        .O(\down_request_register_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \up_request_register_reg[0] 
       (.CLR(1'b0),
        .D(\up_request_register_reg[0]_i_1_n_0 ),
        .G(\up_request_register_reg[0]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[0]));
  LUT2 #(
    .INIT(4'h4)) 
    \up_request_register_reg[0]_i_1 
       (.I0(reset_IBUF),
        .I1(up_request_IBUF[0]),
        .O(\up_request_register_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF01)) 
    \up_request_register_reg[0]_i_2 
       (.I0(\up_request_register_reg[0]_i_3_n_0 ),
        .I1(down_request_IBUF[2]),
        .I2(down_request_IBUF[1]),
        .I3(up_request_IBUF[0]),
        .I4(reset_IBUF),
        .O(\up_request_register_reg[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \up_request_register_reg[0]_i_3 
       (.I0(up_request_IBUF[2]),
        .I1(up_request_IBUF[1]),
        .I2(down_request_IBUF[0]),
        .I3(reset_IBUF),
        .O(\up_request_register_reg[0]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \up_request_register_reg[1] 
       (.CLR(1'b0),
        .D(\up_request_register_reg[1]_i_1_n_0 ),
        .G(\up_request_register_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \up_request_register_reg[1]_i_1 
       (.I0(up_request_IBUF[1]),
        .I1(reset_IBUF),
        .O(\up_request_register_reg[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \up_request_register_reg[1]_i_2 
       (.I0(reset_IBUF),
        .I1(up_request_IBUF[1]),
        .O(\up_request_register_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \up_request_register_reg[2] 
       (.CLR(1'b0),
        .D(\up_request_register_reg[2]_i_1_n_0 ),
        .G(\up_request_register_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \up_request_register_reg[2]_i_1 
       (.I0(up_request_IBUF[2]),
        .I1(reset_IBUF),
        .O(\up_request_register_reg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \up_request_register_reg[2]_i_2 
       (.I0(reset_IBUF),
        .I1(up_request_IBUF[2]),
        .O(\up_request_register_reg[2]_i_2_n_0 ));
endmodule

module seven_segment_display
   (Q,
    cathode_OBUF,
    clk);
  output [3:0]Q;
  output [1:0]cathode_OBUF;
  input clk;

  wire [3:0]Q;
  wire \anode[0]_i_1_n_0 ;
  wire \anode[1]_i_1_n_0 ;
  wire \anode[2]_i_1_n_0 ;
  wire \anode[3]_i_1_n_0 ;
  wire \cath[0]_i_1_n_0 ;
  wire \cath[6]_i_1_n_0 ;
  wire \cath_reg_n_0_[0] ;
  wire \cath_reg_n_0_[6] ;
  wire [1:0]cathode_OBUF;
  wire clear;
  wire clk;
  wire clock;
  wire clock_i_1_n_0;
  wire clock_i_2_n_0;
  wire clock_i_3_n_0;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_9_n_0 ;
  wire [16:4]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
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
  wire [2:0]\NLW_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \anode[0]_i_1 
       (.I0(flag[2]),
        .I1(flag[0]),
        .I2(flag[1]),
        .O(\anode[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \anode[1]_i_1 
       (.I0(flag[2]),
        .I1(flag[1]),
        .I2(flag[0]),
        .O(\anode[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \anode[2]_i_1 
       (.I0(flag[1]),
        .I1(flag[0]),
        .I2(flag[2]),
        .O(\anode[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \anode[3]_i_1 
       (.I0(flag[0]),
        .I1(flag[2]),
        .I2(flag[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEB0A)) 
    \cath[0]_i_1 
       (.I0(flag[0]),
        .I1(flag[1]),
        .I2(flag[2]),
        .I3(\cath_reg_n_0_[0] ),
        .O(\cath[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF514)) 
    \cath[6]_i_1 
       (.I0(flag[0]),
        .I1(flag[1]),
        .I2(flag[2]),
        .I3(\cath_reg_n_0_[6] ),
        .O(\cath[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cath_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\cath[0]_i_1_n_0 ),
        .Q(\cath_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cath_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(\cath[6]_i_1_n_0 ),
        .Q(\cath_reg_n_0_[6] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \cathode_OBUF[0]_inst_i_1 
       (.I0(\cath_reg_n_0_[0] ),
        .O(cathode_OBUF[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \cathode_OBUF[6]_inst_i_1 
       (.I0(\cath_reg_n_0_[6] ),
        .O(cathode_OBUF[1]));
  LUT6 #(
    .INIT(64'hFF08080800F7F7F7)) 
    clock_i_1
       (.I0(\counter[0]_i_5_n_0 ),
        .I1(\counter[0]_i_4_n_0 ),
        .I2(clock_i_2_n_0),
        .I3(\counter[0]_i_3_n_0 ),
        .I4(clock_i_3_n_0),
        .I5(clock),
        .O(clock_i_1_n_0));
  LUT3 #(
    .INIT(8'hC8)) 
    clock_i_2
       (.I0(counter_reg[11]),
        .I1(counter_reg[13]),
        .I2(counter_reg[12]),
        .O(clock_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    clock_i_3
       (.I0(counter_reg[15]),
        .I1(counter_reg[14]),
        .I2(counter_reg[16]),
        .I3(counter_reg[12]),
        .I4(counter_reg[11]),
        .O(clock_i_3_n_0));
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
    .INIT(2'h1)) 
    \counter[0]_i_9 
       (.I0(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_9_n_0 ));
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
        .CO({\counter_reg[0]_i_2_n_0 ,\NLW_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] ,\counter[0]_i_9_n_0 }));
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
        .CO({\counter_reg[12]_i_1_n_0 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
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
        .S({1'b0,1'b0,1'b0,counter_reg[16]}));
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
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
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
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \flag[1]_i_1 
       (.I0(flag[2]),
        .I1(flag[0]),
        .I2(flag[1]),
        .O(\flag[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \flag[2]_i_1 
       (.I0(flag[0]),
        .I1(flag[1]),
        .I2(flag[2]),
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
