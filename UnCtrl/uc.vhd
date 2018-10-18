library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity uc is
    port(
            clock       :   in std_logic;
            fsm_reset   :   in std_logic;
            data_rom_out:   out unsigned(15 downto 0);
            jump_en     :   out std_logic;
            nop         :   out std_logic
    );
end;


architecture arch_uc of uc is
    component toplevel is
        port(
                clock           :   in std_logic;
                write_en        :   in std_logic;
                jump_en         :   in std_logic;
                data_in         :   in unsigned(15 downto 0);
                data_rom_out    :   out unsigned(15 downto 0)
        );
    end component;

    component fsm is
        port(
                clock   :   in std_logic;
                reset   :   in std_logic;
                saida  :   out std_logic
        );
    end component;


    -- Estado 0 (fetch)
        -- ler rom

    -- Estado 1 (execute)
        -- atualizar pc (write_en <= '1')

    signal write_en, saida: std_logic;
    signal opcode: unsigned(4 downto 0);
    signal instr: unsigned(15 downto 0);
    begin
        tl: toplevel port map(clock => clock, write_en => write_en, jump_en => jump_en,
                                data_in => instr(7 downto 0), data_rom_out => instr);
        mach: fsm port map(clock => clock, reset => fsm_reset, saida => saida);

        opcode <= instr(15 downto 11);


        write_en <= '0' when saida = '0' else
                    '1' when saida = '1' else
                    '0';

        jump_en <= '1' when opcode =  "00010" else
                   '0';

        nop <= '1' when opcode = "11111" else
               '0';
end architecture;
