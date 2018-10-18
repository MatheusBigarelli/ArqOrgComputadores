library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc is
    port(
            clock   :   in std_logic;
            write_en:   in std_logic;
            data_in :   in unsigned(7 downto 0);
            data_out:   out unsigned(7 downto 0)
    );
end;



architecture arch_pc of pc is
    signal registro: unsigned(7 downto 0) := "00000000";
begin
    process(clock, write_en)
    begin
        if (write_en = '1') then
            if (rising_edge(clock)) then
                registro <= data_in;
            end if;
        end if;
    end process;
    data_out <= registro;
end architecture;
