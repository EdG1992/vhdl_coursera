----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2025 09:30:23 PM
-- Design Name: 
-- Module Name: bs_ST - structural
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

entity bs_ST is
    Port ( bs_sel : in STD_LOGIC_VECTOR (2 downto 0);
           bs_A : in STD_LOGIC_VECTOR (7 downto 0);
           bs_Z : out STD_LOGIC_VECTOR (7 downto 0));
end bs_ST;

architecture structural of bs_ST is

    component BS_mux8 is port(
        BS_mux8_sel : in STD_LOGIC_VECTOR (2 downto 0);
        BS_mux8_A : in STD_LOGIC_VECTOR (7 downto 0);
        BS_mux8_Z : out STD_LOGIC);
    end component;

begin
    M0: BS_mux8 port map(
        BS_mux8_sel => bs_sel,
        BS_mux8_A(0) => bs_A(0), BS_mux8_A(1) => bs_A(1), BS_mux8_A(2) => bs_A(2), BS_mux8_A(3) => bs_A(3), BS_mux8_A(4) => bs_A(4), BS_mux8_A(5) => bs_A(5), BS_mux8_A(6) => bs_A(6), BS_mux8_A(7) => bs_A(7),
        BS_mux8_Z => bs_Z(0));

    M1: BS_mux8 port map(
        BS_mux8_sel => bs_sel,
        BS_mux8_A(0) => bs_A(1), BS_mux8_A(1) => bs_A(2), BS_mux8_A(2) => bs_A(3), BS_mux8_A(3) => bs_A(4), BS_mux8_A(4) => bs_A(5), BS_mux8_A(5) => bs_A(6), BS_mux8_A(6) => bs_A(7), BS_mux8_A(7) => bs_A(0),
        BS_mux8_Z => bs_Z(1));
    
    M2: BS_mux8 port map(
        BS_mux8_sel => bs_sel,
        BS_mux8_A(0) => bs_A(2), BS_mux8_A(1) => bs_A(3), BS_mux8_A(2) => bs_A(4), BS_mux8_A(3) => bs_A(5), BS_mux8_A(4) => bs_A(6), BS_mux8_A(5) => bs_A(7), BS_mux8_A(6) => bs_A(0), BS_mux8_A(7) => bs_A(1),
        BS_mux8_Z => bs_Z(2));

    M3: BS_mux8 port map(
        BS_mux8_sel => bs_sel,
        BS_mux8_A(0) => bs_A(3), BS_mux8_A(1) => bs_A(4), BS_mux8_A(2) => bs_A(5), BS_mux8_A(3) => bs_A(6), BS_mux8_A(4) => bs_A(7), BS_mux8_A(5) => bs_A(0), BS_mux8_A(6) => bs_A(1), BS_mux8_A(7) => bs_A(2),
        BS_mux8_Z => bs_Z(3));

    M4: BS_mux8 port map(
        BS_mux8_sel => bs_sel,
        BS_mux8_A(0) => bs_A(4), BS_mux8_A(1) => bs_A(5), BS_mux8_A(2) => bs_A(6), BS_mux8_A(3) => bs_A(7), BS_mux8_A(4) => bs_A(0), BS_mux8_A(5) => bs_A(1), BS_mux8_A(6) => bs_A(2), BS_mux8_A(7) => bs_A(3),
        BS_mux8_Z => bs_Z(4));

    M5: BS_mux8 port map(
        BS_mux8_sel => bs_sel,
        BS_mux8_A(0) => bs_A(5), BS_mux8_A(1) => bs_A(6), BS_mux8_A(2) => bs_A(7), BS_mux8_A(3) => bs_A(0), BS_mux8_A(4) => bs_A(1), BS_mux8_A(5) => bs_A(2), BS_mux8_A(6) => bs_A(3), BS_mux8_A(7) => bs_A(4),
        BS_mux8_Z => bs_Z(5));

    M6: BS_mux8 port map(
        BS_mux8_sel => bs_sel,
        BS_mux8_A(0) => bs_A(6), BS_mux8_A(1) => bs_A(7), BS_mux8_A(2) => bs_A(0), BS_mux8_A(3) => bs_A(1), BS_mux8_A(4) => bs_A(2), BS_mux8_A(5) => bs_A(3), BS_mux8_A(6) => bs_A(4), BS_mux8_A(7) => bs_A(5),
        BS_mux8_Z => bs_Z(6));

    M7: BS_mux8 port map(
        BS_mux8_sel => bs_sel,
        BS_mux8_A(0) => bs_A(7), BS_mux8_A(1) => bs_A(0), BS_mux8_A(2) => bs_A(1), BS_mux8_A(3) => bs_A(2), BS_mux8_A(4) => bs_A(3), BS_mux8_A(5) => bs_A(4), BS_mux8_A(6) => bs_A(5), BS_mux8_A(7) => bs_A(6),
        BS_mux8_Z => bs_Z(7));

end structural;
