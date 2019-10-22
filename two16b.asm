.Model SMALL
.Stack 100H
.data
en db 'Enter first number: $'
an db 10, 'Enter second number: $'
message db 10, 'The result is: $'
.code
.startup
MOV AX,@data
MOV DS,AX
LEA DX,en
MOV AH,09H
INT 21H

MOV AX,01H
INT 21H

MOV AX,02H
MOV CX,AX
SUB CX,30H
INT 21H

LEA DX,an
MOV AH,09H
INT 21H 

MOV AX,01H
INT 21H

MOV AX,02H
MOV BX,AX
SUB BX,30H
INT 21H

ADD CX,BX
ADD CX,30H

LEA DX,message
MOV AH,09H
INT 21H

MOV AX,02H
MOV DX,CX
INT 21H

.EXIT
END


