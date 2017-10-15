-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Sun Oct 15 20:28:04 2017
-- Host        : ad-ubuntu running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /media/ad/Area51/workspace/col215_prac_lab/lab8/test/lab8_vivado/lab8_vivado.sim/sim_1/synth/func/lift1_controller_func_synth.vhd
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
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cath_reg[4]_inv\ : out STD_LOGIC;
    \cath_reg[4]_inv_0\ : out STD_LOGIC;
    \cath_reg[4]_inv_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reset : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    r_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    l2_currentfloor : in STD_LOGIC_VECTOR ( 0 to 0 );
    down_request_indicator_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    lift1_floor_IBUF : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end lift1_controller;

architecture STRUCTURE of lift1_controller is
  signal \^cath_reg[4]_inv\ : STD_LOGIC;
  signal \^cath_reg[4]_inv_1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal lift_register : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \lift_register_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \lift_register_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \lift_register_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \send2_reg[3]_i_5_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \lift_register_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lift_register_reg[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \lift_register_reg[1]_i_2\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \lift_register_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \lift_register_reg[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \lift_register_reg[2]_i_2\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \lift_register_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \lift_register_reg[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \lift_register_reg[3]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \send2_reg[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \send2_reg[3]_i_3\ : label is "soft_lutpair7";
begin
  \cath_reg[4]_inv\ <= \^cath_reg[4]_inv\;
  \cath_reg[4]_inv_1\(2 downto 0) <= \^cath_reg[4]_inv_1\(2 downto 0);
\lift_register_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => lift_register(1),
      G => \lift_register_reg[1]_i_2_n_0\,
      GE => '1',
      Q => \^cath_reg[4]_inv_1\(0)
    );
\lift_register_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => lift1_floor_IBUF(0),
      I1 => reset_IBUF,
      O => lift_register(1)
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
      D => lift_register(2),
      G => \lift_register_reg[2]_i_2_n_0\,
      GE => '1',
      Q => \^cath_reg[4]_inv_1\(1)
    );
\lift_register_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => lift1_floor_IBUF(1),
      I1 => reset_IBUF,
      O => lift_register(2)
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
      D => lift_register(3),
      G => \lift_register_reg[3]_i_2_n_0\,
      GE => '1',
      Q => \^cath_reg[4]_inv_1\(2)
    );
\lift_register_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => lift1_floor_IBUF(2),
      I1 => reset_IBUF,
      O => lift_register(3)
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
\send2_reg[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFBFBBB"
    )
        port map (
      I0 => l2_currentfloor(0),
      I1 => down_request_indicator_OBUF(0),
      I2 => \^cath_reg[4]_inv\,
      I3 => r_status(0),
      I4 => r_status(1),
      O => \cath_reg[4]_inv_0\
    );
\send2_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => reset,
      I1 => reset_IBUF,
      I2 => r_status(1),
      I3 => \^cath_reg[4]_inv\,
      O => E(0)
    );
\send2_reg[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \send2_reg[3]_i_5_n_0\,
      I1 => reset_IBUF,
      I2 => r_status(1),
      I3 => r_status(0),
      O => \^cath_reg[4]_inv\
    );
\send2_reg[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Q(1),
      I1 => \^cath_reg[4]_inv_1\(1),
      I2 => \^cath_reg[4]_inv_1\(0),
      I3 => Q(0),
      I4 => \^cath_reg[4]_inv_1\(2),
      O => \send2_reg[3]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity request_handler is
  port (
    down_request_indicator_OBUF : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cath_reg[4]_inv\ : out STD_LOGIC;
    \cath_reg[4]_inv_0\ : out STD_LOGIC;
    \cath_reg[4]_inv_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cath_reg[4]_inv_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    r_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \lift1_floor[3]\ : in STD_LOGIC;
    l2_currentfloor : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset_IBUF : in STD_LOGIC;
    \lift1_floor[3]_0\ : in STD_LOGIC;
    l2_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end request_handler;

architecture STRUCTURE of request_handler is
  signal \^cath_reg[4]_inv\ : STD_LOGIC;
  signal \^cath_reg[4]_inv_0\ : STD_LOGIC;
  signal \^cath_reg[4]_inv_1\ : STD_LOGIC;
  signal downReqDown2 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \downReqDown2_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \downReqDown2_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \downReqDown2_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \^down_request_indicator_obuf\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal eqOp25_in : STD_LOGIC;
  signal \send1_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \send1_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \send1_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \send2_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \send2_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \send2_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \send2_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \send2_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \send2_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \send2_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \send2_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \send2_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \send2_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \send2_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \send2_reg[3]_i_7_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \downReqDown2_reg[1]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \downReqDown2_reg[2]\ : label is "LDC";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \downReqDown2_reg[2]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \downReqDown2_reg[3]\ : label is "LDC";
  attribute SOFT_HLUTNM of \downReqDown2_reg[3]_i_2\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \send1_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \send1_reg[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \send1_reg[1]_i_2\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \send1_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \send2_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \send2_reg[1]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \send2_reg[1]_i_3\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \send2_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \send2_reg[2]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \send2_reg[2]_i_3\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \send2_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \send2_reg[3]_i_7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \up_request_indicator_OBUF[2]_inst_i_2\ : label is "soft_lutpair12";
begin
  \cath_reg[4]_inv\ <= \^cath_reg[4]_inv\;
  \cath_reg[4]_inv_0\ <= \^cath_reg[4]_inv_0\;
  \cath_reg[4]_inv_1\ <= \^cath_reg[4]_inv_1\;
  down_request_indicator_OBUF(1 downto 0) <= \^down_request_indicator_obuf\(1 downto 0);
\downReqDown2_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => eqOp25_in,
      D => \^down_request_indicator_obuf\(0),
      G => \downReqDown2_reg[3]_i_2_n_0\,
      GE => '1',
      Q => downReqDown2(1)
    );
\downReqDown2_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => eqOp25_in,
      D => \downReqDown2_reg[2]_i_1_n_0\,
      G => \downReqDown2_reg[3]_i_2_n_0\,
      GE => '1',
      Q => downReqDown2(2)
    );
\downReqDown2_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^down_request_indicator_obuf\(1),
      I1 => l2_currentfloor(1),
      I2 => l2_currentfloor(0),
      O => \downReqDown2_reg[2]_i_1_n_0\
    );
\downReqDown2_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => eqOp25_in,
      D => \downReqDown2_reg[3]_i_1_n_0\,
      G => \downReqDown2_reg[3]_i_2_n_0\,
      GE => '1',
      Q => downReqDown2(3)
    );
\downReqDown2_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000019999999"
    )
        port map (
      I0 => l2_currentfloor(1),
      I1 => l2_currentfloor(0),
      I2 => \^cath_reg[4]_inv_1\,
      I3 => l2_status(1),
      I4 => l2_status(0),
      I5 => reset_IBUF,
      O => \downReqDown2_reg[3]_i_1_n_0\
    );
\downReqDown2_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => l2_currentfloor(1),
      I1 => l2_currentfloor(0),
      O => \downReqDown2_reg[3]_i_2_n_0\
    );
\downReqDown2_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => l2_currentfloor(0),
      I1 => l2_currentfloor(1),
      O => eqOp25_in
    );
\send1_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \send1_reg[1]_i_1_n_0\,
      G => \^cath_reg[4]_inv\,
      GE => '1',
      Q => Q(0)
    );
\send1_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DFFF"
    )
        port map (
      I0 => l2_currentfloor(0),
      I1 => l2_currentfloor(1),
      I2 => l2_status(1),
      I3 => l2_status(0),
      I4 => \send1_reg[1]_i_2_n_0\,
      O => \send1_reg[1]_i_1_n_0\
    );
\send1_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => reset_IBUF,
      I1 => \^cath_reg[4]_inv_0\,
      I2 => \^cath_reg[4]_inv\,
      I3 => \^down_request_indicator_obuf\(1),
      I4 => \^down_request_indicator_obuf\(0),
      O => \send1_reg[1]_i_2_n_0\
    );
\send1_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \send1_reg[2]_i_1_n_0\,
      G => \^cath_reg[4]_inv\,
      GE => '1',
      Q => Q(1)
    );
\send1_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFFF0000"
    )
        port map (
      I0 => l2_currentfloor(1),
      I1 => l2_currentfloor(0),
      I2 => l2_status(0),
      I3 => l2_status(1),
      I4 => \^cath_reg[4]_inv_1\,
      I5 => reset_IBUF,
      O => \send1_reg[2]_i_1_n_0\
    );
\send1_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAAAAA"
    )
        port map (
      I0 => reset_IBUF,
      I1 => \^cath_reg[4]_inv_0\,
      I2 => \^cath_reg[4]_inv\,
      I3 => \^down_request_indicator_obuf\(1),
      I4 => \^down_request_indicator_obuf\(0),
      O => \^cath_reg[4]_inv\
    );
\send2_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \send2_reg[1]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => \cath_reg[4]_inv_2\(0)
    );
\send2_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3032303230323033"
    )
        port map (
      I0 => \send2_reg[2]_i_3_n_0\,
      I1 => \send1_reg[1]_i_2_n_0\,
      I2 => \send2_reg[1]_i_2_n_0\,
      I3 => \lift1_floor[3]\,
      I4 => \send2_reg[1]_i_3_n_0\,
      I5 => \send2_reg[1]_i_4_n_0\,
      O => \send2_reg[1]_i_1_n_0\
    );
\send2_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \send2_reg[2]_i_3_n_0\,
      I1 => r_status(0),
      I2 => downReqDown2(1),
      I3 => r_status(1),
      O => \send2_reg[1]_i_2_n_0\
    );
\send2_reg[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFAABF"
    )
        port map (
      I0 => \send2_reg[2]_i_3_n_0\,
      I1 => l2_currentfloor(0),
      I2 => l2_currentfloor(1),
      I3 => reset_IBUF,
      I4 => \^down_request_indicator_obuf\(1),
      O => \send2_reg[1]_i_3_n_0\
    );
\send2_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000077F7F77777"
    )
        port map (
      I0 => downReqDown2(1),
      I1 => \^cath_reg[4]_inv\,
      I2 => \^down_request_indicator_obuf\(1),
      I3 => l2_currentfloor(0),
      I4 => l2_currentfloor(1),
      I5 => \^down_request_indicator_obuf\(0),
      O => \send2_reg[1]_i_4_n_0\
    );
\send2_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \send2_reg[2]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => \cath_reg[4]_inv_2\(1)
    );
\send2_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4445444455555555"
    )
        port map (
      I0 => \send1_reg[1]_i_2_n_0\,
      I1 => \send2_reg[2]_i_2_n_0\,
      I2 => \lift1_floor[3]\,
      I3 => \send2_reg[2]_i_3_n_0\,
      I4 => \send2_reg[2]_i_4_n_0\,
      I5 => \lift1_floor[3]_0\,
      O => \send2_reg[2]_i_1_n_0\
    );
\send2_reg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => downReqDown2(2),
      I1 => r_status(0),
      I2 => r_status(1),
      O => \send2_reg[2]_i_2_n_0\
    );
\send2_reg[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => reset_IBUF,
      I1 => l2_currentfloor(1),
      I2 => l2_currentfloor(0),
      O => \send2_reg[2]_i_3_n_0\
    );
\send2_reg[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000F000F00FF22"
    )
        port map (
      I0 => downReqDown2(2),
      I1 => \send2_reg[3]_i_6_n_0\,
      I2 => l2_currentfloor(1),
      I3 => \^down_request_indicator_obuf\(1),
      I4 => \send2_reg[3]_i_7_n_0\,
      I5 => \send2_reg[2]_i_3_n_0\,
      O => \send2_reg[2]_i_4_n_0\
    );
\send2_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \send2_reg[3]_i_1_n_0\,
      G => E(0),
      GE => '1',
      Q => \cath_reg[4]_inv_2\(2)
    );
\send2_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000405555"
    )
        port map (
      I0 => \send1_reg[1]_i_2_n_0\,
      I1 => downReqDown2(3),
      I2 => r_status(0),
      I3 => r_status(1),
      I4 => \lift1_floor[3]\,
      I5 => \send2_reg[3]_i_4_n_0\,
      O => \send2_reg[3]_i_1_n_0\
    );
\send2_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0F00FFFFBFBB"
    )
        port map (
      I0 => \send2_reg[3]_i_6_n_0\,
      I1 => downReqDown2(3),
      I2 => l2_currentfloor(1),
      I3 => \^down_request_indicator_obuf\(1),
      I4 => \send2_reg[2]_i_3_n_0\,
      I5 => \send2_reg[3]_i_7_n_0\,
      O => \send2_reg[3]_i_4_n_0\
    );
\send2_reg[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F070F000F"
    )
        port map (
      I0 => l2_status(1),
      I1 => l2_status(0),
      I2 => reset_IBUF,
      I3 => \^cath_reg[4]_inv_1\,
      I4 => l2_currentfloor(0),
      I5 => l2_currentfloor(1),
      O => \send2_reg[3]_i_6_n_0\
    );
\send2_reg[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => reset_IBUF,
      I1 => l2_currentfloor(1),
      I2 => l2_currentfloor(0),
      O => \send2_reg[3]_i_7_n_0\
    );
\up_request_indicator_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => reset_IBUF,
      I1 => l2_status(0),
      I2 => l2_status(1),
      I3 => \^cath_reg[4]_inv_1\,
      I4 => l2_currentfloor(0),
      I5 => l2_currentfloor(1),
      O => \^cath_reg[4]_inv_0\
    );
\up_request_indicator_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5515555555555555"
    )
        port map (
      I0 => reset_IBUF,
      I1 => l2_status(0),
      I2 => l2_status(1),
      I3 => l2_currentfloor(1),
      I4 => l2_currentfloor(0),
      I5 => \^cath_reg[4]_inv_1\,
      O => \^down_request_indicator_obuf\(0)
    );
\up_request_indicator_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFFFFFFF"
    )
        port map (
      I0 => l2_currentfloor(1),
      I1 => l2_currentfloor(0),
      I2 => l2_status(0),
      I3 => l2_status(1),
      I4 => \^cath_reg[4]_inv_1\,
      I5 => reset_IBUF,
      O => \^down_request_indicator_obuf\(1)
    );
\up_request_indicator_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^down_request_indicator_obuf\(0),
      I1 => \^down_request_indicator_obuf\(1),
      I2 => \^cath_reg[4]_inv\,
      I3 => \^cath_reg[4]_inv_0\,
      O => \^cath_reg[4]_inv_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seven_segment_display is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \cathode[6]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk : in STD_LOGIC;
    l2_currentfloor : in STD_LOGIC_VECTOR ( 1 downto 0 );
    l2_status : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end seven_segment_display;

architecture STRUCTURE of seven_segment_display is
  signal \anode[0]_i_1_n_0\ : STD_LOGIC;
  signal \anode[1]_i_1_n_0\ : STD_LOGIC;
  signal \anode[2]_i_1_n_0\ : STD_LOGIC;
  signal \anode[3]_i_1_n_0\ : STD_LOGIC;
  signal cath : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \cath[4]_inv_i_2_n_0\ : STD_LOGIC;
  signal \cath[4]_inv_i_3_n_0\ : STD_LOGIC;
  signal \cath[6]_inv_i_1_n_0\ : STD_LOGIC;
  signal \cath[6]_inv_i_3_n_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal clock : STD_LOGIC;
  signal clock_i_1_n_0 : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \anode[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \anode[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \anode[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cath[0]_inv_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cath[3]_inv_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cath[4]_inv_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cath[4]_inv_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cath[5]_inv_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cath[6]_inv_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \flag[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \flag[2]_i_1\ : label is "soft_lutpair5";
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
      INIT => X"F7"
    )
        port map (
      I0 => flag(0),
      I1 => flag(1),
      I2 => flag(2),
      O => \anode[1]_i_1_n_0\
    );
\anode[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => flag(0),
      I1 => flag(1),
      I2 => flag(2),
      O => \anode[2]_i_1_n_0\
    );
\anode[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => flag(2),
      I1 => flag(1),
      I2 => flag(0),
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
\cath[0]_inv_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0070FF70"
    )
        port map (
      I0 => l2_status(0),
      I1 => flag(0),
      I2 => flag(1),
      I3 => flag(2),
      I4 => l2_currentfloor(1),
      O => cath(0)
    );
\cath[1]_inv_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEE0FEE0FEE0F"
    )
        port map (
      I0 => l2_currentfloor(0),
      I1 => l2_currentfloor(1),
      I2 => flag(1),
      I3 => flag(2),
      I4 => l2_status(0),
      I5 => flag(0),
      O => cath(1)
    );
\cath[2]_inv_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => l2_currentfloor(0),
      I1 => flag(2),
      O => cath(2)
    );
\cath[3]_inv_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => flag(2),
      I1 => l2_currentfloor(1),
      I2 => l2_currentfloor(0),
      O => cath(3)
    );
\cath[4]_inv_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040115100400040"
    )
        port map (
      I0 => \cath[4]_inv_i_2_n_0\,
      I1 => \cath[4]_inv_i_3_n_0\,
      I2 => l2_status(1),
      I3 => l2_status(0),
      I4 => l2_currentfloor(0),
      I5 => l2_currentfloor(1),
      O => cath(4)
    );
\cath[4]_inv_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => flag(2),
      I1 => flag(0),
      I2 => flag(1),
      O => \cath[4]_inv_i_2_n_0\
    );
\cath[4]_inv_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => flag(1),
      I1 => flag(2),
      O => \cath[4]_inv_i_3_n_0\
    );
\cath[5]_inv_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3111"
    )
        port map (
      I0 => flag(1),
      I1 => flag(2),
      I2 => flag(0),
      I3 => l2_status(1),
      O => cath(5)
    );
\cath[6]_inv_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => flag(2),
      I1 => flag(0),
      I2 => flag(1),
      O => \cath[6]_inv_i_1_n_0\
    );
\cath[6]_inv_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB8BBB8B8B8B8B"
    )
        port map (
      I0 => \cath[6]_inv_i_3_n_0\,
      I1 => flag(2),
      I2 => flag(1),
      I3 => l2_status(1),
      I4 => l2_status(0),
      I5 => flag(0),
      O => cath(6)
    );
\cath[6]_inv_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => l2_currentfloor(0),
      I1 => l2_currentfloor(1),
      O => \cath[6]_inv_i_3_n_0\
    );
\cath_reg[0]_inv\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \cath[6]_inv_i_1_n_0\,
      D => cath(0),
      Q => \cathode[6]\(0),
      R => '0'
    );
\cath_reg[1]_inv\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \cath[6]_inv_i_1_n_0\,
      D => cath(1),
      Q => \cathode[6]\(1),
      R => '0'
    );
\cath_reg[2]_inv\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \cath[6]_inv_i_1_n_0\,
      D => cath(2),
      Q => \cathode[6]\(2),
      R => '0'
    );
\cath_reg[3]_inv\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \cath[6]_inv_i_1_n_0\,
      D => cath(3),
      Q => \cathode[6]\(3),
      R => '0'
    );
\cath_reg[4]_inv\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \cath[6]_inv_i_1_n_0\,
      D => cath(4),
      Q => \cathode[6]\(4),
      R => '0'
    );
\cath_reg[5]_inv\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \cath[6]_inv_i_1_n_0\,
      D => cath(5),
      Q => \cathode[6]\(5),
      R => '0'
    );
\cath_reg[6]_inv\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \cath[6]_inv_i_1_n_0\,
      D => cath(6),
      Q => \cathode[6]\(6),
      R => '0'
    );
clock_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clear,
      I1 => clock,
      O => clock_i_1_n_0
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
      INIT => X"40"
    )
        port map (
      I0 => flag(2),
      I1 => flag(1),
      I2 => flag(0),
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
  component lift2_controller is
  port (
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    received_request : in STD_LOGIC_VECTOR ( 3 downto 0 );
    lift2_floor : in STD_LOGIC_VECTOR ( 3 downto 0 );
    door_open : in STD_LOGIC;
    door_close : in STD_LOGIC;
    lift2_floor_indicator : out STD_LOGIC_VECTOR ( 3 downto 0 );
    l2_status : out STD_LOGIC_VECTOR ( 1 downto 0 );
    l2_currentfloor : out STD_LOGIC_VECTOR ( 1 downto 0 );
    r_status : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component lift2_controller;
  signal anode_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cathode_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal door_close_IBUF : STD_LOGIC_VECTOR ( 1 to 1 );
  signal door_open_IBUF : STD_LOGIC_VECTOR ( 1 to 1 );
  signal down_request_indicator_OBUF : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal l1_control_n_0 : STD_LOGIC;
  signal l1_control_n_1 : STD_LOGIC;
  signal l1_control_n_2 : STD_LOGIC;
  signal l2_floor : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal l2_request_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal l2_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal lift1_floor_IBUF : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal lift1_floor_indicator_OBUF : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal lift2_floor_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal lift2_floor_indicator_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal req_handle_n_2 : STD_LOGIC;
  signal req_handle_n_3 : STD_LOGIC;
  signal req_handle_n_4 : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal s1 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal s2 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal up_request_indicator_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
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
      I => cathode_OBUF(2),
      O => cathode(2)
    );
\cathode_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathode_OBUF(3),
      O => cathode(3)
    );
\cathode_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathode_OBUF(4),
      O => cathode(4)
    );
\cathode_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathode_OBUF(5),
      O => cathode(5)
    );
\cathode_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cathode_OBUF(6),
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
      \cathode[6]\(6 downto 0) => cathode_OBUF(6 downto 0),
      clk => clk_IBUF_BUFG,
      l2_currentfloor(1 downto 0) => l2_floor(1 downto 0),
      l2_status(1 downto 0) => l2_status(1 downto 0)
    );
\door_close_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => door_close(1),
      O => door_close_IBUF(1)
    );
\door_open_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => door_open(1),
      O => door_open_IBUF(1)
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
\down_request_indicator_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => l2_floor(1),
      I1 => l2_floor(0),
      I2 => req_handle_n_4,
      I3 => l2_status(1),
      I4 => l2_status(0),
      I5 => reset_IBUF,
      O => down_request_indicator_OBUF(3)
    );
l1_control: entity work.lift1_controller
     port map (
      E(0) => l1_control_n_0,
      Q(1 downto 0) => s1(2 downto 1),
      \cath_reg[4]_inv\ => l1_control_n_1,
      \cath_reg[4]_inv_0\ => l1_control_n_2,
      \cath_reg[4]_inv_1\(2 downto 0) => lift1_floor_indicator_OBUF(3 downto 1),
      down_request_indicator_OBUF(0) => down_request_indicator_OBUF(2),
      l2_currentfloor(0) => l2_floor(1),
      lift1_floor_IBUF(2 downto 0) => lift1_floor_IBUF(3 downto 1),
      r_status(1 downto 0) => l2_request_status(1 downto 0),
      reset => req_handle_n_2,
      reset_IBUF => reset_IBUF
    );
l2_control: component lift2_controller
     port map (
      clock => clk_IBUF_BUFG,
      door_close => door_close_IBUF(1),
      door_open => door_open_IBUF(1),
      l2_currentfloor(1 downto 0) => l2_floor(1 downto 0),
      l2_status(1 downto 0) => l2_status(1 downto 0),
      lift2_floor(3 downto 0) => lift2_floor_IBUF(3 downto 0),
      lift2_floor_indicator(3 downto 0) => lift2_floor_indicator_OBUF(3 downto 0),
      r_status(1 downto 0) => l2_request_status(1 downto 0),
      received_request(3 downto 1) => s2(3 downto 1),
      received_request(0) => '0',
      reset => reset_IBUF
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
\lift2_floor_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => lift2_floor(0),
      O => lift2_floor_IBUF(0)
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
      I => lift2_floor_indicator_OBUF(0),
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
      E(0) => l1_control_n_0,
      Q(1 downto 0) => s1(2 downto 1),
      \cath_reg[4]_inv\ => req_handle_n_2,
      \cath_reg[4]_inv_0\ => req_handle_n_3,
      \cath_reg[4]_inv_1\ => req_handle_n_4,
      \cath_reg[4]_inv_2\(2 downto 0) => s2(3 downto 1),
      down_request_indicator_OBUF(1 downto 0) => down_request_indicator_OBUF(2 downto 1),
      l2_currentfloor(1 downto 0) => l2_floor(1 downto 0),
      l2_status(1 downto 0) => l2_status(1 downto 0),
      \lift1_floor[3]\ => l1_control_n_1,
      \lift1_floor[3]_0\ => l1_control_n_2,
      r_status(1 downto 0) => l2_request_status(1 downto 0),
      reset_IBUF => reset_IBUF
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
\up_request_indicator_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => up_request_indicator_OBUF(0),
      O => up_request_indicator(0)
    );
\up_request_indicator_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFF7"
    )
        port map (
      I0 => down_request_indicator_OBUF(1),
      I1 => down_request_indicator_OBUF(2),
      I2 => req_handle_n_2,
      I3 => req_handle_n_3,
      I4 => reset_IBUF,
      O => up_request_indicator_OBUF(0)
    );
\up_request_indicator_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => down_request_indicator_OBUF(1),
      O => up_request_indicator(1)
    );
\up_request_indicator_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => down_request_indicator_OBUF(2),
      O => up_request_indicator(2)
    );
\up_request_indicator_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => up_request_indicator(3)
    );
end STRUCTURE;
