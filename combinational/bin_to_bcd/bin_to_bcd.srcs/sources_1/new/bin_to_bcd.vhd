----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2025 09:41:34 AM
-- Design Name: 
-- Module Name: bin_to_bcd - dataflow
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

entity bin_to_bcd is
    Port ( bin : in STD_LOGIC_VECTOR (3 downto 0);
           bcd : out STD_LOGIC_VECTOR (4 downto 0));
end bin_to_bcd;

architecture dataflow of bin_to_bcd is

    signal bbar3, bbar2, bbar1: std_logic;

begin
    bbar3 <= not bin(3);
    bbar2 <= not bin(2);
    bbar1 <= not bin(1);
    bcd(4) <= ((bin(3) and bin(2)) or (bin(3) and bin(1)));
    bcd(3) <= bin(3) and bbar2 and bbar1;
    bcd(2) <= ((bbar3 and bin(2)) or (bin(2) and bin(1)));
    bcd(1) <= ((bin(3) and bin(2) and bbar1) or (bbar3 and bin(1)));
    bcd(0) <= bin(0);    
end dataflow;
