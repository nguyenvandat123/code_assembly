section .data
   print_1 db "input lowercase: ",0
   len1 equ $-print_1
   print_2 db "output upcase: ",0
   len2 equ $-print_2

section .bss
   a resb 1
   b resb 1

section .text
   global _start

_start:
   mov eax,4
   mov ebx,1
   mov ecx,print_1
   mov edx,len1
   int 0x80


   mov eax,3
   mov ebx,2
   mov ecx,a
   mov edx,1
   int 0x80
 
   mov eax,4
   mov ebx,1
   mov ecx,print_2
   mov edx,len2
   int 0x80
   
   mov al,[a]
   sub al,20h
   mov [b],al

   mov eax,4
   mov ebx,1
   mov ecx,b
   mov edx,1
   int 0x80
   
   mov eax,1
   xor ebx,ebx
   int 0x80