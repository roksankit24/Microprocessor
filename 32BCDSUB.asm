.Model SMALL
.386
.Stack 100H
.data
a db 'Enter the first number: $'
b db 10, 'Enter the second number: $'
c db 10, 'The result is: $'
num1 dd 00000000h
num2 dd 00000000h
res dd 00000000h
r dd ?
var db 00h
.code
.startup

mov ax,@data
mov ds,ax

lea dx,a
mov ah,09h
int 21h

mov ebx,0
mov cx,8

again:
	mov ah,01h
	int 21h
	sub al,30h
	shl ebx,4
	add bl,al
	loop again
	
mov num1,ebx

lea dx,b
mov ah,09h
int 21h

mov ebx,0
mov cx,8

again1:
	mov ah,01h
	int 21h
	sub al,30h
	shl ebx,4
	add bl,al
	loop again1
	
mov num2,ebx

lea dx,c
mov ah,09h
int 21h

mov ecx,num1
cmp ecx,num2
ja lab
mov eax,num2
mov num1,eax
mov num2,ecx


mov dl,'-'
mov ah,02h
int 21h

lab:
mov ax,word ptr num1
mov bx,word ptr num2


sub al,bl
das
mov bl,al

sbb ah,bh
mov al,ah
das
mov bh,al

mov word ptr res,bx
mov ax,word ptr num1+2
mov bx,word ptr num2+2
sbb al,bl
das
mov bl,al

sbb ah,bh
mov al,ah
das
mov bh,al




mov word ptr res+2,bx

mov ebx,res



mov al,0
rcl al,1
mov dl,al
add dl,30h
mov ah,02h
int 21h

mov cx,8

pr:
rol ebx,4
mov dl,bl
and dl,0fh
add dl,30h
mov ah,02h
int 21h
loop pr
.EXIT
END

