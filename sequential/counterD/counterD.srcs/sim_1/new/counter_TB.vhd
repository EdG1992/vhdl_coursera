----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2025 04:44:28 PM
-- Design Name: 
-- Module Name: counter_TB - Behavioral
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

entity counter_TB is
--  Port ( );
end counter_TB;

architecture Behavioral of counter_TB is

    component counter is port(
        counter_clk, counter_reset : in STD_LOGIC;
        counter_OUT : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    --INPUTS
    signal counter_clk, counter_reset: STD_LOGIC := '0';

    --OUTPUTS
    signal counter_OUT: STD_LOGIC_VECTOR (3 downto 0);
begin

    --utt instantiation
    uut: counter port map(
        counter_clk => counter_clk, counter_reset => counter_reset,
        counter_OUT => counter_OUT);

    --clock process
    clock_process: process begin
        counter_clk <= '0'; wait for 10 ns;
        counter_clk <= '1'; wait for 10 ns;
    end process;

    --stimulus process
    stimulus_process: process begin
        wait for 20 ns;
        counter_reset <= '0'; wait for 20 ns;
        counter_reset <= '1'; wait for 100 ns;
        counter_reset <= '0'; wait;
    end process;

end Behavioral;
