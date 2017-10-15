library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-----------------------------------------------------------------------------------Main_entity------------------------------------------------------------------------------------------------------
entity lab8_elevator_control is
port(
	up_request,down_request : in std_logic_vector(3 downto 0); 
	up_request_indicator,down_request_indicator : out std_logic_vector(3 downto 0);
	reset,clk,sim_mode : in std_logic;
	cathode : out std_logic_vector(6 doento 0);
	anode : out std_logic_vector(3 doento 0);
	door_open,door_closed : in std_logic_vector(1 downto 0);  
	lift1_floor,lift2_floor : in std_logic_vector(3 downto 0);
	lift1_floor_indicator,lift2_floor_indicator : out std_logic_vector(3 downto 0)
);
end entity;


architecture arc of lab8_elevator_control is

component seven_segment_diplay
port(
	clk: in std_logic;
	l1_status :in std_logic_vector(1 downto 0);
	l1_floor :in std_logic_vector(1 downto 0);
	l2_status :in std_logic_vector(1 downto 0);
	l2_floor :in std_logic_vector(1 downto 0);
	anode : out std_logic_vector(3 downto 0);
	cathode : out std_logic_vector(6 downto 0)
);
end component;

component request_handler is
port(
	l1_status,l1_currentfloor,l2_status,l1_currentfloor :in std_logic_vector(1 downto 0);
	up_request,down_request : in std_logic_vector(3 downto 0);                               --UP/DOWN request buttons present at floors 0 to 4
	up_request_indicator,down_request_indicator : out std_logic_vector(3 downto 0);          --LED acknowledgement of buttons pressed by people waiting at floors to board the lift    
	send1,send2 : out std_logic_vector(1 downto 0);                                          --sending signals to lift1 and lift2 corresponding to request
	reset : in std_logic                                                                     --reset the system
	);
end component;

component lift1_controller is
port(
	received_request : in std_logic_vector(1 downto 0);        -- receiving request from request_handler
	lift1_floor : in std_logic_vector(3 downto 0);             --buttons pressed by passenger in lift1
	door_open : in std_logic;                                  --request to open door of lift1
	door_closed : in std_logic;                                --request to close door of lift 1
	lift1_floor_indicator : out std_logic_vector(3 downto 0);  --LED acknowlegement of request buttons pressed by passenger in lift1 
	l1_status :out std_logic_vector(1 downto 0);               --moving up(00)/moving down(01)/halted with door open(11)/close(10)
	l1_currentfloor : out std_logic_vector(1 downto 0)         --floor at which lift is present (in binary)
	);
end component;

component lift2_controller is
port(
	received_request : in std_logic_vector(1 downto 0);          ---- receiving request from request_handler
	lift2_floor : in std_logic_vector(3 downto 0);               --buttons pressed by passenger in lift2
	door_open : in std_logic;                                    --request to open door of lift2
	door_closed : in std_logic;                                  --request to close door of lift 2
	lift2_floor_indicator : out std_logic_vector(3 downto 0);    --LED acknowlegement of request buttons pressed by passenger in lift2 
	l2_status :out std_logic_vector(1 downto 0);                 --moving up(00)/moving down(01)/halted with door open(11)/close(10)
	l2_currentfloor : out std_logic_vector(1 downto 0)           --floor at which lift is present (in binary)
	);
end component;

signal l1_status,l2_status,l1_currentfloor,l2_currentfloor,s1,s2 : std_logic_vector(1 downto 0); -- signals which communicate the floor & status of the lifts and requests between different components. 
                                                                                  
begin

display: seven_segment_display
	port map(clk,l1_status,l1_floor,l2_status,l2_floor,anode,cathode);
req_handle: request_handler
	port map(l1_status,l1_currentfloor,l2_status,l2_currentfloor,up_request,down_request,up_request_indicator,down_request_indicator,s1,s2,reset);
l1_control: lift1_controller
	port map(s1,lift1_floor,door_open(0),door_closed(0),lift1_floor_indicator,l1_status,l1_currentfloor);
l2_control: lift2_controller
	port map(s2,lift2_floor,door_open(1),door_closed(1),lift2_floor_indicator,l2_status,l2_currentfloor);

end architecture;
----------------------------------------------------------------------------------------end_main_entity----------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------auxillary_entities--------------------------------------------------------------------------------------------------
entity request_handler is
port(
	lift1_status,l1_currentfloor,lift2_status,l1_currentfloor :in std_logic_vector(1 downto 0);
	up_request,down_request : in std_logic_vector(3 downto 0);
	up_request_indicator,down_request_indicator : out std_logic_vector(3 downto 0);
	send1,send2 : out std_logic_vector(1 downto 0);
	reset : in std_logic
	);
end entity;

entity lift1_controller is
port(
	received_request : in std_logic_vector(1 downto 0);
	lift1_floor : in std_logic_vector(3 downto 0);
	door_open : in std_logic;
	door_close : in std_logic;
	lift2_floor_indicator : out std_logic_vector(3 downto 0);
	lift1_status :out std_logic_vector(1 downto 0);
	l1_currentfloor : out std_logic_vector(1 downto 0)
	);
end entity;

entity lift2_controller is
port(
	received_request : in std_logic_vector(1 downto 0);
	lift2_floor : in std_logic_vector(3 downto 0);
	door_open : in std_logic;
	door_close : in std_logic;
	lift2_floor_indicator : out std_logic_vector(3 downto 0);
	lift2_status :out std_logic_vector(1 downto 0);
	l2_currentfloor : out std_logic_vector(1 downto 0)
	);
end entity;
-------------------------------------------------------------------------end_auxillary_entity------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------Seven_segment_display-----------------------------------------------------------------------------------------------------

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
signal flag : integer range 1 to 4 :=1 ;
signal cathode1,cathode2,cathode3,cathode4,cath : std_logic_vector (6 downto 0); 

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
with l1_status select 
cathode1<= "0111110" when "00",
           "0111101" when "01",
           "1001110" when "10",
           "0011101" when "11",
           "0000000" when others;
with l2_floor select
cathode4 <= "1111110" when "00",
		    "0110000" when "01",
		    "1101101" when "10",
		    "1111001" when "11",
		    "0000000" when others;s


process(clk)
    variable counter : integer range 0 to 10000;
    begin
        if ((clk'event) and (clk='1')) then
            if(counter >= 10000) then
                counter := 0;
                if(clock = '0') then
                    clock <= '1';
                else
                    clock <= '0';
                end if;
            end if;
            counter := counter + 1;
        end if;
    end process;		    

process(clock)
begin

if(clock='1' and clock'event) then
    if flag=4 then flag <=1; 
    else flag <= flag+1 ;
    end if;

    case flag is
    when 1 => anode <= "0111";
            cath <= cathode1;
    when 2 => anode <= "1011";
            cath <= cathode2;
    when 3 => anode <= "1101";
            cath <= cathode3;
    when 4 => anode <= "1110";
            cath <= cathode4;
    when others => anode <= "1111";
    end case; 
end if;                  
end process;

cathode <= not(cath);         
         
end architecture ;

----------------------------------------------------------------------------------end ssd------------------------------------------------------------------------------------------------------------------

