library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uc_com_jump_tb is
end;

architecture arch_uc_com_jump_tb of uc_com_jump_tb is
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

    signal clock, reset, pc_write, rom_out_enable, jump_enable: std_logic;
    signal instruction: unsigned(15 downto 0);
begin
    uut: uc_com_jump port map(clock => clock, reset => reset, instruction => instruction, pc_write => pc_write, rom_out_enable => rom_out_enable, jump_enable => jump_enable);
    process
    begin
        clock <= '0';
        wait for 50 ns;
        clock <= '1';
        wait for 50 ns;
    end process;

    process
    begin
        reset <= '0';
        wait for 400 ns;
        reset <= '1';
        wait for 150 ns;
        reset <= '0';
        wait;
    end process;

    process
    begin
        -- Primeiro ciclo de clock:
        instruction <= "0000000000000000";
        wait for 100 ns;

        -- Próximos 2 ciclos
        instruction <= "0000000000000001";
        wait for 200 ns;

        -- Quarto ciclo (acontecerá um reset em 100 ns)
        instruction <= "1111111111111111";
        wait for 150 ns;
        -- Passamos para garantir q a instrução seja pega no reset

        -- Jump contínuo
        instruction <= "1111111111111100";
        wait;

    end process;
end architecture;
