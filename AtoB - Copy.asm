.Model SMALL
.Stack 100H
.data
a db 'Enter the number $'
res db 10, 'The result is $'
.code
.startup
mov ax,@data
mov dx,ax

lea dx,a
mov ah,09h
int 21h

mov ah,01h
int 21h

mov bl,al

mov cx,8

lea dx,res
mov ah,02h
int 21h

mov ah,0

ag:
rcl bl,1
mov al,0
rcl al,1
add al,30h
mov ah,02h
mov dl,al
int 21h
loop ag
.EXIT
END
