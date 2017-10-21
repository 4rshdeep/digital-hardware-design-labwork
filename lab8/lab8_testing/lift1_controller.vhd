library IEEE;
use IEEE.STD_LOGIC_1164.all;

package enum_package is

    type request_status is (reqUp, reqDown, idle);

end enum_package;

package body enum_package is

end enum_package;	


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
	--signal upReqUp, upReqDown, downReqDown, downReqUp : std_logic_vector(3 downto 0);
	signal start2sec : std_logic; 
	signal counter2sec : integer range 0 to 200000000;
	signal start1sec : std_logic; 
	signal counter1sec : integer range 0 to 100000000; 
	signal start0_5sec, start0_1sec : std_logic;
	signal counter0_5sec, counter0_1sec : integer range 0 to 200000000; 
	signal direction : direction_type;
--	signal prev_combined_request, prev_lift_register, prev_received_register: std_logic_vector(3 downto 0);
	signal next_target_floor : std_logic_vector(1 downto 0);
	signal clear_counter : std_logic;
	signal update_open_status, update_close_status : std_logic;
	--signal update_status, wait_and_close : std_logic;
begin


	l1_currentfloor <= currentfloor;
	--r_status 		<= lift_status;

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
-- todo lift1_floor_indicator
	lift1_floor_indicator <= lift_register;
	requests 			  <= received_request;

	process(clk, reset, lift1_floor, received_request)
	begin
	if (clk = '1' and clk'event ) then

		 --combined_requests <= (lift_register or received_request);
		 --Let us first work without the received requests

		 -- change everything in lift register

		 


		if (reset ='1') then
			status     			  <= door_op;
			next_status 		  <= door_op;
			currentfloor 		  <= "00";
			lift_register 		  <= "0000";
			direction   		  <= none;
			combined_requests 	  <= "0000"; 
			--wait_and_close 		  <= '0';
		else
			if (lift1_floor(0)    = '1' and currentfloor /= "00") then
				lift_register(0) <= '1';
			elsif (received_request(0) = '1' and currentfloor /= "00") then
				lift_register(0) <= '1';
			elsif (currentfloor = "00") then
				lift_register(0) 	<= '0';
			end if;
			if (lift1_floor(1)    = '1' and currentfloor /= "01") then
				lift_register(1) <= '1';
			elsif (received_request(1) = '1' and currentfloor /= "01") then
				lift_register(1) <= '1';
			elsif (currentfloor = "01") then
				lift_register(1) 	<= '0';	
			end if;
			if (lift1_floor(2)    = '1' and currentfloor /= "10") then
				lift_register(2) <= '1';
			elsif (received_request(2) = '1' and currentfloor /= "10") then
				lift_register(2) <= '1';
			elsif (currentfloor = "10") then
				lift_register(2) 	<= '0';
			end if;
			if (lift1_floor(3)    = '1' and currentfloor /= "11") then
				lift_register(3) <= '1';
			elsif (received_request(3) = '1' and currentfloor /= "11") then
				lift_register(3) <= '1';
			elsif (currentfloor = "11") then
				lift_register(3) 	<= '0';
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
			if (status = door_closing) then
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

end lift1_controller_arc;
