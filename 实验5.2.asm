;2. 将下面的程序编译，连接，用Debug加载，跟踪，然后回答问题
assume cs:code,ds:data,ss:stack

data SEGMENT
    dw 0123H,0456h
data ENDS

stack SEGMENT
    dw 0,0
stack ENDS

code SEGMENT
start:  mov ax,stack
        mov ss,ax
        mov sp,16

        mov ax,data
        mov ds,ax

        push ds:[0]
        push ds:[2]
        pop ds:[2]
        pop ds:[0]

        mov ax,4c00H
        int 21H

code ENDS

end start
;--------------------------------------
;1) cpu执行程序，程序返回前，data段中的数据为多少？
; 答：0123H,0456h
;--------------------------------------
;2)cpu执行程序，程序返回前，cs=076e  ss=076d ds=076c
;--------------------------------------
;3)设程序加载后，code段的段地址为X，则data段的段地址为x-2，stack段的段地址为x-1
;--------------------------------------
;4)对于如下定义的段：
;   name segment
;      ...
;   name ends
;   如果段中数据占N个字节，则程序加载后，该段实际占用的空间为(16/N + 1) * 16
;--------------------------------------