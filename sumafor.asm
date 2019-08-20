section .data
	userMsg db "la suma del 3 al 0 es:",0xA,0xD
	lenUserMsg equ $ - userMsg
	

section .bss
	num resb 2

section .text
	global _start
_start:
	mov eax, 4
	mov ebx, 1	
	mov ecx, userMsg 
	mov edx, lenUserMsg 
	int 80h	
	

	mov eax, 0
	mov ecx, 3

loop_for:
	add eax, ecx
	loop loop_for

	add eax,'0'

	mov [num], eax

	mov eax, 4 
	mov ebx, 1	
	mov ecx, num 
	mov edx, 2 
	int 0x80

	mov eax, 1
	int 80h
