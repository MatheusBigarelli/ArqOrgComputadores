library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is
    port(
            clock       :       in std_logic;
            address     :       in unsigned(14 downto 0);
            data        :       out unsigned(15 downto 0)
    );
end entity;

architecture arch_rom of rom is
    type mem is array (0 to 32767) of unsigned(15 downto 0);
    constant content : mem := (
        -- caso endereco => conteudo
        0 => "0000000000000000",
        1 => "1111111111111111",
        2 => "1111111100000000",
        3 => "0000000011111111",
        4 => "1111001111001111",
        5 => "0000110000110000",
        6 => "0000000000000000",
        7 => "1100110011001100",
        8 => "0000111101010101",
        9 => "1111000010101010",
        10 => "0000111100001111",

        others => (others => '0')
    );
    begin
    process(clock)
    begin
        if(rising_edge(clock)) then
            data <= content(to_integer(address));
        end if;
    end process;
end architecture;
