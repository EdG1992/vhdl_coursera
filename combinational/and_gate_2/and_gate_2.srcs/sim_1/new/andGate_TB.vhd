----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2025 02:57:16 PM
-- Design Name: 
-- Module Name: andGate_TB - Behavioral
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

entity andGate_TB is
--  Port ( );
end andGate_TB;

architecture Behavioral of andGate_TB is
    component andGate2 is port(
        andGate_A : in STD_LOGIC_VECTOR (1 downto 0);
        andGate_Z : out STD_LOGIC);
    end component;

    --INPUTS
    signal andGate_A: STD_LOGIC_VECTOR (1 downto 0) := (others => '0');

    --OUTPUTS
    signal andGate_Z: STD_LOGIC;

begin
    uut: andGate2 port map(
        andGate_A => andGate_A,
        andGate_Z => andGate_Z
    );

    stimulus: process begin
        wait for 10 ns;
        andGate_A(1) <= '0'; andGate_A(0) <= '0'; wait for 10 ns;
        andGate_A(1) <= '0'; andGate_A(1) <= '0'; wait for 10 ns;
        andGate_A(1) <= '1'; andGate_A(0) <= '0'; wait for 10 ns;
        andGate_A(1) <= '1'; andGate_A(0) <= '1'; wait;
    end process;
end Behavioral;
