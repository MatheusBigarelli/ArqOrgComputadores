library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uc_com_jump is
    port(
            clock           :   in std_logic;
            reset           :   in std_logic;
            instruction     :   in unsigned(15 downto 0);
            pc_write        :   out std_logic;
            reg_write       :   out std_logic;
            jump_enable     :   out std_logic;
            ula_select      :   out unsigned(1 downto 0)
    );
end;

architecture arch_uc_com_jump of uc_com_jump is
    component maq_estados is
        port(
                clock       :       in std_logic;
                reset       :       in std_logic;
                state       :       out unsigned(1 downto 0)
        );
    end component;

    signal state: unsigned(1 downto 0);
    signal opcode: unsigned(3 downto 0);
begin
    fin_state_machine: maq_estados port map(clock => clock, reset => reset, state => state);

    opcode <= instruction(15 downto 12);

    pc_write <= '1' when state = "10" else '0';
    jump_enable <= '1' when opcode = "1111" else '0';
    reg_write <= '1' when state = "10" and opcode /= "1111" else '0';
    ula_select <= "00" when opcode = "0001" or opcode = "0010" else -- add
                  "01" when opcode = "0011" else -- sub
                  "00"; -- default
end architecture;
