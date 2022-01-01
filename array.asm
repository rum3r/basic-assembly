section .data
	mytable TIMES 10 dw 0

section .text
	global main
main:
	mov ebx, [mytable]
	mov [ebx], dword 110
	add ebx, 2
	mov [ebx], dword 123

	mov eax, 4
	int 20h


