data segment
block1 db 52h,82h,15h,37h,68h
counter db 04h
smallest db ?
data ends

code segment
start: assume ds:data,cs:code
mov ax,data
mov ds,ax
lea si,block1
mov al,[si]
mov cl,counter
up:inc si
cmp al,[si]
jc down
mov al,[si]
down:dec cl
jnz up
mov smallest,al
mov ax,4c00h
int 21h
code ends
end start


