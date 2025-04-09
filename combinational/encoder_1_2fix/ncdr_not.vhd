----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:17:21 03/23/2025 
-- Design Name: 
-- Module Name:    ncdr_not - Behavioral 
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

entity ncdr_not is
    Port ( ncdr_not_a : in  STD_LOGIC;
           ncdr_not_z : out  STD_LOGIC);
end ncdr_not;

architecture Behavioral of ncdr_not is

begin
	ncdr_not_z <= not ncdr_not_a;
end Behavioral;

