--use work.fixed_generic_pkg_mod.all;
--library ieee;
--use ieee.math_utility_pkg.all; -- ieee_proposed for VHDL-93 version
--use ieee.fixed_pkg.all; -- ieee_proposed for compatibility version 

entity fixed_point is
	port (
		a     : in integer;
		b 	  : in integer;
		c_out : out integer
	);
end fixed_point;

architecture fixed_point_arc of fixed_point is
    signal ab : integer range 0 to 100;
begin
	c_out <= a + b;
end fixed_point_arc;