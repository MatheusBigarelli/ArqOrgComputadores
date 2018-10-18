library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom_tb is
end;


architecture arch_rom_tb of rom_tb is
    component rom is
        port(
                clock   :   in std_logic;
                endereco:   in unsigned(7 downto 0);
                dado    :   out unsigned(15 downto 0)
        );
    end component;

    signal clock: std_logic;
    signal endereco: unsigned(7 downto 0);
    signal dado: unsigned(15 downto 0);

begin
    uut: rom port map(clock => clock, endereco => endereco, dado => dado);

    process
    begin
        clock <= '0';
        wait for 50 ns;
        clock <= '1';
        wait for 50 ns;
    end process;

    process
    begin
        endereco <= "00000000";
        wait for 100 ns;
        endereco <= "00000001";
        wait for 100 ns;
        endereco <= "00000010";
        wait for 100 ns;
        endereco <= "00000011";
        wait for 100 ns;
        endereco <= "00000100";
        wait for 100 ns;
        endereco <= "00000101";
        wait for 100 ns;
        endereco <= "00000110";
        wait for 100 ns;
        endereco <= "00000111";
        wait;
    end process;
end architecture;
