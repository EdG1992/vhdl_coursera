----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:12:33 03/21/2025 
-- Design Name: 
-- Module Name:    rca_st - structural 
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

entity rca_st is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end rca_st;

architecture structural of rca_st is

	component fa_be is
		port (a:in std_logic;
				b:in std_logic;
				cin: in std_logic;
				sum: out std_logic;
				cout: out std_logic);
	end component;
	
	signal t: std_logic_vector(2 downto 0);
	
begin
	
	i1: fa_be port map(a(0), b(0), cin, sum(0), t(0));
	i2: fa_be port map(a(1), b(1), t(0), sum(1), t(1));
	i3: fa_be port map(a(2), b(2), t(1), sum(2), t(2));
	i4: fa_be port map(a(3), b(3), t(2), sum(3), cout);
	
end structural;

