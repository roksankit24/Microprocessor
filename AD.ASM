.model SMALL
.stack 100h
.data
msg1 db "Enter first number$"
msg2 db 13,10, "Enter second number$"
msg3 db 13,10,"result of addition$"
d db 00h
.code
.startup
MOV AX,@data
MOV DS,AX

LEA DX,msg1
MOV AH,9
INT 21H

MOV AH,1
INT 21H
mov bh,al

MOV AH,1
INT 21H
mov bl,al

LEA DX,msg2
MOV AH,9
INT 21H
MOV AH,1
INT 21H
mov ch,al

MOV AH,1
INT 21H
mov cl,al
sub bx,3030h
sub cx,3030h
add al,bl
mov ah,00h
aaa
mov d,al
mov al,bh
adc al,ch
mov ah,00h
aaa
mov bx,ax
add bx,3030h
LEA DX,msg3
MOV AH,9
INT 21H
MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H
mov dl,d
add dl,30h
mov ah,2
int 21h
.EXIT
END
