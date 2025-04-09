----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:14:15 03/23/2025 
-- Design Name: 
-- Module Name:    ncdr_and2 - Behavioral 
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

entity ncdr_and2 is
    Port ( ncdr_and2_a : in  STD_LOGIC_VECTOR (1 downto 0);
           ncdr_and2_z : out  STD_LOGIC);
end ncdr_and2;

architecture Behavioral of ncdr_and2 is

begin
	ncdr_and2_z <= ncdr_and2_a(1) and ncdr_and2_a(0);
end Behavioral;

