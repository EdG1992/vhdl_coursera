----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2025 02:30:58 PM
-- Design Name: 
-- Module Name: dLatch_BE - Behavioral
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

entity dLatch_BE is
    Port ( data, enable : in STD_LOGIC;
           q, qneg : out STD_LOGIC);
end dLatch_BE;

architecture Behavioral of dLatch_BE is

begin
    process(enable, data) begin
        if (enable = '1') then
            q <= data;
            qneg <= not data;
        end if;
    end process;

end Behavioral;
