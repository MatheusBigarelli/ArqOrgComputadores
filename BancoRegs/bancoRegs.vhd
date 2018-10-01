library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bancoRegs is
	port(
			clock				:			in std_logic;
			reset				:			in std_logic;
			write_enable		:			in std_logic;
			read_register1		:			in unsigned(4 downto 0);
			read_register2		:			in unsigned(4 downto 0);
			write_data			:			in unsigned(15 downto 0);
			reg_selector		:			in unsigned(2 downto 0);
			read_data1			:			out unsigned(15 downto 0);
			read_data2			:			out unsigned(15 downto 0)
	);
end;


architecture arch_bancoRegs of bancoRegs is
	component reg16bits is
		port(
				clock			:		in std_logic;
				reset			:		in std_logic;
				write_enable	:		in std_logic;
				data_in			:		in unsigned(15 downto 0);
				data_out		:		out unsigned(15 downto 0)
		);
	end component;

	signal data_in, data_out, data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7, data_out8 : unsigned(15 downto 0);

begin
	reg1: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable,
								data_in => data_in,
								data_out => data_out1
						);

	reg2: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable,
								data_in => data_in,
								data_out => data_out2
						);

	reg3: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable,
								data_in => data_in,
								data_out => data_out3
						);

	reg4: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable,
								data_in => data_in,
								data_out => data_out4
						);

	reg5: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable,
								data_in => data_in,
								data_out => data_out5
						);

	reg6: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable,
								data_in => data_in,
								data_out => data_out6
						);

	reg7: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable,
								data_in => data_in,
								data_out => data_out7
						);

	reg8: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable,
								data_in => data_in,
								data_out => data_out8
						);

	process(clock, write_enable, reset)
	begin
		if reset = '1' then
			data_out1 <= "0000000000000000";
			data_out2 <= "0000000000000000";
			data_out3 <= "0000000000000000";
			data_out4 <= "0000000000000000";
			data_out5 <= "0000000000000000";
			data_out6 <= "0000000000000000";
			data_out7 <= "0000000000000000";
			data_out8 <= "0000000000000000";


		elsif write_enable = '1' then
			if rising_edge(clock) then
				if reg_selector = "000" then
					data_out1 <= data_in;

				elsif reg_selector = "001" then
					data_out2 <= data_in;

				elsif reg_selector = "010" then
					data_out3 <= data_in;

				elsif reg_selector = "011" then
					data_out4 <= data_in;

				elsif reg_selector = "100" then
					data_out5 <= data_in;

				elsif reg_selector = "101" then
					data_out6 <= data_in;

				elsif reg_selector = "110" then
					data_out7 <= data_in;

				elsif reg_selector = "111" then
					data_out8 <= data_in;
				end if;
			end if;
		end if;
	end process;

	process(read_register1)
	begin
		if read_register1 = "00000" then
			read_data1 <= data_out1;
		elsif read_register1 = "00001" then
			read_data1 <= data_out2;
		elsif read_register1 = "00010" then
			read_data1 <= data_out3;
		elsif read_register1 = "00011" then
			read_data1 <= data_out4;
		elsif read_register1 = "00100" then
			read_data1 <= data_out5;
		elsif read_register1 = "00101" then
			read_data1 <= data_out6;
		elsif read_register1 = "00110" then
			read_data1 <= data_out7;
		elsif read_register1 = "000111" then
			read_data1 <= data_out8;
		else
			read_data1 <= "0000000000000000";
		end if;
	end process;

	process(read_register2)
	begin
		if read_register2 = "00000" then
			read_data2 <= data_out1;
		elsif read_register2 = "00001" then
			read_data2 <= data_out2;
		elsif read_register2 = "00010" then
			read_data2 <= data_out3;
		elsif read_register2 = "00011" then
			read_data2 <= data_out4;
		elsif read_register2 = "00100" then
			read_data2 <= data_out5;
		elsif read_register2 = "00101" then
			read_data2 <= data_out6;
		elsif read_register2 = "00110" then
			read_data2 <= data_out7;
		elsif read_register2 = "00111" then
			read_data2 <= data_out8;
		else
			read_data1 <= "0000000000000000";
		end if;
	end process;

end architecture;
