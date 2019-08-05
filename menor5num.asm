section .data
        msg_presentar db  "Ingrese 5 números: ", 10
        len_presentar equ $ - msg_presentar
        msg_numeros db  "El  menor es:", 10
        len_numeros equ $ - msg_numeros

        arreglo db 0, 0, 0, 0, 0
        len_arreglo equ $ - arreglo

section .bss
        dato resb 2

section .text
        global _start

_start:

        mov esi, arreglo
        mov edi, 0

        
        mov eax, 4
        mov ebx, 1
        mov ecx, msg_presentar
        mov edx, len_presentar
        int 80h


leer:
       
        mov eax, 3
        mov ebx, 2
        mov ecx, dato
        mov edx, 2
        int 80h

        mov al, [dato]
        sub al, '0'

        mov [esi], al

        add edi, 1          ;inc edi
        add esi, 1

        cmp edi, len_arreglo
        jb leer

        mov ecx, 0
        mov bl, [arreglo + ecx]

comparacion:
        mov al,[arreglo + ecx] 
        cmp al, bl
        jg contador
        mov bl, al

contador:
        inc ecx
        cmp ecx, len_arreglo
        jb comparacion

imprimir:
        add bl, '0'
        mov [dato], bl
        
        mov eax, 4
        mov ebx, 1
        mov ecx, msg_numeros
        mov edx, len_numeros
        int 80h
        
        mov eax, 4
        mov ebx, 1
        mov ecx, dato
        mov edx, 1
        int 80h


salir:
        mov eax, 1
        int 80h
