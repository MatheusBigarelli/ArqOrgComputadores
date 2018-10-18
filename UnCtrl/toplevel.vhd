library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel is
    port(
            clock           :   in std_logic;
            write_en        :   in std_logic;
            jump_en         :   in std_logic;   
            data_in         :   in unsigned(15 downto 0);
            data_rom_out    :   out unsigned(15 downto 0)
    );
end;


architecture arch_toplevel of toplevel is
    component pc is
        port(
                clock       :   in std_logic;
                write_en    :   in std_logic;
                data_in     :   in unsigned(7 downto 0);
                data_out    :   out unsigned(7 downto 0)
        );
    end component;

    component protouc is
        port(
                data_in     :   in unsigned(7 downto 0);
                data_out    :   out unsigned(7 downto 0)
        );
    end component;

    component rom is
        port(
                clock       :   in std_logic;
                endereco    :   in unsigned(7 downto 0);
                dado        :   out unsigned(15 downto 0)
        );
    end component;

    signal data_in_pc, data_in_puc, data_out_puc: unsigned(7 downto 0);

begin
    pcounter: pc port map(clock => clock, write_en => write_en, data_in => data_in_pc, data_out => data_in_puc);
    puc: protouc port map(data_in => data_in_puc, data_out => data_out_puc);
    mem: rom port map(clock => clock, endereco => data_in_puc, dado => data_rom_out);
    data_in_pc <= data_in when jump_en = '1' else
                  data_out_puc;
end architecture;
