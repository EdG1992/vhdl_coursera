----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2025 12:27:05 PM
-- Design Name: 
-- Module Name: jkff - Behavioral
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

entity jkff is
    Port ( jkff_J, jkff_K, jkff_RST, jkff_CLK : in STD_LOGIC;
           jkff_Q, jkff_Qdash : out STD_LOGIC);
end jkff;

architecture Behavioral of jkff is

begin
    process(jkff_RST, jkff_CLK)
        variable qn: STD_LOGIC;
    begin
        if (jkff_RST = '1') then
            qn := '0';
        elsif (jkff_CLK'event and jkff_CLK = '1') then
            if(jkff_J = '0' and jkff_K = '0') then
                qn := qn;
            elsif (jkff_J = '0' and jkff_K = '1') then
                qn := '0';
            elsif (jkff_J = '1' and jkff_K = '0') then
                qn := '1';
            elsif (jkff_J = '1' and jkff_K = '1') then
                qn := not qn;
            else null;
            end if;
        else null;
        end if;
        jkff_Q <= qn;
        jkff_Qdash <= not qn;
    end process;
end Behavioral;
