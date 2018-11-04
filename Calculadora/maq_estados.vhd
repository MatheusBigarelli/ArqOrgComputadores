library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity maq_estados is
    port(
            clock : in std_logic;
            reset : in std_logic;
            state : out unsigned(1 downto 0)
        );
end;


architecture arch_maq_estados of maq_estados is
    signal state_s: unsigned(1 downto 0):= "00";
begin
    process(clock, reset)
    begin
        if reset = '1' then
            state_s <= "00";
        else
            if rising_edge(clock) then
                if state_s = "10" then
                    state_s <= "00";
                else
                    state_s <= state_s + 1;
                end if;
            end if;
        end if;
    end process;
    state <= state_s;
end architecture;
