----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:57:01 04/07/2025 
-- Design Name: 
-- Module Name:    com_and2 - Behavioral 
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

entity com_and2 is
    Port ( com_and2_A : in  STD_LOGIC_VECTOR (1 downto 0);
           com_and2_Z : out  STD_LOGIC);
end com_and2;

architecture Behavioral of com_and2 is

begin
	com_and2_Z <= com_and2_A(1) and com_and2_A(0);
end Behavioral;

