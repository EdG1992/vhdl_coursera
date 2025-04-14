----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2025 05:37:47 PM
-- Design Name: 
-- Module Name: dff_TB - Behavioral
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

entity dff_TB is
--  Port ( );
end dff_TB;

architecture Behavioral of dff_TB is
    component dff is port(
        clk, data: in STD_LOGIC;
        q, qneg: out STD_LOGIC);
    end component;

    --INPUTS
    signal clk, data: STD_LOGIC := '0';

    --OUTPUTS
    signal q, qneg: STD_LOGIC;
begin
    
    uut: dff port map(
        clk => clk, data => data,
        q => q, qneg => qneg);
    
    --Clock process
    clk_process: process begin
        clk <= not clk;
        wait for 10 ns;
    end process;

    --Stimulus process
    stimulus: process begin
        data <= '0'; wait for 100 ns;
        data <= '1'; wait for 100 ns;
        data <= '0'; wait for 100 ns;
        data <= '1'; wait for 100 ns;
        wait;
    end process;

end Behavioral;
