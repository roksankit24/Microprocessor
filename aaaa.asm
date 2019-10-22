.Model SMALL
.Stack 100H
.data
a dw 0102h
b dw 0204h
.code
.startup

mov ax,@data
mov ds,ax

mov ax,a
mov bx,b

sub al,bl
aas
mov bl,al

sub ah,bh
mov al,ah
aas
mov bh,al

mov dl,bh
add dl,30h
mov ah,02h
int 21h

mov dl,bl
add dl,30h
mov ah,02h
int 21h

.EXIT
END
