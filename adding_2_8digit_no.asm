	.model small	
	.stack 100h
	386
	.data
	m1 db 10,13,'Enter 1st no. :$'	
	m2 db 10,13,'Enter 2nd no. :$'
	m3 db 10,13,'Result : $'
	n1 db 00000000h
	.code
	.startup
	mov ax,@data
	mov dx,ax
	lea dx,m1
	mov ah,09h
	mov ebx,0
	mov cx,
	l:
	mov ah,01h
	int 21h
	cmp bal,'A'
	jgr r
	sub al,30h
	jmp pp
	r:
	sub al,37h
	pp:
	sh1,ebx,4
	add b1,a1
	loop l
	mov n1,ebx
	lea dx,m2
	mov ah,09h
	int 21h
	mov ebx,0
	mov cx,8
	l2:
	mov ah,01h
	mov cx,8
	l2:
	mov ah,01h
	int 21h
	cmp al,'A'
	jge rr
	sub al,30h
	jmp ppp
	rr:
	sub al,37h
	ppp
	shl ebx,4
	add b1,al
	loop l2
	mov eax,n1
	add ebx,eax
	lea dx,m3
	mov ah,09h
	int 21h
	mov al,0
	rcl al,1
	mov ah,02h
	mov dl,al
	add dl,30
	int 21h
	mov cx,8
	gtn:
	rol ebx,4
	mov dl,bl
	AND dl,0fh
	cmp dl,09
	jg gg
	add dl,30h
	jmp p
	gg:
	add dl,37h
	p:
	mov ah,02h
	in 21h
	loop gtr
	.exit
	end	
