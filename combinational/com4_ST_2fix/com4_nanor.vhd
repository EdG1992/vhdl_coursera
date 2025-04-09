----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:19:16 04/08/2025 
-- Design Name: 
-- Module Name:    com4_nanor - Behavioral 
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

entity com4_nanor is
    Port ( com4_nanor_A: in STD_LOGIC_VECTOR(1 downto 0);
           com4_nanor_Z: out STD_LOGIC_VECTOR(2 downto 0));
end com4_nanor;

architecture Behavioral of com4_nanor is
	
	component com_not is port(
		com_not_A: in STD_LOGIC;
		com_not_B: out STD_LOGIC);
	end component;
	
	component com_and2 is port(
		com_and2_A: in STD_LOGIC_VECTOR(1 downto 0);
		com_and2_Z: out STD_LOGIC);
	end component;
	
	component com_nor2 is port(
		com_nor2_A: in STD_LOGIC_VECTOR(1 downto 0);
		com_nor2_Z: out STD_LOGIC);
	end component;
	
	signal s1, s2, s3, s4: std_logic;
	
begin
	not1: com_not port map(
		com_not_A => com4_nanor_A(0),
		com_not_B => s1);
	
	not2: com_not port map(
		com_not_A => com4_nanor_A(1),
		com_not_B => s2);
	
	and1: com_and2 port map(
		com_and2_A(0) => s1,
		com_and2_A(1) => com4_nanor_A(1),
		com_and2_Z => s3);
	
	and2: com_and2 port map(
		com_and2_A(0) => s2,
		com_and2_A(1) => com4_nanor_A(0),
		com_and2_Z => s4);
	
	nor1: com_nor2 port map(
		com_nor2_A(0) => s3,
		com_nor2_A(1) => s4,
		com_nor2_Z => com4_nanor_Z(1));
	
	com4_nanor_Z(0) <= s3;
	com4_nanor_Z(2) <= s4;

end Behavioral;

