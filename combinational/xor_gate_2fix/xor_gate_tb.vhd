--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:33:46 03/20/2025
-- Design Name:   
-- Module Name:   /home/ise/vhdl/xor_gate/xor_gate_tb.vhd
-- Project Name:  xor_gate
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: xor_gate
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
 
ENTITY xor_gate_tb IS
END xor_gate_tb;
 
ARCHITECTURE behavior OF xor_gate_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT xor_gate
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';

 	--Outputs
   signal o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: xor_gate PORT MAP (
          x => x,
          y => y,
          o => o
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
		x <= '0';
		y <= '0';
		wait for 100 ns;
		
		x <= '0';
		y <= '1';
		wait for 100 ns;
		
		x <= '1';
		y <= '0';
		wait for 100 ns;
		
		x <= '1';
		y <= '1';
		wait for 100 ns;

      wait;
   end process;

END;
