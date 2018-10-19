library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity protouc is
    port(
            data_in_uc     :       in unsigned(6 downto 0);
            data_out_uc    :       out unsigned(6 downto 0)
    );
end;

architecture arch_protouc of protouc is
begin
    data_out_uc <= "0000001" + data_in_uc;
end architecture;
