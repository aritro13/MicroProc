.model small
.stack 1000
.data 
    stri db 0F2h,39h,0Ah,17h,05h
	len dw $-stri
.code
.startup
    mov cx,len
    dec cx
    mov bx,cx
nextpass:
    mov cx,len
    dec cx
    lea si, stri
next:
    mov al,[si]
    inc si
    cmp al,[si]
    jnc noswap
    mov dl,[si]
    xchg [si],al
    mov [si-1],dl
noswap: 
    loop next
    dec bx
    jnz nextpass
    mov ah,4ch
	int 21h
end

