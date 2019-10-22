.Model SMALL
.Stack 100H
.data 
message db 'Enter a number$'
.code
.startup
MOV AX,@data
MOV DS,AX
MOV DX,offset message

MOV AH,09H
INT 21H
.EXIT
END

