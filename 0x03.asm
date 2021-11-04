; This snippet, 0x03, sets rax to the lower value between rax and
; rdx, using the cf flag to check for carry.
; Assemble with $ nasm -felf64 0x00.asm && ld 0x00.o && ./a.out

	global	_start
	
	section	.text
_start:
	mov	rax,1		; initialize the rax register
	mov	rdx,2		; initialize the rdx register
	
	sub	rdx,rax		; rdx = rdx - rax; cf = 1 if rdx < rax
	sbb	rcx,rcx		; rcx = rcx - rcx - cf (either 0 or -1)
	and	rcx,rdx		; rcx = (rdx - rax) if (cf); rcx = 0 if (!cf)
	add	rax,rcx		; rax = rax + (rdx - rax) if (cf); rax if (!cf)

; Appears to be a conditional assignment that doesn’t use an actual conditional instruction. In pseudo code, it would like thing like this.
;if (rdx < rax) then
;	rax = rdx