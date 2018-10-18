library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity bancoRegs_tb is
end;


architecture arch_bancoRegs_tb of bancoRegs_tb is
    component bancoRegs is
        port(
            clock    			:			in std_logic;
            reset 				:			in std_logic;
            write_enable		:			in std_logic;
            reg_selector		:			in unsigned(4 downto 0);
            read_register1		:			in unsigned(4 downto 0);
            read_register2		:			in unsigned(4 downto 0);
            write_data			:			in signed(15 downto 0);
            read_data1			:			out signed(15 downto 0);
            read_data2			:			out signed(15 downto 0)
        );
    end component;

    signal clock, reset, write_enable: std_logic;
    signal reg_selector: unsigned(4 downto 0);
    signal read_register1, read_register2: unsigned(4 downto 0);
    signal write_data_signal, read_data1, read_data2: signed(15 downto 0);
    signal registro1, registro2: signed(15 downto 0);

    begin
        uut: bancoRegs port map(
                                clock => clock,
                                reset => reset,
                                write_enable => write_enable,
                                reg_selector => reg_selector,
                                read_register1 => read_register1,
                                read_register2 => read_register2,
                                write_data => write_data_signal,
                                read_data1 => read_data1,
                                read_data2 => read_data2
                            );

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
            wait;
        end process;

        -- Dando valor inicial
        process
        begin
            reg_selector <= "00000";
            write_enable <= '0';
            read_register1 <= "00000";
            read_register2 <= "00000";
            write_data_signal <= "0000000000000000";
            registro1 <= "0000000000000000";
            registro2 <= "0000000000000000";
            wait for 100 ns;


        -- Escrevendo registrador 1
            reg_selector <= "00000";
            write_data_signal <= "0000111100001111";
            write_enable <= '1';
            wait for 100 ns;
            write_enable <= '0';
            wait for 100 ns;

        -- Escrevendo registrador 2
            reg_selector <= "00001";
            write_data_signal <= "1111000011110000";
            write_enable <= '1';
            wait for 100 ns;
            write_enable <= '0';
            wait for 100 ns;

        -- Lendo registrador 1
            read_register1 <= "00000";

        -- Lendo registrador 2
            read_register2 <= "00001";
            wait for 100 ns;
            wait;
        end process;
end architecture;
