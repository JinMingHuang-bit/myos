this software can only be compiled in linux environment because it base on gnu C and linux tools, if you want to use it in windows, please install wsl and compile it in wsl.

you can change the code here in loader.asm to change the resolution
in line :447
```assembly

 ;set SVGA mode
;mode : 0x180 or 0x143
; mov ax, 4F02h       
; mov bx, 0101h       
; or  bx, 8000h       
; int 10h
; mov ax,4F02h
; mov bx,4180h
; int 10h
mov ax, 4F02h       ; VBE setting for display mode function
mov bx, 0101h       ; Original mode number (0x180)
; or  bx, 8000h     ;Enable LFB (Linear Frame Buffer)
or  bx, 4000h       ; Key addition: Set the "Do not clear video memory" flag (VBE 3.0+)
int 10h

```
please install nasm,gcc and make to compile the code
example orders:nasm -f bin loader.asm -o loader.bin
you need to run make in each folder

the system has been write into boot.img