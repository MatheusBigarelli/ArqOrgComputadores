library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula_tb is
end entity;


architecture arch_ula_tb of ula_tb is
    component ula
        port(   entrada1: in signed (15 downto 0);
                entrada2: in signed (15 downto 0);
                seletor_de_operacao: in unsigned (1 downto 0);

                resultado_da_operacao: out signed (15 downto 0);
                resultado0: out std_logic;
                entrada1_maior: out std_logic
        );
    end component;

    signal entrada1, entrada2: signed (15 downto 0);
    signal seletor_de_operacao: unsigned (1 downto 0);

    signal resultado_da_operacao: signed (15 downto 0);
    signal resultado0, entrada1_maior: std_logic;

    -- begin architecture
    begin
        uut: ula port map(  entrada1 => entrada1,
                            entrada2 => entrada2,
                            seletor_de_operacao => seletor_de_operacao,

                            resultado_da_operacao => resultado_da_operacao,
                            resultado0 => resultado0,
                            entrada1_maior => entrada1_maior
        );

        process
            begin
                -- Testando soma
                -- Caso 1: ambas entradas positivas
                -- Resultado esperado:
                --           0000000000111111
                entrada1 <= "0000000000011011";
                entrada2 <= "0000000000100100";
                seletor_de_operacao <= "00";
                wait for 25 ns;

                -- Caso 2: entrada1 negativa, entrada2 positiva
                -- Resultado esperado:
                --          -8 + 16 = 8
                --           0000000000001000
                entrada1 <= "1111111111111000";
                entrada2 <= "0000000000010000";
                seletor_de_operacao <= "00";
                wait for 25 ns;

                -- -- Indicador de fim de operação
                -- -- Facilitar visualização das ondas no gtkwave
                -- entrada1 <= "0000000000000000";
                -- entrada2 <= "0000000000000000";
                -- seletor_de_operacao <= "00";
                -- wait for 50 ns;


                -- Testando subtração
                -- Caso 1: entrada1 > entrada2, ambos positivos
                -- Resultado esperado:
                --           27 - 3 = 24
                --           0000000000011000
                entrada1 <= "0000000000011011";
                entrada2 <= "0000000000000011";
                seletor_de_operacao <= "01";
                wait for 25 ns;

                -- Caso 2: entrada1 < entrada2, ambos positivos
                -- Resultado esperado:
                --          6 - 10 = -4
                --           1111111111111100
                entrada1 <= "0000000000000110";
                entrada2 <= "0000000000001010";
                seletor_de_operacao <= "01";
                wait for 25 ns;

                -- Caso 3: entrada1 > entrada2, entrada1 positiva, entrada2 negativa
                -- Resultado esperado:
                --           6 - (-4) = 10
                --           0000000000001010
                entrada1 <= "0000000000000110";
                entrada2 <= "1111111111111100";
                seletor_de_operacao <= "01";
                wait for 25 ns;

                -- Caso 4: entrada1 < entrada2, entrada1 negativa, entrada2 positiva
                -- Resultado esperado:
                --           -2 - 8 = -10
                --           1111111111110110
                entrada1 <= "1111111111111110";
                entrada2 <= "0000000000001000";
                seletor_de_operacao <= "01";
                wait for 25 ns;

                -- Caso 5: |entrada1| = |entrada2|, entrada1 negativa, entrada2 positiva
                -- Resultado esperado:
                --           8 - (-8) = 16
                --           0000000000010000
                entrada1 <= "0000000000001000";
                entrada2 <= "1111111111111000";
                seletor_de_operacao <= "01";
                wait for 25 ns;

                -- Caso 6: |entrada1| = |entrada2|, ambas entradas positivas
                -- Resultado esperado:
                --           8 - 8 = 0
                --           0000000000010000
                entrada1 <= "0000000000001000";
                entrada2 <= "0000000000001000";
                seletor_de_operacao <= "01";
                wait for 25 ns;


                -- Indicador de fim de operação
                -- Facilitar visualização das ondas no gtkwave
                -- entrada1 <= "0000000000000000";
                -- entrada2 <= "0000000000000000";
                -- seletor_de_operacao <= "00";
                -- wait for 50 ns;


                -- Testando multiplicação
                -- Caso 1: ambas as entradas são positivas
                -- Resultado esperado:
                --           0000000000001000
                entrada1 <= "0000000000000010";
                entrada2 <= "0000000000000100";
                seletor_de_operacao <= "10";
                wait for 25 ns;

                -- Caso 2: uma das entradas é negativa
                -- Resultado esperado:
                --           1111111111110000
                entrada1 <= "0000000000000010";
                entrada2 <= "1111111111111000";
                seletor_de_operacao <= "10";
                wait for 25 ns;

                -- Caso 3: ambas as entradas são negativas
                -- Resultado esperado:
                --           0000000000001000
                entrada1 <= "1111111111111110";
                entrada2 <= "1111111111111100";
                seletor_de_operacao <= "10";
                wait for 25 ns;

                wait;
            end process;

end architecture;
