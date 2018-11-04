library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uc_com_jump is
    port(
            clock           :   in std_logic;
            reset           :   in std_logic;
            instruction     :   in unsigned(15 downto 0);
            pc_write        :   out std_logic;
            rom_out_enable  :   out std_logic;
            jump_enable     :   out std_logic
    );
end;

architecture arch_uc_com_jump of uc_com_jump is
    component fsm is
        port(
                clock       :       in std_logic;
                reset       :       in std_logic;
                state       :       out std_logic
        );
    end component;

    signal state: std_logic;
    signal opcode: unsigned(3 downto 0);
begin
    fin_state_machine: fsm port map(clock => clock, reset => reset, state => state);

    opcode <= instruction(15 downto 12);

    rom_out_enable <= '1' when state = '1' else '0';
    pc_write <= '1' when state = '0' else '0';
    jump_enable <= '1' when opcode = "1111" else '0';
end architecture;
