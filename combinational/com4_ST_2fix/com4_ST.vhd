----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:51:35 04/07/2025 
-- Design Name: 
-- Module Name:    com4_ST - Behavioral 
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

entity com4_ST is
    Port ( com4_A, com4_B: in STD_LOGIC_VECTOR(3 downto 0);
           A_greater_B: out STD_LOGIC;
           A_smaller_B: out STD_LOGIC;
           A_equal_B: out STD_LOGIC);
end com4_ST;

architecture Behavioral of com4_ST is

	component com_and2 is port(
		com_and2_A: in STD_LOGIC_VECTOR(1 downto 0);
		com_and2_Z: out STD_LOGIC);
	end component;
	
	component com_nor2 is port(
		com_nor2_A: in STD_LOGIC_VECTOR(1 downto 0);
		com_nor2_Z: out STD_LOGIC);
	end component;
	
	component com_not is port(
		com_not_A: in STD_LOGIC;
		com_not_B: out STD_LOGIC);
	end component;
	
	component com_or4 is port(
		com_or4_A: in STD_LOGIC_VECTOR(3 downto 0);
		com_or4_Z: out STD_LOGIC);
	end component;
	
	component com4_nanor is port(
		com4_nanor_A: in STD_LOGIC_VECTOR(1 downto 0);
		com4_nanor_Z: out STD_LOGIC_VECTOR(2 downto 0));
	end component;
	
	signal s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20: std_logic;
	
begin
	nanor1: com4_nanor port map(
		com4_nanor_A(0) => com4_A(0),
		com4_nanor_A(1) => com4_B(0),
		com4_nanor_Z(0) => s2,
		com4_nanor_Z(1) => s1,
		com4_nanor_Z(2) => s0);
		
	nanor2: com4_nanor port map(
		com4_nanor_A(0) => com4_A(1),
		com4_nanor_A(1) => com4_B(1),
		com4_nanor_Z(0) => s5,
		com4_nanor_Z(1) => s4,
		com4_nanor_Z(2) => s3);
		
	nanor3: com4_nanor port map(
		com4_nanor_A(0) => com4_A(2),
		com4_nanor_A(1) => com4_B(2),
		com4_nanor_Z(0) => s8,
		com4_nanor_Z(1) => s7,
		com4_nanor_Z(2) => s6);
		
	nanor4: com4_nanor port map(
		com4_nanor_A(0) => com4_A(3),
		com4_nanor_A(1) => com4_B(3),
		com4_nanor_Z(0) => s11,
		com4_nanor_Z(1) => s10,
		com4_nanor_Z(2) => s9);
		
	and1: com_and2 port map(
		com_and2_A(1) => s10,
		com_and2_A(0) => s7,
		com_and2_Z => s12);
		
	and2: com_and2 port map(
		com_and2_A(1) => s10,
		com_and2_A(0) => s8,
		com_and2_Z => s13);
		
	and3: com_and2 port map(
		com_and2_A(1) => s10,
		com_and2_A(0) => s6,
		com_and2_Z => s14);
		
	and4: com_and2 port map(
		com_and2_A(1) => s12,
		com_and2_A(0) => s4,
		com_and2_Z => s17);
	
	and5: com_and2 port map(
		com_and2_A(1) => s12,
		com_and2_A(0) => s5,
		com_and2_Z => s15);
	
	and6: com_and2 port map(
		com_and2_A(1) => s12,
		com_and2_A(0) => s3,
		com_and2_Z => s16);
	
	and7: com_and2 port map(
		com_and2_A(1) => s17,
		com_and2_A(0) => s2,
		com_and2_Z => s19);
		
	and8: com_and2 port map(
		com_and2_A(1) => s17,
		com_and2_A(0) => s1,
		com_and2_Z => s18);
		
	and9: com_and2 port map(
		com_and2_A(1) => s17,
		com_and2_A(0) => s0,
		com_and2_Z => s20);
	
	or1: com_or4 port map(
		com_or4_A(3) => s11,
		com_or4_A(2) => s13,
		com_or4_A(1) => s15,
		com_or4_A(0) => s19,
		com_or4_z => A_smaller_B);
		
	or2: com_or4 port map(
		com_or4_A(3) => s9,
		com_or4_A(2) => s14,
		com_or4_A(1) => s16,
		com_or4_A(0) => s20,
		com_or4_z => A_greater_B);
		
	A_equal_B <= s18;

end Behavioral;

