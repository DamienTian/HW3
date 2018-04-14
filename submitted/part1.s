.global _start

#.section .data
shell:
	.string "/bin/sh"

.section .text
_start:
#	pushq $0
	pushq shell
	movq $59, %rax
	movq %rsp, %rdi
	movq $0, %rsi
	movq $0, %rdx
	syscall
	
