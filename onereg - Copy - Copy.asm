.Model SMALL
.Stack 100H
.data
num1 db ?
msg1 db 10, 'Enter the first number: $'
msg2 db 10, 'Enter the second number: $'
msg3 db 10, 'The result is: $'

.code
.startup
MOV AX,@data
MOV DS,AX
MOV DX,offset msg1
MOV AH,09H
INT 21H

MOV AH,01H
INT 21H
sub AL,30h
MOV num1,Al


MOV DX,offset msg2
MOV AH,09H
INT 21H

MOV AH,01H
int 21h
sub AL,30H


MOV DX,offset msg3
MOV AH,09H
INT 21H

ADD AL,num1
MOV AH,0
AAA
ADD AL,30H
ADD AH,30H
MOV BX,AX

MOV AH,02H
MOV DL,BH
INT 21H

MOV AH,02H
MOV DL,BL
INT 21H
.EXIT
END


