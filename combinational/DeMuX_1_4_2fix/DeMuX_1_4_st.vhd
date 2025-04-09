----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:49:53 03/22/2025 
-- Design Name: 
-- Module Name:    DeMuX_1_4_st - Behavioral 
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

entity DeMuX_1_4_st is
    Port ( a : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           z : out  STD_LOGIC_VECTOR (3 downto 0));
end DeMuX_1_4_st;

architecture structural of DeMuX_1_4_st is
	component notGate is
		port(
			a: in std_logic;
			b: out std_logic);
	end component;
	
	component andGate is
		port(
			a: in std_logic_vector(2 downto 0);
			z: out std_logic);
	end component;
	
	signal s1, s0: std_logic;

begin
	z1: notGate port map(a=>s(1), b=>s1);
	z2: notGate port map(a=>s(0), b=>s0);
	z3: andGate port map(a(2)=>s(1), a(1)=>s(0), a(0)=>a, z=>z(3));
	z4: andGate port map(a(2)=>s(1), a(1)=>s0, a(0)=>a, z=>z(2));
	z5: andGate port map(a(2)=>s1, a(1)=>s(0), a(0)=>a, z=>z(1));
	z6: andGate port map(a(2)=>s1, a(1)=>s0, a(0)=>a, z=>z(0));
end structural;

