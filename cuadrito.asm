%macro escribir 2
	mov eax,4
	mov ebx,1
	mov ecx,%1
        mov edx,%2 
	int 80h 
%endmacro

section .data  
  
  fila1 db "             ", 0x1b,'[44m', "  ",0x1b,'[0m',"  ",0x1b,'[44m',"  ",0x1b,'[0m',"  ",0x1b,'[44m',"  ",0x1b,'[0m',"  ",0x1b,'[44m',"  "                       , 0x1b,'[0m',"  ",0x1b,'[44m',"  ",0x1b,'[0m',"  ",0x1b,'[44m',"  ",0x1b,'[0m',"  ",0x1b,'[102m',"  ",0x1b,'[0m',10,10
  len1 equ $ -fila1
  
  columna1 db "             ", 0x1b,'[43m',"  ",0x1b,'[0m',"                      ",0x1b,'[102m',"  ",0x1b,'[0m',10,10
  len2 equ $ -columna1
  fila2 db "             ", 0x1b,'[43m',"  ",0x1b,'[0m',"  ", 0x1b,'[41m', "  ",0x1b,'[0m',"  ", 0x1b,'[41m', "  ",0x1b,'[0m',"  ", 				   0x1b,'[41m', "  ",0x1b,'[0m',"  ", 0x1b,'[41m', "  ",0x1b,'[0m',"  ", 0x1b,'[41m', "  ",0x1b,'[0m',"  ",   				   0x1b,'[41m', "  ",0x1b,'[0m',10,10
  len3 equ $ -fila2
section .text 
    global _start
    _start:
    
    
    escribir fila1,len1
    escribir columna1,len2
    escribir columna1,len2
    escribir columna1,len2
    escribir columna1,len2
    escribir columna1,len2
    
   
    escribir fila2,len3

  


salir:
      mov eax,1
      mov ebx,0
      int 80h
    

