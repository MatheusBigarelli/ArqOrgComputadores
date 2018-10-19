library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom_e_pc is
    port(
            clock           :       in std_logic;
            write_enable    :       in std_logic;
            rom_data_out    :       out unsigned(15 downto 0)
    );
end;


architecture arch_rom_e_pc of rom_e_pc is
    component rom is
        port(
                clock           :   in std_logic;
                address         :   in unsigned(14 downto 0);
                data            :   out unsigned(15 downto 0)
        );
    end component;

    component pc is
        port(
                clock           :   in std_logic;
                write_enable    :   in std_logic;
                data_in         :   in unsigned(14 downto 0);
                data_out        :   out unsigned(14 downto 0)
        );
    end component;

    component protouc is
        port(
                data_in_uc      :   in unsigned(14 downto 0);
                data_out_uc     :   out unsigned(14 downto 0)
        );
    end component;

    signal data_out_pc: unsigned(14 downto 0) := "000000000000000";
    signal data_in_pc: unsigned(14 downto 0) := "000000000000000";
begin
    memory: rom port map(clock => clock, address => data_out_pc, data => rom_data_out);
    program_counter: pc port map(clock => clock, write_enable => write_enable, data_in => data_in_pc, data_out => data_out_pc);
    proto_control_unit: protouc port map(data_in_uc => data_out_pc, data_out_uc => data_in_pc);
end architecture;
