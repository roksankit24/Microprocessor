.Model SMALL
.Stack 100H
.data
msg1 db 'Enter number',10,13,'$'
.code
.startup
mov AX,@data
mov DS,AX
mov DX,offset msg1
mov AH,09H
int 21h
mov AH,01H
INT 21H
.EXIT
END

