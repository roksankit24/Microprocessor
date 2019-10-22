.Model SMALL
.Stack 100H
.386
.data
a db 'Enter the first number $'
b db 10, 'Enter the second number $'
res db 10, 'Result $'
num1 dd 00000000H

.code
.startup
mov ax,@data
mov dx,ax

lea dx,a
mov ah,09h
int 21h

mov ebx,0
mov cx,8

fn:
mov ah,01h
int 21h
cmp al,'A'
jge lb2
sub al,30h
jmp slabel

lb2:
sub al,37h

slabel:
shl ebx,4
add bl,al
loop fn

mov num1,ebx

lea dx,b
mov ah,09h
int 21h

mov ebx,0
mov cx,8

sn:
mov ah,01h
int 21h
cmp al,'A'
jge lb3
sub al,30h
jmp selabel
lb3:
sub al,37h
selabel:
shl ebx,4
add bl,al
loop sn


add ebx,num1

lea dx,res
mov ah,09h
int 21h


mov al,0
rcl al,1
add al,30h
mov ah,02h
mov dl,al
int 21h

mov cx,8


pr:
rol ebx,4
mov dl,bl
and dl,0fh
cmp dl,09
jg lb4
add dl,30h
jmp P
lb4:
add dl,37h
P:
mov ah,02h
int 21h
loop pr
.EXIT
END


