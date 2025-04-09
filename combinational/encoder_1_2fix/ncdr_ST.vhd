----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:01:38 03/23/2025 
-- Design Name: 
-- Module Name:    ncdr_ST - structural 
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

entity ncdr_ST is
    Port ( ncdr_a : in  STD_LOGIC_VECTOR (3 downto 0);
           ncdr_z : out  STD_LOGIC_VECTOR (1 downto 0);
			  ncdr_v : out std_logic);
end ncdr_ST;

architecture structural of ncdr_ST is
	component ncdr_or3 is port(
		ncdr_or3_a: in STD_LOGIC_VECTOR(3 downto 0);
		ncdr_or3_z: out STD_LOGIC);
	end component;
	
	component ncdr_or is port(
		ncdr_or_a: in STD_LOGIC_VECTOR (1 downto 0);
		ncdr_or_z: out STD_LOGIC);
	end component;
	
	component ncdr_and2 is port(
		ncdr_and2_a: in STD_LOGIC_VECTOR (1 downto 0);
		ncdr_and2_z: out STD_LOGIC);
	end component;
	
	component ncdr_not is port(
		ncdr_not_a: in STD_LOGIC;
		ncdr_not_z: out STD_LOGIC);
	end component;
	
	signal s1, s2: std_logic;
	
begin
	not1: ncdr_not port map(
		ncdr_not_a => ncdr_a(2),
		ncdr_not_z => s1);
	
	and1: ncdr_and2 port map(
		ncdr_and2_a(1) => s1,
		ncdr_and2_a(0) => ncdr_a(1),
		ncdr_and2_z => s2);
		
	or1: ncdr_or port map(
		ncdr_or_a(1) => ncdr_a(3),
		ncdr_or_a(0) => ncdr_a(2),
		ncdr_or_z => ncdr_z(1));
		
	or2: ncdr_or port map(
		ncdr_or_a(1) => ncdr_a(3),
		ncdr_or_a(0) => s2,
		ncdr_or_z => ncdr_z(0));
		
	or3: ncdr_or3 port map(
		ncdr_or3_a(3) => ncdr_a(3),
		ncdr_or3_a(2) => ncdr_a(2),
		ncdr_or3_a(1) => ncdr_a(1),
		ncdr_or3_a(0) => ncdr_a(0),
		ncdr_or3_z => ncdr_v);
end structural;

