;1)将课程中所有讲解过的程序上机调试，用Debug跟踪基执行过程，并在过程中进一步理解所讲内容
;2)编程，完成问题7.9中的程序

assume cs:codesg,ss:stacksg,ds:datasg

stacksg segment
    dw 0,0,0,0,0,0,0,0
stacksg ends

datasg segment
    db '1. display      '
    db '2. brows        '
    db '3. replace      '
    db '4. modify       '
datasg ends

codesg segment
    start:  mov ax,stacksg
            mov ss,ax
            mov sp,16

            mov ax,datasg
            mov ds,ax
            mov bx,0

            mov cx,4
        s0: push cx
            mov cx,4
            mov si,0

        s:  mov al,3[bx+si]
            and al,11011111b
            mov 3[bx+si],al
            inc si
            loop s
            add bx,16
            pop cx
            loop s0

            mov ax,4c00H
            int 21H

codesg ends
end start