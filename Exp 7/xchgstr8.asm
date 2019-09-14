.model small
.stack 5000
.data 
    arr1 db 0F2h,39h,0Ah,17h,05h
	len dw $-arr1
    arr2 db 45h,0Bh,0Ch,0Dh,09h
.code
.startup
    mov ax,ds
    mov es,ax
    mov cx,len
    lea si,arr1
    lea di,arr2
again:
    mov al,[di]
    movsb
    mov [si-1],al
    loop again
    mov ah,4ch
    int 21h
end