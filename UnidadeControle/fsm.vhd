library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity fsm is
    port(
            clock       :       in std_logic;
            reset       :       in std_logic;
            state       :       out std_logic
    );
end;


architecture arch_fsm of fsm is
    signal state_s : std_logic := '0';

    begin
        process(clock, reset)
        begin
            if (reset = '1') then
                state_s <= '0';
            elsif rising_edge(clock) then
                state_s <= not state_s;
            end if;
        end process;
        state <= state_s;
end architecture;
