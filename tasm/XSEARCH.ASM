data segment
block1 db 01h,25h,52h,52h,52h,52h,32h,59h
counter1 db 08h
searchcounter db 00h
data ends

code segment
start:assume ds:data,cs:code
mov ax,data
mov ds, ax
mov al,52h
mov bl,searchcounter
mov cl,counter1
lea si,block1
up:cmp al,[si]
jnz down
inc bl
down: inc si
dec cl
jnz up
mov searchcounter,bl
mov ax,4c00h
int 21h
code ends
end start
