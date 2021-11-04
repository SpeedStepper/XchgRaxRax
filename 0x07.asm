; This snippet, 0x07, sets rax with its initial value.
; Assemble with $ nasm -felf64 0x07.asm && ld 0x07.o && ./a.out

	global	_start
	
	section	.text
_start:
	mov		rax, 1	; Initialize rax (can be any number)

	inc		rax		; rax = rax + 1 (makes value negative)
	neg		rax		; rax = ~rax + 1
	inc		rax		; rax = rax + 1
	neg		rax		; rax = ~rax + 1

; C code comparisson:
;
; #include <stdio.h>
; int main(void)
; {
; 	int rax = 5;
; 	printf("in:  %d\n", rax);
; 	rax = ~((~(rax + 1) + 1) + 1) + 1;
; 	printf("out: %d\n", rax);
; }
;
; I guess the main takeway here (as in the previous snippet) 
; is that "not rax" can be rewritten as:
;
; inc	rax
; neg	rax
;
; Similarly, "neg rax" can be rewritten as:
;
; not	rax
; inc	rax