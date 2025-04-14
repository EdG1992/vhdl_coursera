----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2025 02:21:31 PM
-- Design Name: 
-- Module Name: dLatch_DF_TB - Behavioral
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

entity dLatch_DF_TB is
--  Port ( );
end dLatch_DF_TB;

architecture Behavioral of dLatch_DF_TB is
    component dLatch_DF is port(
        data, enable : in STD_LOGIC;
        q, qneg : out STD_LOGIC);
    end component;

    --INPUTS
    signal data, enable : STD_LOGIC := '0';

    --OUTPUTS
    signal q, qneg: STD_LOGIC;

begin
    uut: dLatch_DF port map(
        data => data,
        enable => enable,
        q => q,
        qneg => qneg);

    stimulus: process begin
        wait for 100 ns;
        data <= '0'; enable <= '0'; wait for 100 ns;
        data <= '1'; enable <= '0'; wait for 100 ns;
        data <= '0'; enable <= '1'; wait for 100 ns;
        data <= '1'; enable <= '1'; wait;
    end process;
    
end Behavioral;
