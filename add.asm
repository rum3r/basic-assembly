;program to add to single digit integers
section .data
	msg1 db "Enter a digit: ", 0xA, 0xD
	len1 equ $- msg1
	msg2 db "Enter second digit: ", 0xA, 0xD
	len2 equ $- msg2
	msg3 db "Sum is: ", 0xa, 0xD
	len3 equ $- msg3

segment .bss
	num1 resb 2
	num2 resb 2
	res resb 1

segment .text
	global main
main:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg1
	mov edx, len1
	int 80h

	mov eax, 3
	mov ebx, 0
	mov ecx, num1 
	mov edx, 2
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, msg2
	mov edx, len2
	int 80h

	mov eax, 3
	mov ebx, 0
	mov ecx, num2
	mov edx, 2
	int 80h
	
	;sum is message printed
	mov eax, 4
	mov ebx, 1
	mov ecx, msg3
	mov edx, len3
	int 80h

	;move num1 and num2 to registers and do sum and store in res
	
	mov eax, [num1]
	mov ebx, [num2]
	sub eax, '0' 	;converting to digit from ascii
	sub eax, '0'	
	add eax, ebx
	add eax, '0'
	mov [res], eax
	
	mov eax, 4
	mov ebx, 1
	mov ecx, res
	mov edx, 1
	int 80h
	
exit:
	mov eax, 1
	xor ebx, ebx
	int 80h


