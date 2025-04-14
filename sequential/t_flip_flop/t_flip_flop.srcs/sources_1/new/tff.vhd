----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 01:21:09 PM
-- Design Name: 
-- Module Name: tff - Behavioral
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

entity tff is
    Port ( tff_T, tff_RST, tff_CLK, tff_TEMP : in STD_LOGIC;
           tff_Q, tff_Qdash : out STD_LOGIC);
end tff;

architecture Behavioral of tff is

begin
    process(tff_T, tff_RST, tff_CLK)
        variable temp: STD_LOGIC:= '0';
    begin
        if(tff_RST='1') then
            temp:='0';
        elsif(falling_edge(tff_CLK)) then
            if(tff_T='1') then
                temp:= not temp;
            end if;
        end if;
        tff_Q <= not temp;
        tff_Qdash <= temp;
    end process;
    
end Behavioral;
