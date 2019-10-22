.Model SMALL
.386
.Stack 100h
.data
a db 'Enter the first number: $'
b db 10, 'Enter the second number: $'
c db 10, 'The result is: $'
num1 dd ?
num2 dd ?
num3 dd ?
res dd ?
.code
.startup

mov ax,@data
mov ds,ax

lea dx,a
mov ah,09h
int 21h

mov cx,8
mov ebx,0

again:
	mov ah,01h
	int 21h
	sub al,30h
	shl ebx,4
	add bl,al
	loop again
	

lea dx,b
mov ah,09h
int 21h

	
mov num1,ebx
mov cx,8
mov ebx,0


again1:
	mov ah,01h
	int 21h
	sub al,30h
	shl ebx,4
	add bl,al
	loop again1
	
mov num2,ebx


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


lea dx,c
mov ah,09h
int 21h

mov ebx,res



mov ax,9999h

sub al,bl
das
mov bl,al

sbb ah,bh
mov al,ah
das
mov bh,al

mov word ptr num3,bx

mov ax,9999h

shr ebx,16

sub al,bl
das
mov bl,al

sbb ah,bh
mov al,ah
das
mov bh,al

mov word ptr num3+2,bx

mov ebx,num3

mov al,01h

add al,bl
daa
mov bl,al



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



