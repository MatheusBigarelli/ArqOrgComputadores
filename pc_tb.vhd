library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc_tb is
end;


architecture arch_pc_tb of pc_tb is
    component pc is
        port(
                clock           :       in std_logic;
                write_enable    :       in std_logic;
                data_in         :       in unsigned(14 downto 0);
                data_out        :       out unsigned(14 downto 0)
        );
    end component;

    component protouc is
        port(
                data_in_uc      :       in unsigned(14 downto 0);
                data_out_uc     :       out unsigned(14 downto 0)
        );
    end component;

    signal clock, write_enable: std_logic;
    signal data_in_s: unsigned(14 downto 0) := "000000000000000";
    signal data_out_s: unsigned(14 downto 0) := "000000000000000";
begin
    program_counter: pc port map(clock => clock, write_enable => write_enable, data_in => data_in_s, data_out => data_out_s);
    proto_control_unit: protouc port map(data_in_uc => data_out_s, data_out_uc => data_in_s);

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
        wait for 150 ns;
        write_enable <= '1';
        wait for 100 ns;
        write_enable <= '0';
        wait for 200 ns;
        write_enable <= '1';
        wait;
    end process;
end architecture;
