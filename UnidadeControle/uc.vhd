library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uc is
    port(
            clock           :   in std_logic;
            reset           :   in std_logic;
            pc_write        :   out std_logic;
            rom_out_enable  :   out std_logic
    );
end;

architecture arch_uc of uc is
    component fsm is
        port(
                clock           :       in std_logic;
                reset           :       in std_logic;
                state           :       out std_logic
        );
    end component;

    signal state: std_logic;
begin
    fin_state_machine: fsm port map(clock => clock, reset => reset, state => state);

    rom_out_enable <=   '1' when state = '0' else
                        '0';
    pc_write <= '1' when state = '1' else
                '0';

end architecture;
