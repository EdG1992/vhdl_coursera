--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:20:27 03/20/2025
-- Design Name:   
-- Module Name:   /home/ise/and_gate/and_gate_tb.vhd
-- Project Name:  and_gate
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: and_gate
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
 
ENTITY and_gate_tb IS
END and_gate_tb;
 
ARCHITECTURE behavior OF and_gate_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT and_gate
    PORT(
         in_1 : IN  std_logic;
         in_2 : IN  std_logic;
         out_1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in_1 : std_logic := '0';
   signal in_2 : std_logic := '0';

 	--Outputs
   signal out_1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: and_gate PORT MAP (
          in_1 => in_1,
          in_2 => in_2,
          out_1 => out_1
        );

--   -- Clock process definitions
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
      --wait for 100 ns;	

--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;

	in_1 <= '0';
	in_2 <= '0';
	wait for 10 ns;
	
	in_1 <= '0';
	in_2 <= '1';
	wait for 10 ns;
	
	in_1 <= '1';
	in_2 <= '0';
	wait for 10 ns;
	
	in_1 <= '1';
	in_2 <= '1';
	wait for 10 ns;
	
   end process;

END;
