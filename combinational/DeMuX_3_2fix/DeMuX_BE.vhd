----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:16:52 03/23/2025 
-- Design Name: 
-- Module Name:    DeMuX_BE - Behavioral 
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
---------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DeMuX_BE is
    Port ( dm_a : in  STD_LOGIC;
           dm_sel : in  STD_LOGIC_VECTOR (1 downto 0);
           dm_z : out  STD_LOGIC_VECTOR (3 downto 0));
end DeMuX_BE;

architecture Behavioral of DeMuX_BE is

begin
	process(dm_a, dm_sel) is
	begin
		if ((dm_sel(1)='0') and (dm_sel(0)='0')) then dm_z(3) <= '0'; dm_z(2) <= '0'; dm_z(1) <= '0'; dm_z(0) <= dm_a;
		elsif ((dm_sel(1)='0') and (dm_sel(0)='1')) then dm_z(3) <= '0'; dm_z(2) <= '0'; dm_z(1) <= dm_a; dm_z(0) <= '0';
		elsif ((dm_sel(1)='1') and (dm_sel(0)='0')) then dm_z(3) <= '0'; dm_z(2) <= dm_a; dm_z(1) <= '0'; dm_z(0) <= '0';
		else dm_z(3) <= dm_a; dm_z(2) <= '0'; dm_z(1) <= '0'; dm_z(0) <= '0';
		end if;
	end process;
end Behavioral;

