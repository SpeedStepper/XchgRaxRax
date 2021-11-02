; This snippet, 0x00, sets all registers to 0 in different ways.
; Assemble with $ nasm -felf64 0x00.asm && ld 0x00.o && ./a.out

	global	_start

	section	.text
_start:
	xor		eax, eax		; Set rax to 0 by xor'ing it with itself.
	lea		rbx, [0]			; Set rbx to 0 by loading the value 0 into it.
	mov		ecx, loop_iteration
	loop	$				; Set rcx to 0 by decrementing it via a loop.
	mov		rdx, 0 			; Set rdx to 0 using the mov instruction.
	and		esi, 0			; Set rsi to 0 by and'ing it with 0.
	sub		edi, edi		; Set rdi to 0 by subtracting its current value.
	push	0
	pop		rbp				; Set rbp to 0 using push and pop instructions.

	section	.data

loop_iteration	equ	10