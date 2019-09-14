.model small
.stack 5000
.data 
    arr1 db 0F2h,39h,0Ah,17h,05h
	len dw $-arr1
    arr2 db ?
.code
.startup
    mov ax,ds
    mov es,ax
    mov cx,len
    lea si,arr1
    lea di,arr2
    repnz movsb
    mov ah,4ch
    int 21h
end