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

MOV AH,01H
INT 21H

MOV AH,02H
MOV CL,AL
SUB CL,30H
INT 21H

LEA DX,an
MOV AH,09H
INT 21H 

MOV AH,01H
INT 21H

MOV AH,02H
MOV BL,AL
SUB BL,30H
INT 21H

ADD CL,BL
ADD CL,30H

LEA DX,message
MOV AH,09H
INT 21H

MOV AH,02H
MOV DL,CL
INT 21H

.EXIT
END


