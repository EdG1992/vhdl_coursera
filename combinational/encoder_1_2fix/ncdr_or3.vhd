----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:07:03 03/23/2025 
-- Design Name: 
-- Module Name:    ncdr_or3 - Behavioral 
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

entity ncdr_or3 is
    Port ( ncdr_or3_a : in  STD_LOGIC_VECTOR (3 downto 0);
           ncdr_or3_z : out  STD_LOGIC);
end ncdr_or3;

architecture Behavioral of ncdr_or3 is

begin
	ncdr_or3_z <= ncdr_or3_a(3) or ncdr_or3_a(2) or ncdr_or3_a(1) or ncdr_or3_a(0);
end Behavioral;

