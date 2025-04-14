----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 11:14:25 AM
-- Design Name: 
-- Module Name: srff - Behavioral
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

entity srff is
    Port ( srff_S, srff_R, srff_RST, srff_CLK : in STD_LOGIC;
           srff_Q, srff_Qneg : out STD_LOGIC);
end srff;

architecture Behavioral of srff is

begin
    process(srff_S, srff_R, srff_RST, srff_CLK) begin
        if (srff_RST = '1') then
            srff_Q <= '0';
            srff_Qneg <= '1';
        elsif (srff_S /= srff_R) then
            srff_Q <= srff_S;
            srff_Qneg <= srff_R;
        elsif (srff_S = '1' and srff_R = '1') then
            srff_Q <= 'Z';
            srff_Qneg <= 'Z';
        end if;
    end process;

end Behavioral;
