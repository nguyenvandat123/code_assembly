# dealine1
code assembly
**Bài tập tính tổng hai số nguyên dương không quá 10**
```sh
section .data
   print_1 db "first number: ",0
   len1 equ $-print_1
   print_2 db "second number: ",0
   len2 equ $-print_2
   print_3 db "sum of two numbers: ",0
   len3 equ $-print_3

section .bss
   sum resb 1
   number_1 resb 2
   number_2 resb 1

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
   mov ecx,number_1
   mov edx,2
   int 0x80
 
   mov eax,4
   mov ebx,1
   mov ecx,print_2
   mov edx,len2
   int 0x80

   mov eax,3
   mov ebx,2
   mov ecx,number_2
   mov edx,1
   int 0x80

   mov eax,4
   mov ebx,1
   mov ecx,print_3
   mov edx,len3
   int 0x80

   mov al,[number_1]
   sub al,'0' 
   mov bl,[number_2]
   sub bl,'0'
   add al,bl
   add al,'0'
   mov [sum],al
   
   mov eax,4
   mov ebx,1
   mov ecx,sum
   mov edx,1
   int 0x80
   
   mov eax,1
   xor ebx,ebx
   int 0x80
```
