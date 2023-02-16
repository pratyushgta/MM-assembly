data segment
num1 dw 69h
num2 dw 420ch
resultL dw ?
resultH dw ?
data ends

code segment
start:assume ds:data,cs:code
mov ax,data
mov ds,ax
mov ax,num1
mov bx,num2
mul bx
;mul num2
mov resultL,ax
mov resultH,dx
      
mov ax,4c00h
int 21h
code ends
end start


       
