library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom_tb is
end;


architecture arch_rom_tb of rom_tb is
    component rom is
        port(
                clock       :       in std_logic;
                address     :       in unsigned(14 downto 0);
                data        :       out unsigned(15 downto 0)

        );
    end component;

    signal clock: std_logic;
    signal address: unsigned(14 downto 0);
    signal data: unsigned(15 downto 0);

begin
    uut: rom port map(clock => clock, address => address, data => data);

    process
    begin
        clock <= '0';
        wait for 50 ns;
        clock <= '1';
        wait for 50 ns;
    end process;

    process
    begin
        address <= "000000000000000";
        wait for 100 ns;
        address <= "000000000000001";
        wait for 100 ns;
        address <= "000000000000010";
        wait for 100 ns;
        address <= "000000000000011";
        wait for 100 ns;
        address <= "000000000000100";
        wait for 100 ns;
        address <= "000000000000101";
        wait for 100 ns;
        address <= "000000000000110";
        wait;
    end process;

end architecture;
