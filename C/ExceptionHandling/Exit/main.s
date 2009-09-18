	.file	"main.cc"
gcc2_compiled.:
___gnu_compiled_cplusplus:
.text
LC0:
	.ascii "within 'atexit_handler_1'\12\0"
	.align 4
	.def	_atexit_handler_1__Fv;	.scl	3;	.type	32;	.endef
_atexit_handler_1__Fv:
	pushl %ebp
	movl %esp,%ebp
	pushl $LC0
	call _printf
	addl $4,%esp
	jmp L2
	jmp L1
	.p2align 4,,7
L2:
L1:
	movl %ebp,%esp
	popl %ebp
	ret
LC1:
	.ascii "within 'atexit_handler_2'\12\0"
	.align 4
	.def	_atexit_handler_2__Fv;	.scl	3;	.type	32;	.endef
_atexit_handler_2__Fv:
	pushl %ebp
	movl %esp,%ebp
	pushl $LC1
	call _printf
	addl $4,%esp
	jmp L4
	jmp L3
	.p2align 4,,7
L4:
L3:
	movl %ebp,%esp
	popl %ebp
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
LC2:
	.ascii "1 == 2\0"
LC3:
	.ascii "main.cc\0"
	.align 32
LC4:
	.ascii "this line should never appear\12\0"
	.align 4
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl %ebp
	movl %esp,%ebp
	call ___main
	pushl $_atexit_handler_1__Fv
	call _atexit
	addl $4,%esp
	pushl $_atexit_handler_2__Fv
	call _atexit
	addl $4,%esp
	pushl $LC2
	pushl $19
	pushl $LC3
	call ___assert
	addl $12,%esp
	pushl $0
	call _exit
	addl $4,%esp
	pushl $LC4
	call _printf
	addl $4,%esp
	xorl %eax,%eax
	jmp L5
	xorl %eax,%eax
	jmp L5
	.p2align 4,,7
L5:
	movl %ebp,%esp
	popl %ebp
	ret
	.def	_exit;	.scl	3;	.type	32;	.endef
	.def	___assert;	.scl	3;	.type	32;	.endef
	.def	_atexit;	.scl	3;	.type	32;	.endef
	.def	_printf;	.scl	3;	.type	32;	.endef
