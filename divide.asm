section .text
	global main
main:
	mov ax, '8'
	mov bx, '2'
	sub ax, '0'
	sub bx, '0'
	
	div bl
	add ax, '0'
	mov [res], ax
	
	mov eax, 4
	mov ebx, 1
	mov ecx, res
	mov edx, 1
	int 80h

	mov eax, 1
	int 80h

section .bss
	res resb 1
	
