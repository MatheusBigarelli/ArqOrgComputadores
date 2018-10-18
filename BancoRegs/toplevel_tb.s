	.file	"toplevel_tb.vhd"
	.section	.rodata
	.align 16
	.type	_UI00000000, @object
	.size	_UI00000000, 16
_UI00000000:
	.byte	116
	.byte	111
	.byte	112
	.byte	108
	.byte	101
	.byte	118
	.byte	101
	.byte	108
	.byte	95
	.byte	116
	.byte	98
	.byte	46
	.byte	118
	.byte	104
	.byte	100
	.byte	0
	.align 8
	.type	work__toplevel_tb__RTISTR, @object
	.size	work__toplevel_tb__RTISTR, 12
work__toplevel_tb__RTISTR:
	.byte	116
	.byte	111
	.byte	112
	.byte	108
	.byte	101
	.byte	118
	.byte	101
	.byte	108
	.byte	95
	.byte	116
	.byte	98
	.byte	0
	.align 8
	.type	work__toplevel_tb__RTIARRAY, @object
	.size	work__toplevel_tb__RTIARRAY, 8
work__toplevel_tb__RTIARRAY:
	.zero	8
	.globl	work__toplevel_tb__RTI
	.align 32
	.type	work__toplevel_tb__RTI, @object
	.size	work__toplevel_tb__RTI, 64
work__toplevel_tb__RTI:
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__RTISTR
	.quad	0
	.long	1288
	.zero	4
	.quad	work__RTI
	.long	0
	.zero	4
	.quad	work__toplevel_tb__RTIARRAY
	.quad	_UI00000000
	.text
	.globl	work__toplevel_tb__PKG_ELAB
	.type	work__toplevel_tb__PKG_ELAB, @function
work__toplevel_tb__PKG_ELAB:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movzbl	ieee__std_logic_1164__ELABORATED(%rip), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L2
	call	ieee__std_logic_1164__ELAB_BODY
.L2:
	movzbl	ieee__numeric_std__ELABORATED(%rip), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1
	call	ieee__numeric_std__ELAB_BODY
.L1:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	work__toplevel_tb__PKG_ELAB, .-work__toplevel_tb__PKG_ELAB
	.globl	work__toplevel_tb__DECL_ELAB
	.type	work__toplevel_tb__DECL_ELAB, @function
work__toplevel_tb__DECL_ELAB:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	work__toplevel_tb__DECL_ELAB, .-work__toplevel_tb__DECL_ELAB
	.globl	work__toplevel_tb__STMT_ELAB
	.type	work__toplevel_tb__STMT_ELAB, @function
work__toplevel_tb__STMT_ELAB:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	work__toplevel_tb__STMT_ELAB, .-work__toplevel_tb__STMT_ELAB
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__OT__STB
	.section	.rodata
	.align 16
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__OT__STB, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__OT__STB, 16
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__OT__STB:
	.long	1
	.long	0
	.byte	1
	.zero	3
	.long	2
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__OT__STB
	.align 16
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__OT__STB, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__OT__STB, 16
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__OT__STB:
	.long	4
	.long	0
	.byte	1
	.zero	3
	.long	5
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__OT__STB
	.align 16
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__OT__STB, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__OT__STB, 16
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__OT__STB:
	.long	4
	.long	0
	.byte	1
	.zero	3
	.long	5
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__OT__STB
	.align 16
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__OT__STB, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__OT__STB, 16
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__OT__STB:
	.long	4
	.long	0
	.byte	1
	.zero	3
	.long	5
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__OT__STB
	.align 16
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__OT__STB, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__OT__STB, 16
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__OT__STB
	.align 16
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__OT__STB, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__OT__STB, 16
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__OT__STB
	.align 16
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__OT__STB, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__OT__STB, 16
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__OT__STB
	.align 16
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__OT__STB, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__OT__STB, 16
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__OT__STB
	.align 16
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__OT__STB, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__OT__STB, 16
work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__OT__STB:
	.long	1
	.long	0
	.byte	1
	.zero	3
	.long	2
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__OT__STB
	.align 16
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__OT__STB, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__OT__STB, 16
work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__OT__STB:
	.long	4
	.long	0
	.byte	1
	.zero	3
	.long	5
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__OT__STB
	.align 16
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__OT__STB, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__OT__STB, 16
work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__OT__STB
	.align 16
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__OT__STB, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__OT__STB, 16
work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__OT__STB:
	.long	4
	.long	0
	.byte	1
	.zero	3
	.long	5
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__INSTSIZE
	.align 4
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__INSTSIZE, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__INSTSIZE, 4
work__toplevel_tb__ARCH__arch_toplevel_tb__INSTSIZE:
	.long	1672
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__clock__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__clock__RTISTR, 6
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__clock__RTISTR:
	.byte	99
	.byte	108
	.byte	111
	.byte	99
	.byte	107
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__clock__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__clock__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__clock__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__clock__RTI:
	.byte	18
	.byte	2
	.byte	5
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__clock__RTISTR
	.quad	16
	.quad	ieee__std_logic_1164__std_logic__RTI
	.long	3089
	.zero	4
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__reset__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__reset__RTISTR, 6
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__reset__RTISTR:
	.byte	114
	.byte	101
	.byte	115
	.byte	101
	.byte	116
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__reset__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__reset__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__reset__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__reset__RTI:
	.byte	18
	.byte	2
	.byte	5
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__reset__RTISTR
	.quad	32
	.quad	ieee__std_logic_1164__std_logic__RTI
	.long	3345
	.zero	4
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_enable__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_enable__RTISTR, 13
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_enable__RTISTR:
	.byte	119
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	95
	.byte	101
	.byte	110
	.byte	97
	.byte	98
	.byte	108
	.byte	101
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_enable__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_enable__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_enable__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_enable__RTI:
	.byte	18
	.byte	2
	.byte	5
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_enable__RTISTR
	.quad	48
	.quad	ieee__std_logic_1164__std_logic__RTI
	.long	3601
	.zero	4
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__mux_sel__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__mux_sel__RTISTR, 8
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__mux_sel__RTISTR:
	.byte	109
	.byte	117
	.byte	120
	.byte	95
	.byte	115
	.byte	101
	.byte	108
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__mux_sel__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__mux_sel__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__mux_sel__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__mux_sel__RTI:
	.byte	18
	.byte	2
	.byte	5
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__mux_sel__RTISTR
	.quad	64
	.quad	ieee__std_logic_1164__std_logic__RTI
	.long	4625
	.zero	4
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__OT__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__OT__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__OT__RTI, 48
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__OT__RTI:
	.byte	38
	.byte	0
	.byte	2
	.byte	0
	.zero	4
	.quad	0
	.quad	ieee__numeric_std__unsigned__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__OT__STB
	.quad	2
	.quad	16
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__RTISTR, 7
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__RTISTR:
	.byte	111
	.byte	112
	.byte	95
	.byte	115
	.byte	101
	.byte	108
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__RTI:
	.byte	18
	.byte	2
	.byte	5
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__RTISTR
	.quad	80
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__OT__RTI
	.long	5137
	.zero	4
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__OT__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__OT__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__OT__RTI, 48
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__OT__RTI:
	.byte	38
	.byte	0
	.byte	2
	.byte	0
	.zero	4
	.quad	0
	.quad	ieee__numeric_std__unsigned__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__OT__STB
	.quad	5
	.quad	40
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__RTISTR, 14
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__RTISTR:
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	95
	.byte	97
	.byte	100
	.byte	100
	.byte	114
	.byte	101
	.byte	115
	.byte	115
	.byte	49
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__RTI:
	.byte	18
	.byte	2
	.byte	5
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__RTISTR
	.quad	104
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__OT__RTI
	.long	5393
	.zero	4
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__OT__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__OT__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__OT__RTI, 48
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__OT__RTI:
	.byte	38
	.byte	0
	.byte	2
	.byte	0
	.zero	4
	.quad	0
	.quad	ieee__numeric_std__unsigned__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__OT__STB
	.quad	5
	.quad	40
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__RTISTR, 14
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__RTISTR:
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	95
	.byte	97
	.byte	100
	.byte	100
	.byte	114
	.byte	101
	.byte	115
	.byte	115
	.byte	50
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__RTI:
	.byte	18
	.byte	2
	.byte	5
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__RTISTR
	.quad	152
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__OT__RTI
	.long	5649
	.zero	4
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__OT__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__OT__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__OT__RTI, 48
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__OT__RTI:
	.byte	38
	.byte	0
	.byte	2
	.byte	0
	.zero	4
	.quad	0
	.quad	ieee__numeric_std__unsigned__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__OT__STB
	.quad	5
	.quad	40
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__RTISTR, 15
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__RTISTR:
	.byte	119
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	95
	.byte	114
	.byte	101
	.byte	103
	.byte	105
	.byte	115
	.byte	116
	.byte	101
	.byte	114
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__RTI:
	.byte	18
	.byte	2
	.byte	5
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__RTISTR
	.quad	200
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__OT__RTI
	.long	5905
	.zero	4
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__OT__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__OT__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__OT__RTI, 48
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__OT__RTI:
	.byte	38
	.byte	0
	.byte	2
	.byte	0
	.zero	4
	.quad	0
	.quad	ieee__numeric_std__signed__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__OT__STB
	.quad	16
	.quad	128
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__RTISTR, 9
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__RTISTR:
	.byte	99
	.byte	111
	.byte	110
	.byte	115
	.byte	116
	.byte	95
	.byte	105
	.byte	110
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__RTI:
	.byte	18
	.byte	2
	.byte	5
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__RTISTR
	.quad	248
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__OT__RTI
	.long	6161
	.zero	4
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__OT__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__OT__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__OT__RTI, 48
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__OT__RTI:
	.byte	38
	.byte	0
	.byte	2
	.byte	0
	.zero	4
	.quad	0
	.quad	ieee__numeric_std__signed__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__OT__STB
	.quad	16
	.quad	128
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__RTISTR, 11
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__RTISTR:
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	95
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	49
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__RTI:
	.byte	18
	.byte	2
	.byte	3
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__RTISTR
	.quad	384
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__OT__RTI
	.long	6417
	.zero	4
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__OT__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__OT__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__OT__RTI, 48
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__OT__RTI:
	.byte	38
	.byte	0
	.byte	2
	.byte	0
	.zero	4
	.quad	0
	.quad	ieee__numeric_std__signed__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__OT__STB
	.quad	16
	.quad	128
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__RTISTR, 11
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__RTISTR:
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	95
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	50
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__RTI:
	.byte	18
	.byte	2
	.byte	3
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__RTISTR
	.quad	520
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__OT__RTI
	.long	6673
	.zero	4
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__OT__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__OT__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__OT__RTI, 48
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__OT__RTI:
	.byte	38
	.byte	0
	.byte	2
	.byte	0
	.zero	4
	.quad	0
	.quad	ieee__numeric_std__signed__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__OT__STB
	.quad	16
	.quad	128
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__RTISTR, 6
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__RTISTR:
	.byte	100
	.byte	101
	.byte	98
	.byte	117
	.byte	103
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__RTI:
	.byte	18
	.byte	2
	.byte	3
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__RTISTR
	.quad	656
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__OT__RTI
	.long	6929
	.zero	4
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__RTISTR, 9
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__RTISTR:
	.byte	116
	.byte	111
	.byte	112
	.byte	108
	.byte	101
	.byte	118
	.byte	101
	.byte	108
	.byte	0
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__RTIARRAY, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__RTIARRAY, 104
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__RTIARRAY:
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__clock__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__reset__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_enable__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__mux_sel__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__op_sel__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address1__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_address2__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__write_register__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__const_in__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data1__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__read_data2__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__debug__RTI
	.quad	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__RTI, 32
work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__RTI:
	.byte	22
	.byte	2
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__RTISTR
	.long	12
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__RTIARRAY
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__clock__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__clock__RTISTR, 6
work__toplevel_tb__ARCH__arch_toplevel_tb__clock__RTISTR:
	.byte	99
	.byte	108
	.byte	111
	.byte	99
	.byte	107
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__clock__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__clock__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__clock__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__clock__RTI:
	.byte	16
	.byte	1
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__clock__RTISTR
	.quad	16
	.quad	ieee__std_logic_1164__std_logic__RTI
	.long	7948
	.zero	4
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__reset__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__reset__RTISTR, 6
work__toplevel_tb__ARCH__arch_toplevel_tb__reset__RTISTR:
	.byte	114
	.byte	101
	.byte	115
	.byte	101
	.byte	116
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__reset__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__reset__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__reset__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__reset__RTI:
	.byte	16
	.byte	1
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__reset__RTISTR
	.quad	32
	.quad	ieee__std_logic_1164__std_logic__RTI
	.long	7955
	.zero	4
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__write_enable__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__write_enable__RTISTR, 13
work__toplevel_tb__ARCH__arch_toplevel_tb__write_enable__RTISTR:
	.byte	119
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	95
	.byte	101
	.byte	110
	.byte	97
	.byte	98
	.byte	108
	.byte	101
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__write_enable__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__write_enable__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__write_enable__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__write_enable__RTI:
	.byte	16
	.byte	1
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__write_enable__RTISTR
	.quad	48
	.quad	ieee__std_logic_1164__std_logic__RTI
	.long	7962
	.zero	4
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__mux_sel__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__mux_sel__RTISTR, 8
work__toplevel_tb__ARCH__arch_toplevel_tb__mux_sel__RTISTR:
	.byte	109
	.byte	117
	.byte	120
	.byte	95
	.byte	115
	.byte	101
	.byte	108
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__mux_sel__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__mux_sel__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__mux_sel__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__mux_sel__RTI:
	.byte	16
	.byte	1
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__mux_sel__RTISTR
	.quad	64
	.quad	ieee__std_logic_1164__std_logic__RTI
	.long	7976
	.zero	4
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__OT__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__OT__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__OT__RTI, 48
work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__OT__RTI:
	.byte	38
	.byte	0
	.byte	2
	.byte	0
	.zero	4
	.quad	0
	.quad	ieee__numeric_std__unsigned__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__OT__STB
	.quad	2
	.quad	16
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__RTISTR, 7
work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__RTISTR:
	.byte	111
	.byte	112
	.byte	95
	.byte	115
	.byte	101
	.byte	108
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__RTI:
	.byte	16
	.byte	1
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__RTISTR
	.quad	80
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__OT__RTI
	.long	8204
	.zero	4
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__OT__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__OT__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__OT__RTI, 48
work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__OT__RTI:
	.byte	38
	.byte	0
	.byte	2
	.byte	0
	.zero	4
	.quad	0
	.quad	ieee__numeric_std__unsigned__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__OT__STB
	.quad	5
	.quad	40
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__RTISTR, 14
work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__RTISTR:
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	95
	.byte	97
	.byte	100
	.byte	100
	.byte	114
	.byte	101
	.byte	115
	.byte	115
	.byte	49
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__RTI:
	.byte	16
	.byte	1
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__RTISTR
	.quad	104
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__OT__RTI
	.long	8460
	.zero	4
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address2__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address2__RTISTR, 14
work__toplevel_tb__ARCH__arch_toplevel_tb__read_address2__RTISTR:
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	95
	.byte	97
	.byte	100
	.byte	100
	.byte	114
	.byte	101
	.byte	115
	.byte	115
	.byte	50
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address2__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address2__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address2__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__read_address2__RTI:
	.byte	16
	.byte	1
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address2__RTISTR
	.quad	152
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__OT__RTI
	.long	8475
	.zero	4
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__OT__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__OT__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__OT__RTI, 48
work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__OT__RTI:
	.byte	38
	.byte	0
	.byte	2
	.byte	0
	.zero	4
	.quad	0
	.quad	ieee__numeric_std__signed__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__OT__STB
	.quad	16
	.quad	128
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__RTISTR, 9
work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__RTISTR:
	.byte	99
	.byte	111
	.byte	110
	.byte	115
	.byte	116
	.byte	95
	.byte	105
	.byte	110
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__RTI:
	.byte	16
	.byte	1
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__RTISTR
	.quad	200
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__OT__RTI
	.long	8716
	.zero	4
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__read_data1__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__read_data1__RTISTR, 11
work__toplevel_tb__ARCH__arch_toplevel_tb__read_data1__RTISTR:
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	95
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	49
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__read_data1__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__read_data1__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__read_data1__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__read_data1__RTI:
	.byte	16
	.byte	1
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__read_data1__RTISTR
	.quad	344
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__OT__RTI
	.long	8726
	.zero	4
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__read_data2__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__read_data2__RTISTR, 11
work__toplevel_tb__ARCH__arch_toplevel_tb__read_data2__RTISTR:
	.byte	114
	.byte	101
	.byte	97
	.byte	100
	.byte	95
	.byte	100
	.byte	97
	.byte	116
	.byte	97
	.byte	50
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__read_data2__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__read_data2__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__read_data2__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__read_data2__RTI:
	.byte	16
	.byte	1
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__read_data2__RTISTR
	.quad	488
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__OT__RTI
	.long	8738
	.zero	4
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__debug__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__debug__RTISTR, 6
work__toplevel_tb__ARCH__arch_toplevel_tb__debug__RTISTR:
	.byte	100
	.byte	101
	.byte	98
	.byte	117
	.byte	103
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__debug__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__debug__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__debug__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__debug__RTI:
	.byte	16
	.byte	1
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__debug__RTISTR
	.quad	632
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__OT__RTI
	.long	8750
	.zero	4
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__OT__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__OT__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__OT__RTI, 48
work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__OT__RTI:
	.byte	38
	.byte	0
	.byte	2
	.byte	0
	.zero	4
	.quad	0
	.quad	ieee__numeric_std__unsigned__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__OT__STB
	.quad	5
	.quad	40
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__RTISTR, 15
work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__RTISTR:
	.byte	119
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	95
	.byte	114
	.byte	101
	.byte	103
	.byte	105
	.byte	115
	.byte	116
	.byte	101
	.byte	114
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__RTI, 40
work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__RTI:
	.byte	16
	.byte	1
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__RTISTR
	.quad	776
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__OT__RTI
	.long	8972
	.zero	4
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__uut__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__uut__RTISTR, 4
work__toplevel_tb__ARCH__arch_toplevel_tb__uut__RTISTR:
	.byte	117
	.byte	117
	.byte	116
	.byte	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__uut__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__uut__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__uut__RTI, 48
work__toplevel_tb__ARCH__arch_toplevel_tb__uut__RTI:
	.byte	12
	.byte	1
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__uut__RTISTR
	.long	9989
	.zero	4
	.quad	824
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__RTI
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__P0__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__P0__RTISTR, 3
work__toplevel_tb__ARCH__arch_toplevel_tb__P0__RTISTR:
	.byte	80
	.byte	48
	.byte	0
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__P0__RTIARRAY, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__P0__RTIARRAY, 8
work__toplevel_tb__ARCH__arch_toplevel_tb__P0__RTIARRAY:
	.zero	8
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__P0__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__P0__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__P0__RTI, 56
work__toplevel_tb__ARCH__arch_toplevel_tb__P0__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__P0__RTISTR
	.quad	1616
	.long	11525
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__RTI
	.long	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__P0__RTIARRAY
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__P1__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__P1__RTISTR, 3
work__toplevel_tb__ARCH__arch_toplevel_tb__P1__RTISTR:
	.byte	80
	.byte	49
	.byte	0
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__P1__RTIARRAY, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__P1__RTIARRAY, 8
work__toplevel_tb__ARCH__arch_toplevel_tb__P1__RTIARRAY:
	.zero	8
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__P1__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__P1__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__P1__RTI, 56
work__toplevel_tb__ARCH__arch_toplevel_tb__P1__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__P1__RTISTR
	.quad	1624
	.long	13573
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__RTI
	.long	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__P1__RTIARRAY
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__P2__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__P2__RTISTR, 3
work__toplevel_tb__ARCH__arch_toplevel_tb__P2__RTISTR:
	.byte	80
	.byte	50
	.byte	0
	.align 8
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__P2__RTIARRAY, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__P2__RTIARRAY, 8
work__toplevel_tb__ARCH__arch_toplevel_tb__P2__RTIARRAY:
	.zero	8
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__P2__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__P2__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__P2__RTI, 56
work__toplevel_tb__ARCH__arch_toplevel_tb__P2__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__P2__RTISTR
	.quad	1632
	.long	15621
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__RTI
	.long	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__P2__RTIARRAY
	.align 16
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__RTISTR, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__RTISTR, 17
work__toplevel_tb__ARCH__arch_toplevel_tb__RTISTR:
	.byte	97
	.byte	114
	.byte	99
	.byte	104
	.byte	95
	.byte	116
	.byte	111
	.byte	112
	.byte	108
	.byte	101
	.byte	118
	.byte	101
	.byte	108
	.byte	95
	.byte	116
	.byte	98
	.byte	0
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__RTIARRAY, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__RTIARRAY, 144
work__toplevel_tb__ARCH__arch_toplevel_tb__RTIARRAY:
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__toplevel__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__clock__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__reset__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__write_enable__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__mux_sel__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__op_sel__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address1__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__read_address2__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__const_in__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__read_data1__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__read_data2__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__debug__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__write_register__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__uut__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__P0__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__P1__RTI
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__P2__RTI
	.quad	0
	.globl	work__toplevel_tb__ARCH__arch_toplevel_tb__RTI
	.align 32
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__RTI, @object
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__RTI, 64
work__toplevel_tb__ARCH__arch_toplevel_tb__RTI:
	.byte	5
	.byte	1
	.byte	0
	.byte	0
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__RTISTR
	.quad	0
	.long	2318
	.zero	4
	.quad	work__toplevel_tb__RTI
	.long	17
	.zero	4
	.quad	work__toplevel_tb__ARCH__arch_toplevel_tb__RTIARRAY
	.quad	_UI00000000
	.text
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__uut__COMP_ELAB, @function
work__toplevel_tb__ARCH__arch_toplevel_tb__uut__COMP_ELAB:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	$work__toplevel_tb__ARCH__arch_toplevel_tb__uut__RTI, 832(%rax)
	movq	-296(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 848(%rax)
	movq	-296(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 840(%rax)
	movq	-296(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 864(%rax)
	movq	-296(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 856(%rax)
	movq	-296(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 880(%rax)
	movq	-296(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 872(%rax)
	movq	-296(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 896(%rax)
	movq	-296(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 888(%rax)
	movq	-296(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 920(%rax)
	movq	-296(%rbp), %rax
	addq	$904, %rax
	movq	%rax, -56(%rbp)
	movq	-296(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -64(%rbp)
	movl	$2, -68(%rbp)
	movl	$0, -4(%rbp)
.L9:
	movl	-4(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jnb	.L40
	movq	-64(%rbp), %rax
	movl	-4(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-56(%rbp), %rax
	movl	-4(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -4(%rbp)
	jmp	.L9
.L40:
	movq	-296(%rbp), %rax
	leaq	144(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 968(%rax)
	movq	-296(%rbp), %rax
	addq	$928, %rax
	movq	%rax, -80(%rbp)
	movq	-296(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -88(%rbp)
	movl	$5, -92(%rbp)
	movl	$0, -8(%rbp)
.L12:
	movl	-8(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jnb	.L41
	movq	-88(%rbp), %rax
	movl	-8(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-80(%rbp), %rax
	movl	-8(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -8(%rbp)
	jmp	.L12
.L41:
	movq	-296(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 1016(%rax)
	movq	-296(%rbp), %rax
	addq	$976, %rax
	movq	%rax, -104(%rbp)
	movq	-296(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -112(%rbp)
	movl	$5, -116(%rbp)
	movl	$0, -12(%rbp)
.L15:
	movl	-12(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jnb	.L42
	movq	-112(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-104(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -12(%rbp)
	jmp	.L15
.L42:
	movq	-296(%rbp), %rax
	leaq	816(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 1064(%rax)
	movq	-296(%rbp), %rax
	addq	$1024, %rax
	movq	%rax, -128(%rbp)
	movq	-296(%rbp), %rax
	addq	$776, %rax
	movq	%rax, -136(%rbp)
	movl	$5, -140(%rbp)
	movl	$0, -16(%rbp)
.L18:
	movl	-16(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jnb	.L43
	movq	-136(%rbp), %rax
	movl	-16(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-128(%rbp), %rax
	movl	-16(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -16(%rbp)
	jmp	.L18
.L43:
	movq	-296(%rbp), %rax
	leaq	328(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 1200(%rax)
	movq	-296(%rbp), %rax
	addq	$1072, %rax
	movq	%rax, -152(%rbp)
	movq	-296(%rbp), %rax
	addq	$200, %rax
	movq	%rax, -160(%rbp)
	movl	$16, -164(%rbp)
	movl	$0, -20(%rbp)
.L21:
	movl	-20(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jnb	.L44
	movq	-160(%rbp), %rax
	movl	-20(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-152(%rbp), %rax
	movl	-20(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -20(%rbp)
	jmp	.L21
.L44:
	movq	-296(%rbp), %rax
	leaq	472(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 1336(%rax)
	movq	-296(%rbp), %rax
	addq	$1208, %rax
	movq	%rax, -176(%rbp)
	movq	-296(%rbp), %rax
	addq	$344, %rax
	movq	%rax, -184(%rbp)
	movl	$16, -188(%rbp)
	movl	$0, -24(%rbp)
.L24:
	movl	-24(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jnb	.L45
	movq	-184(%rbp), %rax
	movl	-24(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-176(%rbp), %rax
	movl	-24(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -24(%rbp)
	jmp	.L24
.L45:
	movq	-296(%rbp), %rax
	addq	$1208, %rax
	movq	%rax, -200(%rbp)
	movl	$16, -204(%rbp)
	movl	$0, -28(%rbp)
.L27:
	movl	-28(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jnb	.L46
	movl	$0, %ecx
	movq	-200(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	__ghdl_signal_init_e8
	addl	$1, -28(%rbp)
	jmp	.L27
.L46:
	movq	-296(%rbp), %rax
	leaq	616(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 1472(%rax)
	movq	-296(%rbp), %rax
	addq	$1344, %rax
	movq	%rax, -216(%rbp)
	movq	-296(%rbp), %rax
	addq	$488, %rax
	movq	%rax, -224(%rbp)
	movl	$16, -228(%rbp)
	movl	$0, -32(%rbp)
.L30:
	movl	-32(%rbp), %eax
	cmpl	-228(%rbp), %eax
	jnb	.L47
	movq	-224(%rbp), %rax
	movl	-32(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-216(%rbp), %rax
	movl	-32(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -32(%rbp)
	jmp	.L30
.L47:
	movq	-296(%rbp), %rax
	addq	$1344, %rax
	movq	%rax, -240(%rbp)
	movl	$16, -244(%rbp)
	movl	$0, -36(%rbp)
.L33:
	movl	-36(%rbp), %eax
	cmpl	-244(%rbp), %eax
	jnb	.L48
	movl	$0, %ecx
	movq	-240(%rbp), %rax
	movl	-36(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	__ghdl_signal_init_e8
	addl	$1, -36(%rbp)
	jmp	.L33
.L48:
	movq	-296(%rbp), %rax
	leaq	760(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 1608(%rax)
	movq	-296(%rbp), %rax
	addq	$1480, %rax
	movq	%rax, -256(%rbp)
	movq	-296(%rbp), %rax
	addq	$632, %rax
	movq	%rax, -264(%rbp)
	movl	$16, -268(%rbp)
	movl	$0, -40(%rbp)
.L36:
	movl	-40(%rbp), %eax
	cmpl	-268(%rbp), %eax
	jnb	.L49
	movq	-264(%rbp), %rax
	movl	-40(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-256(%rbp), %rax
	movl	-40(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -40(%rbp)
	jmp	.L36
.L49:
	movq	-296(%rbp), %rax
	addq	$1480, %rax
	movq	%rax, -280(%rbp)
	movl	$16, -284(%rbp)
	movl	$0, -44(%rbp)
.L39:
	movl	-44(%rbp), %eax
	cmpl	-284(%rbp), %eax
	jnb	.L50
	movl	$0, %ecx
	movq	-280(%rbp), %rax
	movl	-44(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	__ghdl_signal_init_e8
	addl	$1, -44(%rbp)
	jmp	.L39
.L50:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	work__toplevel_tb__ARCH__arch_toplevel_tb__uut__COMP_ELAB, .-work__toplevel_tb__ARCH__arch_toplevel_tb__uut__COMP_ELAB
	.type	work__toplevel_tb__ARCH__arch_toplevel_tb__P0__PROC, @function
work__toplevel_tb__ARCH__arch_toplevel_tb__P0__PROC:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	1616(%rax), %eax
	movl	%eax, -4(%rbp)
.L64:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	je	.L53
	cmpl	$1, %eax
	jb	.L54
	cmpl	$2, %eax
	je	.L55
	jmp	.L65
.L54:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	addq	$1620, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	$3, (%rax)
	movq	-16(%rbp), %rax
	movzbl	42(%rax), %eax
	testb	%al, %al
	je	.L56
	movb	$1, -5(%rbp)
	jmp	.L57
.L56:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%rbp)
.L57:
	cmpb	$0, -5(%rbp)
	je	.L58
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	__ghdl_signal_direct_assign
.L58:
	movl	$50000000, %edi
	call	__ghdl_process_wait_timeout
	movq	-56(%rbp), %rax
	movl	$1, 1616(%rax)
	jmp	.L51
.L53:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	addq	$1620, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	$2, (%rax)
	movq	-32(%rbp), %rax
	movzbl	42(%rax), %eax
	testb	%al, %al
	je	.L60
	movb	$1, -6(%rbp)
	jmp	.L61
.L60:
	movq	-32(%rbp), %r