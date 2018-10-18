library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity protouc_tb is
end;

architecture arch_protouc_tb of protouc_tb is
    component protouc is
        port(
                data_in :   in unsigned(7 downto 0);
                data_out:   out unsigned(7 downto 0)
        );
    end component;

    signal data_in, data_out: unsigned(7 downto 0);
begin
    uut: protouc port map(data_in => data_in, data_out => data_out);
    process
    begin
        data_in <= "00000000";
        wait for 50 ns;
        data_in <= "00000001";
        wait for 50 ns;
        data_in <= "00000010";
        wait for 50 ns;
        wait;
    end process;
end architecture;
