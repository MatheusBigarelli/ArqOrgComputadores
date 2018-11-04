library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bancoRegs is
	port(
			clock				:			in std_logic;
			reset				:			in std_logic;
			write_enable		:			in std_logic;
			read_register1		:			in unsigned(3 downto 0);
			read_register2		:			in unsigned(3 downto 0);
			reg_selector		:			in unsigned(3 downto 0);
			write_data			:			in unsigned(7 downto 0);
			read_data1			:			out unsigned(7 downto 0);
			read_data2			:			out unsigned(7 downto 0)
	);
end;


architecture arch_bancoRegs of bancoRegs is
	component reg8bits is
		port(
				clock			:		in std_logic;
				reset			:		in std_logic;
				write_enable	:		in std_logic;
				data_in			:		in unsigned(7 downto 0);
				data_out		:		out unsigned(7 downto 0)
		);
	end component;

	signal data_out0, data_out1, data_out2, data_out3,
	data_out4, data_out5, data_out6, data_out7 : unsigned(7 downto 0);

	signal write_enable0, write_enable1, write_enable2, write_enable3,
	write_enable4, write_enable5, write_enable6, write_enable7: std_logic;

begin
	reg0: reg8bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable0,
								data_in => write_data,
								data_out => data_out0
						);

	reg1: reg8bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable1,
								data_in => write_data,
								data_out => data_out1
						);

	reg2: reg8bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable2,
								data_in => write_data,
								data_out => data_out2
						);

	reg3: reg8bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable3,
								data_in => write_data,
								data_out => data_out3
						);

	reg4: reg8bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable4,
								data_in => write_data,
								data_out => data_out4
						);

	reg5: reg8bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable5,
								data_in => write_data,
								data_out => data_out5
						);

	reg6: reg8bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable6,
								data_in => write_data,
								data_out => data_out6
						);

	reg7: reg8bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable7,
								data_in => write_data,
								data_out => data_out7
						);

	read_data1 <= 	data_out0 when read_register1 = "0000" else
					data_out1 when read_register1 = "0001" else
					data_out2 when read_register1 = "0010" else
					data_out3 when read_register1 = "0011" else
					data_out4 when read_register1 = "0100" else
					data_out5 when read_register1 = "0101" else
					data_out6 when read_register1 = "0110" else
					data_out7 when read_register1 = "0111" else
					"00000000";


	read_data2 <= 	data_out0 when read_register2 = "0000" else
					data_out1 when read_register2 = "0001" else
					data_out2 when read_register2 = "0010" else
					data_out3 when read_register2 = "0011" else
					data_out4 when read_register2 = "0100" else
					data_out5 when read_register2 = "0101" else
					data_out6 when read_register2 = "0110" else
					data_out7 when read_register2 = "0111" else
					"00000000";

	write_enable0 <=	'1' when reg_selector = "0000" and write_enable = '1' else
						'0';
	write_enable1 <=	'1' when reg_selector = "0001" and write_enable = '1' else
						'0';
	write_enable2 <=	'1' when reg_selector = "0010" and write_enable = '1' else
						'0';
	write_enable3 <=	'1' when reg_selector = "0011" and write_enable = '1' else
						'0';
	write_enable4 <=	'1' when reg_selector = "0100" and write_enable = '1' else
						'0';
	write_enable5 <=	'1' when reg_selector = "0101" and write_enable = '1' else
						'0';
	write_enable6 <=	'1' when reg_selector = "0110" and write_enable = '1' else
						'0';
	write_enable7 <=	'1' when reg_selector = "0111" and write_enable = '1' else
						'0';

end architecture;
