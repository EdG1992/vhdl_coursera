----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:28:06 03/21/2025 
-- Design Name: 
-- Module Name:    rca_be - Behavioral 
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

entity rca_be is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end rca_be;

architecture Behavioral of rca_be is

begin
		
	process(a, b, cin)
		variable p: std_logic_vector(3 downto 0);
		variable g: std_logic_vector(3 downto 0);
		variable c: std_logic_vector(3 downto 1);
		
		begin
			p := a xor b;
			g := a and b;
			c(1) := g(0) or (p(0) and cin);
			c(2) := g(1) or (p(1) and c(1));
			c(3) := g(2) or (p(2) and c(2));
			cout <= g(3) or (p(3) and c(3));
			s(0) <= p(0) xor cin;
			s(1) <= p(1) xor c(1);
			s(2) <= p(2) xor c(2);
			s(3) <= p(3) xor c(3);
	end process;

end Behavioral;

