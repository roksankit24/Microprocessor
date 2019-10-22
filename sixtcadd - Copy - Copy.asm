.Model SMALL
.Stack 100H
.data 
a db 'Enter first digit of the first number: $'
c db 10, 'Enter the first digit of the second number: $'
res db 10, 'The result is: $'
var db ?
.code 
.startup

mov ax,@data
mov dx,ax
mov dx,offset a
mov ah,09h
int 21h

mov ah,01h
int 21h
mov bh,al


mov ah,01h
int 21h
mov bl,al
sub bx,3030h
mov dx,offset c
mov ah,09h
int 21h

mov ah,01h
int 21h
mov ch,al

mov ah,01h
int 21h
mov cl,al
sub cx,3030h
add al,bl
mov ah,0
AAA

mov var,al

add bh,ah
add bh,ch

mov al,bh
mov ah,0
AAA
mov bx,ax

lea dx,res
mov ah,09h
int 21h

add bx,3030h



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
