library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula is
    port(   entrada1: in signed (15 downto 0);
            entrada2: in signed (15 downto 0);
            seletor_de_operacao: in unsigned (1 downto 0);

            resultado_da_operacao: out signed (15 downto 0);
            resultado0: out std_logic;
            entrada1_maior: out std_logic
    );
end entity;


architecture arch_ula of ula is
    begin
        resultado_da_operacao <=    entrada1 + entrada2 when seletor_de_operacao="00" else
                                    entrada1 - entrada2 when seletor_de_operacao="01" else
                                    entrada1 * entrada2 when seletor_de_operacao="10" else
                                    "0000000000000000";


        -- O seletor não foi levado em consideração nas duas próximas operações por se tratar de sinais de controle.
        -- Pode ser útil mais tarde tê-los a dispozição.
        entrada1_maior <= '1' when entrada1>=entrada2 and entrada1(15)='0' and entrada2(15)='0' else
                          '1' when entrada1(15)='0' and entrada2(15)='1' else
                          '1' when entrada1<entrada2 and entrada1(15)='1' and entrada2(15)='1' else
                          '0';
        resultado0 <= '1' when entrada1 - entrada2 = "0000000000000000" else
                      '0';

end architecture;
