----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:45:08 03/23/2025 
-- Design Name: 
-- Module Name:    dcdr_and3 - Behavioral 
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

entity dcdr_and3 is
    Port ( dcdr_and3_a : in  STD_LOGIC_VECTOR (2 downto 0);
           dcdr_and3_z : out  STD_LOGIC);
end dcdr_and3;

architecture Behavioral of dcdr_and3 is

begin
	dcdr_and3_z <= dcdr_and3_a(2) and dcdr_and3_a(1) and dcdr_and3_a(0);
end Behavioral;

