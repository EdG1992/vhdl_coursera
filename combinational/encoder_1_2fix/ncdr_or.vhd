----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:04:01 03/23/2025 
-- Design Name: 
-- Module Name:    ncdr_or - Behavioral 
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

entity ncdr_or is
    Port ( ncdr_or_a : in  STD_LOGIC_VECTOR (1 downto 0);
           ncdr_or_z : out  STD_LOGIC);
end ncdr_or;

architecture Behavioral of ncdr_or is

begin
	ncdr_or_z <= ncdr_or_a(1) or ncdr_or_a(0);
end Behavioral;

