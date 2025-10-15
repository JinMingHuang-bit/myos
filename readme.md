this software can only be compiled in linux environment because it base on gnu C and linux tools, if you want to use it in windows, please install wsl and compile it in wsl.

you can change the code here in loader.asm to change the resolution 
loader.asm in line :452
```assembly
Label_SVGA_Mode_Info_Finish:

	mov	ax,	1301h
	mov	bx,	000Fh
	mov	dx,	0E00h		;row 14
	mov	cx,	30
	push	ax
	mov	ax,	ds
	mov	es,	ax
	pop	ax
	mov	bp,	GetSVGAModeInfoOKMessage
	int	10h
;========================mode : 0x180 or 0x143
;=======	set the SVGA mode(VESA VBE)

	mov	ax,	4F02h
	;
	mov	bx,	4180h
	;x 640, y 480
	;mov bx, 0101h    	
	int 	10h
	cmp	ax,	004Fh
	jnz	Label_SET_SVGA_Mode_VESA_VBE_FAIL
```
you can use the following type:
```assemble
; 80列文本模式
mov bx, 4101h    ; 80×25 文本模式
mov bx, 4102h    ; 80×30 文本模式  
mov bx, 4103h    ; 80×43 文本模式
mov bx, 4104h    ; 80×60 文本模式

; 100列文本模式
mov bx, 4105h    ; 100×25 文本模式
mov bx, 4106h    ; 100×30 文本模式
mov bx, 4107h    ; 100×43 文本模式
mov bx, 4108h    ; 100×60 文本模式

; 132列文本模式
mov bx, 4109h    ; 132×25 文本模式
mov bx, 410Ah    ; 132×30 文本模式
mov bx, 410Bh    ; 132×43 文本模式
mov bx, 410Ch    ; 132×60 文本模式
```
and change the c code follow:main.c
```c
    int *addr=(int *)0xffff800000a00000;
    int i;
    Pos.XResolution=1440;
    Pos.YResolution=900;
    Pos.XPosition=0;
    Pos.YPosition=0;
    Pos.XCharSize=8;
    Pos.YCharSize=16;
    Pos.FB_addr=(int *)0xffff800000a00000;
    Pos.FB_length=(Pos.XResolution*Pos.YResolution*4);

```
please install nasm,gcc and make to compile the code
example orders:nasm -f bin loader.asm -o loader.bin
you need to run make in each folder

the system has been write into boot.img