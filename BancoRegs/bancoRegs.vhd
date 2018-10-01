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
			reg_selector		:			in unsigned(4 downto 0);
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

	signal data_in1, data_in2, data_in3, data_in4, data_in5, data_in6, data_in7, data_in8: unsigned(15 downto 0);
	signal data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7, data_out8 : unsigned(15 downto 0);
	signal registro1, registro2: unsigned(15 downto 0);
	signal write_enable1, write_enable2, write_enable3, write_enable4, write_enable5, write_enable6, write_enable7, write_enable8: std_logic;

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

	process(clock, write_enable, reset, reg_selector)
	begin
		if write_enable = '1' then
			if reg_selector = "00000" then
				write_enable1 <= '1';
			elsif reg_selector = "00001" then
				write_enable2 <= '1';
			elsif reg_selector = "00010" then
				write_enable3 <= '1';
			elsif reg_selector = "00011" then
				write_enable4 <= '1';
			elsif reg_selector = "00100" then
				write_enable5 <= '1';
			elsif reg_selector = "00101" then
				write_enable6 <= '1';
			elsif reg_selector = "00110" then
				write_enable7 <= '1';
			elsif reg_selector = "00111" then
				write_enable8 <= '1';
			end if;
		else
			write_enable1 <= '0';
			write_enable2 <= '0';
			write_enable3 <= '0';
			write_enable4 <= '0';
			write_enable5 <= '0';
			write_enable6 <= '0';
			write_enable7 <= '0';
			write_enable8 <= '0';
		end if;
	end process;




end architecture;













--
-- process(clock, write_enable, reset, reg_selector)
-- begin
-- 	if reset = '1' then
-- 		data_in1 <= "0000000000000000";
-- 		data_in2 <= "0000000000000000";
-- 		data_in3 <= "0000000000000000";
-- 		data_in4 <= "0000000000000000";
-- 		data_in5 <= "0000000000000000";
-- 		data_in6 <= "0000000000000000";
-- 		data_in7 <= "0000000000000000";
-- 		data_in8 <= "0000000000000000";
--
-- 	else
-- 		data_in1 <= write_data;
-- 		data_in2 <= write_data;
-- 		data_in3 <= write_data;
-- 		data_in4 <= write_data;
-- 		data_in5 <= write_data;
-- 		data_in6 <= write_data;
-- 		data_in7 <= write_data;
-- 		data_in8 <= write_data;
--
-- elsif write_enable = '1' then
-- 	if rising_edge(clock) then
-- 		if reg_selector = "00000" then
-- 			data_in1 <= write_data;
--
-- 		elsif reg_selector = "00001" then
-- 			data_in2 <= write_data;
--
-- 		elsif reg_selector = "00010" then
-- 			data_in3 <= write_data;
--
-- 		elsif reg_selector = "00011" then
-- 			data_in4 <= write_data;
--
-- 		elsif reg_selector = "00100" then
-- 			data_in5 <= write_data;
--
-- 		elsif reg_selector = "00101" then
-- 			data_in6 <= write_data;
--
-- 		elsif reg_selector = "00110" then
-- 			data_in7 <= write_data;
--
-- 		elsif reg_selector = "00111" then
-- 			data_in8 <= write_data;
-- 		end if;
-- 	end if;
-- 	end if;
-- end process;
--
-- process(read_register1)
-- begin
-- 	if read_register1 = "00000" then
-- 		registro1 <= data_out1;
-- 	elsif read_register1 = "00001" then
-- 		registro1 <= data_out2;
-- 	elsif read_register1 = "00010" then
-- 		registro1 <= data_out3;
-- 	elsif read_register1 = "00011" then
-- 		registro1 <= data_out4;
-- 	elsif read_register1 = "00100" then
-- 		registro1 <= data_out5;
-- 	elsif read_register1 = "00101" then
-- 		registro1 <= data_out6;
-- 	elsif read_register1 = "00110" then
-- 		registro1 <= data_out7;
-- 	elsif read_register1 = "00111" then
-- 		registro1 <= data_out8;
-- 	else
-- 		registro1 <= "0000000000000000";
-- 	end if;
-- end process;
--
-- process(read_register2)
-- begin
-- 	if read_register2 = "00000" then
-- 		registro2 <= data_out1;
-- 	elsif read_register2 = "00001" then
-- 		registro2 <= data_out2;
-- 	elsif read_register2 = "00010" then
-- 		registro2 <= data_out3;
-- 	elsif read_register2 = "00011" then
-- 		registro2 <= data_out4;
-- 	elsif read_register2 = "00100" then
-- 		registro2 <= data_out5;
-- 	elsif read_register2 = "00101" then
-- 		registro2 <= data_out6;
-- 	elsif read_register2 = "00110" then
-- 		registro2 <= data_out7;
-- 	elsif read_register2 = "00111" then
-- 		registro2 <= data_out8;
-- 	else
-- 		registro2 <= "0000000000000000";
-- 	end if;
-- end process;
--
-- read_data1 <= registro1;
-- read_data2 <= registro2;
--
--
--
--
--
--
--
