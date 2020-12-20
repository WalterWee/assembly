;程序如下，编写code段中的代码，将a段和b段中的数据依次相加，将结果存到c段中。
assume cs:code

a SEGMENT 
    db 1,2,3,4,5,6,7,8
a ENDS

b SEGMENT 
    db 1,2,3,4,5,6,7,8
b ENDS

hehe SEGMENT 
    db 0,0,0,0,0,0,0,0
hehe ENDS

code SEGMENT

start:  mov ax,a
        mov ds,ax

        mov ax,b
        mov ss,ax

        mov ax,hehe
        mov es,ax
        
        mov bx,0
        mov cx,8
    s:  mov al,ds:[bx]
        add al,ss:[bx]
        mov es:[bx],al
        inc bx
        loop s

        mov ax,4c00H
        int 21H
    
code ENDS

end start