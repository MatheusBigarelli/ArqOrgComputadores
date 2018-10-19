library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity calculadora is
	port(
			clock		:	in std_logic;
			data_out	:	out unsigned(7 downto 0)
	);
end;


architecture arch_calculadora of calculadora is
	component uc_com_jump is
		port();
	end component;
	
	component maq_estados is
		port();
	end component;
	
	component pc is
		port();
	end component;
	
	component protouc is
		port();
	end component;
	
	component rom is
		port();
	end component;
	
	component ula is
		port();
	end component;
	
	component bancoRegs is
		port();
	end component;
	
begin
	


end architecture;