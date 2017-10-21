library IEEE;
use IEEE.STD_LOGIC_1164.all;

package enum_package is

    type request_status is (reqUp, reqDown, idle);

end enum_package;

package body enum_package is

end enum_package;	

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting	
--------------------------------------------------------------------------------auxillary_entities--------------------------------------------------------------------------------------------------
library work;
use work.enum_package.all;
entity request_handler is
port(
	clk : in std_logic;
	l1_status : in std_logic_vector(1 downto 0);
	l1_currentfloor : in std_logic_vector(1 downto 0);
	l2_status : in std_logic_vector(1 downto 0);
	l2_currentfloor :in std_logic_vector(1 downto 0);
	up_request, down_request : in std_logic_vector(3 downto 0);
	up_request_indicator, down_request_indicator : out std_logic_vector(3 downto 0);
	send1, send2 : out std_logic_vector(3 downto 0);
	reset : in std_logic
	--l1_request_status, l2_request_status : in request_status
	);
end entity;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting

architecture request_handler_arc of request_handler is

	signal up_request_register, down_request_register : std_logic_vector(3 downto 0);
	signal upReqUp1, downReqDown1, downReqUp1, upReqDown1 : std_logic_vector(3 downto 0);
	signal upReqUp2, downReqDown2, downReqUp2, upReqDown2 : std_logic_vector(3 downto 0);
	signal prev_up_request, prev_down_request : std_logic_vector(3 downto 0);
	type req is (reqUp, reqDown, idle);
	signal status1, status2 : req;
	signal prev_reset : std_logic;

	signal l1_request_status, l2_request_status : request_status;
	
begin 


	l1_request_status <= idle;
	l2_request_status <= idle;

	process( clk, reset, l1_status, l2_status, l1_currentfloor, l2_currentfloor )
	begin
	   	
		if (reset = '1') then
              up_request_register <= "0000";
              down_request_register <= "0000";
              send1 <= "0000";
              send2 <= "0000";
        else
			if (up_request(0) = '1') then
				up_request_register(0) <= '1';
			end if;
			if (up_request(1) = '1') then
				up_request_register(1) <= '1';
			end if;
			if (up_request(2) = '1') then
				up_request_register(2) <= '1';
			end if;
			if (down_request(1) = '1') then
				down_request_register(1) <= '1';
			end if;
			if (down_request(2) = '1') then
				down_request_register(2) <= '1';
			end if;
			if (down_request(3) = '1') then
				down_request_register(3) <= '1';
			end if;
		end if;
        
		if((down_request(1)/='1') and (down_request(2)/='1') and (down_request(3)/='1') and (up_request(0)/='1') and (up_request(1)/='1') and (up_request(2)/='1') and (reset /= '1')) then

			if (l1_request_status = reqUp) then
				send1 <= upReqUp1;
			elsif (l1_request_status = reqDown) then
				send1 <= downReqDown1;	
			elsif (l1_request_status=idle and l2_request_status/=idle) then
				if (upReqUp1/="0000") then
					send1 <= upReqUp1;
				elsif(upReqDown1/="0000") then
					send1 <= upReqDown1;
				elsif(downReqUp1/="0000") then
					send1 <= downReqUp1;
				else
					send1 <= downReqDown1;
				end if;
			elsif (l1_request_status= idle and l2_request_status=idle) then
				if (upReqUp1/="0000") then
					send1 <= upReqUp1;
				elsif(upReqDown1/="0000") then
					send1 <= upReqDown1;
				elsif(downReqUp1/="0000") then
					send1 <= downReqUp1;
				else
					send1 <= downReqDown1;
				end if;			
			end if;

			if (l2_request_status = reqUp) then
				send2 <= upReqUp2;
			elsif (l2_request_status = reqDown) then
				send2 <= downReqDown2;
			elsif (l2_request_status=idle and l1_request_status/=idle) then
				if (upReqUp2/="0000") then
					send2 <= upReqUp2;
				elsif(upReqDown2/="0000") then
					send2 <= upReqDown2;
				elsif(downReqUp2/="0000") then
					send2 <= downReqUp2;
				else
					send2 <= downReqDown2;
				end if;
			end if;

	-- when door opens remove the request from the registers
			if (l1_currentfloor="00" and l1_status="11") then
				up_request_register(0) <= '0';
				down_request_register(0) <= '0';
			elsif (l1_currentfloor="01" and l1_status="11") then
				up_request_register(1) <= '0';
				down_request_register(1) <= '0';
			elsif (l1_currentfloor="10" and l1_status="11") then
				up_request_register(2) <= '0';
				down_request_register(2) <= '0';
			elsif(l1_currentfloor="11" and l1_status="11") then
				up_request_register(3) <= '0';
				down_request_register(3) <= '0';
			elsif (l2_currentfloor="00" and l2_status="11") then
				up_request_register(0) <= '0';
				down_request_register(0) <= '0';
			elsif (l2_currentfloor="01" and l2_status="11") then
				up_request_register(1) <= '0';
				down_request_register(1) <= '0';
			elsif (l2_currentfloor="10" and l2_status="11") then
				up_request_register(2) <= '0';
				down_request_register(2) <= '0';
			elsif(l2_currentfloor="11" and l2_status="11") then
				up_request_register(3) <= '0';
				down_request_register(3) <= '0';
			end if;
    		end if;
		
	end process ; -- reset_all

	-- set indicators
	
	identifier : process( up_request_register, down_request_register )
		begin
			up_request_indicator <= up_request_register;
			down_request_indicator <= down_request_register;	
		end process ; -- identifier	

	classify_requests : process(clk, up_request_register, down_request_register, l1_currentfloor, l2_currentfloor, l1_request_status, l2_request_status)
	begin
		
		if (l1_currentfloor = "00") then
			upReqUp1	 <= up_request_register(3 downto 1) & "0";   
			upReqDown1 	 <= down_request_register(3 downto 1) & "0";
			downReqUp1 	 <= "000" & up_request_register(0);
			downReqDown1 <= "0000";	
		
		elsif (l1_currentfloor = "01") then
			upReqUp1 	 <= up_request_register(3 downto 2) & "00";
			upReqDown1 	 <= down_request_register(3 downto 2) & "00";
			downReqDown1 <= "00" & down_request_register(1 downto 0);
			downReqUp1 	 <= "00" & up_request_register(1 downto 0);

		elsif (l1_currentfloor = "10") then
			upReqUp1	 <= "0000";
			upReqDown1 	 <= down_request_register(3) & "000";
			downReqDown1 <= "0" & down_request_register(2 downto 0);
			downReqUp1   <= "0" & up_request_register(2 downto 0);
			
		elsif (l1_currentfloor = "11") then
			upReqUp1 	 <= "0000";
			upReqDown1 	 <= "0000";
			downReqUp1   <= up_request_register;
			downReqDown1 <= down_request_register;
		
		end if;

		if (l2_currentfloor = "00") then
			upReqUp2 	 <= up_request_register(3 downto 1) & "0";   
			upReqDown2 	 <= down_request_register(3 downto 1) & "0";
			downReqUp2   <= "000" & up_request_register(0);
			downReqDown2 <= "0000";
		
		elsif (l2_currentfloor = "01") then
			upReqUp2 	 <= up_request_register(3 downto 2) & "00";
			upReqDown2 	 <= down_request_register(3 downto 2) & "00";
			downReqDown2 <= "00" & down_request_register(1 downto 0);
			downReqUp2   <= "00" & up_request_register(1 downto 0);

		elsif (l2_currentfloor = "10") then
			upReqUp2 	 <= "0000";
			upReqDown2   <= down_request_register(3) & "000";
			downReqDown2 <= "0" & down_request_register(2 downto 0);
			downReqUp2   <= "0" & up_request_register(2 downto 0);
			
		elsif (l2_currentfloor = "11") then
			upReqUp2 	 <= "0000";
			upReqDown2   <= "0000";
			downReqUp2   <= up_request_register;
			downReqDown2 <= down_request_register;
		
		end if;

	end process ; -- classify_requests

	
end request_handler_arc;
