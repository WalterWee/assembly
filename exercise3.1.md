mov ax,1  ax=1

mov ds,ax ds=1

mov ax,[0000]	AX = 2662

mov bx,[0001]	BX=E626

1)mov ax,bx			AX=E626

mov ax,[0000]	AX=2662

mov bx,[0002]	BX=D6E6

add ax,bx			AX=FD48

add ax,[0004]	AX=FD48+2ECC = 2C14

mov ax,0		AX=0

mov al,[0002]	AX=00E6

mov bx,0		BX=0

mov bl,[000C]	BX=0026

add al,bl		AX=000C



2)mov ax,6622H CS=2000H,IP=3H, AX=6622H,BX=0

jmp 0ff0:0100 CS=0FF0H,IP=100H, AX=6622H,BX=0

mov ax,2000H  CS=0FF0H,IP=103,AX=2000H,BX=0

mov ds,ax	CS=0FF0H,IP=105,	AX=2000H,BX=0,DS=2000H

mov ax,[0008]	CS=0FF0H,IP=108, AX=C389,BX=0,DS=2000H

mov ax,[0002]	CS=0FF0H,IP=10B, AX=EA66,BX=0,