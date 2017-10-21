
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity seven_segment_display is
port(
	clk: in std_logic;
	l1_status :in std_logic_vector(1 downto 0);
	l1_floor :in std_logic_vector(1 downto 0);
	l2_status :in std_logic_vector(1 downto 0);
	l2_floor :in std_logic_vector(1 downto 0);
	anode : out std_logic_vector(3 downto 0);
	cathode : out std_logic_vector(6 downto 0)
);
end entity seven_segment_display;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

architecture ssd of seven_segment_display is

signal clock : std_logic;
signal flag  : integer range 1 to 4;
signal cathode1, cathode2, cathode3, cathode4, cath : std_logic_vector (6 downto 0);
signal counter : integer range 0 to 1000000;

begin


with l1_status select 
cathode1<= "0111110" when "00",
		   "0111101" when "01",
		   "1001110" when "10",
		   "0011101" when "11",
		   "0000000" when others;
with l1_floor select
cathode2 <= "1111110" when "00",
		    "0110000" when "01",
		    "1101101" when "10",
		    "1111001" when "11",
		    "0000000" when others;
with l2_status select 
cathode3<= "0111110" when "00",
           "0111101" when "01",
           "1001110" when "10",
           "0011101" when "11",
           "0000000" when others;
with l2_floor select
cathode4 <= "1111110" when "00",
		    "0110000" when "01",
		    "1101101" when "10",
		    "1111001" when "11",
		    "0000000" when others;


process(clk)
    --variable counter : integer range 0 to 10000;
    begin
        if ((clk'event) and (clk='1')) then
            if(counter >= 100000) then
                counter <= 0;
                if(clock = '0') then
                    clock <= '1';
                else
                    clock <= '0';
                end if;
            else
            	counter <= counter + 1;
            end if;
            
        end if;
    end process;		    

process(clock)
begin

if(clock='1' and clock'event) then
    if flag=4 then flag <=1; 
    else flag <= flag+1 ;
    end if;

    case flag is
    when 1 => 
    		anode <= "0111";
            cath <= cathode1;
    when 2 => 
    		anode <= "1011";
            cath <= cathode2;
    when 3 => 
    		anode <= "1101";
            cath <= cathode3;
    when 4 => 
    		anode <= "1110";
            cath <= cathode4;
    when others => 
    		anode <= "1111";
    		flag <= 1;
    end case; 
end if;                  
end process;

cathode <= not(cath);         
         
end architecture ;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------	