library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom_e_pc_tb is
end;

architecture arch_rom_e_pc_tb of rom_e_pc_tb is
    component rom_e_pc is
        port(
                clock           :       in std_logic;
                write_enable    :       in std_logic;
                rom_data_out    :       out unsigned(15 downto 0)
        );
    end component;

    signal clock, write_enable: std_logic;
    signal rom_data_out: unsigned(15 downto 0);
begin
    uut: rom_e_pc port map(clock => clock, write_enable => write_enable, rom_data_out => rom_data_out);
    process
    begin
        clock <= '0';
        wait for 50 ns;
        clock <= '1';
        wait for 50 ns;
    end process;

    process
    begin
        write_enable <= '0';
        wait for 125 ns;
        write_enable <= '1';
        wait for 200 ns;
        write_enable <= '0';
        wait for 100 ns;
        write_enable <= '1';
        wait for 400 ns;
    end process;
end architecture;
