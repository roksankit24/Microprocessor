.Model SMALL
.Stack 100H
.data
en db 'The result is : $'
.code
.startup
mov AX,@data
mov DS,AX
mov AX,0202H
mov bX,0202H


add AX,bX
add Ax,3030H
mov BX,AX
int 21h

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
