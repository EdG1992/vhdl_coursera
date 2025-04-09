----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 02:39:42 PM
-- Design Name: 
-- Module Name: com4_DF - dataflow
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

entity com4_DF is
    Port ( com4_A, com4_B : in STD_LOGIC_VECTOR (3 downto 0);
           A_greater_B : out STD_LOGIC;
           A_smaller_B : out STD_LOGIC;
           A_equal_B : out STD_LOGIC);
end com4_DF;

architecture dataflow of com4_DF is

begin
    A_greater_B <= '1' when (com4_A > com4_B) else '0';
    A_smaller_B <= '1' when (com4_A < com4_B) else '0';
    A_equal_B <= '1' when (com4_A = com4_B) else '0';
end dataflow;
