-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Sun Oct 15 23:06:48 2017
-- Host        : ad-ubuntu running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /media/ad/Area51/workspace/col215_prac_lab/lab8/test/lab8_vivado/lab8_vivado.sim/sim_1/synth/func/lab8_elevator_control_func_synth.vhd
-- Design      : lab8_elevator_control
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lift1_controller is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reset_IBUF : in STD_LOGIC;
    lift1_floor_IBUF : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end lift1_controller;

architecture STRUCTURE of lift1_controller is
  signal \lift_register_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \lift_register_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \lift_register_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \lift_register_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \lift_register_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \lift_register_reg[3]_i_2_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \lift_register_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lift_register_reg[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \lift_register_reg[1]_i_2\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \lift_register_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \lift_register_reg[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \lift_register_reg[2]_i_2\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \lift_register_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \lift_register_reg[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \lift_register_reg[3]_i_2\ : label is "soft_lutpair7";
begin
\lift_register_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \lift_register_reg[1]_i_1_n_0\,
      G => \lift_register_reg[1]_i_2_n_0\,
      GE => '1',
      Q => Q(0)
    );
\lift_register_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => lift1_floor_IBUF(0),
      I1 => reset_IBUF,
      O => \lift_register_reg[1]_i_1_n_0\
    );
\lift_register_reg[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_IBUF,
      I1 => lift1_floor_IBUF(0),
      O => \lift_register_reg[1]_i_2_n_0\
    );
\lift_register_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \lift_register_reg[2]_i_1_n_0\,
      G => \lift_register_reg[2]_i_2_n_0\,
      GE => '1',
      Q => Q(1)
    );
\lift_register_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => lift1_floor_IBUF(1),
      I1 => reset_IBUF,
      O => \lift_register_reg[2]_i_1_n_0\
    );
\lift_register_reg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_IBUF,
      I1 => lift1_floor_IBUF(1),
      O => \lift_register_reg[2]_i_2_n_0\
    );
\lift_register_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \lift_register_reg[3]_i_1_n_0\,
      G => \lift_register_reg[3]_i_2_n_0\,
      GE => '1',
      Q => Q(2)
    );
\lift_register_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => lift1_floor_IBUF(2),
      I1 => reset_IBUF,
      O => \lift_register_reg[3]_i_1_n_0\
    );
\lift_register_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_IBUF,
      I1 => lift1_floor_IBUF(2),
      O => \lift_register_reg[3]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lift2_controller is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reset_IBUF : in STD_LOGIC;
    lift2_floor_IBUF : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end lift2_controller;

architecture STRUCTURE of lift2_controller is
  signal \lift_register_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \lift_register_reg[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \lift_register_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \lift_register_reg[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \lift_register_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \lift_register_reg[3]_i_2__0_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \lift_register_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lift_register_reg[1]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \lift_register_reg[1]_i_2__0\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \lift_register_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \lift_register_reg[2]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \lift_register_reg[2]_i_2__0\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \lift_register_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \lift_register_reg[3]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \lift_register_reg[3]_i_2__0\ : label is "soft_lutpair10";
begin
\lift_register_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \lift_register_reg[1]_i_1__0_n_0\,
      G => \lift_register_reg[1]_i_2__0_n_0\,
      GE => '1',
      Q => Q(0)
    );
\lift_register_reg[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => lift2_floor_IBUF(0),
      I1 => reset_IBUF,
      O => \lift_register_reg[1]_i_1__0_n_0\
    );
\lift_register_reg[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_IBUF,
      I1 => lift2_floor_IBUF(0),
      O => \lift_register_reg[1]_i_2__0_n_0\
    );
\lift_register_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \lift_register_reg[2]_i_1__0_n_0\,
      G => \lift_register_reg[2]_i_2__0_n_0\,
      GE => '1',
      Q => Q(1)
    );
\lift_register_reg[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => lift2_floor_IBUF(1),
      I1 => reset_IBUF,
      O => \lift_register_reg[2]_i_1__0_n_0\
    );
\lift_register_reg[2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_IBUF,
      I1 => lift2_floor_IBUF(1),
      O => \lift_register_reg[2]_i_2__0_n_0\
    );
\lift_register_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \lift_register_reg[3]_i_1__0_n_0\,
      G => \lift_register_reg[3]_i_2__0_n_0\,
      GE => '1',
      Q => Q(2)
    );
\lift_register_reg[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => lift2_floor_IBUF(2),
      I1 => reset_IBUF,
      O => \lift_register_reg[3]_i_1__0_n_0\
    );
\lift_register_reg[3]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_IBUF,
      I1 => lift2_floor_IBUF(2),
      O => \lift_register_reg[3]_i_2__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity request_handler is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \down_request_indicator[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    down_request_IBUF : in STD_LOGIC_VECTOR ( 2 downto 0 );
    up_request_IBUF : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset_IBUF : in STD_LOGIC
  );
end request_handler;

architecture STRUCTURE of request_handler is
  signal \down_request_register_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \down_request_register_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \down_request_register_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \down_request_register_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \down_request_register_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \down_request_register_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \up_request_register_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_request_register_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \up_request_register_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \up_request_register_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_request_register_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \up_request_register_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \up_request_register_reg[2]_i_2_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \down_request_register_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \down_request_register_reg[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \down_request_register_reg[1]_i_2\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \down_request_register_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \down_request_register_reg[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \down_request_register_reg[2]_i_2\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \down_request_register_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \down_request_register_reg[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \down_request_register_reg[3]_i_2\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \up_request_register_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \up_request_register_reg[0]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \up_request_register_reg[0]_i_3\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \up_request_register_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \up_request_register_reg[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \up_request_register_reg[1]_i_2\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \up_request_register_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \up_request_register_reg[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \up_request_register_reg[2]_i_2\ : label is "soft_lutpair14";
begin
\down_request_register_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \down_request_register_reg[1]_i_1_n_0\,
      G => \down_request_register_reg[1]_i_2_n_0\,
      GE => '1',
      Q => \down_request_indicator[3]\(0)
    );
\down_request_register_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => down_request_IBUF(0),
      I1 => reset_IBUF,
      O => \down_request_register_reg[1]_i_1_n_0\
    );
\down_request_register_reg[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_IBUF,
      I1 => down_request_IBUF(0),
      O => \down_request_register_reg[1]_i_2_n_0\
    );
\down_request_register_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \down_request_register_reg[2]_i_1_n_0\,
      G => \down_request_register_reg[2]_i_2_n_0\,
      GE => '1',
      Q => \down_request_indicator[3]\(1)
    );
\down_request_register_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => down_request_IBUF(1),
      I1 => reset_IBUF,
      O => \down_request_register_reg[2]_i_1_n_0\
    );
\down_request_register_reg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_IBUF,
      I1 => down_request_IBUF(1),
      O => \down_request_register_reg[2]_i_2_n_0\
    );
\down_request_register_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \down_request_register_reg[3]_i_1_n_0\,
      G => \down_request_register_reg[3]_i_2_n_0\,
      GE => '1',
      Q => \down_request_indicator[3]\(2)
    );
\down_request_register_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => down_request_IBUF(2),
      I1 => reset_IBUF,
      O => \down_request_register_reg[3]_i_1_n_0\
    );
\down_request_register_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_IBUF,
      I1 => down_request_IBUF(2),
      O => \down_request_register_reg[3]_i_2_n_0\
    );
\up_request_register_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \up_request_register_reg[0]_i_1_n_0\,
      G => \up_request_register_reg[0]_i_2_n_0\,
      GE => '1',
      Q => Q(0)
    );
\up_request_register_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => reset_IBUF,
      I1 => up_request_IBUF(0),
      O => \up_request_register_reg[0]_i_1_n_0\
    );
\up_request_register_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF01"
    )
        port map (
      I0 => \up_request_register_reg[0]_i_3_n_0\,
      I1 => down_request_IBUF(2),
      I2 => down_request_IBUF(1),
      I3 => up_request_IBUF(0),
      I4 => reset_IBUF,
      O => \up_request_register_reg[0]_i_2_n_0\
    );
\up_request_register_reg[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => up_request_IBUF(2),
      I1 => up_request_IBUF(1),
      I2 => down_request_IBUF(0),
      I3 => reset_IBUF,
      O => \up_request_register_reg[0]_i_3_n_0\
    );
\up_request_register_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \up_request_register_reg[1]_i_1_n_0\,
      G => \up_request_register_reg[1]_i_2_n_0\,
      GE => '1',
      Q => Q(1)
    );
\up_request_register_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => up_request_IBUF(1),
      I1 => reset_IBUF,
      O => \up_request_register_reg[1]_i_1_n_0\
    );
\up_request_register_reg[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_IBUF,
      I1 => up_request_IBUF(1),
      O => \up_request_register_reg[1]_i_2_n_0\
    );
\up_request_register_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \up_request_register_reg[2]_i_1_n_0\,
      G => \up_request_register_reg[2]_i_2_n_0\,
      GE => '1',
      Q => Q(2)
    );
\up_request_register_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => up_request_IBUF(2),
      I1 => reset_IBUF,
      O => \up_request_register_reg[2]_i_1_n_0\
    );
\up_request_register_reg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_IBUF,
      I1 => up_request_IBUF(2),
      O => \up_request_register_reg[2]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seven_segment_display is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cathode_OBUF : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC
  );
end seven_segment_display;

architecture STRUCTURE of seven_segment_display is
  signal \anode[0]_i_1_n_0\ : STD_LOGIC;
  signal \anode[1]_i_1_n_0\ : STD_LOGIC;
  signal \anode[2]_i_1_n_0\ : STD_LOGIC;
  signal \anode[3]_i_1_n_0\ : STD_LOGIC;
  signal \cath[0]_i_1_n_0\ : STD_LOGIC;
  signal \cath[6]_i_1_n_0\ : STD_LOGIC;
  signal \cath_reg_n_0_[0]\ : STD_LOGIC;
  signal \cath_reg_n_0_[6]\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal clock : STD_LOGIC;
  signal clock_i_1_n_0 : STD_LOGIC;
  signal clock_i_2_n_0 : STD_LOGIC;
  signal clock_i_3_n_0 : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \counter[0]_i_8_n_0\ : STD_LOGIC;
  signal \counter[0]_i_9_n_0\ : STD_LOGIC;
  signal \counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 16 downto 4 );
  signal \counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal flag : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \flag[0]_i_1_n_0\ : STD_LOGIC;
  signal \flag[1]_i_1_n_0\ : STD_LOGIC;
  signal \flag[2]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \anode[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \anode[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \anode[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \anode[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cath[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cath[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of clock_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[0]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \flag[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \flag[2]_i_1\ : label is "soft_lutpair3";
begin
\anode[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => flag(2),
      I1 => flag(0),
      I2 => flag(1),
      O => \anode[0]_i_1_n_0\
    );
\anode[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => flag(2),
      I1 => flag(1),
      I2 => flag(0),
      O => \anode[1]_i_1_n_0\
    );
\anode[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => flag(1),
      I1 => flag(0),
      I2 => flag(2),
      O => \anode[2]_i_1_n_0\
    );
\anode[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => flag(0),
      I1 => flag(2),
      I2 => flag(1),
      O => \anode[3]_i_1_n_0\
    );
\anode_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \anode[0]_i_1_n_0\,
      Q => Q(0),
      R => '0'
    );
\anode_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \anode[1]_i_1_n_0\,
      Q => Q(1),
      R => '0'
    );
\anode_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \anode[2]_i_1_n_0\,
      Q => Q(2),
      R => '0'
    );
\anode_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \anode[3]_i_1_n_0\,
      Q => Q(3),
      R => '0'
    );
\cath[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB0A"
    )
        port map (
      I0 => flag(0),
      I1 => flag(1),
      I2 => flag(2),
      I3 => \cath_reg_n_0_[0]\,
      O => \cath[0]_i_1_n_0\
    );
\cath[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F514"
    )
        port map (
      I0 => flag(0),
      I1 => flag(1),
      I2 => flag(2),
      I3 => \cath_reg_n_0_[6]\,
      O => \cath[6]_i_1_n_0\
    );
\cath_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \cath[0]_i_1_n_0\,
      Q => \cath_reg_n_0_[0]\,
      R => '0'
    );
\cath_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \cath[6]_i_1_n_0\,
      Q => \cath_reg_n_0_[6]\,
      R => '0'
    );
\cathode_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cath_reg_n_0_[0]\,
      O => cathode_OBUF(0)
    );
\cathode_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cath_reg_n_0_[6]\,
      O => cathode_OBUF(1)
    );
clock_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08080800F7F7F7"
    )
        port map (
      I0 => \counter[0]_i_5_n_0\,
      I1 => \counter[0]_i_4_n_0\,
      I2 => clock_i_2_n_0,
      I3 => \counter[0]_i_3_n_0\,
      I4 => clock_i_3_n_0,
      I5 => clock,
      O => clock_i_1_n_0
    );
clock_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => counter_reg(11),
      I1 => counter_reg(13),
      I2 => counter_reg(12),
      O => clock_i_2_n_0
    );
clock_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => counter_reg(15),
      I1 => counter_reg(14),
      I2 => counter_reg(16),
      I3 => counter_reg(12),
      I4 => counter_reg(11),
      O => clock_i_3_n_0
    );
clock_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clock_i_1_n_0,
      Q => clock,
      R => '0'
    );
\counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0FFDDFFFFFFFF"
    )
        port map (
      I0 => \counter[0]_i_3_n_0\,
      I1 => counter_reg(11),
      I2 => counter_reg(13),
      I3 => counter_reg(12),
      I4 => \counter[0]_i_4_n_0\,
      I5 => \counter[0]_i_5_n_0\,
      O => clear
    );
\counter[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => counter_reg(7),
      I1 => counter_reg(6),
      I2 => counter_reg(5),
      I3 => counter_reg(4),
      O => \counter[0]_i_3_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(13),
      I2 => counter_reg(9),
      I3 => counter_reg(10),
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(14),
      I2 => counter_reg(15),
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[3]\,
      O => \counter[0]_i_6_n_0\
    );
\counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[2]\,
      O => \counter[0]_i_7_n_0\
    );
\counter[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      O => \counter[0]_i_8_n_0\
    );
\counter[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_9_n_0\
    );
\counter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(15),
      O => \counter[12]_i_2_n_0\
    );
\counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(14),
      O => \counter[12]_i_3_n_0\
    );
\counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(13),
      O => \counter[12]_i_4_n_0\
    );
\counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(12),
      O => \counter[12]_i_5_n_0\
    );
\counter[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(16),
      O => \counter[16]_i_2_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(7),
      O => \counter[4]_i_2_n_0\
    );
\counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(6),
      O => \counter[4]_i_3_n_0\
    );
\counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(5),
      O => \counter[4]_i_4_n_0\
    );
\counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(4),
      O => \counter[4]_i_5_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(11),
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(10),
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(9),
      O => \counter[8]_i_4_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(8),
      O => \counter[8]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_7\,
      Q => \counter_reg_n_0_[0]\,
      R => clear
    );
\counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2_n_0\,
      CO(2) => \counter_reg[0]_i_2_n_1\,
      CO(1) => \counter_reg[0]_i_2_n_2\,
      CO(0) => \counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_2_n_4\,
      O(2) => \counter_reg[0]_i_2_n_5\,
      O(1) => \counter_reg[0]_i_2_n_6\,
      O(0) => \counter_reg[0]_i_2_n_7\,
      S(3) => \counter[0]_i_6_n_0\,
      S(2) => \counter[0]_i_7_n_0\,
      S(1) => \counter[0]_i_8_n_0\,
      S(0) => \counter[0]_i_9_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => clear
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3) => \counter[12]_i_2_n_0\,
      S(2) => \counter[12]_i_3_n_0\,
      S(1) => \counter[12]_i_4_n_0\,
      S(0) => \counter[12]_i_5_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16),
      R => clear
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_counter_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \counter[16]_i_2_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_6\,
      Q => \counter_reg_n_0_[1]\,
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_5\,
      Q => \counter_reg_n_0_[2]\,
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_4\,
      Q => \counter_reg_n_0_[3]\,
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => clear
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3) => \counter[4]_i_2_n_0\,
      S(2) => \counter[4]_i_3_n_0\,
      S(1) => \counter[4]_i_4_n_0\,
      S(0) => \counter[4]_i_5_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => clear
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3) => \counter[8]_i_2_n_0\,
      S(2) => \counter[8]_i_3_n_0\,
      S(1) => \counter[8]_i_4_n_0\,
      S(0) => \counter[8]_i_5_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => clear
    );
\flag[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => flag(2),
      I1 => flag(0),
      O => \flag[0]_i_1_n_0\
    );
\flag[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => flag(2),
      I1 => flag(0),
      I2 => flag(1),
      O => \flag[1]_i_1_n_0\
    );
\flag[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => flag(0),
      I1 => flag(1),
      I2 => flag(2),
      O => \flag[2]_i_1_n_0\
    );
\flag_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \flag[0]_i_1_n_0\,
      Q => flag(0),
      R => '0'
    );
\flag_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \flag[1]_i_1_n_0\,
      Q => flag(1),
      R => '0'
    );
\flag_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \flag[2]_i_1_n_0\,
      Q => flag(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab8_elevator_control is
  port (
    up_request : in STD_LOGIC_VECTOR ( 3 downto 0 );
    down_request : in STD_LOGIC_VECTOR ( 3 downto 0 );
    up_request_indicator : out STD_LOGIC_VECTOR ( 3 downto 0 );
    down_request_indicator : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    sim_mode : in STD_LOGIC;
    cathode : out STD_LOGIC_VECTOR ( 6 downto 0 );
    anode : out STD_LOGIC_VECTOR ( 3 downto 0 );
    door_open : in STD_LOGIC_VECTOR ( 1 downto 0 );
    door_close : in STD_LOGIC_VECTOR ( 1 downto 0 );
    lift1_floor : in STD_LOGIC_VECTOR ( 3 downto 0 );
    lift2_floor : in STD_LOGIC_VECTOR ( 3 downto 0 );
    lift1_floor_indicator : out STD_LOGIC_VECTOR ( 3 downto 0 );
    lift2_floor_indicator : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of lab8_elevator_control : entity is true;
end lab8_elevator_control;

architecture STRUCTURE of lab8_elevator_control is
  signal anode_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cathode_OBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal down_request_IBUF : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal down_request_indicator_OBUF : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal lift1_floor_IBUF : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal lift1_floor_indicator_OBUF : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal lift2_floor_IBUF : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal lift2_floor_indicator_OBUF : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal reset_IBUF : STD_LOGIC;
  signal up_request_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal up_request_indicator_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\anode_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anode_OBUF(0),
      O => anode(0)
    );
\anode_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anode_OBUF(1),
      O => anode(1)
    );
\anode_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anode_OBUF(2),
      O => anode(2)
    );
\anode_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anode_OBUF(3),
      O => anode(3)
    );
\cathode_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathode_OBUF(0),
      O => cathode(0)
    );
\cathode_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathode_OBUF(1),
      O => cathode(1)
    );
\cathode_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => cathode(2)
    );
\cathode_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => cathode(3)
    );
\cathode_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => cathode(4)
    );
\cathode_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathode_OBUF(1),
      O => cathode(5)
    );
\cathode_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathode_OBUF(1),
      O => cathode(6)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
display: entity work.seven_segment_display
     port map (
      Q(3 downto 0) => anode_OBUF(3 downto 0),
      cathode_OBUF(1 downto 0) => cathode_OBUF(1 downto 0),
      clk => clk_IBUF_BUFG
    );
\down_request_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => down_request(1),
      O => down_request_IBUF(1)
    );
\down_request_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => down_request(2),
      O => down_request_IBUF(2)
    );
\down_request_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => down_request(3),
      O => down_request_IBUF(3)
    );
\down_request_indicator_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => down_request_indicator(0)
    );
\down_request_indicator_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => down_request_indicator_OBUF(1),
      O => down_request_indicator(1)
    );
\down_request_indicator_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => down_request_indicator_OBUF(2),
      O => down_request_indicator(2)
    );
\down_request_indicator_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => down_request_indicator_OBUF(3),
      O => down_request_indicator(3)
    );
l1_control: entity work.lift1_controller
     port map (
      Q(2 downto 0) => lift1_floor_indicator_OBUF(3 downto 1),
      lift1_floor_IBUF(2 downto 0) => lift1_floor_IBUF(3 downto 1),
      reset_IBUF => reset_IBUF
    );
l2_control: entity work.lift2_controller
     port map (
      Q(2 downto 0) => lift2_floor_indicator_OBUF(3 downto 1),
      lift2_floor_IBUF(2 downto 0) => lift2_floor_IBUF(3 downto 1),
      reset_IBUF => reset_IBUF
    );
\lift1_floor_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => lift1_floor(1),
      O => lift1_floor_IBUF(1)
    );
\lift1_floor_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => lift1_floor(2),
      O => lift1_floor_IBUF(2)
    );
\lift1_floor_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => lift1_floor(3),
      O => lift1_floor_IBUF(3)
    );
\lift1_floor_indicator_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => lift1_floor_indicator(0)
    );
\lift1_floor_indicator_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lift1_floor_indicator_OBUF(1),
      O => lift1_floor_indicator(1)
    );
\lift1_floor_indicator_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lift1_floor_indicator_OBUF(2),
      O => lift1_floor_indicator(2)
    );
\lift1_floor_indicator_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lift1_floor_indicator_OBUF(3),
      O => lift1_floor_indicator(3)
    );
\lift2_floor_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => lift2_floor(1),
      O => lift2_floor_IBUF(1)
    );
\lift2_floor_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => lift2_floor(2),
      O => lift2_floor_IBUF(2)
    );
\lift2_floor_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => lift2_floor(3),
      O => lift2_floor_IBUF(3)
    );
\lift2_floor_indicator_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => lift2_floor_indicator(0)
    );
\lift2_floor_indicator_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lift2_floor_indicator_OBUF(1),
      O => lift2_floor_indicator(1)
    );
\lift2_floor_indicator_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lift2_floor_indicator_OBUF(2),
      O => lift2_floor_indicator(2)
    );
\lift2_floor_indicator_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => lift2_floor_indicator_OBUF(3),
      O => lift2_floor_indicator(3)
    );
req_handle: entity work.request_handler
     port map (
      Q(2 downto 0) => up_request_indicator_OBUF(2 downto 0),
      down_request_IBUF(2 downto 0) => down_request_IBUF(3 downto 1),
      \down_request_indicator[3]\(2 downto 0) => down_request_indicator_OBUF(3 downto 1),
      reset_IBUF => reset_IBUF,
      up_request_IBUF(2 downto 0) => up_request_IBUF(2 downto 0)
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
\up_request_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => up_request(0),
      O => up_request_IBUF(0)
    );
\up_request_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => up_request(1),
      O => up_request_IBUF(1)
    );
\up_request_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => up_request(2),
      O => up_request_IBUF(2)
    );
\up_request_indicator_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => up_request_indicator_OBUF(0),
      O => up_request_indicator(0)
    );
\up_request_indicator_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => up_request_indicator_OBUF(1),
      O => up_request_indicator(1)
    );
\up_request_indicator_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => up_request_indicator_OBUF(2),
      O => up_request_indicator(2)
    );
\up_request_indicator_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => up_request_indicator(3)
    );
end STRUCTURE;
