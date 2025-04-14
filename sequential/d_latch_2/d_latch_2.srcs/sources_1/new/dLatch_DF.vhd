----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2025 02:02:00 PM
-- Design Name: 
-- Module Name: dLatch_DF - dataflow
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

entity dLatch_DF is
    Port ( data, enable : in STD_LOGIC;
           q, qneg : out STD_LOGIC);
end dLatch_DF;

architecture dataflow of dLatch_DF is
    
    signal q1, q2, q3, q4, db: std_logic;

begin

    db <= not data;
    q1 <= enable nand data;
    q2 <= enable nand db;
    q3 <= q1 nand q4;
    q4 <= q2 nand q3;
    
    q <= q3;
    qneg <= q4;

end dataflow;
