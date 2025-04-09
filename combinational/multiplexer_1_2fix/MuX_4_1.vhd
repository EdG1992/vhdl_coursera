----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:08:38 03/22/2025 
-- Design Name: 
-- Module Name:    MuX_4_1 - structural 
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

entity MuX_4_1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end MuX_4_1;

architecture structural of MuX_4_1 is
	
	component MuX_2_1 is
		port(
			a: in STD_LOGIC;
			b: in STD_LOGIC;
			s: in STD_LOGIC;
			y: out STD_LOGIC);
	end component;
	
	signal temp1, temp2: std_logic;
				
begin
	test0: MuX_2_1 port map(a=>A, b=>B, s=>S1, y=>temp1);
	test1: MuX_2_1 port map(a=>C, b=>D, s=>S1, y=>temp2);
	test2: MuX_2_1 port map(a=>temp1, b=>temp2, s=>S0, y=>Y);
end structural;

