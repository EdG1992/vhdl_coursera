----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2025 04:43:56 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Port ( counter_clk, counter_reset : in STD_LOGIC;
           counter_OUT : out STD_LOGIC_VECTOR (3 downto 0));
end counter;

architecture Behavioral of counter is

    signal counter_down: std_logic_vector(3 downto 0);

begin
    process(counter_clk) begin
        if(rising_edge(counter_clk)) then
            if(counter_reset = '1') then
                counter_down <= x"F";
            else
                counter_down <= counter_down - x"1";
            end if;
        end if;
    end process;

    counter_OUT <= counter_down;

end Behavioral;
