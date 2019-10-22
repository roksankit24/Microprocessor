.Model SMALL
.Stack 100H
.data
a db 02H
b db 03H
en db 'The result is : $'
.code
.startup
mov AX,@data
mov DS,AX

mov al,b

adi 05h
add al,30h
mov bl,al

lea DX,en
mov AH,09H
int 21H

mov AH,02H
mov DL,BL
int 21h

.EXIT 
END
