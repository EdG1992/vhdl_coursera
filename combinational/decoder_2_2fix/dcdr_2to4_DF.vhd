----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:08:09 04/07/2025 
-- Design Name: 
-- Module Name:    dcdr_2to4_DF - Behavioral 
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

entity dcdr_2to4_DF is
    Port ( dcdr_2to4_a : in  STD_LOGIC_VECTOR (1 downto 0);
           dcdr_2to4_z : out  STD_LOGIC_VECTOR (3 downto 0));
end dcdr_2to4_DF;

architecture Behavioral of dcdr_2to4_DF is

begin
	dcdr_2to4_z(0) <= ((not dcdr_2to4_a(1)) and (not dcdr_2to4_a(0)));
	dcdr_2to4_z(1) <= ((not dcdr_2to4_a(1)) and dcdr_2to4_a(0));
	dcdr_2to4_z(2) <= (dcdr_2to4_a(1) and (not dcdr_2to4_a(0)));
	dcdr_2to4_z(3) <= (dcdr_2to4_a(1) and dcdr_2to4_a(0));
end Behavioral;

