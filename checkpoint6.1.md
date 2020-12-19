```
assume cs:codesg
codesg segment
    dw 0123h,0456h,0789h,0abch,0defh,0fedh,0cbah,0987h

start:  mov ax,0
        mov ds,ax
        mov bx,0

        mov cx,8
    s:  mov ax,[bx]
        mov cs:[bx],ax //不能写成 mov cs:[bx],[bx],从内存单元到内存单元，这样没有大小，不允许。
        add bx,2
        loop s

        mov ax,4c00H
        int 21H
codesg ends

END start
```

2）

```assembly
assume cs:codesg
codesg segment
    dw 0123h,0456h,0789h,0abch,0defh,0fedh,0cbah,0987h
    dw 0,0,0,0,0,0,0,0,0,0

start:  mov ax,cs
        mov ss,ax
        mov sp,24H

        mov ax,0
        mov ds,ax
        mov bx,0
        mov cx,8

    s:  push [bx]
        pop cs:[bx]
        add bx,2
        loop s

        mov ax,4c00H
        int 21H
codesg ends

END start
```

