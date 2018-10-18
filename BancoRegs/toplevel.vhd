library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity toplevel is
    port(
            clock           :   in std_logic;
            reset           :   in std_logic;
            write_enable    :   in std_logic;
            mux_sel         :   in std_logic;
            op_sel          :   in unsigned(1 downto 0);
            const_in        :   in signed(15 downto 0);
            debug           :   out signed(15 downto 0);
            read_address1   :   in unsigned(4 downto 0);
            read_address2   :   in unsigned(4 downto 0);
            write_register  :   in unsigned(4 downto 0);
            read_data1      :   out signed(15 downto 0);
            read_data2      :   out signed(15 downto 0)
    );


end;


architecture arch_toplevel of toplevel is
    component ula is
        port(
                entrada1: in signed (15 downto 0);
                entrada2: in signed (15 downto 0);
                seletor_de_operacao: in unsigned (1 downto 0);

                resultado_da_operacao: out signed (15 downto 0);
                resultado0: out std_logic;
                entrada1_maior: out std_logic
        );
    end component;

    component bancoRegs is
        port(
                clock				:			in std_logic;
                reset				:			in std_logic;
                write_enable		:			in std_logic;
                read_register1		:			in unsigned(4 downto 0);
                read_register2		:			in unsigned(4 downto 0);
                reg_selector		:			in unsigned(4 downto 0);
                write_data			:			in signed(15 downto 0);
                read_data1			:			out signed(15 downto 0);
                read_data2			:			out signed(15 downto 0)
        );
    end component;

    component mux16bits is
        port(
                in_0    :   in signed(15 downto 0);
                in_1    :   in signed(15 downto 0);
                sel     :   in std_logic;
                out_mux :   out signed(15 downto 0)
        );
    end component;

    signal mem_write_back: signed(15 downto 0);
    signal bank_to_ula: signed(15 downto 0);
    signal bank_to_mux: signed(15 downto 0);
    signal mux_to_ula: signed(15 downto 0);
    signal zero, gt: std_logic;

    begin
        mux16: mux16bits port map(in_0 => bank_to_mux, in_1 => const_in, sel => mux_sel, out_mux => mux_to_ula);
        bancoRegs16: bancoRegs port map(clock	=> clock, reset => reset, write_enable => write_enable,
                                read_register1 => read_address1, read_register2 => read_address2,
                                reg_selector => write_register, write_data => mem_write_back,
                                read_data1 => bank_to_ula, read_data2 => bank_to_mux);
        ula16: ula port map(  entrada1 => bank_to_ula, entrada2 => mux_to_ula, seletor_de_operacao => op_sel,
                            resultado_da_operacao => mem_write_back, resultado0 => zero, entrada1_maior => gt);

        read_data1 <= bank_to_ula;
        read_data2 <= bank_to_mux;
        debug <= mem_write_back;

end architecture;
