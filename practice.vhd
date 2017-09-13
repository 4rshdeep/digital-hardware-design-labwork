library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity full_adder is
  port (
	a, b, c_in : in std_logic;
	s, c_out : out std_logic
  ) ;
end entity ; -- practice

architecture adder_arch of full_adder is
begin

	s     <= a xor b xor c_in;
	c_out <= (a and b) or (b and c_in) or (c_in and a); 

end architecture ; -- arch
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--
--entity carry_prop_adder_4_bits is
--  port (
--	x,y : in std_logic_vector(4 downto 0);
--	s : out std_logic_vector(7 downto 0)	
--  ) ;
--end entity ; -- carry_prop_adder
--
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--
--architecture arch_4 of carry_prop_adder_4_bits is
--signal c : std_logic_vector(10 downto 0);
--signal stage : std_logic_vector(5 downto 0);
--signal garbage : std_logic_vector(1 downto 0);
--signal temp : std_logic_vector(14 downto 0);
--
--component full_adder
--	port (
--		a : in std_logic;
--		b : in std_logic;
--		c_in : in std_logic;
--		s : out std_logic;
--		c_out : out std_logic		
--	);
--end component;
--
--begin
--
--	s(0) <= x(0) and y(0);
----	x, y, c_in : in std_logic;
----	si, c_out : out std_logic
--    temp(0) <= y(1) and x(0);
--    temp(1) <= y(0) and x(1);
--    temp(2) <= y(1) and x(1);
--    temp(3) <= y(0) and x(2);
--    temp(4) <= y(1) and x(2);
--    temp(5) <= y(0) and x(3);
--    temp(6) <= y(1) and x(3);
--	temp(7) <= y(2) and x(0);
--	temp(8) <= y(2) and x(1);
--	temp(9) <= y(2) and x(2);
--	temp(10)<= y(2) and x(3);
--	temp(11)<= y(3) and x(0);
--	temp(12)<= y(3) and x(1);
--	temp(13)<= y(3) and x(2);
--	temp(14)<= y(3) and x(3);
--	f00: full_adder 
--		port map (temp(0), temp(1), '0', s(1), c(0));
--
--	f01: full_adder
--		port map (temp(2), temp(3), c(0), stage(0), c(1));
--
--	f02: full_adder
--		port map (temp(4), temp(5), c(1), stage(1), c(2));
--
--	f03: full_adder
--		port map (temp(6), '0', c(2), stage(2), garbage(0));
--
--	f10: full_adder
--		port map (temp(7), stage(0), '0', s(2), c(3));
--
--	f11: full_adder
--		port map (temp(8), stage(1), c(3), stage(3), c(4));
--
--	f12: full_adder
--		port map (temp(9), stage(2), c(4), stage(4), c(5));
--
--	f13: full_adder
--		port map (temp(10), '0', c(5), stage(5), garbage(1));
--
--	f20: full_adder
--		port map (temp(11), stage(3), '0', s(3), c(6));
--
--	f21: full_adder
--		port map (temp(12), stage(4), c(6), s(4), c(7));
--
--	f22: full_adder
--		port map (temp(13), stage(5), c(7), s(5), c(8));
--
--	f23: full_adder
--		port map (temp(14), '0', c(8), s(6), s(7));
--
--
--end architecture ; -- arch

--
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--
--entity carry_prop_unit is
--	port (
--		x, y : in std_logic_vector(7 downto 0);
--		s : out std_logic_vector(7 downto 0)
--	);
--end carry_prop_unit;
--
--architecture carry_prop_arch of carry_prop_unit is
--
--signal c : std_logic_vector(8 downto 0);
--
--component full_adder
--	port (
--		a : in std_logic;
--		b : in std_logic;
--		c_in : in std_logic;
--		s : out std_logic;
--		c_out : out std_logic		
--	);
--end component;
--
--begin
--	c(0) <= '0';
--	add : for i in 0 to 7 generate
--		fa : full_adder
--		port map(x(i), y(i), c(i), s(i), c(i+1));
--	end generate;
--
--end carry_prop_arch;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity carry_prop_8 is
	port (
		x, y : in std_logic_vector(7 downto 0);
		s : out std_logic_vector(15 downto 0)
	);
end carry_prop_8;

architecture carry_prop_8_arc of carry_prop_8 is

component full_adder
	port (
		a : in std_logic;
		b : in std_logic;
		c_in : in std_logic;
		s : out std_logic;
		c_out : out std_logic		
	);
end component;
	
	-- ANDed signals
	signal y0 : std_logic_vector(7 downto 0);
	signal y1 : std_logic_vector(7 downto 0);
	signal y2 : std_logic_vector(7 downto 0);
	signal y3 : std_logic_vector(7 downto 0);
	signal y4 : std_logic_vector(7 downto 0);
	signal y5 : std_logic_vector(7 downto 0);
	signal y6 : std_logic_vector(7 downto 0);
	signal y7 : std_logic_vector(7 downto 0);

	-- Carries in layers
	signal c1 : std_logic_vector(8 downto 0);
	signal c2 : std_logic_vector(8 downto 0);
	signal c3 : std_logic_vector(8 downto 0);
	signal c4 : std_logic_vector(8 downto 0);
	signal c5 : std_logic_vector(8 downto 0);
	signal c6 : std_logic_vector(8 downto 0);
	signal c7 : std_logic_vector(8 downto 0);

	-- outputs per layers
	signal out1 : std_logic_vector(8 downto 0);
	signal out2 : std_logic_vector(8 downto 0);
	signal out3 : std_logic_vector(8 downto 0);
	signal out4 : std_logic_vector(8 downto 0);
	signal out5 : std_logic_vector(8 downto 0);
	signal out6 : std_logic_vector(8 downto 0);
	signal out7 : std_logic_vector(8 downto 0);

	signal trash : std_logic;

begin

	zero : for i in 0 to 7 generate
		y0(i) <= y(0) and x(i);
	end generate;

	first : for i in 0 to 7 generate
		y1(i) <= y(1) and x(i);
	end generate;

	
	c1(0) <= '0';
	first_layer : for i in 1 to 7 generate
		first_l : full_adder
			port map(y0(i), y1(i-1), c1(i-1), out1(i-1), c1(i));
	end generate;

		first_l_last : full_adder
			port map(y1(7), '0', c1(7), out1(7), c1(8)); 

------- second layer
	second : for i in 0 to 7 generate
		y2(i) <= y(2) and x(i);
	end generate;


	c2(0) <= '0';
	out1(8) <= '0';
	second_layer : for i in 0 to 7 generate
		second_l : full_adder
		port map(y2(i), out1(i+1), c2(i), out2(i), c2(i+1));
	end generate;

------- third layer
	third : for i in 0 to 7 generate
		y3(i) <= y(3) and x(i);
	end generate;

	c3(0) <= '0';
	out2(8) <= '0';
	third_layer : for i in 0 to 7 generate
		third_l : full_adder
		port map(y3(i), out2(i+1), c3(i), out3(i), c3(i+1));
	end generate;
-------- fourth layer
	fourth : for i in 0 to 7 generate
		y4(i) <= y(4) and x(i);
	end generate;

	c4(0) <= '0';
	out3(8) <= '0';
	fourth_layer : for i in 0 to 7 generate
		fourth_l : full_adder
		port map(y4(i), out3(i+1), c4(i), out4(i), c4(i+1));
	end generate;
--------fifth
	fifth : for i in 0 to 7 generate
		y5(i) <= y(5) and x(i);
	end generate;

	c5(0) <= '0';
	out4(8) <= '0';
	fifth_layer : for i in 0 to 7 generate
		fifth_l : full_adder
		port map(y5(i), out4(i+1), c5(i), out5(i), c5(i+1));
	end generate;
--------sixth
	sixth : for i in 0 to 7 generate
		y6(i) <= y(6) and x(i);
	end generate;

	c6(0) <= '0';
	out5(8) <= '0';
	sixth_layer : for i in 0 to 7 generate
		sixth_l : full_adder
		port map(y6(i), out5(i+1), c6(i), out6(i), c6(i+1));
	end generate;
-----seventh
	seventh : for i in 0 to 7 generate
		y7(i) <= y(7) and x(i);
	end generate;

	c7(0) <= '0';
	out6(8) <= '0';
	seventh_layer : for i in 0 to 7 generate
		seventh_l : full_adder
		port map(y7(i), out6(i+1), c7(i), out7(i), c7(i+1));
	end generate;

	s(15) <= c7(8);
	s(14 downto 7) <= out7(7 downto 0);
	s(6) <= out6(0);
	s(5) <= out5(0);
	s(4) <= out4(0);
	s(3) <= out3(0);
	s(2) <= out2(0);
	s(1) <= out1(0);
	s(0) <= y(0)and x(0);

end carry_prop_8_arc;