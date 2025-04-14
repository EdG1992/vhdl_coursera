----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 11:15:41 AM
-- Design Name: 
-- Module Name: srff_TB - Behavioral
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

entity srff_TB is
--  Port ( );
end srff_TB;

architecture Behavioral of srff_TB is
    component srff is port(
        srff_S, srff_R, srff_RST, srff_CLK : in STD_LOGIC;
        srff_Q, srff_Qneg : out STD_LOGIC);
    end component;

    --INPUTS
    signal srff_S, srff_R, srff_RST, srff_CLK: STD_LOGIC := '0';

    --OUTPUTS
    signal srff_Q, srff_Qneg: STD_LOGIC;

begin
    uut: srff port map(
        srff_S => srff_S,
        srff_R => srff_R,
        srff_RST => srff_RST,
        srff_CLK => srff_CLK,
        srff_Q => srff_Q,
        srff_Qneg => srff_Qneg);

    --Clock process definitions
    clock: process begin
        srff_CLK <= '0'; wait for 10 ns;
        srff_CLK <= '1'; wait for 10 ns;
    end process;

    stimulus: process begin
        srff_RST <= '0'; srff_S <= '0'; srff_R <= '0'; wait for 20 ns;
        srff_S <= '0'; srff_R <= '1'; wait for 20 ns;
        srff_S <= '1'; srff_R <= '0'; wait for 20 ns;
        srff_S <= '1'; srff_R <= '1'; wait for 20 ns;
    end process;

end Behavioral;
