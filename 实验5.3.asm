;2. 将下面的程序编译，连接，用Debug加载，跟踪，然后回答问题
assume cs:code,ds:data,ss:stack

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

data SEGMENT
    dw 0123H,0456h
data ENDS

stack SEGMENT
    dw 0,0
stack ENDS

end start
;--------------------------------------
;1) cpu执行程序，程序返回前，data段中的数据为多少？
; 答：0123H,0456h
;--------------------------------------
;2)cpu执行程序，程序返回前，cs=076c  ss=0770 ds=076f
;--------------------------------------
;3)设程序加载后，code段的段地址为X，则data段的段地址为x+3，stack段的段地址为x+4
;--------------------------------------



;--------------------------------------
;5.4 如果将1，2，3题中的最后一条伪指令“end start”改为“end”(也就是说，不指明程序的入口)，
;   则哪个程序仍然可以正确的执行？
;
;程序3可以，因为代码段在最前面，默认的程序入口。
;--------------------------------------