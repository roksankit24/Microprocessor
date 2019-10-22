.Model SMALL
.Stack 100H
.data
a db 56
.code
.startup
mov ax,@data
mov dx,ax

mov al,22h
and al,0fh

add al,30h
mov bl,al

mov ah,02h
mov dl,bl
int 21h
.EXIT
END
