data segment
block1 db 05h dup(52h)
counter db 05h
data ends

extra segment
block2 db 05h dup(00h)
extra ends

code segment
start:assume ds:data, cs:code, es:extra
mov ax,data
mov ds,ax
mov ax,extra
mov es,ax
mov ax,0000h
lea si,block1
lea di,block2
mov cl,counter
cld
up:movsb
dec cl
jnz up

mov ax,4c00h
int 21h
code ends
end start
