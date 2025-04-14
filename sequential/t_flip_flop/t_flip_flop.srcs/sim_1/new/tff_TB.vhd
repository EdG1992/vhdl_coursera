----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 01:21:31 PM
-- Design Name: 
-- Module Name: tff_TB - Behavioral
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

entity tff_TB is
--  Port ( );
end tff_TB;

architecture Behavioral of tff_TB is
    component tff is port(
        tff_T, tff_RST, tff_CLK, tff_TEMP: in STD_LOGIC := '0';
        tff_Q, tff_Qdash : out STD_LOGIC);
    end component;

    --INPUTS
    signal tff_T, tff_RST, tff_CLK, tff_TEMP: STD_LOGIC;

    --OUTPUTS
    signal tff_Q, tff_Qdash: STD_LOGIC;

begin
    uut: tff port map(
        tff_T => tff_T,
        tff_RST => tff_RST,
        tff_CLK => tff_CLK,
        tff_TEMP => tff_TEMP,
        tff_Q => tff_Q,
        tff_Qdash => tff_Qdash);

    --clock process
    clock: process begin
        tff_CLK <= '0'; wait for 10 ns;
        tff_CLK <= '1'; wait for 10 ns;
    end process;

    --UUT stimulus procces
    stimulus: process begin
        tff_RST <= '0';
        tff_T <= '0'; wait for 200 ns;
        tff_T <= '1'; wait for 200 ns;
        wait;
    end process;


end Behavioral;
