.Model SMALL
.Stack 100H
.data
num1 db ?
msg1 db 10, 'Enter the first number: $'
msg2 db 10, 'Enter the second number: $'

.code
.startup
MOV AX,@data
MOV DS,AX
MOV DX,offset msg1
MOV AH,09H
INT 21H

MOV AH,01H
INT 21H

MOV num1,AH
INT 21H

MOV DX,offset msg2
MOV AH,09H
INT 21H

MOV AH,01H
INT 21H

MOV AL,AH
INT 21H

ADD AL,num1
ADD AL,30H
INT 21H


.EXIT
END


