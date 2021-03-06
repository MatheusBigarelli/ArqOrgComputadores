library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula is
    port(   entrada1: in unsigned (7 downto 0);
            entrada2: in unsigned (7 downto 0);
            seletor_de_operacao: in unsigned (1 downto 0);

            resultado_da_operacao: out unsigned (7 downto 0);
            resultado0: out std_logic;
            entrada1_maior: out std_logic
    );
end entity;


architecture arch_ula of ula is
    signal mul: unsigned(15 downto 0);
    begin
        resultado_da_operacao <=    entrada1 + entrada2 when seletor_de_operacao = "00" else
                                    entrada1 - entrada2 when seletor_de_operacao = "01" else
                                    "00000000";


        -- O seletor não foi levado em consideração nas duas próximas operações por se tratar de sinais de controle.
        -- Pode ser útil mais tarde tê-los a dispozição.
        entrada1_maior <= '1' when entrada1 >= entrada2 else
                          '0';
        resultado0 <= '1' when entrada1 - entrada2 = "00000000" else
                      '0';

end architecture;
