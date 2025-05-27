-- ProgramCounter/pc_4bit.vhdl (Partial Implementation for GitHub)
-- --------------------------------------------------------------
-- This is a 4-bit program counter module. Only the entity and
-- part of the architecture are shown here for repository sharing.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Program_Counter is
    port(
        clk   : in  std_logic;
        rst   : in  std_logic;
        enable: in  std_logic;
        pc_out: out std_logic_vector(3 downto 0)
    );
end entity Program_Counter;

architecture Behavioral of Program_Counter is
    signal count_reg : unsigned(3 downto 0) := (others => '0');
begin
    -- Partial process: reset and enable logic shown
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                count_reg <= (others => '0');
            elsif enable = '1' then
                count_reg <= count_reg + 1;
            end if;
        end if;
    end process;

    -- Assign output
    pc_out <= std_logic_vector(count_reg);

    -- (Additional features such as load, jump, or wrap-around
    -- would appear here in the full version.)

end architecture Behavioral;
