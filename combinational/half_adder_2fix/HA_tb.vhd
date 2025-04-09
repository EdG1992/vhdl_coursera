--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:28:26 03/20/2025
-- Design Name:   
-- Module Name:   /home/ise/vhdl/half_adder/HA_tb.vhd
-- Project Name:  half_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: HA
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
 
ENTITY HA_tb IS
END HA_tb;
 
ARCHITECTURE behavior OF HA_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT HA
    PORT(
         i1 : IN  std_logic;
         i2 : IN  std_logic;
         sum : OUT  std_logic;
         carrier : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i1 : std_logic := '0';
   signal i2 : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal carrier : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: HA PORT MAP (
          i1 => i1,
          i2 => i2,
          sum => sum,
          carrier => carrier
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
		i1 <= '0';
		i2 <= '0';
		wait for 100 ns;
		
		i1 <= '0';
		i2 <= '1';
		wait for 100 ns;
		
		i1 <= '1';
		i2 <= '0';
		wait for 100 ns;
		
		i1 <= '1';
		i2 <= '1';
		wait for 100 ns;
		
      wait;
   end process;

END;
