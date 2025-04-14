----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2025 12:49:15 PM
-- Design Name: 
-- Module Name: dLatch_nand2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dLatch_nand2 is
    Port ( dLatch_nand2_A : in STD_LOGIC_VECTOR (1 downto 0);
           dLatch_nand2_Z : out STD_LOGIC);
end dLatch_nand2;

architecture Behavioral of dLatch_nand2 is

begin
    dLatch_nand2_Z <= not(dLatch_nand2_A(1) and dLatch_nand2_A(0));
end Behavioral;
