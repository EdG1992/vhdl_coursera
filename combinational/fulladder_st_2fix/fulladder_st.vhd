----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:07:15 03/21/2025 
-- Design Name: 
-- Module Name:    fulladder_st - structural 
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

entity fulladder_st is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end fulladder_st;

architecture structural of fulladder_st is

	component and_gate is
		port( in_1: in std_logic;
				in_2: in std_logic;
				out_1: out std_logic);
	end component;

	component or_gate is
		port( a: in std_logic;
				b: in std_logic;
				c: out std_logic);
	end component;

	component xor_gate is
		port( x: in std_logic;
				y: in std_logic;
				o: out std_logic);
	end component;

	signal s1, s2, s3: std_logic;

begin

	u1: xor_gate port map(a, b, s1);
	u2: xor_gate port map(s1, cin, sum);
	u3: and_gate port map(a, b, s2);
	u4: and_gate port map(s1, cin, s3);
	u5: or_gate port map(s2, s3, cout);

end structural;

