----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:48:19 03/20/2025 
-- Design Name: 
-- Module Name:    HA - Behavioral 
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

entity HA is
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carrier : out  STD_LOGIC);
end HA;

architecture Behavioral of HA is

	component xor_gate is
		port (x: in std_logic;
				y: in std_logic;
				o: out std_logic);
	end component;
	
	component and_gate is
		port (in_1: in std_logic;
				in_2: in std_logic;
				out_1: out std_logic);
	end component; 
begin

	u1: xor_gate port map (i1, i2, sum);
	u2: and_gate port map (i1, i2, carrier);
		
end Behavioral;
