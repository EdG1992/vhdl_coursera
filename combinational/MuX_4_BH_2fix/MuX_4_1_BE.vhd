----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:39:39 03/22/2025 
-- Design Name: 
-- Module Name:    MuX_4_1_BE - Behavioral 
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

entity MuX_4_1_BE is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end MuX_4_1_BE;

architecture Behavioral of MuX_4_1_BE is

begin
	process (A, B, C, D, S0, S1) is
		begin
			if (S1 = '0' and S0 = '0') then
				Z <= A;
			elsif (S1 = '0' and S0 = '1') then
				Z <= B;
			elsif (S1 = '1' and S0 = '0') then
				Z <= C;
			else
				Z <= D;
			end if;
		end process;
end Behavioral;

