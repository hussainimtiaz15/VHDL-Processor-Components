-- ALU: Arithmetic Logic Unit (partial implementation)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Alu is
    port (
        clk        : in  std_logic;
        en         : in  std_logic;
        op         : in  std_logic; -- 0: Sub, 1: Add
        reg_A      : in  std_logic_vector(7 downto 0);
        reg_B      : in  std_logic_vector(7 downto 0);
        carry_out  : out std_logic;
        result_out : out std_logic_vector(7 downto 0)
    );
end entity;

architecture Behavioral of Alu is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                -- Perform addition or subtraction
                -- Only ADD shown here
                if op = '1' then
                    -- Partial code: ADD operation (carry logic omitted for brevity)
                    result_out <= std_logic_vector(unsigned(reg_A) + unsigned(reg_B));
                end if;
            end if;
        end if;
    end process;
end architecture;
