----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2025 08:47:57 AM
-- Design Name: 
-- Module Name: bs_ST_TB - Behavioral
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

entity bs_ST_TB is
--  Port ( );
end bs_ST_TB;

architecture Behavioral of bs_ST_TB is

    component bs_ST is port(
        bs_sel : in STD_LOGIC_VECTOR (2 downto 0);
        bs_A : in STD_LOGIC_VECTOR (7 downto 0);
        bs_Z : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    --INPUTS
    signal bs_sel: STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
    signal bs_A: STD_LOGIC_VECTOR (7 downto 0) := (others => '0');

    --OUTPUTS
    signal bs_Z: STD_LOGIC_VECTOR (7 downto 0);

begin
    uut: bs_ST port map(
        bs_sel => bs_sel,
        bs_A => bs_A,
        bs_Z => bs_Z);

    stimulus: process
    begin
        wait for 100 ns;
        bs_A <= "00001111"; wait for 100 ns;
        bs_sel <= "000"; wait for 100 ns;
        bs_sel <= "001"; wait for 100 ns;
        bs_sel <= "010"; wait for 100 ns;
        bs_sel <= "011"; wait for 100 ns;
        bs_sel <= "100"; wait for 100 ns;
        bs_sel <= "101"; wait for 100 ns;
        bs_sel <= "110"; wait for 100 ns;
        bs_sel <= "111"; wait;
    end process;

end Behavioral;
