----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:58:56 04/07/2025 
-- Design Name: 
-- Module Name:    com_nor2 - Behavioral 
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

entity com_nor2 is
    Port ( com_nor2_A : in  STD_LOGIC_VECTOR (1 downto 0);
           com_nor2_Z : out  STD_LOGIC);
end com_nor2;

architecture Behavioral of com_nor2 is

begin
	com_nor2_Z <= not(com_nor2_A(1) or com_nor2_A(0));
end Behavioral;

