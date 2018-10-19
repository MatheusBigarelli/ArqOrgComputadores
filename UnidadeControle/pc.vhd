library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc is
    port(
            clock           :       in std_logic;
            write_enable    :       in std_logic;
            data_in         :       in unsigned(14 downto 0);
            data_out        :       out unsigned(14 downto 0)
    );
end;


architecture arch_pc of pc is
    component protouc is
        port(
                data_in     :       in unsigned(14 downto 0);
                data_out    :       out unsigned(14 downto 0)
        );
    end component;
    signal registro: unsigned(14 downto 0) := "000000000000000";
begin
    process(clock)
    begin
        if (write_enable = '1') then
            if (rising_edge(clock)) then
                registro <= data_in;
            end if;
        end if;
    end process;

    data_out <= registro;
end architecture;
