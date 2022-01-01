section .data
	name db 'Zara Ali   '
section .text
	global main
main:
	mov	eax, 4
	mov 	ebx, 1
	mov	ecx, name
	mov	edx, 9
	int 	80h

	mov 	[name], dword 'Nuhax'

	mov	eax, 4
	mov	ebx, 1
	mov 	ecx, name
	mov 	edx, 9
	int 	80h

	mov 	eax, 1
	int 	80h

