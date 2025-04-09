--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:48:57 03/22/2025
-- Design Name:   
-- Module Name:   /home/ise/vhdl/MuX_4_BH/MuX_4_1_BV_TB.vhd
-- Project Name:  MuX_4_BH
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MuX_4_1_BE
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
 
ENTITY MuX_4_1_BV_TB IS
END MuX_4_1_BV_TB;
 
ARCHITECTURE behavior OF MuX_4_1_BV_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MuX_4_1_BE
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MuX_4_1_BE PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          S0 => S0,
          S1 => S1,
          Z => Z
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
		A <= '1';
		B <= '0';
		C <= '1';
		D <= '0';
		
		s1 <= '0'; s0 <= '0'; wait for 200 ns;
		s1 <= '0'; s0 <= '1'; wait for 200 ns;
		s1 <= '1'; s0 <= '0'; wait for 200 ns;
		s1 <= '1'; s0 <= '1'; wait for 200 ns;
      wait;
   end process;

END;
