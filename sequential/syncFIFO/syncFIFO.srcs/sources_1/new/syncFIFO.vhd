----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2025 05:21:41 PM
-- Design Name: 
-- Module Name: syncFIFO - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity syncFIFO is
    Port ( fifo_IN : in STD_LOGIC_VECTOR (7 downto 0);
           fifo_EN, fifo_CLK, fifo_RST, fifo_W : in STD_LOGIC;
           fifo_OUT : out STD_LOGIC_VECTOR (7 downto 0);
           fifo_RED : out STD_LOGIC);
end syncFIFO;

architecture Behavioral of syncFIFO is

    signal WPTR, RPTR: STD_LOGIC_VECTOR(3 downto 0);
    type FIFO is array (15 downto 0) of STD_LOGIC_VECTOR(7 downto 0);
    signal MEM: FIFO;

begin
    process(fifo_CLK, fifo_RST) begin
        if fifo_RST = '1' then
            WPTR <= "0000";
            RPTR <= "0000";
            fifo_RED <= '0';
        elsif(fifo_CLK'event and fifo_CLK='1') then
            if fifo_EN = '1' then
                if fifo_W = '1' then
                    if WPTR < "1111" then
                        MEM(conv_integer(WPTR)) <= fifo_IN;
                        WPTR <= WPTR + 1;
                    else
                        fifo_RED <= '1';
                    end if;
                else
                    if RPTR < WPTR then
                        fifo_RED <= '0';
                        fifo_OUT <= MEM(conv_integer(RPTR));
                        RPTR <= RPTR + 1;
                    else
                        fifo_RED <= '1';
                        fifo_OUT <= "00000000";
                    end if;
                end if;
            end if;
        end if;
    end process;

end Behavioral;
