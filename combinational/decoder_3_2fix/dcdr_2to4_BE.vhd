----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:17:27 04/07/2025 
-- Design Name: 
-- Module Name:    dcdr_2to4_BE - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dcdr_2to4_BE is
    Port ( dcdr_2to4_a : in  STD_LOGIC_VECTOR (1 downto 0);
           dcdr_2to4_z : out  STD_LOGIC_VECTOR (3 downto 0));
end dcdr_2to4_BE;

architecture Behavioral of dcdr_2to4_BE is
begin
	process(dcdr_2to4_a)
	begin
		case dcdr_2to4_a is
			when "00" => dcdr_2to4_z <= "0001";
			when "01" => dcdr_2to4_z <= "0010";
			when "10" => dcdr_2to4_z <= "0100";
			when others => dcdr_2to4_z <= "1000";
		end case;
	end process;

end Behavioral;

