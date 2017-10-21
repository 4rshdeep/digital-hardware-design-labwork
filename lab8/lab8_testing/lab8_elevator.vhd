library IEEE;
use IEEE.STD_LOGIC_1164.all;

package enum_package is

    type request_status is (reqUp, reqDown, idle);

end enum_package;

package body enum_package is

end enum_package;	



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
library work;
use work.enum_package.all;
-----------------------------------------------------------------------------------Main_entity------------------------------------------------------------------------------------------------------
entity lab8_elevator_control is
port(
	up_request, down_request : in std_logic_vector(3 downto 0); 
	up_request_indicator, down_request_indicator : out std_logic_vector(3 downto 0);
	reset, clk : in std_logic;
	cathode : out std_logic_vector(6 downto 0);
	anode : out std_logic_vector(3 downto 0);
	door_open, door_close : in std_logic_vector(1 downto 0);  
	lift1_floor, lift2_floor : in std_logic_vector(3 downto 0);
	lift1_floor_indicator, lift2_floor_indicator : out std_logic_vector(3 downto 0)
);
end entity;

library work;
use work.enum_package.all;
architecture arc of lab8_elevator_control is

component seven_segment_display
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
	clk : in std_logic;
	l1_status : in std_logic_vector(1 downto 0);
	l1_currentfloor : in std_logic_vector(1 downto 0);
	l2_status : in std_logic_vector(1 downto 0);
	l2_currentfloor : in std_logic_vector(1 downto 0);
	up_request, down_request : in std_logic_vector(3 downto 0);                               --UP/DOWN request buttons present at floors 0 to 4
	up_request_indicator, down_request_indicator : out std_logic_vector(3 downto 0);          --LED acknowledgement of buttons pressed by people waiting at floors to board the lift    
	send1, send2 : out std_logic_vector(3 downto 0);                                          --sending signals to lift1 and lift2 corresponding to request
	reset : in std_logic; --reset the system
	l1_request_status, l2_request_status : in request_status
	);
end component;

component lift1_controller is
port(
	clk : in std_logic;
	reset : in std_logic;
	received_request : in std_logic_vector(3 downto 0);        -- receiving request from request_handler
	lift1_floor : in std_logic_vector(3 downto 0);             --buttons pressed by passenger in lift1
	door_open : in std_logic;                                  --request to open door of lift1
	door_close : in std_logic;                                --request to close door of lift 1
	lift1_floor_indicator : out std_logic_vector(3 downto 0);  --LED acknowlegement of request buttons pressed by passenger in lift1 
	l1_status :out std_logic_vector(1 downto 0);               --moving up(00)/moving down(01)/halted with door open(11)/close(10)
	l1_currentfloor : out std_logic_vector(1 downto 0);        --floor at which lift is present (in binary)
	r_status : out request_status
	);
end component;

component lift2_controller is
port(
	clk : in std_logic;
	reset : in std_logic;
	received_request : in std_logic_vector(3 downto 0);          ---- receiving request from request_handler
	lift2_floor : in std_logic_vector(3 downto 0);               --buttons pressed by passenger in lift2
	door_open : in std_logic;                                    --request to open door of lift2
	door_close : in std_logic;                                  --request to close door of lift 2
	lift2_floor_indicator : out std_logic_vector(3 downto 0);    --LED acknowlegement of request buttons pressed by passenger in lift2 
	l2_status :out std_logic_vector(1 downto 0);                 --moving up(00)/moving down(01)/halted with door open(11)/close(10)
	l2_currentfloor : out std_logic_vector(1 downto 0);           --floor at which lift is present (in binary)
	r_status : out request_status
	);
end component;

signal l1_currentfloor, l1_status, l2_status, l2_currentfloor : std_logic_vector(1 downto 0); -- signals which communicate the floor & status of the lifts and requests between different components. 
signal s1, s2 : std_logic_vector(3 downto 0);
signal l1_request_status, l2_request_status : request_status;

begin

display: seven_segment_display
	port map(clk, l1_status, l1_currentfloor, l2_status, l2_currentfloor, anode, cathode);
req_handle: request_handler
	port map(clk, l1_status, l1_currentfloor, l2_status, l2_currentfloor, up_request, down_request, up_request_indicator, down_request_indicator, s1, s2, reset, l1_request_status, l2_request_status);
l1_control: lift1_controller
	port map(clk, reset, s1, lift1_floor, door_open(0), door_close(0), lift1_floor_indicator, l1_status, l1_currentfloor, l1_request_status);
l2_control: lift2_controller
	port map(clk, reset, s2, lift2_floor, door_open(1), door_close(1), lift2_floor_indicator, l2_status, l2_currentfloor, l2_request_status);

end architecture;
----------------------------------------------------------------------------------------end_main_entity----------------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
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
	reset : in std_logic;
	l1_request_status, l2_request_status : in request_status
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

begin 

	process( clk, reset, l1_status, l2_status, l1_currentfloor, l2_currentfloor )
	begin
		if (clk = '1' and clk'event) then
			if (reset = '1') then
	              up_request_register <= "0000";
	              down_request_register <= "0000";
	              send1 <= "0000";
	              send2 <= "0000";
	        else
				if (up_request(0) = '1') then
					up_request_register(0) <= '1';
				elsif (l1_currentfloor="00" and l1_status="11") then
					up_request_register(0) <= '0';
				elsif (l2_currentfloor="00" and l2_status="11") then
					up_request_register(0) <= '0';
				end if;

				if (up_request(1) = '1') then
					up_request_register(1) <= '1';
				elsif (l1_currentfloor="01" and l1_status="11") then
					up_request_register(1) <= '0';
				elsif (l2_currentfloor="01" and l2_status="11") then
					up_request_register(1) <= '0';
				end if;
				
				if (up_request(2) = '1') then
					up_request_register(2) <= '1';
				elsif (l1_currentfloor="10" and l1_status="11") then
					up_request_register(2) <= '0';
				elsif (l2_currentfloor="10" and l2_status="11") then
					up_request_register(2) <= '0';
				end if;
				
				if (down_request(1) = '1') then
					down_request_register(1) <= '1';
				elsif (l1_currentfloor="01" and l1_status="11") then
					down_request_register(1) <= '0';
				elsif (l2_currentfloor="01" and l2_status="11") then
					down_request_register(1) <= '0';
				end if;
				
				if (down_request(2) = '1') then
					down_request_register(2) <= '1';
				elsif (l1_currentfloor="10" and l1_status="11") then
					down_request_register(2) <= '0';
				elsif (l2_currentfloor="10" and l2_status="11") then
					down_request_register(2) <= '0';
				end if;
				
				if (down_request(3) = '1') then
					down_request_register(3) <= '1';
				elsif(l1_currentfloor="11" and l1_status="11") then
					down_request_register(3) <= '0';
				elsif(l2_currentfloor="11" and l2_status="11") then
					down_request_register(3) <= '0';
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
				else
						send1 <= "0000";		
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
				else
						send2 <= "0000";
				end if;

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
	if (clk = '1' and clk'event) then
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
	end if;
	end process ; -- classify_requests

	
end request_handler_arc;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- f
library work;
use work.enum_package.all;

entity lift1_controller is
port(
	clk : in std_logic;
	reset : in std_logic;
	received_request : in std_logic_vector(3 downto 0);
	lift1_floor : in std_logic_vector(3 downto 0);
	door_open : in std_logic;
	door_close : in std_logic;
	lift1_floor_indicator : out std_logic_vector(3 downto 0);
	l1_status : out std_logic_vector(1 downto 0); -- mo
	l1_currentfloor : out std_logic_vector(1 downto 0);
	requests : out std_logic_vector(3 downto 0);
	test : out std_logic;
	r_status : out request_status
	);
end entity;

library work;
use work.enum_package.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting
use ieee.numeric_std.all;               -- for type conversions

architecture lift1_controller_arc of lift1_controller is

	type state is (moving_up, moving_down, door_op, door_cl, door_opening, door_closing, forced_close, forced_open, do_not_update);
	type direction_type is (none, up, down);
	signal status, next_status : state;
	signal currentfloor, next_floor : std_logic_vector(1 downto 0);
	signal lift_register : std_logic_vector(3 downto 0);
	signal combined_requests : std_logic_vector(3 downto 0);
	signal lift_status : request_status;
	signal start2sec : std_logic; 
	signal counter2sec : integer range 0 to 200000000;
	signal start1sec : std_logic; 
	signal counter1sec : integer range 0 to 100000000; 
	signal start0_5sec, start0_1sec : std_logic;
	signal counter0_5sec, counter0_1sec : integer range 0 to 200000000; 
	signal direction : direction_type;
	signal next_target_floor : std_logic_vector(1 downto 0);
	signal clear_counter : std_logic;
	signal update_open_status, update_close_status : std_logic;
	signal indicator : std_logic_vector(3 downto 0);

begin


	l1_currentfloor <= currentfloor;
	r_status 		<= lift_status;

	status_assigner : process( clk, status )
	begin
		if (status = moving_up) then
			l1_status <= "00";
		elsif (status = moving_down) then
			l1_status <= "01";
		elsif (status = door_op) then
			l1_status <= "11";
		elsif (status = door_cl)or(status = door_closing) then
			l1_status <= "10";
		end if;
	end process ; -- status


	lift1_floor_indicator <= indicator;
	requests 			  <= received_request;

	process(clk, reset, lift1_floor, received_request)
	begin
	if (clk = '1' and clk'event ) then

		 --combined_requests <= (lift_register or received_request);
		 --Let us first work without the received requests
		 -- change everything in lift register combined request did not work make common register lift_register
		if (reset ='1') then
			status     			  <= door_op;
			next_status 		  <= door_op;
			currentfloor 		  <= "00";
			lift_register 		  <= "0000";
			direction   		  <= none;
			indicator 		 	  <= "0000"; 
		else
			if (lift1_floor(0)    = '1' and currentfloor /= "00") then
				lift_register(0) <= '1';
				indicator(0) 	 <= '1';
			elsif (received_request(0) = '1' and currentfloor /= "00") then
				lift_register(0) <= '1';
			elsif (currentfloor = "00") then
				lift_register(0) 	<= '0';
				indicator(0) 	 <= '0';
			end if;
			if (lift1_floor(1)    = '1' and currentfloor /= "01") then
				lift_register(1) <= '1';
				indicator(1) 	 <= '1';
			elsif (received_request(1) = '1' and currentfloor /= "01") then --remove current floor part if request handler handles that
				lift_register(1) <= '1';
			elsif (currentfloor = "01") then
				lift_register(1) 	<= '0';	
				indicator(1) 	 <= '0';
			end if;
			if (lift1_floor(2)    = '1' and currentfloor /= "10") then
				lift_register(2) <= '1';
				indicator(2) 	 <= '1';
			elsif (received_request(2) = '1' and currentfloor /= "10") then
				lift_register(2) <= '1';
			elsif (currentfloor = "10") then
				lift_register(2) 	<= '0';
				indicator(2) 	 <= '0';
			end if;
			if (lift1_floor(3)    = '1' and currentfloor /= "11") then
				lift_register(3) <= '1';
				indicator(3) 	 <= '1';
			elsif (received_request(3) = '1' and currentfloor /= "11") then
				lift_register(3) <= '1';
			elsif (currentfloor = "11") then
				lift_register(3) 	<= '0';
				indicator(3) 	 <= '0';
			end if;
		end if;
		
		if (start2sec = '1') then
			if (clear_counter/='1') then
				counter2sec   <= counter2sec + 1;
				if (counter2sec >= 200000000) then
					start2sec 	 <='0';
					status 		 <= next_status;
					currentfloor <= next_floor;
				end if;
			end if;
			if (clear_counter = '1') then
				counter2sec <= 0;
				clear_counter <= '0';
			end if;
		else
			start2sec <= '0';
		end if;

		if (start0_5sec = '1') then
			if (clear_counter/='1') then	
				counter0_5sec   <= counter0_5sec + 1;
				if (counter0_5sec >= 50000000) then
					start0_5sec <='0';
					status <= next_status;
				end if;
			end if;
			if (clear_counter = '1') then
				counter0_5sec <= 0;
				clear_counter <= '0';
			end if;
		else
			start0_5sec <= '0';
		end if;

		if (start1sec = '1') then
			if (clear_counter/='1') then
				counter1sec   <= counter1sec + 1;
				if (counter1sec >= 100000000) then
					start1sec <='0';
					status <= next_status;
				end if;
			end if;
			if (clear_counter = '1') then
				counter1sec <= 0;
				clear_counter <= '0';
			end if;
		else
			start1sec <= '0';
		end if;

		if (start0_1sec = '1') then
			if (clear_counter/='1') then
				counter0_1sec   <= counter1sec + 1;
				if (counter0_1sec >= 10000000) then
					start0_1sec <='0';
					status <= next_status;
				end if;
			end if;
			if (clear_counter = '1') then
				counter0_1sec <= 0;
				clear_counter <= '0';
			end if;
		else
			start0_1sec <= '0';
		end if;

		if (door_close = '1') then
			if (status = door_op) then
				start1sec <= '0';
				status    <= door_closing;
			end if;	
		end if;

		if (door_open = '1') then
			if (status = door_closing) or (status=door_cl) then
				start0_5sec <= '0';
				start1sec   <= '0';
				next_status <= door_op;
				status 		<= door_op;
			end if;
		end if;

		--after combined requests is changed
		if((start2sec = '0') and (start0_5sec ='0') and (start1sec = '0') and lift1_floor(0)/='1' and lift1_floor(1)/='1' and lift1_floor(2)/='1' and lift1_floor(3)/='1' and (reset/='1') and (door_open = '0'))then
			
			test <= '1';
			if (status = door_op) then

				if (lift_register /= "0000") then
				-- door has to be closed
					start1sec 	<= '1';
					clear_counter <= '1';
					next_status <= door_closing;
				else
					direction <= none;
				end if;
			
			elsif (status = door_closing) then
				start0_5sec   <= '1';
				clear_counter <= '1';
				next_status   <= door_cl;

			elsif (status = door_opening) then
				start0_5sec   <= '1';
				clear_counter <= '1';
				next_status   <= door_op;

			elsif (status = door_cl) then
				if (currentfloor = "00") then
				-- if there is a request from outside since the
				-- door is open request handler clears that so now we do not need to handle that part
					
					if (lift_register(3 downto 1) > "000") and (direction = none or direction = up) then
						-- move up
						--find nextfloor
						if (lift_register(3)='1') then
							next_target_floor <= "11";
						end if;
						if (lift_register(2)='1') then
							next_target_floor <= "10";
						end if;
						if (lift_register(1)='1') then
							next_target_floor <= "01";
						end if;
						-- now I now I have to go up to nextfloor
						
						status		  <= moving_up;
						next_status   <= moving_up;
						start2sec	  <= '1';
						clear_counter <= '1';
						next_floor 	  <= currentfloor + 1;
						
					-- no case of moving down	
					end if;
				
				elsif (currentfloor="01")  then
					
					if (lift_register(3 downto 2) > "00") and (direction = none or direction = up) then
						--move up
						--find nextfloor
						if (lift_register(3)='1') then
							next_target_floor <= "11";
						end if;
						if (lift_register(2)='1') then
							next_target_floor <= "10";
						end if;
						
						status 		  <= moving_up;
						next_status   <= moving_up;
						start2sec     <= '1';
						clear_counter <= '1';
						next_floor 	  <= currentfloor + 1;
					
					elsif (lift_register(0) /='0') and (direction = none or direction = down) then
						-- moving down
						next_target_floor 	<= "00";
						status 				<= moving_down;
						start2sec 			<= '1';
						clear_counter 		<= '1';
						next_floor 			<= currentfloor - 1;
						next_status  		<= moving_down;
					end if;

				
				elsif (currentfloor="10") then
					if (lift_register(3) /= '0' and (direction=none or direction=up)) then
						next_target_floor 	<= "11";
						status 	  		  	<= moving_up;
						start2sec 		  	<= '1';
						clear_counter  	  	<= '1';
						next_floor  		<= currentfloor + 1;
						next_status			<= moving_up;
					elsif (lift_register(1 downto 0) /= "00" and (direction = none or direction = down)) then
						if (lift_register(0)='1') then
							next_target_floor <= "00";
						end if;
						if (lift_register(1)='1') then
							next_target_floor <= "01";
						end if;
						--Executing a request where lift has to go up
						status 			<= moving_down;
						next_status 	<= moving_down;
						start2sec   	<= '1';
						clear_counter	<= '1';
						next_floor  	<= currentfloor - 1;
					
					end if;

				
				elsif (currentfloor="11") then
					-- is se upar na ho payega
					if (lift_register(2 downto 0)/="000"  and (direction = none or direction = down)) then
						if (lift_register(0)='1') then
							next_target_floor <= "00";
						end if;
						if (lift_register(1)='1') then
							next_target_floor <= "01";
						end if;
						if (lift_register(2)='1') then
							next_target_floor <= "10";
						end if;
						status 		  <= moving_down;
						next_status   <= moving_down;
						start2sec 	  <= '1';
						clear_counter <= '1';
						next_floor 	  <= currentfloor - 1;
					end if;	
				end if;
			elsif (status = moving_up) then
				if (currentfloor = next_target_floor) then
					--Voila reached the floor
					if (currentfloor = "01") then
						--lift_register(1) <= '0';
						if (lift_register(3 downto 2) = "00") then
							direction <= none;
						else
							direction <= up;
						end if;
					elsif (currentfloor = "10") then
						--lift_register(2) <= '0';
						if (lift_register(3)='0') then
							direction <= none;
						else
							direction <= up;
						end if;
					elsif (currentfloor = "11") then
						--lift_register(3) <= '0';
						direction <= none;
					end if;
					status 		  <= door_cl;
					next_status	  <= door_op;
					start0_5sec   <= '1';
					clear_counter <= '1';
				else
					next_floor  <= currentfloor + 1;
					start2sec 	  <= '1';
					clear_counter <= '1';
					direction     <= up;
					next_status   <= moving_up;
				end if;
			elsif (status = moving_down) then
				--set direction and change if none
				direction <= down;
				if (currentfloor = next_target_floor) then
					--Voila reached the floor
					if (currentfloor = "00") then
						--lift_register(0) <= '0';
						direction <= none;
					elsif (currentfloor = "01") then
						--lift_register(1) <= '0';
						if (lift_register(0)='0') then
							direction <= none;
						end if;
					elsif (currentfloor = "10") then
						--lift_register(2) <= '0';
						if (lift_register(1 downto 0)="00") then
							direction <= none;
						end if;
					end if;
					status        <= door_cl;
					next_status   <= door_op;
					start0_5sec   <= '1';
					clear_counter <= '1';
				else
					next_floor  <= currentfloor - 1;
					start2sec 	  <= '1';
					clear_counter <= '1';
					direction 	  <= down;
					next_status   <= moving_down;
				end if;
			end if;
		end if;	
	end if;
	end process;

	process(clk)
	begin
		
		if (currentfloor = "00") then
			if (lift_register(3 downto 1) > "000") then
				lift_status <= reqUp;
		else
				lift_status <= reqDown;
			end if;
		elsif (currentfloor="01") then
			if (lift_register(3 downto 2) > "00") then
				lift_status <= reqUp;
			else
				lift_status <= reqDown;
			end if;
		elsif (currentfloor="10") then
			if (lift_register(3) > '0') then
				lift_status <= reqUp;
			else
				lift_status <= reqDown;
			end if;
		elsif (currentfloor="11") then
			if (lift_register(2 downto 0) > "000") then
				lift_status <= reqDown;
			end if;
		end if;
		-- if reset is pressed this overrides
		if((lift_register = "0000") or (reset = '1')) then
			lift_status <= idle;
		end if;		
	end process;

end lift1_controller_arc;


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- f
library work;
use work.enum_package.all;

entity lift2_controller is
port(
	clk : in std_logic;
	reset : in std_logic;
	received_request : in std_logic_vector(3 downto 0);
	lift2_floor : in std_logic_vector(3 downto 0);
	door_open : in std_logic;
	door_close : in std_logic;
	lift2_floor_indicator : out std_logic_vector(3 downto 0);
	l2_status : out std_logic_vector(1 downto 0); -- mo
	l2_currentfloor : out std_logic_vector(1 downto 0);
	requests : out std_logic_vector(3 downto 0);
	test : out std_logic;
	r_status : out request_status
	);
end entity;

library work;
use work.enum_package.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting
use ieee.numeric_std.all;               -- for type conversions

architecture lift2_controller_arc of lift2_controller is

	type state is (moving_up, moving_down, door_op, door_cl, door_opening, door_closing, forced_close, forced_open, do_not_update);
	type direction_type is (none, up, down);
	signal status, next_status : state;
	signal currentfloor, next_floor : std_logic_vector(1 downto 0);
	signal lift_register : std_logic_vector(3 downto 0);
	signal combined_requests : std_logic_vector(3 downto 0);
	signal lift_status : request_status;
	signal start2sec : std_logic; 
	signal counter2sec : integer range 0 to 200000000;
	signal start1sec : std_logic; 
	signal counter1sec : integer range 0 to 100000000; 
	signal start0_5sec, start0_1sec : std_logic;
	signal counter0_5sec, counter0_1sec : integer range 0 to 200000000; 
	signal direction : direction_type;
	signal next_target_floor : std_logic_vector(1 downto 0);
	signal clear_counter : std_logic;
	signal update_open_status, update_close_status : std_logic;
	signal indicator : std_logic_vector(3 downto 0);

begin


	l2_currentfloor <= currentfloor;
	r_status 		<= lift_status;

	status_assigner : process( clk, status )
	begin
		if (status = moving_up) then
			l2_status <= "00";
		elsif (status = moving_down) then
			l2_status <= "01";
		elsif (status = door_op) then
			l2_status <= "11";
		elsif (status = door_cl)or(status = door_closing) then
			l2_status <= "10";
		end if;
	end process ; -- status


	lift2_floor_indicator <= indicator;
	requests 			  <= received_request;

	process(clk, reset, lift2_floor, received_request)
	begin
	if (clk = '1' and clk'event ) then

		 --combined_requests <= (lift_register or received_request);
		 --Let us first work without the received requests
		 -- change everything in lift register combined request did not work make common register lift_register
		if (reset ='1') then
			status     			  <= door_op;
			next_status 		  <= door_op;
			currentfloor 		  <= "00";
			lift_register 		  <= "0000";
			direction   		  <= none;
			indicator  			  <= "0000"; 
		else
			if (lift2_floor(0)    = '1' and currentfloor /= "00") then
				lift_register(0) <= '1';
				indicator(0) 	 <= '1';
			elsif (received_request(0) = '1' and currentfloor /= "00") then
				lift_register(0) <= '1';
			elsif (currentfloor = "00") then
				lift_register(0) 	<= '0';
				indicator(0) 	 <= '0';
			end if;
			if (lift2_floor(1)    = '1' and currentfloor /= "01") then
				lift_register(1) <= '1';
				indicator(1) 	 <= '1';
			elsif (received_request(1) = '1' and currentfloor /= "01") then --remove current floor part if request handler handles that
				lift_register(1) <= '1';
			elsif (currentfloor = "01") then
				lift_register(1) 	<= '0';	
				indicator(1) 	 <= '0';
			end if;
			if (lift2_floor(2)    = '1' and currentfloor /= "10") then
				lift_register(2) <= '1';
				indicator(2) 	 <= '1';
			elsif (received_request(2) = '1' and currentfloor /= "10") then
				lift_register(2) <= '1';
			elsif (currentfloor = "10") then
				lift_register(2) 	<= '0';
				indicator(2) 	 <= '0';
			end if;
			if (lift2_floor(3)    = '1' and currentfloor /= "11") then
				lift_register(3) <= '1';
				indicator(3) 	 <= '1';
			elsif (received_request(3) = '1' and currentfloor /= "11") then
				lift_register(3) <= '1';
			elsif (currentfloor = "11") then
				lift_register(3) 	<= '0';
				indicator(3) 	 <= '0';
			end if;
		end if;
		
		if (start2sec = '1') then
			if (clear_counter/='1') then
				counter2sec   <= counter2sec + 1;
				if (counter2sec >= 200000000) then
					start2sec 	 <='0';
					status 		 <= next_status;
					currentfloor <= next_floor;
				end if;
			end if;
			if (clear_counter = '1') then
				counter2sec <= 0;
				clear_counter <= '0';
			end if;
		else
			start2sec <= '0';
		end if;

		if (start0_5sec = '1') then
			if (clear_counter/='1') then	
				counter0_5sec   <= counter0_5sec + 1;
				if (counter0_5sec >= 50000000) then
					start0_5sec <='0';
					status <= next_status;
				end if;
			end if;
			if (clear_counter = '1') then
				counter0_5sec <= 0;
				clear_counter <= '0';
			end if;
		else
			start0_5sec <= '0';
		end if;

		if (start1sec = '1') then
			if (clear_counter/='1') then
				counter1sec   <= counter1sec + 1;
				if (counter1sec >= 100000000) then
					start1sec <='0';
					status <= next_status;
				end if;
			end if;
			if (clear_counter = '1') then
				counter1sec <= 0;
				clear_counter <= '0';
			end if;
		else
			start1sec <= '0';
		end if;

		if (start0_1sec = '1') then
			if (clear_counter/='1') then
				counter0_1sec   <= counter1sec + 1;
				if (counter0_1sec >= 10000000) then
					start0_1sec <='0';
					status <= next_status;
				end if;
			end if;
			if (clear_counter = '1') then
				counter0_1sec <= 0;
				clear_counter <= '0';
			end if;
		else
			start0_1sec <= '0';
		end if;

		if (door_close = '1') then
			if (status = door_op) then
				start1sec <= '0';
				status    <= door_closing;
			end if;	
		end if;

		if (door_open = '1') then
			if (status = door_closing) or (status = door_cl) then
				start0_5sec <= '0';
				start1sec   <= '0';
				next_status <= door_op;
				status 		<= door_op;
			end if;
		end if;

		--after combined requests is changed
		if((start2sec = '0') and (start0_5sec ='0') and (start1sec = '0') and lift2_floor(0)/='1' and lift2_floor(1)/='1' and lift2_floor(2)/='1' and lift2_floor(3)/='1' and (reset/='1') and (door_open = '0'))then
			
			test <= '1';
			if (status = door_op) then

				if (lift_register /= "0000") then
				-- door has to be closed
					start1sec 	<= '1';
					clear_counter <= '1';
					next_status <= door_closing;
				else
					direction <= none;
				end if;
			
			elsif (status = door_closing) then
				start0_5sec   <= '1';
				clear_counter <= '1';
				next_status   <= door_cl;

			elsif (status = door_opening) then
				start0_5sec   <= '1';
				clear_counter <= '1';
				next_status   <= door_op;

			elsif (status = door_cl) then
				if (currentfloor = "00") then
				-- if there is a request from outside since the
				-- door is open request handler clears that so now we do not need to handle that part
					
					if (lift_register(3 downto 1) > "000") and (direction = none or direction = up) then
						-- move up
						--find nextfloor
						if (lift_register(3)='1') then
							next_target_floor <= "11";
						end if;
						if (lift_register(2)='1') then
							next_target_floor <= "10";
						end if;
						if (lift_register(1)='1') then
							next_target_floor <= "01";
						end if;
						-- now I now I have to go up to nextfloor
						
						status		  <= moving_up;
						next_status   <= moving_up;
						start2sec	  <= '1';
						clear_counter <= '1';
						next_floor 	  <= currentfloor + 1;
						
					-- no case of moving down	
					end if;
				
				elsif (currentfloor="01")  then
					
					if (lift_register(3 downto 2) > "00") and (direction = none or direction = up) then
						--move up
						--find nextfloor
						if (lift_register(3)='1') then
							next_target_floor <= "11";
						end if;
						if (lift_register(2)='1') then
							next_target_floor <= "10";
						end if;
						
						status 		  <= moving_up;
						next_status   <= moving_up;
						start2sec     <= '1';
						clear_counter <= '1';
						next_floor 	  <= currentfloor + 1;
					
					elsif (lift_register(0) /='0') and (direction = none or direction = down) then
						-- moving down
						next_target_floor 	<= "00";
						status 				<= moving_down;
						start2sec 			<= '1';
						clear_counter 		<= '1';
						next_floor 			<= currentfloor - 1;
						next_status  		<= moving_down;
					end if;

				
				elsif (currentfloor="10") then
					if (lift_register(3) /= '0' and (direction=none or direction=up)) then
						next_target_floor 	<= "11";
						status 	  		  	<= moving_up;
						start2sec 		  	<= '1';
						clear_counter  	  	<= '1';
						next_floor  		<= currentfloor + 1;
						next_status			<= moving_up;
					elsif (lift_register(1 downto 0) /= "00" and (direction = none or direction = down)) then
						if (lift_register(0)='1') then
							next_target_floor <= "00";
						end if;
						if (lift_register(1)='1') then
							next_target_floor <= "01";
						end if;
						--Executing a request where lift has to go up
						status 			<= moving_down;
						next_status 	<= moving_down;
						start2sec   	<= '1';
						clear_counter	<= '1';
						next_floor  	<= currentfloor - 1;
					
					end if;

				
				elsif (currentfloor="11") then
					-- is se upar na ho payega
					if (lift_register(2 downto 0)/="000"  and (direction = none or direction = down)) then
						if (lift_register(0)='1') then
							next_target_floor <= "00";
						end if;
						if (lift_register(1)='1') then
							next_target_floor <= "01";
						end if;
						if (lift_register(2)='1') then
							next_target_floor <= "10";
						end if;
					end if;
					status 		  <= moving_down;
					next_status   <= moving_down;
					start2sec 	  <= '1';
					clear_counter <= '1';
					next_floor 	  <= currentfloor - 1;
						
				end if;
			elsif (status = moving_up) then
				if (currentfloor = next_target_floor) then
					--Voila reached the floor
					if (currentfloor = "01") then
						--lift_register(1) <= '0';
						if (lift_register(3 downto 2) = "00") then
							direction <= none;
						else
							direction <= up;
						end if;
					elsif (currentfloor = "10") then
						--lift_register(2) <= '0';
						if (lift_register(3)='0') then
							direction <= none;
						else
							direction <= up;
						end if;
					elsif (currentfloor = "11") then
						--lift_register(3) <= '0';
						direction <= none;
					end if;
					status 		  <= door_cl;
					next_status	  <= door_op;
					start0_5sec   <= '1';
					clear_counter <= '1';
				else
					next_floor  <= currentfloor + 1;
					start2sec 	  <= '1';
					clear_counter <= '1';
					direction     <= up;
					next_status   <= moving_up;
				end if;
			elsif (status = moving_down) then
				--set direction and change if none
				direction <= down;
				if (currentfloor = next_target_floor) then
					--Voila reached the floor
					if (currentfloor = "00") then
						--lift_register(0) <= '0';
						direction <= none;
					elsif (currentfloor = "01") then
						--lift_register(1) <= '0';
						if (lift_register(0)='0') then
							direction <= none;
						end if;
					elsif (currentfloor = "10") then
						--lift_register(2) <= '0';
						if (lift_register(1 downto 0)="00") then
							direction <= none;
						end if;
					end if;
					status        <= door_cl;
					next_status   <= door_op;
					start0_5sec   <= '1';
					clear_counter <= '1';
				else
					next_floor  <= currentfloor - 1;
					start2sec 	  <= '1';
					clear_counter <= '1';
					direction 	  <= down;
					next_status   <= moving_down;
				end if;
			end if;
		end if;	
	end if;
	end process;

	process(clk)
	begin
		
		if (currentfloor = "00") then
			if (lift_register(3 downto 1) > "000") then
				lift_status <= reqUp;
		else
				lift_status <= reqDown;
			end if;
		elsif (currentfloor="01") then
			if (lift_register(3 downto 2) > "00") then
				lift_status <= reqUp;
			else
				lift_status <= reqDown;
			end if;
		elsif (currentfloor="10") then
			if (lift_register(3) > '0') then
				lift_status <= reqUp;
			else
				lift_status <= reqDown;
			end if;
		elsif (currentfloor="11") then
			if (lift_register(2 downto 0) > "000") then
				lift_status <= reqDown;
			end if;
		end if;
		-- if reset is pressed this overrides
		if((lift_register = "0000") or (reset = '1')) then
			lift_status <= idle;
		end if;		
	end process;

end lift2_controller_arc;

-------------------------------------------------------------------------end_auxillary_entity------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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