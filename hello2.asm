section .text
	global main
main:
	mov al, '3'
	sub al, '0'
	mov bl, '2'
	sub bl, '0'
	mul bl
	
	add al, '0'
	mov [res], al
	
	mov eax, 4
	mov ebx, 1
	mov ecx, res
	mov edx, 1
	int 80h

	mov eax, 1
	int 80h

section .bss
res resb 1
