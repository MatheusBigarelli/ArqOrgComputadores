library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity miniproc_tb is
end;

architecture arch_miniproc_tb of miniproc_tb is
    component miniproc is
        port(
                clock   :   in std_logic;
                reset   :   in std_logic;
                debug   :   out unsigned(15 downto 0)
        );
    end component;

    signal clock, reset: std_logic;
    signal debug: unsigned(15 downto 0);
begin
    uut: miniproc port map(clock => clock, reset => reset, debug => debug);
    process
    begin
        clock <= '0';
        wait for 50 ns;
        clock <= '1';
        wait for 50 ns;
    end process;

    process
    begin
		-- O programa vai andar pela rom sequencialmente até o endereço 6 e iniciará um loop 6 -> 8 -> 9 -> 6.
        reset <= '0';
        wait for 500 ns;
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        wait;
    end process;
end architecture;
