--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:16:54 03/21/2025
-- Design Name:   
-- Module Name:   /home/ise/vhdl/fulladder_df/fa_df_tb.vhd
-- Project Name:  fulladder_df
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fa_df
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY fa_df_tb IS
END fa_df_tb;
 
ARCHITECTURE behavior OF fa_df_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fa_df
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         cin : IN  std_logic;
         sum : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fa_df PORT MAP (
          a => a,
          b => b,
          cin => cin,
          sum => sum,
          cout => cout
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 
		
		cin <= '0';
		a <= '0';
		b <= '0';
		wait for 100 ns;
		
		cin <= '0';
		a <= '0';
		b <= '1';
		wait for 100 ns;
		
		cin <= '0';
		a <= '1';
		b <= '0';
		wait for 100 ns;
		
		cin <= '0';
		a <= '1';
		b <= '1';
		wait for 100 ns;
		
		cin <= '1';
		a <= '0';
		b <= '0';
		wait for 100 ns;
		
		cin <= '1';
		a <= '0';
		b <= '1';
		wait for 100 ns;
		
		cin <= '1';
		a <= '1';
		b <= '0';
		wait for 100 ns;
		
		cin <= '1';
		a <= '1';
		b <= '1';
		wait for 100 ns;

      wait;
   end process;

END;
