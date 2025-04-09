----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 02:58:50 PM
-- Design Name: 
-- Module Name: com04_DF_TB - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity com04_DF_TB is
--  no need for entity in a TB
end com04_DF_TB;

architecture test_bench of com04_DF_TB is
    
    component com4_DF port(
        com4_A, com4_B: in STD_LOGIC_VECTOR(3 downto 0);
        A_greater_B, A_smaller_B, A_equal_B: out STD_LOGIC);
    end component;
    
    --Inputs
    signal com4_A, com4_B: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    
    --Outputs
    signal A_greater_B, A_smaller_B, A_equal_B: STD_LOGIC;
    
begin
    uut: com4_DF port map(
        com4_A => com4_A,
        com4_B => com4_B,
        A_greater_B => A_greater_B,
        A_smaller_B => A_smaller_B,
        A_equal_B =>A_equal_B);

    stimulus: process
    begin
        wait for 100 ns;
        com4_A <= "1111"; com4_B <= "0000"; wait for 100ns;
        com4_A <= "0000"; com4_B <= "1111"; wait for 100ns;
        com4_A <= "1101"; com4_B <= "0100"; wait for 100ns;
        com4_A <= "0010"; com4_B <= "1011"; wait for 100ns;
        com4_A <= "1010"; com4_B <= "0101"; wait for 100ns;
        com4_A <= "0101"; com4_B <= "1010"; wait for 100ns;
        wait;
    end process;
end test_bench;
