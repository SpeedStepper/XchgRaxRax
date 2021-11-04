; For positive values of rax and rdx, this snippet, 0x08, performs an Euclidean (integer) division
; by two of the sum of the rax and rdx registers.
;
; In other words, it computes the average of two positive
; numbers.
;
; This also works when both rax and rdx have a negative
; value, because of the clever use of the rcr instruction
; Assemble with $ nasm -felf64 0x08.asm && ld 0x08.o && ./a.out

	global	_start
	
	section	.text
_start:
	mov		rax, 6		; Initialize rax (can be any number)
	mov		rdx, 2		; Initialize rdx (can be any number)

	add		rax, rdx		; rax = rax + rdx.
	rcr		rax, 1		; right rotate with carry.

; C Code Comparision:
;
; rax = rax + rdx;
; rax = (int)rax / 2;
