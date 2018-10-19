library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity miniproc is
    port(
            clock   :   in std_logic;
            reset   :   in std_logic;
            debug   :   out unsigned(15 downto 0)
    );
end;


architecture arch_miniproc of miniproc is
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
                data_in_uc     :       in unsigned(14 downto 0);
                data_out_uc    :       out unsigned(14 downto 0)
        );
    end component;

    component rom is
        port(
                clock       :       in std_logic;
                address     :       in unsigned(14 downto 0);
                data        :       out unsigned(15 downto 0)
        );
    end component;

    component uc_com_jump is
        port(
                clock           :   in std_logic;
                reset           :   in std_logic;
                instruction     :   in unsigned(15 downto 0);
                pc_write        :   out std_logic;
                rom_out_enable  :   out std_logic;
                jump_enable     :   out std_logic
            );
    end component;

    signal pc_write_s, rom_out_enable_s, jump_enable_s: std_logic;
    signal data_in_pc, data_out_pc, data_out_uc: unsigned(14 downto 0);
    signal rom_data_out, buffer_rom_data_out: unsigned(15 downto 0);
begin
    program_counter: pc port map(clock => clock, write_enable => pc_write_s, data_in => data_in_pc, data_out => data_out_pc);
    proto_control_unit: protouc port map(data_in_uc => data_out_pc, data_out_uc => data_out_uc);
    memory: rom port map(clock => clock, address => data_out_pc, data => rom_data_out);
    control_unit: uc_com_jump port map(clock => clock, reset => reset, instruction => buffer_rom_data_out, pc_write => pc_write_s, rom_out_enable => rom_out_enable_s, jump_enable => jump_enable_s);

    data_in_pc <= "000000" & rom_data_out(9 downto 0) when jump_enable_s = '1' else
                  data_out_uc;
    rom_data_out <= buffer_rom_data_out when rom_out_enable_s = '1' else rom_data_out;

    debug <= rom_data_out;

end architecture;
