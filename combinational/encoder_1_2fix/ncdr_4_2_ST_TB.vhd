--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:02:21 03/23/2025
-- Design Name:   
-- Module Name:   /home/ise/vhdl/combinational/encoder_1/ncdr_4_2_ST_TB.vhd
-- Project Name:  encoder_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ncdr_ST
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
 
ENTITY ncdr_4_2_ST_TB IS
END ncdr_4_2_ST_TB;
 
ARCHITECTURE behavior OF ncdr_4_2_ST_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ncdr_ST
    PORT(
         ncdr_a : IN  std_logic_vector(3 downto 0);
         ncdr_z : OUT  std_logic_vector(1 downto 0);
         ncdr_v : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ncdr_a : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ncdr_z : std_logic_vector(1 downto 0);
   signal ncdr_v : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ncdr_ST PORT MAP (
          ncdr_a => ncdr_a,
          ncdr_z => ncdr_z,
          ncdr_v => ncdr_v
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
		ncdr_a <= "0000"; wait for 100 ns;
		ncdr_a <= "0001"; wait for 100 ns;
		ncdr_a <= "0010"; wait for 100 ns;
		ncdr_a <= "0100"; wait for 100 ns;
		ncdr_a <= "1000"; wait for 100 ns;
      wait;
   end process;

END;
