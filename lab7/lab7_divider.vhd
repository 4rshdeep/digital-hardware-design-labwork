--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;     
--use ieee.std_logic_unsigned.all;        
--
--entity shifter is
--	port (
--		a : in std_logic_vector(7 downto 0);
--		o : out std_logic_vector(7 downto 0)
--	);
--	
--function twos_complement (X : std_logic_vector) return std_logic_vector is
--variable temp : std_logic_vector(7 downto 0);
--begin
--	temp := not X;
--    return std_logic_vector(unsigned(temp + 1));
--end twos_complement;
--
--end shifter;
--
--library ieee;
--use ieee.std_logic_1164.all;
--
--
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;        -- for addition & counting
--use ieee.numeric_std.all;               -- for type conversions
--
--
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;  	
--architecture shifter_arc of shifter is
--begin
---- Replace unsigned by signed in case of shifting of unsigned numbers is required	
--o <= std_logic_vector(shift_right(unsigned(a), 1));
---- Computing 2's complement
--o <= twos_complement(a);
--end shifter_arc;
--
--
---- two's complement can be calculate by calling the function 2's complement after it has been defined in the entity as done in the shifter
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--entity divider is
--	port (
--		clk : std_logic;
--		divisor : in std_logic_vector(7 downto 0); -- checked if 0 then input_invalid should be high
--		dividend : in std_logic_vector(7 downto 0); 
--		load_inputs : in std_logic; -- Handles when pressed and the inputs are valid then load them into registers
--		sim_mode : in std_logic;    -- Gareebon ka Pushbutton
--		anode : out std_logic_vector(3 downto 0); --SSD
--		output_valid : out std_logic;  -- to be handled by the divider when division is complete set the out_valid to be high
--		input_invalid : out std_logic; -- done
--		cathode : out std_logic_vector(6 downto 0) -- SSD
--	);
--end divider;
--
--architecture divider_arc of divider is
--	signal divisor_sig, dividend_sig : std_logic_vector(7 downto 0);
--	signal temp_input_invalid : std_logic;
--begin
--	process(divisor)
--	begin
--		if (divisor="00000000") then
--			input_invalid <= '1';
--			temp_input_invalid<='1';
--		else
--			input_invalid <= '0';
--			temp_input_invalid<='0';
--		end if;	
--	end
--
--	process (load_inputs)
--	begin
--		if (load_inputs='1' and temp_input_invalid='0') then
--			dividend_sig <= dividend;
--			divisor_sig  <= divisor;
--		end if;
--	end process;
--
--
--
--end divider_arc;
--
--function divide (A, B: std_logic_vector) return std_logic_vector is
--variable remainder : std_logic_vector(7 downto 0);
--begin
--
--	for i in 0 to 7 loop
--		remainder := std_logic_vector(shift_right(unsigned(remainder), 1));
--	end loop ; 
--
--	
--	return return_signal;
--end divide;

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

---------------------------------------------------------------------------------
-- TO DO : Design the dividor such that after it completes the division it sets the out_valid to be high
-- First handle the cases when dividend and divisor are negative, in that case create a signal that
-- remembers to take the 2's complement again
-- Make another component that calculates division of unsigned 8 bits and handle cases accordingly

--------------------------------------------------------------------------------
--entity divider is
--	port (
--		dividend : in std_logic_vector(7 downto 0);
--		divisor : in std_logic_vector(7 downto 0);
--		quotient : out std_logic_vector(3 downto 0);
--		remainder : out std_logic_vector(3 downto 0);
--		output_valid : out std_logic
--		clk : in std_logic;
--	);
--end divider;
--
--architecture divider_arc of divider is
--begin
--
--end divider_arc;--