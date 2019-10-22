.Model SMALL
.Stack 100H
.data
a db 'Enter the number: $'
.code
.startup
mov ax,@data
mov dx,ax

lea dx,a
mov ah,09h
int 21h

mov bl,0
mov cx,2

ag:
mov ah,01h
int 21h
sub al,30h
shl bl,4
add bl,al
loop ag
.EXIT
END
