library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uc_tb is
end;

architecture arch_uc_tb of uc_tb is
    component uc is
        port(
                clock           :   in std_logic;
                reset           :   in std_logic;
                pc_write        :   out std_logic;
                rom_out_enable  :   out std_logic
        );
    end component;

    signal clock, reset, pc_write, rom_out_enable: std_logic;
begin
    uut: uc port map(clock => clock, reset => reset, pc_write => pc_write, rom_out_enable => rom_out_enable);
    process
    begin
        clock <= '0';
        wait for 50 ns;
        clock <= '1';
        wait for 50 ns;
    end process;

    process
    begin
        reset <= '0';
        wait for 300 ns;
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
    end process;
end architecture;
