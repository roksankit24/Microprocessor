.Model SMALL
.Stack 100H
.data
a db 'Enter the number: $'
b db 10, 'Enter another number: $'
res db 10, 'The result is: $'
num1 dw ?
num2 db ?
.code
.startup
mov ax,@data
mov dx,ax

lea dx,a
mov ah,09h
int 21h

mov bx,0
mov cx,4

ag:
mov ah,01h
int 21h
cmp al,'A'
jge lb
sub al,30h
shl bx,4
add bl,al
loop ag





mov num1,bx

lea dx,b
mov ah,09h
int 21h

mov bx,0
mov cx,4

yele:
mov ah,01h
int 21h
cmp al,'A'
jge lb
sub al,30h
shl bx,4
add bl,al
loop yele


mov ax,num1


add al,bl
daa
mov bl,al


adc ah,bh
mov al,ah
daa
mov bh,al




lea dx,res
mov ah,09h
int 21h

mov al,0
rcl al,1
add al,30h
mov ah,02h
mov dl,al
int 21h

mov dx,0
mov cx,4


gtn:
rol bx,4
mov dl,bl
and dl,0fh
add dl,30h
mov ah,02h
int 21h
loop gtn



lb:
.EXIT
END
