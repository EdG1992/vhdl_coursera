----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2025 02:56:45 PM
-- Design Name: 
-- Module Name: andGate2 - Behavioral
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

entity andGate2 is
    Port ( andGate_A : in STD_LOGIC_VECTOR (1 downto 0);
           andGate_Z : out STD_LOGIC);
end andGate2;

architecture Behavioral of andGate2 is

begin
    andGate_Z <= andGate_A(1) and andGate_A(0);
end Behavioral;
