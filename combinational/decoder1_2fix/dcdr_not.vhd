----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:44:19 03/23/2025 
-- Design Name: 
-- Module Name:    dcdr_not - Behavioral 
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

entity dcdr_not is
    Port ( dcdr_not_a : in  STD_LOGIC;
           dcdr_not_b : out  STD_LOGIC);
end dcdr_not;

architecture Behavioral of dcdr_not is

begin
	dcdr_not_b <= not dcdr_not_a;
end Behavioral;

