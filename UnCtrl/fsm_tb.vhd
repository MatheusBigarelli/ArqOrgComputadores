library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm_tb is
end;

architecture arch_fsm_tb of fsm_tb is
    component fsm is
        port(
                clock   :   in std_logic;
                reset   :   in std_logic;
                saida  :   out std_logic
        );
    end component;

    signal clock, reset, saida: std_logic;
    begin
        uut: fsm port map(clock => clock, reset => reset, saida => saida);

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
            wait for 10 ns;
            reset <= '0';
            wait for 100 ns;
            reset <= '1';
            wait for 10 ns;
            reset <= '0';
            wait;
        end process;

end architecture;
