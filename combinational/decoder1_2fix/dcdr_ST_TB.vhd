--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:15:37 03/23/2025
-- Design Name:   
-- Module Name:   /home/ise/vhdl/combinational/decoder1/dcdr_ST_TB.vhd
-- Project Name:  decoder1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dcdr_2_4_ST
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
 
ENTITY dcdr_ST_TB IS
END dcdr_ST_TB;
 
ARCHITECTURE behavior OF dcdr_ST_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dcdr_2_4_ST
    PORT(
         dcdr_a : IN  std_logic_vector(1 downto 0);
         dcdr_ena : IN  std_logic;
         dcdr_z : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal dcdr_a : std_logic_vector(1 downto 0) := (others => '0');
   signal dcdr_ena : std_logic := '0';

 	--Outputs
   signal dcdr_z : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dcdr_2_4_ST PORT MAP (
          dcdr_a => dcdr_a,
          dcdr_ena => dcdr_ena,
          dcdr_z => dcdr_z
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

--      wait for <clock>_period*10;

      -- insert stimulus here 
		dcdr_a <= "00"; wait for 100 ns;
		dcdr_ena <= '1';
		dcdr_a <= "00"; wait for 100 ns;
		dcdr_a <= "01"; wait for 100 ns;
		dcdr_a <= "10"; wait for 100 ns;
		dcdr_a <= "11"; wait for 100 ns;
      wait;
   end process;

END;
