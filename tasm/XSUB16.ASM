data segment
num1 dw 420ch
num2 dw 1d96h
result dw ?
data ends

code segment
start:assume ds:data,cs:code
mov ax,data
mov ds,ax
mov ax,num1
mov bx,num2
sub ax,bx

mov result,dx
mov ax,4c00h

int 21h
code ends
end start


       
