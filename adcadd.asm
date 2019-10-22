.Model SMALL
.Stack 100H
.data
a db 'Enter the first number: $'
b db 10, 'Enter the second number: $'
c db 10, 'The result: $'
var db ?
.code 
.startup
mov ax,@data
mov dx,ax

lea dx,a
mov ah,09h
int 21h

mov ah,01h
int 21h

mov bh,al

mov ah,01h
int 21h

mov bl,al

lea dx,b
mov ah,09h
int 21h

mov ah,01h
int 21h

mov ch,al

mov ah,01h
int 21h

mov cl,al

sub bx,3030h
sub cx,3030h

add bl,cl
mov al,bl
mov ah,0
AAA

mov var,al
mov al,bh

adc al,ch
mov ah,0
AAA

mov bx,ax

add bx,3030h

lea dx,c
mov ah,09h
int 21h

mov ah,02h
mov dl,bh
int 21h

mov ah,02h
mov dl,bl
int 21h

mov dl,var
add dl,30h

mov ah,02h
int 21h

.EXIT
END




