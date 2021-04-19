%define org_start 7c00h

 
boot:
	org org_start
	mov ax, cs
	mov ds, ax
	mov es, ax
	call print
	jmp $
	
print:
	mov bp, str_hello
	mov cx, [str_hello_size]
	mov ax, 01301h
	mov bx, 000ch
	mov dx, 0000h
	int 10h;
	ret
	
str_hello:
	db "Hello, World!"
str_hello_size:
	db $-str_hello
 
fill:
	times 510-($-$$) db 0;
	dw 0xaa55				; MBR signature