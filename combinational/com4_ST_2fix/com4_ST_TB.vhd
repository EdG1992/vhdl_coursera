--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:02:53 04/08/2025
-- Design Name:   
-- Module Name:   /home/ise/vhdl/combinational/com4_ST/com4_ST_TB.vhd
-- Project Name:  com4_ST
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: com4_ST
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
 
ENTITY com4_ST_TB IS
END com4_ST_TB;
 
ARCHITECTURE behavior OF com4_ST_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT com4_ST
    PORT(
         com4_A : IN  std_logic_vector(3 downto 0);
         com4_B : IN  std_logic_vector(3 downto 0);
         A_greater_B : OUT  std_logic;
         A_smaller_B : OUT  std_logic;
         A_equal_B : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal com4_A : std_logic_vector(3 downto 0) := (others => '0');
   signal com4_B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal A_greater_B : std_logic;
   signal A_smaller_B : std_logic;
   signal A_equal_B : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: com4_ST PORT MAP (
          com4_A => com4_A,
          com4_B => com4_B,
          A_greater_B => A_greater_B,
          A_smaller_B => A_smaller_B,
          A_equal_B => A_equal_B
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
		com4_A <= "1111"; com4_B <= "0000"; wait for 100 ns;
		com4_A <= "1010"; com4_B <= "1100"; wait for 100 ns;
		com4_A <= "1001"; com4_B <= "0011"; wait for 100 ns;
		com4_A <= "1000"; com4_B <= "1000"; wait for 100 ns;
		com4_A <= "0000"; com4_B <= "1111"; wait for 100 ns;
		com4_A <= "1011"; com4_B <= "0100"; wait for 100 ns;
		com4_A <= "0100"; com4_B <= "1011"; wait for 100 ns;
      wait;
   end process;

END;
