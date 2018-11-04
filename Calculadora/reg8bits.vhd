library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg8bits is
	port(
			clock			:		in std_logic;
			reset			:		in std_logic;
			write_enable	:		in std_logic;
			data_in			:		in unsigned(7 downto 0);
			data_out		:		out unsigned(7 downto 0)
	);
end;


architecture arch_reg8bits of reg8bits is
	signal registro 		:		unsigned(7 downto 0);

begin
	process(clock, reset, write_enable)
	begin
		if reset = '1' then
			registro <= "00000000";
		elsif write_enable = '1' then
			if rising_edge(clock) then
				registro <= data_in;
			end if;
		else
			registro <= registro;
		end if;
	end process;

	data_out <= registro;
end architecture;
