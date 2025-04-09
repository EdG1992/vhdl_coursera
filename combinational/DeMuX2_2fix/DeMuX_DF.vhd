----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:51:26 03/23/2025 
-- Design Name: 
-- Module Name:    DeMuX_DF - dataflow 
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
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DeMuX_DF is
    Port ( demux_a : in  STD_LOGIC;
           demux_sel : in  STD_LOGIC_VECTOR (1 downto 0);
           demux_z : out  STD_LOGIC_VECTOR (3 downto 0));
end DeMuX_DF;

architecture dataflow of DeMuX_DF is

begin
	demux_z(0) <= demux_a and (not demux_sel(1)) and (not demux_sel(0));
	demux_z(1) <= demux_a and (not demux_sel(1)) and demux_sel(0);
	demux_z(2) <= demux_a and demux_sel(1) and (not demux_sel(0));
	demux_z(3) <= demux_a and demux_sel(1) and demux_sel(0);
end dataflow;

