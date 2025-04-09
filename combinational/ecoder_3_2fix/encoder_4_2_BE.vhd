----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:24:44 03/23/2025 
-- Design Name: 
-- Module Name:    encoder_4_2_BE - Behavioral 
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

entity encoder_4_2_BE is
    Port ( ncdr_a : in  STD_LOGIC_VECTOR (3 downto 0);
           ncdr_z : out  STD_LOGIC_VECTOR (1 downto 0));
end encoder_4_2_BE;

architecture Behavioral of encoder_4_2_BE is
begin
	process(ncdr_a)
	begin
		if (ncdr_a(3) = '1') then
			ncdr_z(1) <= '1';
			ncdr_z(0) <= '1';
		elsif (ncdr_a(2) = '1') then
			ncdr_z(1) <= '1';
			ncdr_z(0) <= '0';
		elsif (ncdr_a(1) = '1') then
			ncdr_z(1) <= '0';
			ncdr_z(0) <= '1';
		elsif (ncdr_a(0) = '1') then
			ncdr_z(1) <= '0';
			ncdr_z(0) <= '0';
		else
			ncdr_z(1) <= '0';
			ncdr_z(0) <= '0';
		end if;
	end process;
end Behavioral;

