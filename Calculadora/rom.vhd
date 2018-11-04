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
        0 => "0001001100000101",
        1 => "0001010000001000",
        2 => "0010010100110100",
        3 => "0011010101010001",
        4 => "1111000000010100",
        20 => "0010001101010000",
        21 => "1111000000000010",
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
