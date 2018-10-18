library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
    port(
            clock   :   in std_logic;
            reset   :   in std_logic;
            saida  :   out std_logic
    );
end;



architecture arch_fsm of fsm is
    signal estado: std_logic := '0';

begin
    process(clock, reset)
    begin
        if (reset = '1') then
            estado <= '0';
        elsif (rising_edge(clock)) then
            estado <= not estado;
        end if;
    end process;

    saida <= estado;
end architecture;
