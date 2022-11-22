print_string:
	mov ah, 0x0e
	.loop:
		mov al, [bx]
		cmp al, 0x00
		je .end
		int 0x10
		inc bx
		jmp .loop
	.end:
		ret