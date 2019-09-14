.model small
.stack 5000
.data 
    arr1 db 0F2h,39h,0Ah,17h,05h,09h
	len dw $-arr1
    arr2 db 45h,0Bh,0Ch,0Dh,09h,34h
.code
.startup
    mov cx,len
    lea si,arr1
    lea di,arr2
again:
    mov dl,[si]
    mov bl,[di]
    mov [di],dl
    mov [si],bl
    inc si
    inc di
    loop again
    mov ah,4ch
    int 21h
end