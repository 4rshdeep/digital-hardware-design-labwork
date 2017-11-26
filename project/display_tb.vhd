LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY display_tb IS
END display_tb;
 
ARCHITECTURE behavior OF display_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
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

	-- Custom Types
--	type display_output is array (0 to 15) of std_logic_vector(6 downto 0);
--	type anode_output_array is array(0 to 3) of std_logic_vector(3 downto 0);

   	--Inputs
   	signal in_data      :  std_logic_vector (15 downto 0); 
	signal show_lat		:  std_logic;
	signal show_long	:  std_logic;
	signal show_digit	:  std_logic;
	signal clk    		:  std_logic; 
	
   
	--Outputs
	signal anode1     	: std_logic_vector (3 downto 0); 
	signal cathode1    	: std_logic_vector (6 downto 0);
		
   	-- Clock period definitions
   	constant clk_period : time := 10 ns;
	
	-- Signals
	signal err_cnt_signal : integer range 0 to 50 := 0;
	--constant intToCathodeValue : display_output := ("1000000","1111001","0100100","0110000","0011001","0010010","0000010","1111000","0000000","0010000","0001000","0000011","1000110","0100001","0000110","0001110");
	--constant anodeValues : anode_output_array := ("0111","1011","1101","1110");
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
	   display_map_tb : display
    	port map 
      	(
			in_data    => in_data,
			clk        => clk,
			show_lat   => show_lat,
			show_long  => show_long,
			show_digit => show_digit,
			anode      => anode1,
			cathode    => cathode1
	 	);
   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
  end process;
 

   -- Stimulus process
   stim_proc: process

--		type intArray is array(0 to 3) of integer;
--		variable cathodeGroundTruth : intArray := (0,1,0,1);
		variable err_cnt : INTEGER RANGE 0 to 50 := 0;
		variable res_err_cnt : INTEGER := 0;
		variable final_err_cnt : INTEGER := 0;

   begin		
		------------------------------------------------------------
      		--------------------- pre-case 0 ---------------------------
		------------------------------------------------------------
		-- Set inputs
		
		show_lat <= '0';
		show_digit <= '1';
		show_long <= '0';
		in_data <= "1000100010001000";
		--reset <= '1';
		--wait for 1*clk_period;
		--reset <= '0';
		--record_lat <= '1';
		--data_in <= "0010001100000101";
		--wait for 2*clk_period;
		--record_lat <= '0';
		--wait for 2*clk_period;

		--record_long <= '1';
		--data_in <= "0111000000011000";
		--wait for 2*clk_period;
		--record_long <= '0';
		--push_query <= '1';
		--wait for 2*clk_period;
		--push_query <= '0';
		
		--wait for 5*clk_period;	-- ensures completion of division


		-------------------------------------------------------------
		---------------------  case 0 -------------------------------
		-------------------------------------------------------------
		--err_cnt := 0;
		--res_err_cnt := 0;
		
		--assert (query_state_indicator/='0' or reset_state_indicator/='1') report "Something is wrong";
		
		--if(query_state_indicator/='0' or reset_state_indicator/='1') then
		--	final_err_cnt := final_err_cnt + 1;
		--	report "error count increased to " & integer'image(final_err_cnt);
		--end if;	


		
		------------------------------------------------------------------------
		-------------------------------------------------------------------------

		--state_change <= '1';
		--wait for 2*clk_period;
		--state_change <= '0';
		--wait for 4*clk_period;

		--assert (query_state_indicator/='0' or reset_state_indicator/='0') report "Something is wrong";
			
		--if (query_state_indicator /= '0' and reset_state_indicator /='0') then
		--		final_err_cnt := final_err_cnt + 1;
		--	report "error count increased to " & integer'image(final_err_cnt);
		--end if;
		----------------------------------------------------------------------------
		-------------------------------------------------------------------------
	
		




		report "Final error count increased to " & integer'image(final_err_cnt);
		report "Total error count " & integer'image(final_err_cnt);
		err_cnt_signal <= final_err_cnt;		


		-- summary of all the tests
		if (final_err_cnt=0) then
			 assert false
			 report "Testbench of TopModule completed successfully!"
			 severity note;
		else
			 assert false
			 report "Something wrong, try again"
			 severity error;
		end if;

      -- end of tb 
		wait for clk_period*100;

      wait;
   end process;

END;


