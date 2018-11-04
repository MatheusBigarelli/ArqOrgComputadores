library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processador_tb is
end;


architecture arch_processador_tb of processador_tb is
    component processador is
        port(
            clock : in std_logic;
            reset : in std_logic;
            state : out unsigned(1 downto 0);
            pc : out unsigned(6 downto 0);
            instrucao : out unsigned(15 downto 0);
            out1_banco : out unsigned(7 downto 0);
            out2_banco : out unsigned(7 downto 0);
            out_ula : out unsigned(7 downto 0)
        );
    end component;

    signal clock, reset: std_logic;
    signal state: unsigned(1 downto 0);
    signal pc: unsigned(6 downto 0);
    signal out1_banco, out2_banco, out_ula: unsigned(7 downto 0);
    signal instrucao: unsigned(15 downto 0);
begin
    uut: processador port map(clock => clock, reset => reset, state => state, pc => pc, instrucao => instrucao, out1_banco => out1_banco, out2_banco => out2_banco, out_ula => out_ula);

    process
    begin
        clock <= '0';
        wait for 50 ns;
        clock <= '1';
        wait for 50 ns;
    end process;

    process
    begin
        reset <= '1';
        wait for 200 ns;
        reset <= '0';
        wait;
    end process;

end architecture;
