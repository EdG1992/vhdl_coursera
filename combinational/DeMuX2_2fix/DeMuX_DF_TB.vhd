--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:06:15 03/23/2025
-- Design Name:   
-- Module Name:   /home/ise/vhdl/DeMuX2/DeMuX_DF_TB.vhd
-- Project Name:  DeMuX2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DeMuX_DF
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
 
ENTITY DeMuX_DF_TB IS
END DeMuX_DF_TB;
 
ARCHITECTURE behavior OF DeMuX_DF_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DeMuX_DF
    PORT(
         demux_a : IN  std_logic;
         demux_sel : IN  std_logic_vector(1 downto 0);
         demux_z : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal demux_a : std_logic := '0';
   signal demux_sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal demux_z : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DeMuX_DF PORT MAP (
          demux_a => demux_a,
          demux_sel => demux_sel,
          demux_z => demux_z
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
		demux_a <= '1';
		demux_sel(1) <= '0'; demux_sel(0) <= '0'; wait for 100 ns;
		demux_sel(1) <= '0'; demux_sel(0) <= '1'; wait for 100 ns;
		demux_sel(1) <= '1'; demux_sel(0) <= '0'; wait for 100 ns;
		demux_sel(1) <= '1'; demux_sel(0) <= '1'; wait for 100 ns;
      wait;
   end process;

END;
