----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:03:24 04/08/2025 
-- Design Name: 
-- Module Name:    com_or4 - Behavioral 
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

entity com_or4 is
    Port ( com_or4_A : in  STD_LOGIC_VECTOR (3 downto 0);
           com_or4_Z : out  STD_LOGIC);
end com_or4;

architecture Behavioral of com_or4 is

begin
	com_or4_Z <= com_or4_A(3) or com_or4_A(2) or com_or4_A(1) or com_or4_A(0);
end Behavioral;

