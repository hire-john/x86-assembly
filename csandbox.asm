section .data

MyName: db "john is cool",10
MyNameLen: equ $-MyName

section .text

global _start

_start:
  
nop

mov eax,0xffffffff
mov al,0x20
mov ebx,0x20
mul ebx
mov eax,MyName
mov bl,MyNameLen
LoopMe: add byte [eax],0x20
dec bl
jnz LoopMe

nop
 
section .bss
