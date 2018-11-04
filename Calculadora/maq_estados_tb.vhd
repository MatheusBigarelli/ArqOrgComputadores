library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity maq_estados_tb is
end;


architecture arch_maq_estados_tb of maq_estados_tb is
    component maq_estados is
        port(
                clock : in std_logic;
                reset : in std_logic;
                state : out unsigned(1 downto 0)
        );
    end component;
    signal clock, reset: std_logic;
    signal state: unsigned(1 downto 0);
begin
    uut: maq_estados port map(clock => clock, reset => reset, state => state);

    process
    begin
        clock <= '0';
        wait for 50 ns;
        clock <= '1';
        wait for 50 ns;
    end process;

    process
    begin
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        wait for 500 ns;
        reset <= '1';
        wait for 200 ns;
        reset <= '0';
        wait;
    end process;
end architecture;
