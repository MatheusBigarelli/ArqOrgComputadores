library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity rom is
    port(
            clock   :   in std_logic;
            endereco:   in unsigned(7 downto 0);
            dado    :   out unsigned(15 downto 0)
    );
end;

architecture arch_rom of rom is
    type memoria is array (0 to 127) of unsigned(15 downto 0);
    constant conteudo : memoria := (
        -- Instruções aleatórias sem implementação por enquanto
        0  => "0000000000000000",
        1  => "1111000011110000",
        2  => "0000111100001111",
        3  => "1010101010101010",
        4  => "0101010101010101",
        5  => "1100110011001100",
        6  => "0011001100110011",
        7  => "1111111111111111",

        -- Jump para instrução 10
        8  => "0001000000001010",
        9  => "0000000000001111",
        -- nop (opcode 11111)
        10 => "1111111111110000",
        -- Jump para instrução 9
        11 => "0001000000001001",

        others => (others => '0')
    );

begin
    process(clock)
    begin
        if (rising_edge(clock)) then
            dado <= conteudo(to_integer(endereco));
        end if;
    end process;
end architecture;
