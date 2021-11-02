; This snippet, 0x01 demonstrates an elegant way to generate the
; Fibonacci Sequence: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
; Assemble with $ nasm -felf64 0x01.asm && ld 0x01.o && ./a.out

	global	_start

	section	.text
_start:
	mov 	rcx, loop_iteration	; Initialize the rcx register.
	mov		rax, 1				; Initialize the rax register.
	mov		rdx, 1 				; Initialize the rdx register.

fib_loop:
	xadd	rax, rdx				; Exchange and add.
	loop	fib_loop

	section	.data
loop_iteration equ 10			; Arbitrary iteration number.