; This snippet, 0x02, sets rax to 1 for any initial value, other than zero, without branching.
; Assemble with $ nasm -felf64 0x02.asm && ld 0x02.o && ./a.out

	global	_start
	
	section	.text
_start:
	mov		rax, 1		; Initialize the rax register, can be anything but zero.
	neg		rax			; Two's complement negation (0 - rax) carry = 1 if rax ! = 0.
	sbb		rax, rax	; rax - rax - cf (it can be either 0 or -1)
	neg		rax			; two's complement (it can be either 0 or 1)

; Simple way of setting something to 1 In pseudo code, it might look something like this:
; if (value != 0) then
;	 value = 1
; else
;	 value = 0