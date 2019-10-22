.Model SMALL
.386
.Stack 100H
.data
a db 'Enter first number: $'
b db 10, 'Enter second number: $'
res db 10, 'The result is: $'
num1 dd ?
num2 dd ?
.code
.startup

mov ax,@data
mov ds,ax

lea dx,a
mov ah,09h
int 21h

mov ebx,0
mov cx,8

again:
	mov ah,01h
	int 21h
	cmp al,9
	jg not_bcd
	add al,30h
	jmp pr
	not_bcd:
	sub al,37h
	pr:
	shl ebx,4
	add bl,al
	loop again
	

mov num1,ebx	

lea dx,b
mov ah,09h
int 21h


mov ebx,0
mov cx,8

again1:
	mov ah,01h
	int 21h
	cmp al,9
	jg nnot_bcd
	add al,30h
	jmp prr
	nnot_bcd:
	sub al,37h
	prr:
	shl ebx,4
	add bl,al
	loop again1
	
	
mov num2,ebx
mov ebx,num1
	
sub ebx,num2

lea dx,res
mov ah,09h
int 21h

mov cx,8

print_result:
	rol ebx,4
	mov dl,bl
	and dl,0fh
	cmp dl,09
	jg n_b
	add dl,30h
	jmp p
	n_b:
	add dl,37h
	p:
	mov ah,02h
	int 21h
	loop print_result
	.EXIT
	END	
