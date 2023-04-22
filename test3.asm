section .data
   print_1 db "input number: ",0
   len1 equ $-print_1
   print_2 db "odd number",0
   len2 equ $-print_2
   print_3 db "even number",0
   len3 equ $-print_3

section .bss
   number resb 1

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
   mov ecx,number
   mov edx,1
   int 0x80
 
   mov al,[number]
   and al,1
   jz l1

   mov eax,4
   mov ebx,1
   mov ecx,print_2
   mov edx,len2
   int 0x80

   jmp l2
 
l1:

   mov eax,4
   mov ebx,1
   mov ecx,print_3
   mov edx,len3
   int 0x80
   jmp l2
  
l2:

   mov eax,1
   xor ebx,ebx
   int 0x80