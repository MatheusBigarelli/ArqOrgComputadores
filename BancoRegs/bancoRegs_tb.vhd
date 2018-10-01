library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity bancoRegs_tb is
end;


architecture arch_bancoRegs_tb of bancoRegs_tb is
    component bancoRegs is
        port(
            clock				:			in std_logic;
            reset				:			in std_logic;
            write_enable		:			in std_logic;
            reg_selector		:			in unsigned(2 downto 0);
            read_register1		:			in unsigned(4 downto 0);
            read_register2		:			in unsigned(4 downto 0);
            write_data			:			in unsigned(15 downto 0);
            read_data1			:			out unsigned(15 downto 0);
            read_data2			:			out unsigned(15 downto 0)
        );
    end component;

    signal clock, reset, write_enable: std_logic;
    signal reg_selector: unsigned(2 downto 0);
    signal read_register1, read_register2: unsigned(4 downto 0);
    signal write_data, read_data1, read_data2: unsigned(15 downto 0);

    begin
        uut: bancoRegs port map(
                                clock => clock,
                                reset => reset,
                                write_enable => write_enable,
                                reg_selector => reg_selector,
                                read_register1 => read_register1,
                                read_register2 => read_register2,
                                write_data => write_data,
                                read_data1 => read_data1,
                                read_data2 => read_data2
                            );


        -- Dando valor inicial
        process
        begin
            reset <= '1';
            wait for 10 ns;
            reset <= '0';
            wait;
        end process;

        process
        begin
            clock <= '0';
            wait for 50 ns;
            clock <= '1';
            wait for 50 ns;
        end process;

        -- Escrevendo registrador 1
        process
        begin
            write_enable <= '1';
            reg_selector <= "000";
            write_data <= "1111100000011111";
            wait for 100 ns;
            write_enable <= '0';
            wait;
        end process;

        -- Escrevendo registrador 2
        process
        begin
            write_enable <= '1';
            reg_selector <= "001";
            write_data <= "0000011111100000";
            wait for 100 ns;
            write_enable <= '0';
            wait;
        end process;

        -- Lendo registrador 2
        process
        begin
            read_register2 <= "00001";
            wait;
        end process;
end architecture;
