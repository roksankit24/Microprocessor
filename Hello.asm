.Model SMALL
.Stack 100H
.data 
another db 'Enter a number$ '
msg db 10, 'You entered $ '
.code
.startup
MOV AX,@data
MOV DS,AX
MOV DX,offset another
MOV AH,09H
INT 21H
MOV AH,01H
INT 21H
MOV DX,offset msg
MOV AH,09H
INT 21H
MOV AH,02H
MOV DL,AL
INT 21H 
.EXIT
END

