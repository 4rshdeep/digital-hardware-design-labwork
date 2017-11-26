library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity project_top_module is
	port (
		-- data in is switches
		data_in                : in std_logic_vector(15 downto 0);
		clk                    : in std_logic;
		state_change           : in std_logic;
		record_lat             : in std_logic;
		record_long            : in std_logic;
		push_query             : in std_logic;
		reset 		           : in std_logic;
		update_state_indicator : out std_logic;
		query_state_indicator  : out std_logic;
		anode                  : out std_logic_vector (3 downto 0);
		cathode                : out std_logic_vector (6 downto 0);
		show_digit, show_long, show_lat: out std_logic
	);
end project_top_module;

architecture project_top_arc of project_top_module is
	component display
		port ( 
			in_data         : in  std_logic_vector (15 downto 0); 
	        show_lat		: in  std_logic;
	        show_long		: in  std_logic;
	        show_digit		: in  std_logic;
	        clk    			: in  std_logic; 
	        anode      		: out std_logic_vector (3 downto 0); 
	        cathode    		: out std_logic_vector (6 downto 0));
    end component;

    component project is
    	port (
			data_in                : in std_logic_vector(15 downto 0);
			clk                    : in std_logic;
			state_change           : in std_logic;
			record_lat             : in std_logic;
			record_long            : in std_logic;
			push_query             : in std_logic;
			reset 		           : in std_logic;
			update_state_indicator : out std_logic;
			query_state_indicator  : out std_logic;
			show_lat 			   : out std_logic;
			show_long 			   : out std_logic;
			show_digit             : out std_logic;
			data_out	 		   : out std_logic_vector(15 downto 0)
		);
    end component project;


    signal data_out : std_logic_vector(15 downto 0);
    signal anode1 : std_logic;
    signal cathode1 : std_logic;
    signal show_lat1, show_long1, show_digit1 : std_logic;
begin

	display_map : display
    	port map 
      	(
			in_data    => data_out,
			clk        => clk,
			show_lat   => show_lat1,
			show_long  => show_long1,
			show_digit => show_digit1,
			anode      => anode,
			cathode    => cathode
	 	);

    proj: project
	    port map (
	    	data_in                => data_in,
			clk                    => clk,
			state_change           => state_change,
			record_lat             => record_lat,
			record_long            => record_long,
			push_query             => push_query,
			reset 		           => reset,
			update_state_indicator => update_state_indicator,
			query_state_indicator  => query_state_indicator,
			data_out	 		   => data_out,
			show_lat			   => show_lat1,
			show_long              => show_long1,
			show_digit             => show_digit1 
	    );

end project_top_arc;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting
use ieee.numeric_std.all;               -- for type conversions


entity project is
	port (
		data_in                : in std_logic_vector(15 downto 0);
		clk                    : in std_logic;
		state_change           : in std_logic;
		record_lat             : in std_logic;
		record_long            : in std_logic;
		push_query             : in std_logic;
		reset 		           : in std_logic;
		update_state_indicator : out std_logic;
		query_state_indicator  : out std_logic;
		show_lat 			   : out std_logic;
		show_long 			   : out std_logic;
		show_digit             : out std_logic;
		data_out	 		   : out std_logic_vector(15 downto 0)
	);
end project;

architecture project_arc of project is
	function sine (val: integer range 0 to 10000) return integer is
		type ARRAY_TYPE2 is array (0 to 91) of integer range 0 to 100000000;
		variable sine_table : ARRAY_TYPE2;
		variable right : integer range 0 to 100;
		variable left : integer range 0 to 100;
		variable final_val : integer range 0 to 10000;
	begin
		sine_table(0)   :=0;
		sine_table(1)   :=174;
		sine_table(2)   :=349;
		sine_table(3)   :=523;
		sine_table(4)   :=697;
		sine_table(5)   :=871;
		sine_table(6)   :=1045;
		sine_table(7)   :=1218;
		sine_table(8)   :=1391;
		sine_table(9)   :=1564;
		sine_table(10)  :=1736;
		sine_table(11)  :=1908;
		sine_table(12)  :=2079;
		sine_table(13)  :=2249;
		sine_table(14)  :=2419;
		sine_table(15)  :=2588;
		sine_table(16)  :=2756;
		sine_table(17)  :=2923;
		sine_table(18)  :=3090;
		sine_table(19)  :=3255;
		sine_table(20)  :=3420;
		sine_table(21)  :=3583;
		sine_table(22)  :=3746;
		sine_table(23)  :=3907;
		sine_table(24)  :=4067;
		sine_table(25)  :=4226;
		sine_table(26)  :=4383;
		sine_table(27)  :=4539;
		sine_table(28)  :=4694;
		sine_table(29)  :=4848;
		sine_table(30)  :=5000;
		sine_table(31)  :=5150;
		sine_table(32)  :=5299;
		sine_table(33)  :=5446;
		sine_table(34)  :=5591;
		sine_table(35)  :=5735;
		sine_table(36)  :=5877;
		sine_table(37)  :=6018;
		sine_table(38)  :=6156;
		sine_table(39)  :=6293;
		sine_table(40)  :=6427;
		sine_table(41)  :=6560;
		sine_table(42)  :=6691;
		sine_table(43)  :=6820;
		sine_table(44)  :=6946;
		sine_table(45)  :=7071;
		sine_table(46)  :=7193;
		sine_table(47)  :=7313;
		sine_table(48)  :=7431;
		sine_table(49)  :=7547;
		sine_table(50)  :=7660;
		sine_table(51)  :=7771;
		sine_table(52)  :=7880;
		sine_table(53)  :=7986;
		sine_table(54)  :=8090;
		sine_table(55)  :=8191;
		sine_table(56)  :=8290;
		sine_table(57)  :=8386;
		sine_table(58)  :=8480;
		sine_table(59)  :=8571;
		sine_table(60)  :=8660;
		sine_table(61)  :=8746;
		sine_table(62)  :=8829;
		sine_table(63)  :=8910;
		sine_table(64)  :=8987;
		sine_table(65)  :=9063;
		sine_table(66)  :=9135;
		sine_table(67)  :=9205;
		sine_table(68)  :=9271;
		sine_table(69)  :=9335;
		sine_table(70)  :=9396;
		sine_table(71)  :=9455;
		sine_table(72)  :=9510;
		sine_table(73)  :=9563;
		sine_table(74)  :=9612;
		sine_table(75)  :=9659;
		sine_table(76)  :=9703;
		sine_table(77)  :=9743;
		sine_table(78)  :=9781;
		sine_table(79)  :=9816;
		sine_table(80)  :=9848;
		sine_table(81)  :=9876;
		sine_table(82)  :=9902;
		sine_table(83)  :=9925;
		sine_table(84)  :=9945;
		sine_table(85)  :=9961;
		sine_table(86)  :=9975;
		sine_table(87)  :=9986;
		sine_table(88)  :=9993;
		sine_table(89)  :=9998;
		sine_table(90)  :=10000;
		sine_table(91)  :=9998;
		right 			:= (val) mod 100;
		left  			:= (val-right)/100;
		final_val 		:= sine_table(left) + (right*(sine_table(left+1)-sine_table(left)))/100;
		return final_val;
	end sine;
	
	type ARRAY_TYPE is array (0 to 50) of integer range 0 to 100000000;
	type state_type is (update, query, do_nothing);
	signal state                  : state_type;	
	signal a                      : ARRAY_TYPE;
	signal latitude               : ARRAY_TYPE;
	signal longitude              : ARRAY_TYPE;-- := ();
	signal index                  : integer range 1 to 55;
	signal user_lat, user_long    : integer range 0 to 10000;
	signal min_lat, min_long      : integer range 0 to 10000;
	signal d_lat, d_long          : integer range 0 to 10000;
	signal query_signal           : std_logic;
	signal min_index, m_index     : integer range 0 to 1000;
	signal record_long_prev, done : std_logic;
	signal state_change_prev      : std_logic;
begin

	process(clk, reset, state_change)
	begin
		if (clk = '1' and clk'event) then
			state_change_prev <= state_change;
			if (reset = '1') then
				latitude(0)   <= 2383;longitude(0)  <= 9126;
				latitude(1)   <= 2718;longitude(1)  <= 7801;
				-- TODO 2 changed this latitude
				latitude(2)   <= 1290;longitude(2)  <= 7958;
				latitude(3)   <= 3163;longitude(3)  <= 7486;
				latitude(4)   <= 1296;longitude(4)  <= 7756;
				latitude(5)   <= 3075;longitude(5)  <= 7678;
				latitude(6)   <= 1308;longitude(6)  <= 8026;
				latitude(7)   <= 2748;longitude(7)  <= 9500;
				latitude(8)   <= 2733;longitude(8)  <= 8861;
				latitude(9)   <= 2618;longitude(9)  <= 9173;
				latitude(10)  <= 1736;longitude(10) <= 7848;
				latitude(11)  <= 2693;longitude(11) <= 7581;
				latitude(12)  <= 2305;longitude(12) <= 7018;
				latitude(13)  <= 2646;longitude(13) <= 8033;
				latitude(14)  <=  996;longitude(14) <= 7628;
				latitude(15)  <= 2256;longitude(15) <= 8836;
				latitude(16)  <= 2531;longitude(16) <= 7963;
				latitude(17)  <= 2685;longitude(17) <= 8095;
				latitude(18)  <= 3091;longitude(18) <= 7585;
				latitude(19)  <= 1898;longitude(19) <= 7283;
				latitude(20)  <= 2113;longitude(20) <= 7908;
				latitude(21)  <= 2861;longitude(21) <= 7721;
				latitude(22)  <= 2561;longitude(22) <= 8515;
				latitude(23)  <= 1166;longitude(23) <= 9276;
				latitude(24)  <= 1851;longitude(24) <= 7385;
				latitude(25)  <= 2556;longitude(25) <= 9188;
				latitude(26)  <= 3110;longitude(26) <= 7716;
				latitude(27)  <= 2671;longitude(27) <= 8843;
				latitude(28)  <= 3408;longitude(28) <= 7478;
				latitude(29)  <= 2116;longitude(29) <= 7283;
				latitude(30)  <= 2663;longitude(30) <= 9280;
				latitude(31)  <=  848;longitude(31) <= 7695;
				latitude(32)  <= 1768;longitude(32) <= 8321;
				reset_lat_lon : for i in 33 to 50 loop
					latitude(i) <= 0;
					longitude(i)<= 0;
				end loop;
				index 		  <= 33;
			elsif (state_change = '1' and state_change_prev/=state_change ) then
			  		state <= query;
			elsif (state_change = '1' and state_change_prev/=state_change) then
			  		state <= update;
			  		update_state_indicator <= '1';
	  		elsif (state = update) then
				--TODO record latitude first
				record_long_prev <= record_long;
				show_lat <= '1';
				show_long <= '0';
				show_digit <= '0';
				if (record_lat = '1') then
					latitude(index) <= to_integer(unsigned(data_in(15 downto 12)))*1000 + to_integer(unsigned(data_in(11 downto 8)))*100 + to_integer(unsigned(data_in(7 downto 4)))*10 + to_integer(unsigned(data_in(3 downto 0)));
					show_lat <= '0';
					show_long <= '1';
					show_digit <= '0';
				end if;
				if (record_long = '1' and record_long/=record_long_prev) then
					longitude(index) <= to_integer(unsigned(data_in(15 downto 12)))*1000 + to_integer(unsigned(data_in(11 downto 8)))*100 + to_integer(unsigned(data_in(7 downto 4)))*10 + to_integer(unsigned(data_in(3 downto 0)));
					index <= index + 1;
					state <= do_nothing;
					update_state_indicator <= '0';
					show_lat <= '0';
					show_long <= '0';
					show_digit <= '1';
				end if;
			elsif (state = query) then
				-- record latitude first
				show_lat <= '1';
				show_long <= '0';
				show_digit <= '0';
				if (record_lat = '1') then
					user_lat 	 <= to_integer(unsigned(data_in(15 downto 12)))*1000 + to_integer(unsigned(data_in(11 downto 8)))*100 + to_integer(unsigned(data_in(7 downto 4)))*10 + to_integer(unsigned(data_in(3 downto 0)));
					show_lat <= '0';
					show_long <= '1';
					show_digit <= '0';
				elsif (record_long = '1') then
					user_long 	 <= to_integer(unsigned(data_in(15 downto 12)))*1000 + to_integer(unsigned(data_in(11 downto 8)))*100 + to_integer(unsigned(data_in(7 downto 4)))*10 + to_integer(unsigned(data_in(3 downto 0)));
					query_signal <= '1';
					state <= do_nothing;
					query_state_indicator <= '1';
					show_lat <= '0';
					show_long <= '0';
					show_digit <= '1';
				end if;
			elsif (state = do_nothing) then
				if (done = '1') then
					query_signal <= '0';
					query_state_indicator <= '0';
					show_long <= '0';
					show_lat <= '0';
					show_digit <= '1';
				end if;
			end if;
		end if;
	end process;


	process(clk)
	variable dlat, dlong : integer range 0 to 10000;
	begin
		if (reset = '1') then
			reset_a : for i in 0 to 50 loop
				a(i) <= 0;
			end loop;
		elsif (clk = '1' and clk'event) then
			assign : for i in 0 to 50 loop
				dlat  := abs(user_lat-latitude(i));
				dlong := abs(user_long-longitude(i));
				--report "The value of 'd_lat' is " & integer'image(d_lat);
				--report "The value of 'd_long' is " & integer'image(d_long);
				a(i)   <= dlat+dlong;--sine((dlat)/2)*sine((dlat)/2) + (sine(9000-(latitude(i)))*sine(9000-(user_lat))*sine(dlong/2)*sine(dlong/2))/100000000;
			end loop;
		end if;
	end process ;
		
	process(clk, push_query)
	begin
		-- TODO min index is to store the final value until next computation
		if (clk = '1' and clk'event) then
			if (push_query = '1' and query_signal = '1' and reset /= '1') then
				for i in 0 to 50 loop
					if (i<index) then
						if (a(i)<a(m_index)) then
							m_index <= i;
							--min_index <= i;
							data_out(3 downto 0) <= std_logic_vector(to_unsigned(i mod 10, 4));
							data_out(7 downto 4) <= std_logic_vector(to_unsigned(((i-(i mod 10))/10), 4));
						end if;
					end if;
				end loop;
				done <= '1';
			else
				m_index <= 0;	
				done <= '0';
			end if;
		end if;
	end process;


end project_arc;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity display is
port(
	in_data : in std_logic_vector(15 downto 0);
	show_digit,show_long,show_lat,clk : in std_logic;
	anode : out std_logic_vector(3 downto 0);
	cathode : out std_logic_vector(6 downto 0)	
);
end display;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


architecture arch of display is

component digit_display
   port ( b          : in    std_logic_vector (15 downto 0); 
          clk        : in    std_logic; 
          anode      : out   std_logic_vector (3 downto 0); 
          cathode    : out   std_logic_vector (6 downto 0)
         );
end component;

component seven_segment_display
port(
	clk: in std_logic;
	lat_long : in std_logic;
	anode : out std_logic_vector(3 downto 0);
	cathode : out std_logic_vector(6 downto 0)
);
end component;

signal zero : std_logic;
signal one :  std_logic;
signal anode1,anode2,anode3 : std_logic_vector (3 downto 0); 
signal cathode1,cathode2,cathode3 : std_logic_vector (6 downto 0);

begin
zero <= '0';
one <='1';

lat : seven_segment_display
port map(clk,zero,anode1(3 downto 0),cathode1(6 downto 0));

long : seven_segment_display
port map(clk,one,anode2(3 downto 0),cathode2(6 downto 0));

digit : digit_display
port map(in_data,clk,anode3(3 downto 0),cathode3(6 downto 0));

process(clk)
begin
if clk='1' and clk'event then
    if show_lat='1' then
    anode <= anode1; cathode<=cathode1;

    elsif show_long='1' then
    anode <= anode2; cathode<=cathode2;

    else
    anode <= anode3; cathode<=cathode3;
    end if;
end if;
end process;
end architecture;

-------------------------------------------------------------ssd-lat-long------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity seven_segment_display is
port(
	clk: in std_logic;
	lat_long : in std_logic;
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

with lat_long select 
cathode1<= "0111000" when '0',
	   "0111000" when '1',
	   "0000000" when others;
with lat_long select
cathode2 <= "1110111" when '0',
	    "1011100" when '1',
	    "0000000" when others;
with lat_long select 
cathode3<= "1111000" when '0',
           "1010100" when '1',
           "0000000" when others;
with lat_long select
cathode4 <= "0000000" when '0',
	    "1101111" when '1',
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
---------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity digit_display is
   port ( b          : in    std_logic_vector (15 downto 0); 
          clk        : in    std_logic; 
          anode      : out   std_logic_vector (3 downto 0); 
          cathode    : out   std_logic_vector (6 downto 0)
         );
end entity digit_display;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

architecture ssd of digit_display is

signal clock : std_logic;
signal flag  : integer range 1 to 4;
signal cathode1, cathode2, cathode3, cathode4, cath : std_logic_vector (6 downto 0);
signal counter : integer range 0 to 1000000;

begin

with b(15 downto 12) select 
cathode1<= "0111111" when "0000",
		   "0000110" when "0001",
		   "1011011" when "0010",
		   "1001111" when "0011",
		   "1100110" when "0100",
		   "1101101" when "0101",
		   "1111101" when "0110",
		   "0000111" when "0111",
		   "1111111" when "1000",
		   "1101111" when "1001",
	   	   "1000000" when others;
with b(11 downto 8) select
cathode2 <= "0111111" when "0000",
		   "0000110" when "0001",
		   "1011011" when "0010",
		   "1001111" when "0011",
		   "1100110" when "0100",
		   "1101101" when "0101",
		   "1111101" when "0110",
		   "0000111" when "0111",
		   "1111111" when "1000",
		   "1101111" when "1001",
	   	   "1000000" when others;
with b(7 downto 4) select 
cathode3<= "0111111" when "0000",
		   "0000110" when "0001",
		   "1011011" when "0010",
		   "1001111" when "0011",
		   "1100110" when "0100",
		   "1101101" when "0101",
		   "1111101" when "0110",
		   "0000111" when "0111",
		   "1111111" when "1000",
		   "1101111" when "1001",
	   	   "1000000" when others;
with b(3 downto 0) select
cathode4 <= "0111111" when "0000",
		   "0000110" when "0001",
		   "1011011" when "0010",
		   "1001111" when "0011",
		   "1100110" when "0100",
		   "1101101" when "0101",
		   "1111101" when "0110",
		   "0000111" when "0111",
		   "1111111" when "1000",
		   "1101111" when "1001",
	   	   "1000000" when others;
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











-------------------------------------------------------------------------------digit wala seven segment display--------------------------------------------------------------

----------------------------------------------------------------------------------
---- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
----------------------------------------------------------------------------------
------- CELL FTC_HXILINX_lab4_seven_segment_display -----


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--entity FTC_HXILINX_lab4_seven_segment_display is
--generic(
--    INIT : bit := '0'
--    );

--  port (
--    Q   : out STD_LOGIC := '0';
--    C   : in STD_LOGIC;
--    CLR : in STD_LOGIC;
--    T   : in STD_LOGIC
--    );
--end FTC_HXILINX_lab4_seven_segment_display;

--architecture Behavioral of FTC_HXILINX_lab4_seven_segment_display is
--signal q_tmp : std_logic := TO_X01(INIT);
--begin

--process(C, CLR)
--begin
--  if (CLR='1') then
--    q_tmp <= '0';
--  elsif (C'event and C = '1') then
--    if(T='1') then
--      q_tmp <= not q_tmp;
--    end if;
--  end if;  
--end process;

--Q <= q_tmp;

--end Behavioral;

------- CELL D2_4E_HXILINX_lab4_seven_segment_display -----
  
--library IEEE;
--use IEEE.STD_LOGIC_1164.all;

--entity D2_4E_HXILINX_lab4_seven_segment_display is
  
--port(
--    D0  : out std_logic;
--    D1  : out std_logic;
--    D2  : out std_logic;
--    D3  : out std_logic;

--    A0  : in std_logic;
--    A1  : in std_logic;
--    E   : in std_logic
--  );
--end D2_4E_HXILINX_lab4_seven_segment_display;

--architecture D2_4E_HXILINX_lab4_seven_segment_display_V of D2_4E_HXILINX_lab4_seven_segment_display is
--  signal d_tmp : std_logic_vector(3 downto 0);
--begin
--  process (A0, A1, E)
--  variable sel   : std_logic_vector(1 downto 0);
--  begin
--    sel := A1&A0;
--    if( E = '0') then
--    d_tmp <= "0000";
--    else
--      case sel is
--      when "00" => d_tmp <= "0001";
--      when "01" => d_tmp <= "0010";
--      when "10" => d_tmp <= "0100";
--      when "11" => d_tmp <= "1000";
--      when others => NULL;
--      end case;
--    end if;
--  end process; 

--    D3 <= d_tmp(3);
--    D2 <= d_tmp(2);
--    D1 <= d_tmp(1);
--    D0 <= d_tmp(0);

--end D2_4E_HXILINX_lab4_seven_segment_display_V;
------- CELL AND6_HXILINX_lab4_seven_segment_display -----
  
--library IEEE;
--use IEEE.STD_LOGIC_1164.all;

--entity AND6_HXILINX_lab4_seven_segment_display is
  
--port(
--    O  : out std_logic;

--    I0  : in std_logic;
--    I1  : in std_logic;
--    I2  : in std_logic;
--    I3  : in std_logic;
--    I4  : in std_logic;
--    I5  : in std_logic
--  );
--end AND6_HXILINX_lab4_seven_segment_display;

--architecture AND6_HXILINX_lab4_seven_segment_display_V of AND6_HXILINX_lab4_seven_segment_display is
--begin
--  O <= I0 and I1 and I2 and I3 and I4 and I5;
--end AND6_HXILINX_lab4_seven_segment_display_V;

--library ieee;
--use ieee.std_logic_1164.ALL;
--use ieee.numeric_std.ALL;
--library UNISIM;
--use UNISIM.Vcomponents.ALL;

--entity enableswitchmux_MUSER_lab4_seven_segment_display is
--   port ( e  : in    std_logic; 
--          x0 : in    std_logic; 
--          x1 : in    std_logic; 
--          x2 : in    std_logic; 
--          x3 : in    std_logic; 
--          y0 : out   std_logic; 
--          y1 : out   std_logic; 
--          y2 : out   std_logic; 
--          y3 : out   std_logic);
--end enableswitchmux_MUSER_lab4_seven_segment_display;

--architecture BEHAVIORAL of enableswitchmux_MUSER_lab4_seven_segment_display is
--   attribute BOX_TYPE   : string ;
--   component AND2
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
--begin
--   XLXI_1 : AND2
--      port map (I0=>e,
--                I1=>x0,
--                O=>y0);
   
--   XLXI_2 : AND2
--      port map (I0=>e,
--                I1=>x1,
--                O=>y1);
   
--   XLXI_3 : AND2
--      port map (I0=>e,
--                I1=>x2,
--                O=>y2);
   
--   XLXI_4 : AND2
--      port map (I0=>e,
--                I1=>x3,
--                O=>y3);
   
--end BEHAVIORAL;



--library ieee;
--use ieee.std_logic_1164.ALL;
--use ieee.numeric_std.ALL;
--library UNISIM;
--use UNISIM.Vcomponents.ALL;

--entity select4_MUSER_lab4_seven_segment_display is
--   port ( anode : in    std_logic_vector (3 downto 0); 
--          b     : in    std_logic_vector (15 downto 0); 
--          out0  : out   std_logic; 
--          out1  : out   std_logic; 
--          out2  : out   std_logic; 
--          out3  : out   std_logic);
--end select4_MUSER_lab4_seven_segment_display;

--architecture BEHAVIORAL of select4_MUSER_lab4_seven_segment_display is
--   attribute BOX_TYPE   : string ;
--   signal XLXN_23 : std_logic;
--   signal XLXN_24 : std_logic;
--   signal XLXN_25 : std_logic;
--   signal XLXN_43 : std_logic;
--   signal XLXN_44 : std_logic;
--   signal XLXN_45 : std_logic;
--   signal XLXN_46 : std_logic;
--   signal XLXN_47 : std_logic;
--   signal XLXN_48 : std_logic;
--   signal XLXN_49 : std_logic;
--   signal XLXN_50 : std_logic;
--   signal XLXN_51 : std_logic;
--   signal XLXN_52 : std_logic;
--   signal XLXN_53 : std_logic;
--   signal XLXN_54 : std_logic;
--   signal XLXN_55 : std_logic;
--   component enableswitchmux_MUSER_lab4_seven_segment_display
--      port ( e  : in    std_logic; 
--             x0 : in    std_logic; 
--             x1 : in    std_logic; 
--             x2 : in    std_logic; 
--             x3 : in    std_logic; 
--             y0 : out   std_logic; 
--             y1 : out   std_logic; 
--             y2 : out   std_logic; 
--             y3 : out   std_logic);
--   end component;
   
--   component OR4
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             I2 : in    std_logic; 
--             I3 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
--begin
--   XLXI_1 : enableswitchmux_MUSER_lab4_seven_segment_display
--      port map (e=>anode(0),
--                x0=>b(0),
--                x1=>b(1),
--                x2=>b(2),
--                x3=>b(3),
--                y0=>XLXN_23,
--                y1=>XLXN_44,
--                y2=>XLXN_51,
--                y3=>XLXN_52);
   
--   XLXI_2 : enableswitchmux_MUSER_lab4_seven_segment_display
--      port map (e=>anode(1),
--                x0=>b(4),
--                x1=>b(5),
--                x2=>b(6),
--                x3=>b(7),
--                y0=>XLXN_24,
--                y1=>XLXN_45,
--                y2=>XLXN_50,
--                y3=>XLXN_53);
   
--   XLXI_3 : enableswitchmux_MUSER_lab4_seven_segment_display
--      port map (e=>anode(2),
--                x0=>b(8),
--                x1=>b(9),
--                x2=>b(10),
--                x3=>b(11),
--                y0=>XLXN_25,
--                y1=>XLXN_46,
--                y2=>XLXN_49,
--                y3=>XLXN_54);
   
--   XLXI_4 : enableswitchmux_MUSER_lab4_seven_segment_display
--      port map (e=>anode(3),
--                x0=>b(12),
--                x1=>b(13),
--                x2=>b(14),
--                x3=>b(15),
--                y0=>XLXN_43,
--                y1=>XLXN_47,
--                y2=>XLXN_48,
--                y3=>XLXN_55);
   
--   XLXI_5 : OR4
--      port map (I0=>XLXN_43,
--                I1=>XLXN_25,
--                I2=>XLXN_24,
--                I3=>XLXN_23,
--                O=>out0);
   
--   XLXI_6 : OR4
--      port map (I0=>XLXN_47,
--                I1=>XLXN_46,
--                I2=>XLXN_45,
--                I3=>XLXN_44,
--                O=>out1);
   
--   XLXI_7 : OR4
--      port map (I0=>XLXN_48,
--                I1=>XLXN_49,
--                I2=>XLXN_50,
--                I3=>XLXN_51,
--                O=>out2);
   
--   XLXI_8 : OR4
--      port map (I0=>XLXN_55,
--                I1=>XLXN_54,
--                I2=>XLXN_53,
--                I3=>XLXN_52,
--                O=>out3);
   
--end BEHAVIORAL;



--library ieee;
--use ieee.std_logic_1164.ALL;
--use ieee.numeric_std.ALL;
--library UNISIM;
--use UNISIM.Vcomponents.ALL;

--entity g_MUSER_lab4_seven_segment_display is
--   port ( x0 : in    std_logic; 
--          x1 : in    std_logic; 
--          x2 : in    std_logic; 
--          x3 : in    std_logic; 
--          g  : out   std_logic);
--end g_MUSER_lab4_seven_segment_display;

--architecture BEHAVIORAL of g_MUSER_lab4_seven_segment_display is
--   attribute BOX_TYPE   : string ;
--   signal XLXN_1  : std_logic;
--   signal XLXN_2  : std_logic;
--   signal XLXN_3  : std_logic;
--   signal XLXN_4  : std_logic;
--   signal XLXN_5  : std_logic;
--   signal XLXN_6  : std_logic;
--   signal XLXN_7  : std_logic;
--   signal XLXN_8  : std_logic;
--   signal XLXN_10 : std_logic;
--   signal XLXN_11 : std_logic;
--   component OR4
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             I2 : in    std_logic; 
--             I3 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
--   component INV
--      port ( I : in    std_logic; 
--             O : out   std_logic);
--   end component;
--   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
--   component AND4
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             I2 : in    std_logic; 
--             I3 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
--begin
--   XLXI_1 : OR4
--      port map (I0=>x3,
--                I1=>x2,
--                I2=>x1,
--                I3=>XLXN_1,
--                O=>XLXN_7);
   
--   XLXI_2 : OR4
--      port map (I0=>x3,
--                I1=>XLXN_4,
--                I2=>XLXN_3,
--                I3=>XLXN_2,
--                O=>XLXN_8);
   
--   XLXI_3 : OR4
--      port map (I0=>XLXN_6,
--                I1=>XLXN_5,
--                I2=>x1,
--                I3=>x0,
--                O=>XLXN_11);
   
--   XLXI_5 : INV
--      port map (I=>x0,
--                O=>XLXN_1);
   
--   XLXI_6 : INV
--      port map (I=>x0,
--                O=>XLXN_2);
   
--   XLXI_7 : INV
--      port map (I=>x1,
--                O=>XLXN_3);
   
--   XLXI_8 : INV
--      port map (I=>x2,
--                O=>XLXN_4);
   
--   XLXI_9 : INV
--      port map (I=>x2,
--                O=>XLXN_5);
   
--   XLXI_10 : INV
--      port map (I=>x3,
--                O=>XLXN_6);
   
--   XLXI_11 : AND4
--      port map (I0=>XLXN_11,
--                I1=>XLXN_8,
--                I2=>XLXN_7,
--                I3=>XLXN_10,
--                O=>g);
   
--   XLXI_12 : OR4
--      port map (I0=>x3,
--                I1=>x2,
--                I2=>x1,
--                I3=>x0,
--                O=>XLXN_10);
   
--end BEHAVIORAL;



--library ieee;
--use ieee.std_logic_1164.ALL;
--use ieee.numeric_std.ALL;
--library UNISIM;
--use UNISIM.Vcomponents.ALL;

--entity f_MUSER_lab4_seven_segment_display is
--   port ( x0 : in    std_logic; 
--          x1 : in    std_logic; 
--          x2 : in    std_logic; 
--          x3 : in    std_logic; 
--          f  : out   std_logic);
--end f_MUSER_lab4_seven_segment_display;

--architecture BEHAVIORAL of f_MUSER_lab4_seven_segment_display is
--   attribute BOX_TYPE   : string ;
--   signal XLXN_1  : std_logic;
--   signal XLXN_2  : std_logic;
--   signal XLXN_3  : std_logic;
--   signal XLXN_4  : std_logic;
--   signal XLXN_5  : std_logic;
--   signal XLXN_6  : std_logic;
--   signal XLXN_7  : std_logic;
--   signal XLXN_8  : std_logic;
--   signal XLXN_9  : std_logic;
--   signal XLXN_10 : std_logic;
--   signal XLXN_12 : std_logic;
--   signal XLXN_13 : std_logic;
--   signal XLXN_14 : std_logic;
--   signal XLXN_15 : std_logic;
--   signal XLXN_16 : std_logic;
--   component OR4
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             I2 : in    std_logic; 
--             I3 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
--   component INV
--      port ( I : in    std_logic; 
--             O : out   std_logic);
--   end component;
--   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
--   component AND5
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             I2 : in    std_logic; 
--             I3 : in    std_logic; 
--             I4 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
--begin
--   XLXI_2 : OR4
--      port map (I0=>x3,
--                I1=>x2,
--                I2=>x1,
--                I3=>XLXN_1,
--                O=>XLXN_12);
   
--   XLXI_3 : OR4
--      port map (I0=>x3,
--                I1=>x2,
--                I2=>XLXN_2,
--                I3=>x0,
--                O=>XLXN_13);
   
--   XLXI_4 : OR4
--      port map (I0=>x3,
--                I1=>x2,
--                I2=>XLXN_4,
--                I3=>XLXN_3,
--                O=>XLXN_14);
   
--   XLXI_5 : OR4
--      port map (I0=>x3,
--                I1=>XLXN_7,
--                I2=>XLXN_6,
--                I3=>XLXN_5,
--                O=>XLXN_15);
   
--   XLXI_6 : OR4
--      port map (I0=>XLXN_10,
--                I1=>XLXN_9,
--                I2=>x1,
--                I3=>XLXN_8,
--                O=>XLXN_16);
   
--   XLXI_8 : INV
--      port map (I=>x0,
--                O=>XLXN_1);
   
--   XLXI_9 : INV
--      port map (I=>x1,
--                O=>XLXN_2);
   
--   XLXI_10 : INV
--      port map (I=>x0,
--                O=>XLXN_3);
   
--   XLXI_11 : INV
--      port map (I=>x1,
--                O=>XLXN_4);
   
--   XLXI_12 : INV
--      port map (I=>x0,
--                O=>XLXN_5);
   
--   XLXI_13 : INV
--      port map (I=>x1,
--                O=>XLXN_6);
   
--   XLXI_14 : INV
--      port map (I=>x2,
--                O=>XLXN_7);
   
--   XLXI_15 : INV
--      port map (I=>x0,
--                O=>XLXN_8);
   
--   XLXI_16 : INV
--      port map (I=>x2,
--                O=>XLXN_9);
   
--   XLXI_17 : INV
--      port map (I=>x3,
--                O=>XLXN_10);
   
--   XLXI_18 : AND5
--      port map (I0=>XLXN_16,
--                I1=>XLXN_15,
--                I2=>XLXN_14,
--                I3=>XLXN_13,
--                I4=>XLXN_12,
--                O=>f);
   
--end BEHAVIORAL;



--library ieee;
--use ieee.std_logic_1164.ALL;
--use ieee.numeric_std.ALL;
--library UNISIM;
--use UNISIM.Vcomponents.ALL;

--entity e_MUSER_lab4_seven_segment_display is
--   port ( x0 : in    std_logic; 
--          x1 : in    std_logic; 
--          x2 : in    std_logic; 
--          x3 : in    std_logic; 
--          e  : out   std_logic);
--end e_MUSER_lab4_seven_segment_display;

--architecture BEHAVIORAL of e_MUSER_lab4_seven_segment_display is
--   attribute BOX_TYPE   : string ;
--   attribute HU_SET     : string ;
--   signal XLXN_2  : std_logic;
--   signal XLXN_3  : std_logic;
--   signal XLXN_4  : std_logic;
--   signal XLXN_5  : std_logic;
--   signal XLXN_7  : std_logic;
--   signal XLXN_8  : std_logic;
--   signal XLXN_9  : std_logic;
--   signal XLXN_10 : std_logic;
--   signal XLXN_11 : std_logic;
--   signal XLXN_12 : std_logic;
--   signal XLXN_13 : std_logic;
--   signal XLXN_14 : std_logic;
--   signal XLXN_15 : std_logic;
--   signal XLXN_16 : std_logic;
--   signal XLXN_17 : std_logic;
--   signal XLXN_18 : std_logic;
--   signal XLXN_19 : std_logic;
--   component OR4
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             I2 : in    std_logic; 
--             I3 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
--   component INV
--      port ( I : in    std_logic; 
--             O : out   std_logic);
--   end component;
--   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
--   component AND6_HXILINX_lab4_seven_segment_display
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             I2 : in    std_logic; 
--             I3 : in    std_logic; 
--             I4 : in    std_logic; 
--             I5 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
   
--   attribute HU_SET of XLXI_23 : label is "XLXI_23_0";
--begin
--   XLXI_2 : OR4
--      port map (I0=>x3,
--                I1=>x2,
--                I2=>x1,
--                I3=>XLXN_2,
--                O=>XLXN_19);
   
--   XLXI_3 : OR4
--      port map (I0=>x3,
--                I1=>x2,
--                I2=>XLXN_4,
--                I3=>XLXN_3,
--                O=>XLXN_18);
   
--   XLXI_4 : OR4
--      port map (I0=>x3,
--                I1=>XLXN_5,
--                I2=>x1,
--                I3=>x0,
--                O=>XLXN_17);
   
--   XLXI_5 : OR4
--      port map (I0=>x3,
--                I1=>XLXN_8,
--                I2=>x1,
--                I3=>XLXN_7,
--                O=>XLXN_16);
   
--   XLXI_6 : OR4
--      port map (I0=>x3,
--                I1=>XLXN_11,
--                I2=>XLXN_10,
--                I3=>XLXN_9,
--                O=>XLXN_15);
   
--   XLXI_7 : OR4
--      port map (I0=>XLXN_13,
--                I1=>x2,
--                I2=>x1,
--                I3=>XLXN_12,
--                O=>XLXN_14);
   
--   XLXI_10 : INV
--      port map (I=>x0,
--                O=>XLXN_2);
   
--   XLXI_11 : INV
--      port map (I=>x0,
--                O=>XLXN_3);
   
--   XLXI_12 : INV
--      port map (I=>x1,
--                O=>XLXN_4);
   
--   XLXI_13 : INV
--      port map (I=>x2,
--                O=>XLXN_5);
   
--   XLXI_16 : INV
--      port map (I=>x0,
--                O=>XLXN_7);
   
--   XLXI_17 : INV
--      port map (I=>x2,
--                O=>XLXN_8);
   
--   XLXI_18 : INV
--      port map (I=>x0,
--                O=>XLXN_9);
   
--   XLXI_19 : INV
--      port map (I=>x1,
--                O=>XLXN_10);
   
--   XLXI_20 : INV
--      port map (I=>x2,
--                O=>XLXN_11);
   
--   XLXI_21 : INV
--      port map (I=>x0,
--                O=>XLXN_12);
   
--   XLXI_22 : INV
--      port map (I=>x3,
--                O=>XLXN_13);
   
--   XLXI_23 : AND6_HXILINX_lab4_seven_segment_display
--      port map (I0=>XLXN_14,
--                I1=>XLXN_15,
--                I2=>XLXN_16,
--                I3=>XLXN_17,
--                I4=>XLXN_18,
--                I5=>XLXN_19,
--                O=>e);
   
--end BEHAVIORAL;



--library ieee;
--use ieee.std_logic_1164.ALL;
--use ieee.numeric_std.ALL;
--library UNISIM;
--use UNISIM.Vcomponents.ALL;

--entity d_MUSER_lab4_seven_segment_display is
--   port ( x0 : in    std_logic; 
--          x1 : in    std_logic; 
--          x2 : in    std_logic; 
--          x3 : in    std_logic; 
--          d  : out   std_logic);
--end d_MUSER_lab4_seven_segment_display;

--architecture BEHAVIORAL of d_MUSER_lab4_seven_segment_display is
--   attribute BOX_TYPE   : string ;
--   signal XLXN_2  : std_logic;
--   signal XLXN_5  : std_logic;
--   signal XLXN_6  : std_logic;
--   signal XLXN_7  : std_logic;
--   signal XLXN_8  : std_logic;
--   signal XLXN_13 : std_logic;
--   signal XLXN_14 : std_logic;
--   signal XLXN_15 : std_logic;
--   signal XLXN_16 : std_logic;
--   signal XLXN_17 : std_logic;
--   signal XLXN_18 : std_logic;
--   signal XLXN_19 : std_logic;
--   signal XLXN_20 : std_logic;
--   signal XLXN_21 : std_logic;
--   signal XLXN_22 : std_logic;
--   signal XLXN_23 : std_logic;
--   component OR4
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             I2 : in    std_logic; 
--             I3 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
--   component INV
--      port ( I : in    std_logic; 
--             O : out   std_logic);
--   end component;
--   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
--   component AND5
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             I2 : in    std_logic; 
--             I3 : in    std_logic; 
--             I4 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
--begin
--   XLXI_2 : OR4
--      port map (I0=>x3,
--                I1=>x2,
--                I2=>x1,
--                I3=>XLXN_13,
--                O=>XLXN_2);
   
--   XLXI_3 : OR4
--      port map (I0=>x3,
--                I1=>XLXN_14,
--                I2=>x1,
--                I3=>x0,
--                O=>XLXN_5);
   
--   XLXI_4 : OR4
--      port map (I0=>x3,
--                I1=>XLXN_17,
--                I2=>XLXN_16,
--                I3=>XLXN_15,
--                O=>XLXN_6);
   
--   XLXI_5 : OR4
--      port map (I0=>XLXN_19,
--                I1=>x2,
--                I2=>XLXN_18,
--                I3=>x0,
--                O=>XLXN_7);
   
--   XLXI_6 : OR4
--      port map (I0=>XLXN_23,
--                I1=>XLXN_22,
--                I2=>XLXN_21,
--                I3=>XLXN_20,
--                O=>XLXN_8);
   
--   XLXI_8 : INV
--      port map (I=>x0,
--                O=>XLXN_13);
   
--   XLXI_9 : INV
--      port map (I=>x2,
--                O=>XLXN_14);
   
--   XLXI_10 : INV
--      port map (I=>x0,
--                O=>XLXN_15);
   
--   XLXI_11 : INV
--      port map (I=>x1,
--                O=>XLXN_16);
   
--   XLXI_12 : INV
--      port map (I=>x2,
--                O=>XLXN_17);
   
--   XLXI_13 : INV
--      port map (I=>x1,
--                O=>XLXN_18);
   
--   XLXI_14 : INV
--      port map (I=>x3,
--                O=>XLXN_19);
   
--   XLXI_15 : INV
--      port map (I=>x0,
--                O=>XLXN_20);
   
--   XLXI_16 : INV
--      port map (I=>x1,
--                O=>XLXN_21);
   
--   XLXI_17 : INV
--      port map (I=>x2,
--                O=>XLXN_22);
   
--   XLXI_18 : INV
--      port map (I=>x3,
--                O=>XLXN_23);
   
--   XLXI_19 : AND5
--      port map (I0=>XLXN_8,
--                I1=>XLXN_7,
--                I2=>XLXN_6,
--                I3=>XLXN_5,
--                I4=>XLXN_2,
--                O=>d);
   
--end BEHAVIORAL;



--library ieee;
--use ieee.std_logic_1164.ALL;
--use ieee.numeric_std.ALL;
--library UNISIM;
--use UNISIM.Vcomponents.ALL;

--entity c_MUSER_lab4_seven_segment_display is
--   port ( x0 : in    std_logic; 
--          x1 : in    std_logic; 
--          x2 : in    std_logic; 
--          x3 : in    std_logic; 
--          c  : out   std_logic);
--end c_MUSER_lab4_seven_segment_display;

--architecture BEHAVIORAL of c_MUSER_lab4_seven_segment_display is
--   attribute BOX_TYPE   : string ;
--   signal XLXN_8  : std_logic;
--   signal XLXN_9  : std_logic;
--   signal XLXN_10 : std_logic;
--   signal XLXN_11 : std_logic;
--   signal XLXN_13 : std_logic;
--   signal XLXN_14 : std_logic;
--   signal XLXN_15 : std_logic;
--   signal XLXN_16 : std_logic;
--   signal XLXN_17 : std_logic;
--   signal XLXN_18 : std_logic;
--   signal XLXN_19 : std_logic;
--   signal XLXN_20 : std_logic;
--   signal XLXN_21 : std_logic;
--   signal XLXN_22 : std_logic;
--   component OR4
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             I2 : in    std_logic; 
--             I3 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
--   component INV
--      port ( I : in    std_logic; 
--             O : out   std_logic);
--   end component;
--   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
--   component AND4
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             I2 : in    std_logic; 
--             I3 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
--begin
--   XLXI_2 : OR4
--      port map (I0=>x3,
--                I1=>x2,
--                I2=>XLXN_13,
--                I3=>x0,
--                O=>XLXN_8);
   
--   XLXI_3 : OR4
--      port map (I0=>XLXN_15,
--                I1=>XLXN_14,
--                I2=>x1,
--                I3=>x0,
--                O=>XLXN_9);
   
--   XLXI_4 : OR4
--      port map (I0=>XLXN_22,
--                I1=>XLXN_17,
--                I2=>XLXN_16,
--                I3=>x0,
--                O=>XLXN_10);
   
--   XLXI_5 : OR4
--      port map (I0=>XLXN_21,
--                I1=>XLXN_20,
--                I2=>XLXN_19,
--                I3=>XLXN_18,
--                O=>XLXN_11);
   
--   XLXI_8 : INV
--      port map (I=>x1,
--                O=>XLXN_13);
   
--   XLXI_9 : INV
--      port map (I=>x2,
--                O=>XLXN_14);
   
--   XLXI_10 : INV
--      port map (I=>x3,
--                O=>XLXN_15);
   
--   XLXI_11 : INV
--      port map (I=>x1,
--                O=>XLXN_16);
   
--   XLXI_12 : INV
--      port map (I=>x2,
--                O=>XLXN_17);
   
--   XLXI_13 : INV
--      port map (I=>x3,
--                O=>XLXN_22);
   
--   XLXI_14 : INV
--      port map (I=>x0,
--                O=>XLXN_18);
   
--   XLXI_15 : INV
--      port map (I=>x1,
--                O=>XLXN_19);
   
--   XLXI_16 : INV
--      port map (I=>x2,
--                O=>XLXN_20);
   
--   XLXI_17 : INV
--      port map (I=>x3,
--                O=>XLXN_21);
   
--   XLXI_23 : AND4
--      port map (I0=>XLXN_11,
--                I1=>XLXN_10,
--                I2=>XLXN_9,
--                I3=>XLXN_8,
--                O=>c);
   
--end BEHAVIORAL;



--library ieee;
--use ieee.std_logic_1164.ALL;
--use ieee.numeric_std.ALL;
--library UNISIM;
--use UNISIM.Vcomponents.ALL;

--entity b_MUSER_lab4_seven_segment_display is
--   port ( x0 : in    std_logic; 
--          x1 : in    std_logic; 
--          x2 : in    std_logic; 
--          x3 : in    std_logic; 
--          b  : out   std_logic);
--end b_MUSER_lab4_seven_segment_display;

--architecture BEHAVIORAL of b_MUSER_lab4_seven_segment_display is
--   attribute BOX_TYPE   : string ;
--   attribute HU_SET     : string ;
--   signal XLXN_1  : std_logic;
--   signal XLXN_2  : std_logic;
--   signal XLXN_3  : std_logic;
--   signal XLXN_4  : std_logic;
--   signal XLXN_5  : std_logic;
--   signal XLXN_7  : std_logic;
--   signal XLXN_12 : std_logic;
--   signal XLXN_13 : std_logic;
--   signal XLXN_14 : std_logic;
--   signal XLXN_15 : std_logic;
--   signal XLXN_16 : std_logic;
--   signal XLXN_17 : std_logic;
--   signal XLXN_18 : std_logic;
--   signal XLXN_19 : std_logic;
--   signal XLXN_20 : std_logic;
--   signal XLXN_21 : std_logic;
--   signal XLXN_22 : std_logic;
--   signal XLXN_23 : std_logic;
--   signal XLXN_24 : std_logic;
--   signal XLXN_25 : std_logic;
--   signal XLXN_26 : std_logic;
--   signal XLXN_27 : std_logic;
--   component OR4
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             I2 : in    std_logic; 
--             I3 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
--   component INV
--      port ( I : in    std_logic; 
--             O : out   std_logic);
--   end component;
--   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
--   component AND6_HXILINX_lab4_seven_segment_display
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             I2 : in    std_logic; 
--             I3 : in    std_logic; 
--             I4 : in    std_logic; 
--             I5 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
   
--   attribute HU_SET of XLXI_25 : label is "XLXI_25_1";
--begin
--   XLXI_2 : OR4
--      port map (I0=>x3,
--                I1=>XLXN_13,
--                I2=>x1,
--                I3=>XLXN_12,
--                O=>XLXN_7);
   
--   XLXI_3 : OR4
--      port map (I0=>x3,
--                I1=>XLXN_15,
--                I2=>XLXN_14,
--                I3=>x0,
--                O=>XLXN_5);
   
--   XLXI_4 : OR4
--      port map (I0=>XLXN_18,
--                I1=>x2,
--                I2=>XLXN_17,
--                I3=>XLXN_16,
--                O=>XLXN_4);
   
--   XLXI_5 : OR4
--      port map (I0=>XLXN_20,
--                I1=>XLXN_19,
--                I2=>x1,
--                I3=>x0,
--                O=>XLXN_3);
   
--   XLXI_6 : OR4
--      port map (I0=>XLXN_23,
--                I1=>XLXN_22,
--                I2=>XLXN_21,
--                I3=>x0,
--                O=>XLXN_2);
   
--   XLXI_7 : OR4
--      port map (I0=>XLXN_27,
--                I1=>XLXN_26,
--                I2=>XLXN_25,
--                I3=>XLXN_24,
--                O=>XLXN_1);
   
--   XLXI_9 : INV
--      port map (I=>x0,
--                O=>XLXN_12);
   
--   XLXI_10 : INV
--      port map (I=>x2,
--                O=>XLXN_13);
   
--   XLXI_11 : INV
--      port map (I=>x1,
--                O=>XLXN_14);
   
--   XLXI_12 : INV
--      port map (I=>x2,
--                O=>XLXN_15);
   
--   XLXI_13 : INV
--      port map (I=>x0,
--                O=>XLXN_16);
   
--   XLXI_14 : INV
--      port map (I=>x1,
--                O=>XLXN_17);
   
--   XLXI_15 : INV
--      port map (I=>x3,
--                O=>XLXN_18);
   
--   XLXI_16 : INV
--      port map (I=>x2,
--                O=>XLXN_19);
   
--   XLXI_17 : INV
--      port map (I=>x3,
--                O=>XLXN_20);
   
--   XLXI_18 : INV
--      port map (I=>x1,
--                O=>XLXN_21);
   
--   XLXI_19 : INV
--      port map (I=>x2,
--                O=>XLXN_22);
   
--   XLXI_20 : INV
--      port map (I=>x3,
--                O=>XLXN_23);
   
--   XLXI_21 : INV
--      port map (I=>x0,
--                O=>XLXN_24);
   
--   XLXI_22 : INV
--      port map (I=>x1,
--                O=>XLXN_25);
   
--   XLXI_23 : INV
--      port map (I=>x2,
--                O=>XLXN_26);
   
--   XLXI_24 : INV
--      port map (I=>x3,
--                O=>XLXN_27);
   
--   XLXI_25 : AND6_HXILINX_lab4_seven_segment_display
--      port map (I0=>XLXN_1,
--                I1=>XLXN_2,
--                I2=>XLXN_3,
--                I3=>XLXN_4,
--                I4=>XLXN_5,
--                I5=>XLXN_7,
--                O=>b);
   
--end BEHAVIORAL;



--library ieee;
--use ieee.std_logic_1164.ALL;
--use ieee.numeric_std.ALL;
--library UNISIM;
--use UNISIM.Vcomponents.ALL;

--entity a_MUSER_lab4_seven_segment_display is
--   port ( x0 : in    std_logic; 
--          x1 : in    std_logic; 
--          x2 : in    std_logic; 
--          x3 : in    std_logic; 
--          a  : out   std_logic);
--end a_MUSER_lab4_seven_segment_display;

--architecture BEHAVIORAL of a_MUSER_lab4_seven_segment_display is
--   attribute BOX_TYPE   : string ;
--   signal XLXN_3  : std_logic;
--   signal XLXN_4  : std_logic;
--   signal XLXN_5  : std_logic;
--   signal XLXN_6  : std_logic;
--   signal XLXN_11 : std_logic;
--   signal XLXN_12 : std_logic;
--   signal XLXN_13 : std_logic;
--   signal XLXN_14 : std_logic;
--   signal XLXN_15 : std_logic;
--   signal XLXN_16 : std_logic;
--   signal XLXN_17 : std_logic;
--   signal XLXN_18 : std_logic;
--   component OR4
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             I2 : in    std_logic; 
--             I3 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
--   component INV
--      port ( I : in    std_logic; 
--             O : out   std_logic);
--   end component;
--   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
--   component AND4
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             I2 : in    std_logic; 
--             I3 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
--begin
--   XLXI_2 : OR4
--      port map (I0=>x3,
--                I1=>x2,
--                I2=>x1,
--                I3=>XLXN_11,
--                O=>XLXN_3);
   
--   XLXI_3 : OR4
--      port map (I0=>x3,
--                I1=>XLXN_12,
--                I2=>x1,
--                I3=>x0,
--                O=>XLXN_4);
   
--   XLXI_4 : OR4
--      port map (I0=>XLXN_15,
--                I1=>x2,
--                I2=>XLXN_14,
--                I3=>XLXN_13,
--                O=>XLXN_5);
   
--   XLXI_5 : OR4
--      port map (I0=>XLXN_18,
--                I1=>XLXN_17,
--                I2=>x1,
--                I3=>XLXN_16,
--                O=>XLXN_6);
   
--   XLXI_7 : INV
--      port map (I=>x0,
--                O=>XLXN_11);
   
--   XLXI_8 : INV
--      port map (I=>x2,
--                O=>XLXN_12);
   
--   XLXI_9 : INV
--      port map (I=>x0,
--                O=>XLXN_13);
   
--   XLXI_10 : INV
--      port map (I=>x1,
--                O=>XLXN_14);
   
--   XLXI_12 : INV
--      port map (I=>x3,
--                O=>XLXN_15);
   
--   XLXI_13 : INV
--      port map (I=>x0,
--                O=>XLXN_16);
   
--   XLXI_14 : INV
--      port map (I=>x2,
--                O=>XLXN_17);
   
--   XLXI_15 : INV
--      port map (I=>x3,
--                O=>XLXN_18);
   
--   XLXI_16 : AND4
--      port map (I0=>XLXN_6,
--                I1=>XLXN_5,
--                I2=>XLXN_4,
--                I3=>XLXN_3,
--                O=>a);
   
--end BEHAVIORAL;



--library ieee;
--use ieee.std_logic_1164.ALL;
--use ieee.numeric_std.ALL;
--library UNISIM;
--use UNISIM.Vcomponents.ALL;

--entity cathode_selector_MUSER_lab4_seven_segment_display is
--   port ( x0      : in    std_logic; 
--          x1      : in    std_logic; 
--          x2      : in    std_logic; 
--          x3      : in    std_logic; 
--          cathode : out   std_logic_vector (6 downto 0));
--end cathode_selector_MUSER_lab4_seven_segment_display;

--architecture BEHAVIORAL of cathode_selector_MUSER_lab4_seven_segment_display is
--   attribute BOX_TYPE   : string ;
--   signal XLXN_48 : std_logic;
--   signal XLXN_49 : std_logic;
--   signal XLXN_50 : std_logic;
--   signal XLXN_51 : std_logic;
--   signal XLXN_52 : std_logic;
--   signal XLXN_53 : std_logic;
--   signal XLXN_54 : std_logic;
--   component a_MUSER_lab4_seven_segment_display
--      port ( a  : out   std_logic; 
--             x0 : in    std_logic; 
--             x1 : in    std_logic; 
--             x2 : in    std_logic; 
--             x3 : in    std_logic);
--   end component;
   
--   component b_MUSER_lab4_seven_segment_display
--      port ( b  : out   std_logic; 
--             x0 : in    std_logic; 
--             x1 : in    std_logic; 
--             x2 : in    std_logic; 
--             x3 : in    std_logic);
--   end component;
   
--   component c_MUSER_lab4_seven_segment_display
--      port ( c  : out   std_logic; 
--             x0 : in    std_logic; 
--             x1 : in    std_logic; 
--             x2 : in    std_logic; 
--             x3 : in    std_logic);
--   end component;
   
--   component d_MUSER_lab4_seven_segment_display
--      port ( d  : out   std_logic; 
--             x0 : in    std_logic; 
--             x1 : in    std_logic; 
--             x2 : in    std_logic; 
--             x3 : in    std_logic);
--   end component;
   
--   component e_MUSER_lab4_seven_segment_display
--      port ( e  : out   std_logic; 
--             x0 : in    std_logic; 
--             x1 : in    std_logic; 
--             x2 : in    std_logic; 
--             x3 : in    std_logic);
--   end component;
   
--   component f_MUSER_lab4_seven_segment_display
--      port ( f  : out   std_logic; 
--             x0 : in    std_logic; 
--             x1 : in    std_logic; 
--             x2 : in    std_logic; 
--             x3 : in    std_logic);
--   end component;
   
--   component g_MUSER_lab4_seven_segment_display
--      port ( g  : out   std_logic; 
--             x0 : in    std_logic; 
--             x1 : in    std_logic; 
--             x2 : in    std_logic; 
--             x3 : in    std_logic);
--   end component;
   
--   component INV
--      port ( I : in    std_logic; 
--             O : out   std_logic);
--   end component;
--   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
--begin
--   XLXI_1 : a_MUSER_lab4_seven_segment_display
--      port map (x0=>x0,
--                x1=>x1,
--                x2=>x2,
--                x3=>x3,
--                a=>XLXN_48);
   
--   XLXI_2 : b_MUSER_lab4_seven_segment_display
--      port map (x0=>x0,
--                x1=>x1,
--                x2=>x2,
--                x3=>x3,
--                b=>XLXN_49);
   
--   XLXI_3 : c_MUSER_lab4_seven_segment_display
--      port map (x0=>x0,
--                x1=>x1,
--                x2=>x2,
--                x3=>x3,
--                c=>XLXN_50);
   
--   XLXI_4 : d_MUSER_lab4_seven_segment_display
--      port map (x0=>x0,
--                x1=>x1,
--                x2=>x2,
--                x3=>x3,
--                d=>XLXN_51);
   
--   XLXI_5 : e_MUSER_lab4_seven_segment_display
--      port map (x0=>x0,
--                x1=>x1,
--                x2=>x2,
--                x3=>x3,
--                e=>XLXN_52);
   
--   XLXI_6 : f_MUSER_lab4_seven_segment_display
--      port map (x0=>x0,
--                x1=>x1,
--                x2=>x2,
--                x3=>x3,
--                f=>XLXN_53);
   
--   XLXI_7 : g_MUSER_lab4_seven_segment_display
--      port map (x0=>x0,
--                x1=>x1,
--                x2=>x2,
--                x3=>x3,
--                g=>XLXN_54);
   
--   XLXI_8 : INV
--      port map (I=>XLXN_48,
--                O=>cathode(0));
   
--   XLXI_9 : INV
--      port map (I=>XLXN_49,
--                O=>cathode(1));
   
--   XLXI_10 : INV
--      port map (I=>XLXN_50,
--                O=>cathode(2));
   
--   XLXI_11 : INV
--      port map (I=>XLXN_51,
--                O=>cathode(3));
   
--   XLXI_12 : INV
--      port map (I=>XLXN_52,
--                O=>cathode(4));
   
--   XLXI_13 : INV
--      port map (I=>XLXN_53,
--                O=>cathode(5));
   
--   XLXI_14 : INV
--      port map (I=>XLXN_54,
--                O=>cathode(6));
   
--end BEHAVIORAL;



--library ieee;
--use ieee.std_logic_1164.ALL;
--use ieee.numeric_std.ALL;
--library UNISIM;
--use UNISIM.Vcomponents.ALL;

--entity dpacket_MUSER_lab4_seven_segment_display is
--   port ( x : in    std_logic; 
--          y : out   std_logic);
--end dpacket_MUSER_lab4_seven_segment_display;

--architecture BEHAVIORAL of dpacket_MUSER_lab4_seven_segment_display is
--   attribute BOX_TYPE   : string ;
--   signal XLXN_1  : std_logic;
--   signal XLXN_2  : std_logic;
--   signal XLXN_3  : std_logic;
--   signal XLXN_4  : std_logic;
--   signal XLXN_5  : std_logic;
--   signal XLXN_6  : std_logic;
--   signal XLXN_7  : std_logic;
--   signal XLXN_10 : std_logic;
--   signal XLXN_11 : std_logic;
--   signal XLXN_12 : std_logic;
--   signal XLXN_13 : std_logic;
--   signal XLXN_14 : std_logic;
--   signal XLXN_15 : std_logic;
--   signal XLXN_16 : std_logic;
--   signal XLXN_17 : std_logic;
--   signal XLXN_18 : std_logic;
--   signal XLXN_19 : std_logic;
--   signal XLXN_20 : std_logic;
--   signal XLXN_21 : std_logic;
--   signal XLXN_22 : std_logic;
--   signal XLXN_23 : std_logic;
--   signal XLXN_24 : std_logic;
--   signal XLXN_26 : std_logic;
--   signal XLXN_27 : std_logic;
--   signal XLXN_28 : std_logic;
--   signal XLXN_30 : std_logic;
--   signal XLXN_32 : std_logic;
--   signal XLXN_34 : std_logic;
--   signal XLXN_36 : std_logic;
--   signal XLXN_38 : std_logic;
--   signal XLXN_40 : std_logic;
--   signal XLXN_42 : std_logic;
--   signal XLXN_43 : std_logic;
--   signal y_DUMMY : std_logic;
--   component FD
--      generic( INIT : bit :=  '0');
--      port ( C : in    std_logic; 
--             D : in    std_logic; 
--             Q : out   std_logic);
--   end component;
--   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
--   component INV
--      port ( I : in    std_logic; 
--             O : out   std_logic);
--   end component;
--   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
--begin
--   y <= y_DUMMY;
--   XLXI_2 : FD
--      port map (C=>x,
--                D=>XLXN_17,
--                Q=>XLXN_1);
   
--   XLXI_3 : FD
--      port map (C=>XLXN_1,
--                D=>XLXN_18,
--                Q=>XLXN_2);
   
--   XLXI_4 : FD
--      port map (C=>XLXN_2,
--                D=>XLXN_19,
--                Q=>XLXN_3);
   
--   XLXI_5 : FD
--      port map (C=>XLXN_3,
--                D=>XLXN_20,
--                Q=>XLXN_4);
   
--   XLXI_6 : FD
--      port map (C=>XLXN_4,
--                D=>XLXN_21,
--                Q=>XLXN_5);
   
--   XLXI_7 : FD
--      port map (C=>XLXN_5,
--                D=>XLXN_22,
--                Q=>XLXN_6);
   
--   XLXI_8 : FD
--      port map (C=>XLXN_6,
--                D=>XLXN_23,
--                Q=>XLXN_7);
   
--   XLXI_11 : FD
--      port map (C=>XLXN_7,
--                D=>XLXN_24,
--                Q=>XLXN_26);
   
--   XLXI_12 : FD
--      port map (C=>XLXN_26,
--                D=>XLXN_28,
--                Q=>XLXN_27);
   
--   XLXI_13 : FD
--      port map (C=>XLXN_27,
--                D=>XLXN_30,
--                Q=>XLXN_10);
   
--   XLXI_14 : FD
--      port map (C=>XLXN_10,
--                D=>XLXN_32,
--                Q=>XLXN_11);
   
--   XLXI_15 : FD
--      port map (C=>XLXN_11,
--                D=>XLXN_34,
--                Q=>XLXN_12);
   
--   XLXI_16 : FD
--      port map (C=>XLXN_12,
--                D=>XLXN_36,
--                Q=>XLXN_13);
   
--   XLXI_17 : FD
--      port map (C=>XLXN_13,
--                D=>XLXN_38,
--                Q=>XLXN_14);
   
--   XLXI_18 : FD
--      port map (C=>XLXN_14,
--                D=>XLXN_40,
--                Q=>XLXN_15);
   
--   XLXI_19 : FD
--      port map (C=>XLXN_15,
--                D=>XLXN_42,
--                Q=>XLXN_16);
   
--   XLXI_20 : FD
--      port map (C=>XLXN_16,
--                D=>XLXN_43,
--                Q=>y_DUMMY);
   
--   XLXI_21 : INV
--      port map (I=>XLXN_1,
--                O=>XLXN_17);
   
--   XLXI_22 : INV
--      port map (I=>XLXN_2,
--                O=>XLXN_18);
   
--   XLXI_23 : INV
--      port map (I=>XLXN_3,
--                O=>XLXN_19);
   
--   XLXI_24 : INV
--      port map (I=>XLXN_4,
--                O=>XLXN_20);
   
--   XLXI_25 : INV
--      port map (I=>XLXN_5,
--                O=>XLXN_21);
   
--   XLXI_26 : INV
--      port map (I=>XLXN_6,
--                O=>XLXN_22);
   
--   XLXI_27 : INV
--      port map (I=>XLXN_7,
--                O=>XLXN_23);
   
--   XLXI_28 : INV
--      port map (I=>XLXN_26,
--                O=>XLXN_24);
   
--   XLXI_29 : INV
--      port map (I=>XLXN_27,
--                O=>XLXN_28);
   
--   XLXI_30 : INV
--      port map (I=>XLXN_10,
--                O=>XLXN_30);
   
--   XLXI_31 : INV
--      port map (I=>XLXN_11,
--                O=>XLXN_32);
   
--   XLXI_32 : INV
--      port map (I=>XLXN_12,
--                O=>XLXN_34);
   
--   XLXI_33 : INV
--      port map (I=>XLXN_13,
--                O=>XLXN_36);
   
--   XLXI_34 : INV
--      port map (I=>XLXN_14,
--                O=>XLXN_38);
   
--   XLXI_35 : INV
--      port map (I=>XLXN_15,
--                O=>XLXN_40);
   
--   XLXI_36 : INV
--      port map (I=>XLXN_16,
--                O=>XLXN_42);
   
--   XLXI_37 : INV
--      port map (I=>y_DUMMY,
--                O=>XLXN_43);
   
--end BEHAVIORAL;



--library ieee;
--use ieee.std_logic_1164.ALL;
--use ieee.numeric_std.ALL;
--library UNISIM;
--use UNISIM.Vcomponents.ALL;

--entity anode_clock_MUSER_lab4_seven_segment_display is
--   port ( clk        : in    std_logic; 
--          pushbutton : in    std_logic; 
--          anode      : out   std_logic_vector (3 downto 0));
--end anode_clock_MUSER_lab4_seven_segment_display;

--architecture BEHAVIORAL of anode_clock_MUSER_lab4_seven_segment_display is
--   attribute BOX_TYPE   : string ;
--   attribute HU_SET     : string ;
--   signal XLXN_2     : std_logic;
--   signal XLXN_3     : std_logic;
--   signal XLXN_4     : std_logic;
--   signal XLXN_50    : std_logic;
--   signal XLXN_52    : std_logic;
--   signal XLXN_53    : std_logic;
--   signal XLXN_54    : std_logic;
--   signal XLXN_55    : std_logic;
--   signal XLXN_58    : std_logic;
--   component AND2
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
--   component dpacket_MUSER_lab4_seven_segment_display
--      port ( x : in    std_logic; 
--             y : out   std_logic);
--   end component;
   
--   component OR2
--      port ( I0 : in    std_logic; 
--             I1 : in    std_logic; 
--             O  : out   std_logic);
--   end component;
--   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
--   component INV
--      port ( I : in    std_logic; 
--             O : out   std_logic);
--   end component;
--   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
--   component D2_4E_HXILINX_lab4_seven_segment_display
--      port ( A0 : in    std_logic; 
--             A1 : in    std_logic; 
--             E  : in    std_logic; 
--             D0 : out   std_logic; 
--             D1 : out   std_logic; 
--             D2 : out   std_logic; 
--             D3 : out   std_logic);
--   end component;
   
--   component FTC_HXILINX_lab4_seven_segment_display
--      generic( INIT : bit :=  '0');
--      port ( C   : in    std_logic; 
--             CLR : in    std_logic; 
--             T   : in    std_logic; 
--             Q   : out   std_logic);
--   end component;
   
--   attribute HU_SET of XLXI_16 : label is "XLXI_16_2";
--   attribute HU_SET of XLXI_22 : label is "XLXI_22_3";
--   attribute HU_SET of XLXI_23 : label is "XLXI_23_4";
--begin
--   XLXN_50 <= '0';
--   XLXN_53 <= '1';
--   XLXI_1 : AND2
--      port map (I0=>pushbutton,
--                I1=>clk,
--                O=>XLXN_3);
   
--   XLXI_2 : AND2
--      port map (I0=>XLXN_4,
--                I1=>XLXN_58,
--                O=>XLXN_2);
   
--   XLXI_3 : dpacket_MUSER_lab4_seven_segment_display
--      port map (x=>clk,
--                y=>XLXN_58);
   
--   XLXI_4 : OR2
--      port map (I0=>XLXN_2,
--                I1=>XLXN_3,
--                O=>XLXN_52);
   
--   XLXI_5 : INV
--      port map (I=>pushbutton,
--                O=>XLXN_4);
   
--   XLXI_16 : D2_4E_HXILINX_lab4_seven_segment_display
--      port map (A0=>XLXN_54,
--                A1=>XLXN_55,
--                E=>XLXN_53,
--                D0=>anode(0),
--                D1=>anode(1),
--                D2=>anode(2),
--                D3=>anode(3));
   
--   XLXI_22 : FTC_HXILINX_lab4_seven_segment_display
--      port map (C=>XLXN_52,
--                CLR=>XLXN_50,
--                T=>XLXN_53,
--                Q=>XLXN_54);
   
--   XLXI_23 : FTC_HXILINX_lab4_seven_segment_display
--      port map (C=>XLXN_52,
--                CLR=>XLXN_50,
--                T=>XLXN_54,
--                Q=>XLXN_55);
   
--end BEHAVIORAL;



--library ieee;
--use ieee.std_logic_1164.ALL;
--use ieee.numeric_std.ALL;
--library UNISIM;
--use UNISIM.Vcomponents.ALL;

--entity lab4_seven_segment_display is
--   port ( b          : in    std_logic_vector (15 downto 0); 
--          clk        : in    std_logic; 
--          pushbutton : in    std_logic; 
--          anode      : out   std_logic_vector (3 downto 0); 
--          cathode    : out   std_logic_vector (6 downto 0));
--end lab4_seven_segment_display;

--architecture BEHAVIORAL of lab4_seven_segment_display is
--   attribute BOX_TYPE   : string ;
--   signal a          : std_logic_vector (3 downto 0);
--   signal XLXN_24    : std_logic;
--   signal XLXN_25    : std_logic;
--   signal XLXN_26    : std_logic;
--   signal XLXN_27    : std_logic;
--   component anode_clock_MUSER_lab4_seven_segment_display
--      port ( anode      : out   std_logic_vector (3 downto 0); 
--             clk        : in    std_logic; 
--             pushbutton : in    std_logic);
--   end component;
   
--   component cathode_selector_MUSER_lab4_seven_segment_display
--      port ( cathode : out   std_logic_vector (6 downto 0); 
--             x0      : in    std_logic; 
--             x1      : in    std_logic; 
--             x2      : in    std_logic; 
--             x3      : in    std_logic);
--   end component;
   
--   component INV
--      port ( I : in    std_logic; 
--             O : out   std_logic);
--   end component;
--   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
--   component select4_MUSER_lab4_seven_segment_display
--      port ( b     : in    std_logic_vector (15 downto 0); 
--             anode : in    std_logic_vector (3 downto 0); 
--             out0  : out   std_logic; 
--             out1  : out   std_logic; 
--             out2  : out   std_logic; 
--             out3  : out   std_logic);
--   end component;
   
--begin
--   XLXI_3 : anode_clock_MUSER_lab4_seven_segment_display
--      port map (clk=>clk,
--                pushbutton=>pushbutton,
--                anode(3 downto 0)=>a(3 downto 0));
   
--   XLXI_4 : cathode_selector_MUSER_lab4_seven_segment_display
--      port map (x0=>XLXN_24,
--                x1=>XLXN_25,
--                x2=>XLXN_26,
--                x3=>XLXN_27,
--                cathode(6 downto 0)=>cathode(6 downto 0));
   
--   XLXI_5 : INV
--      port map (I=>a(0),
--                O=>anode(0));
   
--   XLXI_6 : INV
--      port map (I=>a(1),
--                O=>anode(1));
   
--   XLXI_7 : INV
--      port map (I=>a(2),
--                O=>anode(2));
   
--   XLXI_8 : INV
--      port map (I=>a(3),
--                O=>anode(3));
   
--   XLXI_10 : select4_MUSER_lab4_seven_segment_display
--      port map (anode(3 downto 0)=>a(3 downto 0),
--                b(15 downto 0)=>b(15 downto 0),
--                out0=>XLXN_24,
--                out1=>XLXN_25,
--                out2=>XLXN_26,
--                out3=>XLXN_27);
   
--end BEHAVIORAL;

-----------------------------------------------------------------------------------------------------------------------------------