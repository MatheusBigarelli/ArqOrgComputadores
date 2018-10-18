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
                -- Seletor da MUX da ULA.
                -- 0: banco de regs.
                -- 1: const_in.
                mux_sel         :   in std_logic;
                -- Seletor de operação da ULA.
                op_sel          :   in unsigned(1 downto 0);
                read_address1   :   in unsigned(4 downto 0);
                read_address2   :   in unsigned(4 downto 0);
                write_register  :   in unsigned(4 downto 0);
                const_in        :   in signed(15 downto 0);
                read_data1      :   out signed(15 downto 0);
                read_data2      :   out signed(15 downto 0);
                debug           :   out signed(15 downto 0)
            );
    end component;

    signal clock, reset, write_enable, mux_sel: std_logic;
    signal op_sel: unsigned(1 downto 0);
    signal read_address1, read_address2: unsigned(4 downto 0);
    signal const_in, read_data1, read_data2, debug: signed(15 downto 0);
    signal write_register: unsigned(4 downto 0);

begin

    uut: toplevel port map(clock => clock, reset => reset, write_enable => write_enable, op_sel => op_sel,
                        read_address1 => read_address1, read_address2 => read_address2, const_in => const_in,
                        read_data1 => read_data1, read_data2 => read_data2, debug => debug,
                        write_register => write_register, mux_sel => mux_sel
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
        -- $0 já está zerado devido ao reset.
        -- addi $1,$0,0b1111000011110000
        op_sel <= "00";
        const_in <= "1111000011110000";
        mux_sel <= '1';
        write_register <= "00001";
        read_address1 <= "00000";
        write_enable <= '1';
        wait for 10 ns;
        write_enable <= '0';
        wait for 100 ns;


        -- addi $2,$0,0b0000111100001111
        op_sel <= "00";
        const_in <= "0000111100001111";
        mux_sel <= '1';
        write_register <= "00010";
        read_address1 <= "00000";
        write_enable <= '1';
        wait for 10 ns;
        write_enable <= '0';
        wait for 100 ns;


        -- add $3, $1, $2
        -- gera 0 (overflow)
        read_address1 <= "00001";
        read_address2 <= "00010";
        write_register <= "00011";
        op_sel <= "00";
        mux_sel <= '0';
        write_enable <= '1';
        wait for 10 ns;
        write_enable <= '0';
        wait;



    end process;

end architecture;
