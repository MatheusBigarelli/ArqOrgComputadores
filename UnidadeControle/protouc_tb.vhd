library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity protouc_tb is
end;


architecture arch_protouc_tb of protouc_tb is
    component protouc is
        port(
                data_in_uc     :       in unsigned(14 downto 0);
                data_out_uc    :       out unsigned(14 downto 0)
        );
    end component;

    signal data_in_uc, data_out_uc: unsigned(14 downto 0);
begin
    uut: protouc port map(data_in_uc => data_in_uc, data_out_uc => data_out_uc);

    process
    begin
        data_in_uc <= "000000000000000";
        wait for 50 ns;
        data_in_uc <= "000000000000001";
        wait for 50 ns;
        data_in_uc <= "000000000000010";
        wait;
    end process;

end architecture;
