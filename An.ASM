.Model SMALL
.Stack 100H
.data
message db 'The result is: $'
.code
.startup
MOV AX,@data
MOV DS,AX
MOV AL,05H
MOV BL,03H
ADD AL,BL
ADD AL,30H
MOV DX,offset message
MOV AH,09H
INT 21H
MOV AH,02H
MOV DL,AL
INT 21H
.EXIT
END


