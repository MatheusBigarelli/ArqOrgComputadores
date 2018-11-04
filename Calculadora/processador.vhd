library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processador is
    port(
            clock : in std_logic;
            reset : in std_logic;
            state : out unsigned(1 downto 0);
            pc : out unsigned(6 downto 0);
            instrucao : out unsigned(15 downto 0);
            out1_banco : out unsigned(7 downto 0);
            out2_banco : out unsigned(7 downto 0);
            out_ula : out unsigned(7 downto 0)
    );
end;


architecture arch_processador of processador is
    component uc_com_jump is
        port(
            clock           :   in std_logic;
            reset           :   in std_logic;
            instruction     :   in unsigned(15 downto 0);
            pc_write        :   out std_logic;
            reg_write       :   out std_logic;
            jump_enable     :   out std_logic;
            ula_select      :   out unsigned(1 downto 0)
        );
    end component;

    component rom_e_pc is
        port(
            clock           :       in std_logic;
            data_in_pc      :       in unsigned(6 downto 0);
            in_select       :       in std_logic;
            write_enable    :       in std_logic;
            data_out_pc     :       out unsigned(6 downto 0);
            rom_data_out    :       out unsigned(15 downto 0)
        );
    end component;

    component maq_estados is
        port(
            clock : in std_logic;
            reset : in std_logic;
            state : out unsigned(1 downto 0)
        );
    end component;

    component ula is
        port(
            entrada1: in unsigned (7 downto 0);
            entrada2: in unsigned (7 downto 0);
            seletor_de_operacao: in unsigned (1 downto 0);

            resultado_da_operacao: out unsigned (7 downto 0);
            resultado0: out std_logic;
            entrada1_maior: out std_logic
        );
    end component;

    component bancoRegs is
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
    end component;

    signal data_in_pc, data_out_pc: unsigned(6 downto 0);
    signal rom_data_out, instruction: unsigned(15 downto 0);
    signal opcode: unsigned(3 downto 0);
    signal pc_write: std_logic := '0';
    signal jump_enable: std_logic := '0';
    signal state_s: unsigned(1 downto 0);
    signal in_select_pc: std_logic;
    signal reg_write: std_logic;
    signal ula_second_entry: unsigned(7 downto 0);
    signal ula_select: unsigned(1 downto 0);
    signal result0, first_bigger: std_logic;
    signal read_register1, read_register2: unsigned(3 downto 0);
    signal reg_write_select: unsigned(3 downto 0);
    signal reg_write_data: unsigned(7 downto 0);
    signal reg1_out, reg2_out: unsigned(7 downto 0);
begin
    control_unit: uc_com_jump port map(clock => clock, reset => reset, instruction => instruction, pc_write => pc_write, jump_enable => jump_enable, reg_write => reg_write, ula_select => ula_select);

    rom_and_pc: rom_e_pc port map(clock => clock, data_in_pc => data_in_pc, data_out_pc => data_out_pc, in_select => in_select_pc, write_enable => pc_write, rom_data_out => rom_data_out);



    alu: ula port map(entrada1 => reg1_out, entrada2 => ula_second_entry, seletor_de_operacao => ula_select, resultado_da_operacao => reg_write_data, resultado0 => result0, entrada1_maior => first_bigger);

    fsm: maq_estados port map(clock => clock, reset => reset, state => state_s);

    reg_bank: bancoRegs port map(clock => clock, reset => reset, write_enable => reg_write, read_register1 => read_register1, read_register2 => read_register2, reg_selector => reg_write_select, write_data => reg_write_data, read_data1 => reg1_out, read_data2 => reg2_out);


    -- state = "00": fetch
    -- state = "01": decode
    -- state = "10": execute

    -- Gets instruction out of rom in fetch subcycle.
    instruction <= rom_data_out when state_s = "00";


    -- Decode
    -- Nop:
    -- 0000 XXXX XXXX XXXX
    -- Jump instruction:
    -- j 0ximmediate
    -- 1111 <immediate>
    -- Add immediate instruction:
    -- addi rd, rs1, immediate
    -- 0001 XXXX XXXX XXXX
    -- Add format:
    -- add rd, rs1, rs2
    -- 0010 XXXX XXXX XXXX
    -- Sub immediate instruction:
    -- subi rd, rs, immediate
    -- 0011 XXXX XXXX <immediate>

    opcode <= instruction(15 downto 12);
    data_in_pc <= instruction(6 downto 0) when state_s = "10";
    in_select_pc <= '1' when opcode = "1111" else '0';

    read_register1 <= instruction(7 downto 4) when state_s = "10";
    read_register2 <= instruction(3 downto 0) when state_s = "10";
    reg_write_select <= instruction(11 downto 8) when state_s = "10";

    -- Execute
    -- Maps ULA operations and sencond operand, writes result to register and updates pc if not jump
    -- Almost all done by control unit
    ula_second_entry <= (resize(instruction(3 downto 0), 8)) when opcode = "0001"  or opcode = "0011" else reg2_out;



    -- Ports
    pc <= data_out_pc;
    instrucao <= instruction;
    out1_banco <= reg1_out;
    out2_banco <= reg2_out;
    out_ula <= reg_write_data;
    state <= state_s;

end architecture;
