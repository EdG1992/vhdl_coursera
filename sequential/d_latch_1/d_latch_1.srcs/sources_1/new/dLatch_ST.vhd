----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2025 12:44:18 PM
-- Design Name: 
-- Module Name: dLatch_ST - structural
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

entity dLatch_ST is
    Port ( data, enable : in STD_LOGIC;
           q, qneg : out STD_LOGIC);
end dLatch_ST;

architecture structural of dLatch_ST is

    component dLatch_nand2 is port(
        dLatch_nand2_A: in STD_LOGIC_VECTOR(1 downto 0);
        dLatch_nand2_Z: out STD_LOGIC);
    end component;

    signal y1, y2, y3, y4: std_logic;

begin
    
    u1: dLatch_nand2 port map(
        dLatch_nand2_A(0) => data,
        dLatch_nand2_A(1) => enable,
        dLatch_nand2_Z => y1);

    u2: dLatch_nand2 port map(
        dLatch_nand2_A(0) => y1,
        dLatch_nand2_A(1) => enable,
        dLatch_nand2_Z => y2);
    
    u3: dLatch_nand2 port map(
        dLatch_nand2_A(0) => y1,
        dLatch_nand2_A(1) => y4,
        dLatch_nand2_Z => y3);
    
    u4: dLatch_nand2 port map(
        dLatch_nand2_A(0) => y3,
        dLatch_nand2_A(1) => y2,
        dLatch_nand2_Z => y4);
       
    q <= y3;
    qneg <= y4;

end structural;
