----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2025 10:01:08 AM
-- Design Name: 
-- Module Name: bin_to_bcd_TB - Behavioral
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

entity bin_to_bcd_TB is
--  Port ( );
end bin_to_bcd_TB;

architecture Behavioral of bin_to_bcd_TB is

    component bin_to_bcd is port(
        bin: in STD_LOGIC_VECTOR(3 downto 0);
        bcd: out STD_LOGIC_VECTOR(4 downto 0));
    end component;

    --INPUTS
    signal bin: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

    --OUTPUTS
    signal bcd: STD_LOGIC_VECTOR(4 downto 0);

begin
    uut: bin_to_bcd port map(
        bin => bin,
        bcd => bcd);

    stimulus: process begin
        wait for 100 ns;
        bin <= "0000"; wait for 100 ns;
        bin <= "0001"; wait for 100 ns;
        bin <= "0010"; wait for 100 ns;
        bin <= "0011"; wait for 100 ns;
        bin <= "0100"; wait for 100 ns;
        bin <= "0101"; wait for 100 ns;
        bin <= "0110"; wait for 100 ns;
        bin <= "0111"; wait for 100 ns;
        bin <= "1001"; wait for 100 ns;
        bin <= "1010"; wait for 100 ns;
        bin <= "1011"; wait for 100 ns;
        bin <= "1100"; wait for 100 ns;
        bin <= "1101"; wait for 100 ns;
        bin <= "1110"; wait for 100 ns;
        bin <= "1111"; wait;
    end process;
end Behavioral;
