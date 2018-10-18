library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity protouc is
    port(
            data_in :    in unsigned(7 downto 0);
            data_out:    out unsigned(7 downto 0)
    );
end;

architecture arch_protouc of protouc is

begin
    data_out <= data_in + "00000001";
end architecture;
