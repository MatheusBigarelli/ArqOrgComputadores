library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uc_tb is
end;


architecture arch_uc_tb of uc_tb is
    component uc is
        port(
                clock       :   in std_logic;
                fsm_reset   :   in std_logic;
                data_rom_out:   out unsigned(15 downto 0)
        );
    end component;



    signal clock, fsm_reset: std_logic;
    signal data_rom_out: unsigned(15 downto 0);
begin
    uut: uc port map(clock => clock, fsm_reset => fsm_reset, data_rom_out => data_rom_out);

    process
    begin
        clock <= '0';
        wait for 50 ns;
        clock <= '1';
        wait for 50 ns;
    end process;

end architecture;
