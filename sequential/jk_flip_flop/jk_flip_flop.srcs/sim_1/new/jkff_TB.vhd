----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 12:27:30 PM
-- Design Name: 
-- Module Name: jkff_TB - Behavioral
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

entity jkff_TB is
--  Port ( );
end jkff_TB;

architecture Behavioral of jkff_TB is
    component jkff is port(
        jkff_J, jkff_K, jkff_RST, jkff_CLK : in STD_LOGIC;
        jkff_Q, jkff_Qdash : out STD_LOGIC);
    end component;

    --INPUTS
    signal jkff_J, jkff_K, jkff_RST, jkff_CLK: STD_LOGIC := '0';

    --OUTPUTS
    signal jkff_Q, jkff_Qdash: STD_LOGIC;
    
begin
    uut: jkff port map(
        jkff_J => jkff_J,
        jkff_K => jkff_K,
        jkff_RST => jkff_RST,
        jkff_CLK => jkff_CLK,
        jkff_Q => jkff_Q,
        jkff_Qdash => jkff_Qdash);

    --clock process
    clock: process begin
        jkff_CLK <= '0'; wait for 10 ns;
        jkff_CLK <= '1'; wait for 10 ns;
    end process;

    stimulus: process begin
        jkff_J <= '0'; jkff_K <= '0'; jkff_RST <= '0'; wait for 20 ns;
        jkff_J <= '0'; jkff_K <= '1'; jkff_RST <= '0'; wait for 20 ns;
        jkff_J <= '1'; jkff_K <= '0'; jkff_RST <= '0'; wait for 20 ns;
        jkff_J <= '1'; jkff_K <= '1'; jkff_RST <= '0'; wait for 200 ns;
        jkff_J <= '0'; jkff_K <= '0'; jkff_RST <= '0'; wait for 20 ns;
        jkff_J <= '0'; jkff_K <= '0'; jkff_RST <= '1'; wait for 20 ns;
    end process;

end Behavioral;
