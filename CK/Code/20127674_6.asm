.model small
.stack 100h
.data 
    msg1 db 10,13, 'nhap so thu nhat: $'
    msg2 db 10,13, 'nhap so thu hai: $'
    msg3 db 10,13, 'tong cua hai so la: $'  
    
    num1 db ?
    num2 db ?
    num3 db ?

.code 
    ;lay du lieu tu data vao ds
    mov ax,@data
    mov ds,ax
    ;xuat msg1
    mov ah,9h
    lea dx,msg1
    int 21h
    ;nhap 1 ki tu tu ban phim
    mov ah, 1h
    int 21h
    
    sub al, 30h
    mov num1, al
    ;xuat msg2
    mov ah, 9h
    lea dx, msg2
    int 21h
    ;nhap 1 ki tu tu ban phim
    mov ah, 1h
    int 21h
    
    sub al, 30h
    mov num2, al
    ;xuat msg3
    mov ah, 9h
    mov dx, offset msg3
    int 21h
    ;tinh tong
    mov al, num1
    mov bl, num2
    add al, bl
    
    add al, 30h
    mov num3, al
    ;xuat tong
    mov ah, 2h
    mov dl, num3
    int 21h    
    
    ;thoat huong trinh
    mov ah, 4ch
    int 21h  
end