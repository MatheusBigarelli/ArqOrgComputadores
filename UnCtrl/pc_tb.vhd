library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity pc_tb is
end;

architecture arch_pc_tb of pc_tb is
    component pc is
        port(
                clock   :   in std_logic;
                write_en:   in std_logic;
                data_in :   in unsigned(7 downto 0);
                data_out:   out unsigned(7 downto 0)
        );
    end component;

    component protouc is
        port(
                data_in :    in unsigned(7 downto 0);
                data_out:   out unsigned(7 downto 0)
        );
    end component;

    signal clock, write_en: std_logic;
    signal data_in_puc, data_out_puc: unsigned(7 downto 0);

    begin
        pcounter: pc port map(clock => clock, write_en => write_en, data_in => data_out_puc, data_out => data_in_puc);
        puc: protouc port map(data_in => data_in_puc, data_out => data_out_puc);

        process
        begin
            clock <= '0';
            wait for 50 ns;
            clock <= '1';
            wait for 50 ns;
        end process;

        process
        begin
            write_en <= '1';
            wait for 400 ns;
            wait;
        end process;

end architecture;
