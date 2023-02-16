data segment
num1 db 80h
num2 db 08h
result dw ?
data ends

code segment
start:assume ds:data,cs:code
mov ax,data
mov ds,ax
mov ah,00h
mov al,num1
mov bl,num2
sub al,bl
jnc down
inc ah
down:mov result,ax
mov ax,4c00h
int 21h
code ends
end start


       
