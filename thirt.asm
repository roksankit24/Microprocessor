.Model SMALL
.Stack 100H
.data
a qw 020304h
b qw 010202h
res db 'The result is: $'
.code
.startup

mov ax,@data
mov dx,ax

mov ecx,a
mov ebx,b

add ebx,ecx
add ebx,303030h
int 21h

mov eax,ebx

mov ah,02h
mov dl,ah
int 21h

mov ah,02h
mov dl,al
int 21h

.EXIT
END
