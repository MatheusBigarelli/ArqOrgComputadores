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
			reg_selector		:			in unsigned(4 downto 0);
			write_data			:			in signed(15 downto 0);
			read_data1			:			out signed(15 downto 0);
			read_data2			:			out signed(15 downto 0)
	);
end;


architecture arch_bancoRegs of bancoRegs is
	component reg16bits is
		port(
				clock			:		in std_logic;
				reset			:		in std_logic;
				write_enable	:		in std_logic;
				data_in			:		in signed(15 downto 0);
				data_out		:		out signed(15 downto 0)
		);
	end component;

	signal data_out1, data_out2, data_out3, data_out4,
	data_out5, data_out6, data_out7, data_out8 : signed(15 downto 0);

	signal write_enable1, write_enable2, write_enable3, write_enable4,
	write_enable5, write_enable6, write_enable7, write_enable8: std_logic;

begin
	reg1: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable1,
								data_in => write_data,
								data_out => data_out1
						);

	reg2: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable2,
								data_in => write_data,
								data_out => data_out2
						);

	reg3: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable3,
								data_in => write_data,
								data_out => data_out3
						);

	reg4: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable4,
								data_in => write_data,
								data_out => data_out4
						);

	reg5: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable5,
								data_in => write_data,
								data_out => data_out5
						);

	reg6: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable6,
								data_in => write_data,
								data_out => data_out6
						);

	reg7: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable7,
								data_in => write_data,
								data_out => data_out7
						);

	reg8: reg16bits port map(
								clock => clock,
								reset => reset,
								write_enable => write_enable8,
								data_in => write_data,
								data_out => data_out8
						);

	read_data1 <= 	data_out1 when read_register1 = "00000" else
					data_out2 when read_register1 = "00001" else
					data_out3 when read_register1 = "00010" else
					data_out4 when read_register1 = "00011" else
					data_out5 when read_register1 = "00100" else
					data_out6 when read_register1 = "00101" else
					data_out7 when read_register1 = "00110" else
					data_out8 when read_register1 = "00111" else
					"0000000000000000";


	read_data2 <= 	data_out1 when read_register2 = "00000" else
					data_out2 when read_register2 = "00001" else
					data_out3 when read_register2 = "00010" else
					data_out4 when read_register2 = "00011" else
					data_out5 when read_register2 = "00100" else
					data_out6 when read_register2 = "00101" else
					data_out7 when read_register2 = "00110" else
					data_out8 when read_register2 = "00111" else
					"0000000000000000";

	write_enable1 <=	'1' when reg_selector = "00000" and write_enable = '1' else
						'0';
	write_enable2 <=	'1' when reg_selector = "00001" and write_enable = '1' else
						'0';
	write_enable3 <=	'1' when reg_selector = "00010" and write_enable = '1' else
						'0';
	write_enable4 <=	'1' when reg_selector = "00011" and write_enable = '1' else
						'0';
	write_enable5 <=	'1' when reg_selector = "00100" and write_enable = '1' else
						'0';
	write_enable6 <=	'1' when reg_selector = "00101" and write_enable = '1' else
						'0';
	write_enable7 <=	'1' when reg_selector = "00110" and write_enable = '1' else
						'0';
	write_enable8 <=	'1' when reg_selector = "00111" and write_enable = '1' else
						'0';

end architecture;
