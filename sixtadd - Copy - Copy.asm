.Model SMALL
.Stack 100H
.data
a db 'Enter first digit of the first number: $'
b db 'Enter second digit of the first number: $'
c db 'Enter the first digit of the second number: $'
d db 'Enter the second digit of the second number: $'
.code
.startup
mov ax,@data
mov ds,ax
mov dx,offset a
mov ah,09h
int 21h

mov ah,01h
int 21h

mov bh,al
int 21h

mov dx,offset b
mov ah,09h
int 21h

mov ah,01h
int 21h

mov bl,al
int 21h

mov dx,offset c
mov ah,09h
int 21h

mov ah,01h
int 21h

mov ch,al
int 21h

mov dx,offset d
mov ah,09h
int 21h

mov ah,01h
int 21h

mov cl,al
int 21h

sub bx,3030h
sub cx,3030h

add bx,cx
add bx,3030h
int 21h

mov ah,02h
mov dl,bh
int 21h

mov ah,02h
mov dl,bl
int 21h

.EXIT 
END
