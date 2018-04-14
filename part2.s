.global _start

shell:
	.string "/bin/sh"

.section .text
_start:
	# generate the NULL:
	xorq %rax, %rax
	pushq shell
	movq %rsp, %rdi
	movq %rax, %rsi
	movq %rax, %rdx
	movq $59, %rax
	syscall
	
