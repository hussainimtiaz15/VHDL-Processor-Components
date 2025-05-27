-- Register/reg_8bit.vhdl (Partial Implementation for GitHub)
-- -----------------------------------------------------------
-- This is an 8-bit register module with load and output enable.
-- Only the entity and core architecture process are shown here for sharing.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register_8bit is
    port(
        clk       : in  std_logic;                  -- system clock
        rst       : in  std_logic;                  -- synchronous reset
        ld        : in  std_logic;                  -- load enable
        out_en    : in  std_logic;                  -- output enable
        data_in   : in  std_logic_vector(7 downto 0); -- data to load
        data_out  : out std_logic_vector(7 downto 0)  -- registered output
    );
end entity Register_8bit;

architecture Behavioral of Register_8bit is
    signal reg_data : std_logic_vector(7 downto 0) := (others => '0');
begin
    -- Core register process: reset and load logic
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                reg_data <= (others => '0');
            elsif ld = '1' then
                reg_data <= data_in;
            end if;
        end if;
    end process;

    -- Output enable logic
    data_out <= reg_data when out_en = '1' else (others => 'Z');

    -- (Additional features like bus tri-state control or asynchronous load
    -- would appear here in the full version.)

end architecture Behavioral;
