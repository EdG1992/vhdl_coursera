----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 07:45:38 PM
-- Design Name: 
-- Module Name: cmprtr4_BE_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cmprtr4_BE_TB is
--  No needed for TB
end cmprtr4_BE_TB;

architecture Behavioral of cmprtr4_BE_TB is
    component cmprtr4_BE is port( 
        cmprtr4_A, cmprtr4_B: in STD_LOGIC_VECTOR(3 downto 0);
        A_greater_B, A_smaller_B, A_equal_B: out STD_LOGIC);
    end component;

    signal cmprtr4_A, cmprtr4_B: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal A_greater_B, A_smaller_B, A_equal_B: STD_LOGIC;

begin
    uut: cmprtr4_BE port map(
        cmprtr4_A => cmprtr4_A,
        cmprtr4_B => cmprtr4_B,
        A_greater_B => A_greater_B,
        A_smaller_B => A_smaller_B,
        A_equal_B => A_equal_B);
    
    stimulus: process
    begin
        wait for 100ns;
        cmprtr4_A <= "1111"; cmprtr4_B <= "0000"; wait for 100 ns;
        cmprtr4_A <= "0000"; cmprtr4_B <= "1111"; wait for 100 ns;
        cmprtr4_A <= "1010"; cmprtr4_B <= "0101"; wait for 100 ns;
        cmprtr4_A <= "1101"; cmprtr4_B <= "0010"; wait for 100 ns;
        cmprtr4_A <= "0010"; cmprtr4_B <= "1101"; wait for 100 ns;
        cmprtr4_A <= "1111"; cmprtr4_B <= "1111"; wait for 100 ns;
        cmprtr4_A <= "0000"; cmprtr4_B <= "0000"; wait for 100 ns;
        wait;
    end process;


end Behavioral;
