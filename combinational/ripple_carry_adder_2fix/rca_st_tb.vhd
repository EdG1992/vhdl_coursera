--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:34:14 03/21/2025
-- Design Name:   
-- Module Name:   /home/ise/vhdl/ripple_carry_adder/rca_st_tb.vhd
-- Project Name:  ripple_carry_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rca_st
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
use ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY rca_st_tb IS
END rca_st_tb;
 
ARCHITECTURE behavior OF rca_st_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rca_st
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         sum : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal sum : std_logic_vector(3 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rca_st PORT MAP (
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
   
      -- hold reset state for 100 ns.
      

      --wait for <clock>_period*10;

      -- insert stimulus here 
		begin
			for a_int in 0 to 15 loop
				for b_int in 0 to 15 loop
					a <= std_logic_vector(to_unsigned(a_int, 4));
					b <= std_logic_vector(to_unsigned(b_int, 4));
					wait for 1 ns;
				end loop;
			end loop;
			
--			cin <= '1';
--			for a_int in 0 to 15 loop
--				for b_int in 0 to 15 loop
--					a <= std_logic_vector(to_unsigned(a_int, 4));
--					b <= std_logic_vector(to_unsigned(b_int, 4));
--					wait for 200 ns;
--				end loop;
--			end loop;
			
			wait;
   end process;

END;
