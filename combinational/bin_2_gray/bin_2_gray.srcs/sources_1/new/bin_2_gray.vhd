----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2025 10:55:46 AM
-- Design Name: 
-- Module Name: bin_2_gray - dataflow
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

entity bin_2_gray is
    Port ( bin : in STD_LOGIC_VECTOR (3 downto 0);
           GC : out STD_LOGIC_VECTOR (3 downto 0));
end bin_2_gray;

architecture dataflow of bin_2_gray is

begin
    GC(3) <= bin(3);
    GC(2) <= bin(3) xor bin(2);
    GC(1) <= bin(2) xor bin(1);
    GC(0) <= bin(1) xor bin(0);
end dataflow;
