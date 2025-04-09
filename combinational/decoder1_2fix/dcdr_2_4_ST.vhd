----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:43:31 03/23/2025 
-- Design Name: 
-- Module Name:    dcdr_2_4_ST - Behavioral 
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

entity dcdr_2_4_ST is
    Port ( dcdr_a : in  STD_LOGIC_VECTOR (1 downto 0);
           dcdr_ena : in  STD_LOGIC;
           dcdr_z : out  STD_LOGIC_VECTOR (3 downto 0));
end dcdr_2_4_ST;

architecture Behavioral of dcdr_2_4_ST is

	component dcdr_and3 is port(
		dcdr_and3_a : in  STD_LOGIC_VECTOR (2 downto 0);
		dcdr_and3_z : out  STD_LOGIC);
	end component;
	
	component dcdr_not is port(
		dcdr_not_a : in  STD_LOGIC;
		dcdr_not_b : out  STD_LOGIC);
	end component dcdr_not;
	
	signal s1, s0: std_logic;

begin
	u1: dcdr_not port map(
		dcdr_not_a => dcdr_a(1),
		dcdr_not_b => s1);
	u2: dcdr_not port map(
		dcdr_not_a => dcdr_a(0),
		dcdr_not_b => s0);
	u3: dcdr_and3 port map(
		dcdr_and3_a(2) => s0,
		dcdr_and3_a(1) => dcdr_ena,
		dcdr_and3_a(0) => s1,
		dcdr_and3_z => dcdr_z(0));
	u4: dcdr_and3 port map(
		dcdr_and3_a(2) => dcdr_a(0),
		dcdr_and3_a(1) => dcdr_ena,
		dcdr_and3_a(0) => s1,
		dcdr_and3_z => dcdr_z(1));
	u5: dcdr_and3 port map(
		dcdr_and3_a(2) => dcdr_a(1),
		dcdr_and3_a(1) => dcdr_ena,
		dcdr_and3_a(0) => s0,
		dcdr_and3_z => dcdr_z(2));
	u6: dcdr_and3 port map(
		dcdr_and3_a(2) => dcdr_a(1),
		dcdr_and3_a(1) => dcdr_ena,
		dcdr_and3_a(0) => dcdr_a(0),
		dcdr_and3_z => dcdr_z(3));
end Behavioral;

