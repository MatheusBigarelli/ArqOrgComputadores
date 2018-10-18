library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux16bits is
    port(
            in_0: in signed(15 downto 0);
            in_1: in signed(15 downto 0);
            sel: in std_logic;
            out_mux: out signed(15 downto 0)
    );
end;


architecture arch_mux16bits of mux16bits is
    begin
        out_mux <=  in_0 when sel = '0' else
                    in_1 when sel = '1' else
                    "1111111111111111";

end architecture;
