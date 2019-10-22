.Model SMALL
.Stack 100H
.data
a dw 0202H
b dw 0306H
en db 'The result is : $'
.code
.startup
mov AX,@data
mov DS,AX

mov BX,
mov CX,b

add CX,BX
add CX,3030H
mov BX,CX


lea DX,en
mov AH,09H
int 21H

mov AH,02H
mov DL,BH
int 21H

mov AH,02H
mov DL,BL
int 21h

.EXIT 
END
