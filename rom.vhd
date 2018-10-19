library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is
    port(
            clock       :       in std_logic;
            address     :       in unsigned(6 downto 0);
            data        :       out unsigned(15 downto 0)
    );
end entity;

architecture arch_rom of rom is
    type mem is array (0 to 127) of unsigned(15 downto 0);
    constant content : mem := (
        -- caso endereco => conteudo
        0 => "0000000000000000",
        1 => "0000000000000001",
        2 => "0000000000000010",
        3 => "0000000000000011",
        4 => "0000000000000100",
        5 => "0000000000000101",
        6 => "1111110000001000",
        7 => "0000000000000111",
        8 => "0000000000001000",
        9 => "1111110000000110",
        10 => "0000000000001010",

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
