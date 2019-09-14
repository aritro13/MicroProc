.model small
.stack 5000
.data 
    arr1 db 0F2h,39h,0Ah,17h,05h
	len dw $-arr1
    arr2 db ?
.code
.startup
    mov cx,len
    lea si,arr1
    lea di,arr2
again:
    mov dl,[si]
    mov [di],dl
    inc si
    inc di
    loop again
    mov ah,4ch
    int 21h
end