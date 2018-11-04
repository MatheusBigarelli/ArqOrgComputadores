library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula_tb is
end;


architecture arch_ula_tb of ula_tb is
    component ula is
        port(
            entrada1: in unsigned (7 downto 0);
            entrada2: in unsigned (7 downto 0);
            seletor_de_operacao: in unsigned (1 downto 0);

            resultado_da_operacao: out unsigned (7 downto 0);
            resultado0: out std_logic;
            entrada1_maior: out std_logic
        );
    end component;

    signal entrada1, entrada2, resultado_da_operacao: unsigned(7 downto 0);
    signal resultado0, entrada1_maior: std_logic;
    signal seletor_de_operacao: unsigned(1 downto 0);
begin
    uut: ula port map(entrada1 => entrada1, entrada2 => entrada2, seletor_de_operacao => seletor_de_operacao, resultado_da_operacao => resultado_da_operacao, resultado0 => resultado0, entrada1_maior => entrada1_maior);
    process
    begin
        seletor_de_operacao <= "00";
        entrada1 <= "00000000";
        entrada2 <= "00001111";
        wait for 50 ns;
        entrada1 <= "11110000";
        wait for 50 ns;

        entrada1 <= "00000001";
        entrada2 <= "00000001";
        seletor_de_operacao <= "01";
        wait for 100 ns;
    end process;

end architecture;
