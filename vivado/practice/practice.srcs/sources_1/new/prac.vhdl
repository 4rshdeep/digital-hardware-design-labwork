library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting
use ieee.numeric_std.all;               -- for type conversions

entity unsigned_div is
	port (
		divd : in std_logic_vector(7 downto 0); -- Dividend
		divis : in std_logic_vector(7 downto 0); -- Divisor 
		out_unsigned_div : out std_logic_vector(15 downto 0);
		clk : in std_logic
	);
end unsigned_div;

architecture unsigned_div_arc of unsigned_div is
begin
	process(divd, divis)
	variable remainder : std_logic_vector(15 downto 0) := divd;
	begin
		for i in 0 to 7 loop
			--remainder := std_logic_vector(shift_left(unsigned(remainder), 1));
			remainder(15 downto 1) := remainder(14 downto 0);
			remainder(0) := '0';
		if (divis(3 downto 0)<=remainder(7 downto 3)) then
			remainder(7 downto 3) := remainder(7 downto 3) - divis(3 downto 0);
			remainder := "0000000000000001";
		end if;
		end loop;
	end process;
end unsigned_div_arc;
