library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel_tb is
end;


architecture arch_toplevel_tb of toplevel_tb is
    component toplevel is
        port(
                clock           :   in std_logic;
                reset           :   in std_logic;
                write_enable    :   in std_logic;
                sel             :   in unsigned(1 downto 0);
                read_address1   :   in unsigned(4 downto 0);
                read_address2   :   in unsigned(4 downto 0);
                const_in        :   in unsigned(15 downto 0);
                read_data1      :   out unsigned(15 downto 0);
                read_data2      :   out unsigned(15 downto 0);
                debug           :   out unsigned(15 downto 0)
            );
    end component;

    signal clock, reset, write_enable: std_logic;
    signal sel: unsigned(1 downto 0);
    signal read_address1, read_address2: unsigned(4 downto 0);
    signal const_in, read_data1, read_data2, debug: unsigned(15 downto 0);

begin

    uut: toplevel port map(clock => clock, reset => reset, write_enable => write_enable, sel => sel,
                        read_address1 => read_address1, read_address2 => read_address2, const_in => const_in,
                        read_data1 => read_data1, read_data2 => read_data2, debug => debug
                    );

    process
    begin
        clock <= '1';
        wait for 50 ns;
        clock <= '0';
        wait for 50 ns;
    end process;

    process
    begin
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        wait;
    end process;

    process
    begin
        read_register1 <= "0000";


    end process;

end architecture;
