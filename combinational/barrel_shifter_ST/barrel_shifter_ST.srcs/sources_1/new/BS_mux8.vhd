----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 09:19:09 PM
-- Design Name: 
-- Module Name: BS_mux8 - Behavioral
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

entity BS_mux8 is
    Port ( BS_mux8_sel : in STD_LOGIC_VECTOR (2 downto 0);
           BS_mux8_A : in STD_LOGIC_VECTOR (7 downto 0);
           BS_mux8_Z : out STD_LOGIC);
end BS_mux8;

architecture Behavioral of BS_mux8 is

begin
    BS_mux8_Z <= BS_mux8_A(0) when BS_mux8_sel = "000" else
                BS_mux8_A(1) when BS_mux8_sel = "001" else
                BS_mux8_A(2) when BS_mux8_sel = "010" else
                BS_mux8_A(3) when BS_mux8_sel = "011" else
                BS_mux8_A(4) when BS_mux8_sel = "100" else
                BS_mux8_A(5) when BS_mux8_sel = "101" else
                BS_mux8_A(6) when BS_mux8_sel = "110" else
                BS_mux8_A(7);
end Behavioral;
