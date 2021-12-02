; For values of rax greater than or equal to zero, this snippet
; performs integer division by 8 of the contents of rax and 
; adds the content of the carry flag to the result.
; Assemble with $ nasm -felf64 0x09.asm && ld 0x09.o && ./a.out

	global	_start
	
	section	.text
_start:
	mov		rax, 9		; Initialize rax (any value).

	shr		rax, 3		; rax = (int)rax / 8, cf = 1 if 3rd bit is 1
	adc		rax, 0		; rax = rax + cf to round up.

; In other words, (int)(rax + 4) / 8 is computed and the result
; is rounded to the nearest integer.

; Recall that dividing an unsigned number by 8 is the same as shifting the number 3 times to the right.

