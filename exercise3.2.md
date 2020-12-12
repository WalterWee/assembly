(1)
关键是将20000-2000f这段内存当成栈内存，然后算出栈顶就好了。
第一个元素是2000EH-2000FH,那么没有元素的栈顶sp = 2000E+2 = 20010
所以栈段ss=2000，sp=10

mov ax,2000
mov ss,ax
mov sp,10

2)
mov ax,2000H
mov ds,ax
mov ax,1000
mov ss,ax
mov sp,0
pop [e]
pop [c]
pop [a]
pop [8]
pop [6]
pop [4]
pop [2]
pop [0]