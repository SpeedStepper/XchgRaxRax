; This snippet, 0x06, sets rax with its initial value for any initialized value using bit flips.
; Assemble with $ nasm -felf64 0x06.asm && ld 0x06.o && ./a.out

	global	_start
	
	seciton	.text
_start:
	mov		rax, 1	; Initialize rax. (can use any number)
	
	not		rax		; One's complement negation. (Inverts each bit separately)
	inc		rax		; rax = rax + 1
	neg		rax		; two's complement negation (bitwise not + 1)
