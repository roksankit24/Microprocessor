.Model SMALL
.Stack 100H
.data
msg1 db 'enter no 1',10,13,'$'
msg2 db 'enter no.2',10,13,'$'
.code
.startup
mov AX,@data
mov DS,AX
mov DX,offset msg1
mov AH,09H
int 21h

mov AH,01H
int 21H
mov BL,AL                                                                                                                                                                                                             
sub BL,30H

mov DX,offset msg2
mov AH,09H
int 21H

mov AH,01H
int 21H
sub Al,30H

add AL,BL
add AL,30H
mov Dl,AL
mov AH,02H

INT 21H
.EXIT
END

