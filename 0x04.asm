; This snippet, 0x04, flips the 6th least-significant bit of the value stored in rax. 
; In an ASCII table this toggle wether a letter is upper or lower case.

	global	_start
	
	section	.text
_start:
	xor		al, 0x20		; flips the 6th bit (0x20 is 0b0100000)
