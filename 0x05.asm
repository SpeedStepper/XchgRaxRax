; This snippet, 0x05,  allows you to check if a number, in rax, is between
; 5-9 using only one jump. Subtract 5 from a number and then jump if a number is below 4.
;
; Purpose: heavy usage of the flags register

	global	_start
	
	section	.text
_start:
	mov		rax, 8		; Initialize the rax register.
	
	sub		rax, 5		; rax = rax - 5, modify status flags accordigly.
	cmp		rax, 4		; tmp = rax - 4, modify status flags accordigly.
	
	jbe		label		; Jump if condition is met.
	ret					; Return if rax is not between 5-9.
label:
	nop					; Only reached if rax is between 5-9.
