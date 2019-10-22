.Model SMALL
.Stack 100H
.data
a db 5
i db 'Enter a number: $'
corr db 10, 'Equal$'
ncorr db 10, 'Not Equal$'
g db 10, 'Greater than or equal to$'
l db 10, 'Less than or equal to$'
.code
.startup
mov ax,@data
mov dx,ax

lea dx,i
mov ah,09h
int 21h

mov ah,01h
int 21h

sub al,30h
mov dl,a

cmp al,dl
je right

cmp al,dl
jge gg

cmp al,dl
jle ll

lea dx,ncorr
mov ah,09h
int 21h
.EXIT

right:
lea dx,corr
mov ah,09h
int 21h
.EXIT

gg:
lea dx,g
mov ah,09h
int 21h
.EXIT

ll:
lea dx,l
mov ah,09h
int 21h
.EXIT
END
