library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity reg16bits_tb is
end;

architecture arch_reg16bits_tb of reg16bits_tb is
	component reg16bits is
		port(
				clock			:		in std_logic;
				reset			:		in std_logic;
				write_enable	:		in std_logic;
				data_in			:		in unsigned(15 downto 0);
				data_out		:		out unsigned(15 downto 0)
		);
	end component;
	
	signal clock, reset, write_enable: std_logic;
	signal data_in, data_out: unsigned(15 downto 0);
	
begin
	uut: reg16bits port map(
							clock => clock,
							reset => reset,
							write_enable => write_enable,
							data_in => data_in,
							data_out => data_out
						);
	
	process
	begin
		clock <= '0';
		wait for 50 ns;
		clock <= '1';
		wait for 50 ns;
	end process;
	
	process
	begin
		write_enable <= '1';
		data_in <= "0000000000000110";
		wait for 100 ns;
		write_enable <= '0';
		data_in <= "0000000000001010";
		wait;
	end process;
	
	process
	begin
		reset <= '0';
		wait for 200 ns;
		reset <= '1';
		wait;
	end process;
end architecture;