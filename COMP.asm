.Model SMALL
.Stack 100H
.data
a db 5
i db 'Enter a number: $'
r db 10, 'Equal$'
w db 10, 'Not Equal$'
.code
.startup

mov ax,@data
mov dx,ax

lea dx,i
mov ah,09h
int 21h

mov ah,01h
int 21h

cmp al,a
je right



right:
lea dx,r
mov ah,09h
int 21h

.EXIT
END
