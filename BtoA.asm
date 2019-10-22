.Model SMALL
.Stack 100h
.data
a db 'Enter a number: $'
b db 10,'The result is: $'
.code
.startup
mov ax,@data
mov ds,ax
lea dx,a
mov ah,09h
int 21h

mov cx,8
mov bl,0

again:
mov ah,01h
int 21h
sub al,30h
cmp al,1
jg ou
shl bl,1
add bl,al
loop again

mov dx,offset b
mov ah,09h
int 21h

mov dl,0
mov ah,0
mov dl,bl
mov ah,02h
int 21H

ou:
.EXIT
END

