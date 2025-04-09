--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:33:27 03/23/2025
-- Design Name:   
-- Module Name:   /home/ise/vhdl/combinational/ecoder_3/encoder_BE_TB.vhd
-- Project Name:  ecoder_3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: encoder_4_2_BE
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
 
ENTITY encoder_BE_TB IS
END encoder_BE_TB;
 
ARCHITECTURE behavior OF encoder_BE_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT encoder_4_2_BE
    PORT(
         ncdr_a : IN  std_logic_vector(3 downto 0);
         ncdr_z : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ncdr_a : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ncdr_z : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: encoder_4_2_BE PORT MAP (
          ncdr_a => ncdr_a,
          ncdr_z => ncdr_z
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 
		ncdr_a <= "0000"; wait for 100 ns;
		ncdr_a <= "0001"; wait for 100 ns;
		ncdr_a <= "0010"; wait for 100 ns;
		ncdr_a <= "0100"; wait for 100 ns;
		ncdr_a <= "1000"; wait for 100 ns;
      wait;
   end process;

END;
