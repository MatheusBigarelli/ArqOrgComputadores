library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity toplevel_tb is
end;


architecture arch_toplevel_tb of toplevel_tb is
    component toplevel is
        port(
                clock           :   in std_logic;
                write_en        :   in std_logic;
                data_rom_out    :   out unsigned(15 downto 0)
        );
    end component;

    signal clock, write_en: std_logic;
    signal data_rom_out: unsigned(15 downto 0);

    begin
        uut: toplevel port map(clock => clock, write_en => write_en, data_rom_out => data_rom_out);

        process
        begin
            clock <= '0';
            wait for 50 ns;
            clock <= '1';
            wait for 50 ns;
        end process;

        process
        begin
            write_en <= '1';
            wait for 500 ns;
        end process;

end architecture;
