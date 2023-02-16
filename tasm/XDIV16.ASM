data segment
num1 dw 059Ch
num2 dw 056Ah
quo db ?
rem db ?
data ends

code segment
start: assume ds: data, cs: code
mov ax, data
mov ds, ax
mov ax, num1
mov bx, num2
div bx
mov quo,al
mov rem,ah

mov ax,4c00h
int 21h
code ends
end start
