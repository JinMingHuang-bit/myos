org 10000h
    jmp Label_Start
RootDirSectors	equ	14
SectorNumOfRootDirStart	equ	19
SectorNumOfFAT1Start	equ	1
SectorBalance	equ	17	

	BS_OEMName	db	'myosboot'
	BPB_BytesPerSec	dw	512
	BPB_SecPerClus	db	1
	BPB_RsvdSecCnt	dw	1
	BPB_NumFATs	db	2
	BPB_RootEntCnt	dw	224
	BPB_TotSec16	dw	2880
	BPB_Media	db	0xf0
	BPB_FATSz16	dw	9
	BPB_SecPerTrk	dw	18
	BPB_NumHeads	dw	2
	BPB_hiddSec	dd	0
	BPB_TotSec32	dd	0
	BS_DrvNum	db	0
	BS_Reserved1	db	0
	BS_BootSig	db	29h
	BS_VolID	dd	0
	BS_VolLab	db	'boot loader'
	BS_FileSysType	db	'FAT12   '

BaseOfKernelFile equ 0x00
OffsetOfKernelFile equ 0x100000
BaseTmpOfKernelAddr equ 0x00
OffsetTmpOfKernelFile equ 0x7E00
MemoryStructBufferAddr equ 0x7E00

[SECTION gdt]

LABEL_GDT:		dd	0,0  ; 定义第一个描述符（8字节全0），这是GDT强制要求的空描述符（不可用）
LABEL_DESC_CODE32:	dd	0x0000FFFF,0x00CF9A00	; 定义32位代码段描述符（8字节
LABEL_DESC_DATA32:	dd	0x0000FFFF,0x00CF9200   ;定义32位数据段描述符（8字节）

GdtLen	equ	$ - LABEL_GDT 
GdtPtr	dw	GdtLen - 1	; GDTR的低16位：GDT长度-1（界限）
	dd	LABEL_GDT		; GDTR的高32位：GDT的基地址

SelectorCode32	equ	LABEL_DESC_CODE32 - LABEL_GDT
SelectorData32	equ	LABEL_DESC_DATA32 - LABEL_GDT

[SECTION gdt64]

LABEL_GDT64:		dq	0x0000000000000000
LABEL_DESC_CODE64:	dq	0x0020980000000000
LABEL_DESC_DATA64:	dq	0x0000920000000000

GdtLen64	equ	$ - LABEL_GDT64
GdtPtr64	dw	GdtLen64 - 1
		dd	LABEL_GDT64

SelectorCode64	equ	LABEL_DESC_CODE64 - LABEL_GDT64
SelectorData64	equ	LABEL_DESC_DATA64 - LABEL_GDT64

[SECTION .s16]
[BITS 16]

Label_Start:
	;0x10080
    mov ax,cs
    mov ds,ax
    mov es,ax
    mov ax,0x00
    mov ss,ax
    mov sp,0x7c00

;display
    mov ax,1301h
    mov bx,000fh
    mov dx,0200h
    mov cx,13
    push ax
    mov ax,ds
    mov es,ax
    pop ax
    mov bp,startLoaderMessage
    int 10h

;open address A20
    push ax
    in al,92h
    or al,00000010b
    out 92h,al
    pop ax
    cli
    db 0x66
    lgdt [GdtPtr]
    ;enable protected mode
    mov eax,cr0
    or eax,1
    mov cr0,eax
    mov ax,SelectorCode32
    mov fs,ax
   ;return to 16 bit mode
    mov eax,cr0
    and al,11111110b
    mov cr0,eax
    sti
;=======	reset floppy
	xor	ah,	ah
	xor	dl,	dl
	int	13h
;=======	search kernel.bin
	mov	word	[SectorNo],	SectorNumOfRootDirStart
Label_Goto_Next_Sector_In_Root_Dir:
    add word [SectorNo],1
    jmp Lable_Search_In_Root_Dir_Begin
Label_No_KernelBin:
	mov	ax,	1301h
	mov	bx,	000ch
	mov	dx,	0100h
	mov	cx,	21
	push	ax
	mov	ax,	ds
	mov	es,	ax
	pop	ax
	mov	bp,	NoKernelMessage
	int	10h
	jmp	$

Label_FileName_Found:
    mov	ax,	RootDirSectors
    and	di,	0ffe0h
    ;Points to the starting cluster number field of the directory entry
    add	di,	01ah
    mov	cx,	word [es:di]
    push	cx
    add	cx,ax
    add	cx,SectorBalance
    ;get kernel file base
    mov eax,BaseTmpOfKernelAddr
    mov es,eax
    ;get kernel file offset
    mov bx,OffsetTmpOfKernelFile
    mov ax,cx

Label_Go_On_Loading_File:
    push	ax
	push	bx
	mov	ah,	0eh
	mov	al,	'.'
	mov	bl,	0fh
	int	10h
	pop	bx
	pop	ax
    mov	cl,1
    call	Func_ReadOneSector
    pop	ax

    push cx
    push eax
    push fs
    push edi
    push ds
    push esi
    mov cx,200h
    mov ax,BaseOfKernelFile
    mov fs,ax
    mov edi,dword [OffsetOfKernelFileCount]
    mov ax,BaseTmpOfKernelAddr
    mov ds,ax
    mov esi,OffsetTmpOfKernelFile

Label_Mov_Kernel:
    mov	al,byte [ds:esi]
    mov	byte [fs:edi],al
    inc	esi
    inc	edi
    loop Label_Mov_Kernel
    mov eax,0x10000
    mov ds,eax
    mov dword [OffsetOfKernelFileCount],edi
    pop esi
    pop ds
    pop edi
    pop fs
    pop eax
    pop cx
    call Func_GetFATEntry
    cmp	ax,	0fffh
	jz	Label_File_Loaded
	push	ax
	mov	dx,	RootDirSectors
	add	ax,	dx
	add	ax,	SectorBalance
    ;	add	bx,	[BPB_BytesPerSec]
    jmp	Label_Go_On_Loading_File

;=======	get FAT Entry
Func_GetFATEntry:

	push	es
	push	bx
	push	ax
	mov	ax,	00
	mov	es,	ax
	pop	ax
	mov	byte	[Odd],	0
    ;FAT12 takes 1.5 bytes per entry, so:
    ;The FAT table for cluster number N is offset by = N * 1.5 (that is, N + N/2 = N * 3/2)
	mov	bx,	3
	mul	bx
	mov	bx,	2
	div	bx
	cmp	dx,	0
	jz	Label_Even
	mov	byte	[Odd],	1
Label_Even:

	xor	dx,	dx
	mov	bx,	[BPB_BytesPerSec]
    ;Calculate the sector number + byte offset of the FAT entry
	div	bx
	push	dx
    ;0x0000:0x8000 (physical address 0x08000) is usually located in the free memory area and neither corrupts the interrupt table nor affects subsequent bootloaders or kernel loads.
	mov	bx,	8000h
	add	ax,	SectorNumOfFAT1Start
    ;Set the number of sectors read to 2 (FAT entries may span sectors, so 2 sectors must be read consecutively to ensure coverage)
	mov	cl,	2
	call	Func_ReadOneSector
    ;call Func_ReadOneSector The wrapper function that calls the BIOS interrupt INT 13h
	pop	dx
	add	bx,	dx
	mov	ax,	[es:bx]
	cmp	byte	[Odd],	1
    ;if not equal,jmp
	jnz	Label_Even_2
	shr	ax,	4

Label_Even_2:
	and	ax,	0fffh
	pop	bx
	pop	es
	ret

Func_ReadOneSector:
	
	push	bp
    ;BP is the base pointer used to locate variables on the stack.
    ;MOV BP, SP makes BP point to the top of the current stack to facilitate subsequent access to local variables
	mov	bp,	sp
	sub	esp,	2
	mov	byte	[bp - 2],	cl
	push	bx
	mov	bl,	[BPB_SecPerTrk]
    ;Calculate track (cylinder) and sector offsets.
	div	bl
	inc	ah
	mov	cl,	ah
	mov	dh,	al
    ;Calculate cylinder number (higher 8 bits of track number)
	shr	al,	1
	mov	ch,	al
	and	dh,	1
	pop	bx
    ;DL is the drive letter for the BIOS disk read (INT 13h) (e.g. 0x00 for floppy, 0x80 for hard disk).
	mov	dl,	[BS_DrvNum]

Label_File_Loaded:
    mov ax,0B800h
    mov gs,ax
    mov ah,0fh
    mov al,'G'
    mov [gs:((80*0+39)*2)],ax

KillMotor:
    push dx
    mov dx,03F2h
    mov al,0
    out dx,al
    pop dx

	mov	ax,	1301h
	mov	bx,	000fh
	;row 5
	mov	dx,	0500h
	mov	cx,	20
	push	ax
	;Let ES = DS to ensure that ES:BP correctly refers to the string
	mov	ax,	ds
	mov	es,	ax
	pop	ax
	mov	bp,	StartGetMemStructMessage
	int	10h

	;Prepare to receive BIOS memory detection results
	mov ebx,0
	mov	ax,0x00
	mov	es,	ax
	mov di,MemoryStructBufferAddr

Label_Get_Mem_Struct:
	;Call E820 function of BIOS INT 15h (get memory mapping)
	mov eax,0x0E820
	;The size of the memory structure expected to be returned by the BIOS
	mov ecx,20
	;Signature verification,The BIOS checks whether EDX is equal to "SMAP" to make sure the call is valid
	mov edx,0x534D4150
	;Memory check
	int 15h
	;if fail
	jc Label_Get_Mem_Fail
	;Moving buffer Pointer
	add di,20
	cmp ebx,0
	jne Label_Get_Mem_Struct
	jmp Label_Get_Mem_OK
Label_Get_Mem_Fail:
	mov	ax,	1301h
	mov	bx,	000fh
	;row 6
	mov	dx,	0600h
	mov	cx,	28
	push	ax
	;Let ES = DS to ensure that ES:BP correctly refers to the string
	mov	ax,	ds
	mov	es,	ax
	pop	ax
	mov	bp, GetMemStructErrMessage
	int	10h

Label_Get_Mem_OK:
	mov	ax,	1301h
	mov	bx,	000fh
	;row 7
	mov	dx,	0700h
	mov	cx,	24
	push	ax
	;Let ES = DS to ensure that ES:BP correctly refers to the string
	mov	ax,	ds
	mov	es,	ax
	pop	ax
	mov	bp, GetMemStructOKMessage
	int	10h
	
	;get SVGA
	mov	ax,	1301h
	mov	bx,	000Fh
	mov	dx,	0800h		;row 8
	mov	cx,	16
	push	ax
	mov	ax,	ds
	mov	es,	ax
	pop	ax
	mov	bp,	StartGetSVGAVBEInfoMessage
	int	10h

	;Call VESA function 00h (get VBE controller information)
	mov	ax,	0x00
	mov	es,	ax
	mov	di,	0x8000
	mov	ax,	4F00h
	int	10h
	cmp	ax,	004Fh
	jz	.KO

	;if fail
	mov	ax,	1301h
	mov	bx,	000Fh
	mov	dx,	0900h		;row 9
	mov	cx,	27
	push	ax
	mov	ax,	ds
	mov	es,	ax
	pop	ax
	mov	bp,	GetSVGAVBEInfoErrMessage
	int	10h

	jmp $
.KO:
	mov	ax,	1301h
	mov	bx,	000Fh
	mov	dx,	0A00h		;row 10
	mov	cx,	33
	push	ax
	mov	ax,	ds
	mov	es,	ax
	pop	ax
	mov	bp,	GetSVGAVBEInfoOKMessage
	int	10h
	;get svga mode info

	
	mov	ax,	1301h
	mov	bx,	000Fh
	mov	dx,	0C00h		;row 12
	mov	cx,	24
	push	ax
	mov	ax,	ds
	mov	es,	ax
	pop	ax
	mov	bp,	StartGetSVGAModeInfoMessage
	int	10h

	mov	ax,	0x00
	mov	es,	ax
	mov	si,	0x800e

	mov	esi,	dword	[es:si]
	;The VESA schema information is subsequently copied or parsed
	mov	edi,	0x8200

Label_SVGA_Mode_Info_Get:

	mov	cx,	word	[es:esi]

;=======	display SVGA mode information

	push	ax
	mov	ax,	00h
	mov	al,	ch
	call	Label_DispAL
	mov	ax,	00h
	mov	al,	cl	
	call	Label_DispAL
	pop	ax

	;Check whether each pattern is available.
	;0xFFFF is the end tag of the list of VESA patterns, indicating that the list is terminated
	cmp	cx,	0FFFFh
	jz	Label_SVGA_Mode_Info_Finish
	mov	ax,	4F01h
	int	10h
	cmp	ax,	004Fh
	jnz	Label_SVGA_Mode_Info_FAIL	
	add	esi,	2
	add	edi,	0x100
	jmp	Label_SVGA_Mode_Info_Get

Label_SVGA_Mode_Info_Finish:
	
	mov	ax,	1301h
	mov	bx,	000Fh
	mov	dx,	0E00h		;row 14
	mov	cx,	34
	push	ax
	mov	ax,	ds
	mov	es,	ax
	pop	ax
	mov	bp,	GetSVGAModeInfoOKMessage
	int	10h

	;set SVGA mode
	;mode : 0x180 or 0x143
	; mov ax,4F02h
	; mov bx,4180h
	; int	10h
	mov ax, 4F02h       ; VBE设置显示模式功能
	mov bx, 0101h       ; 原始模式号 (0x180)
	; or  bx, 8000h       ;n 启用LFB（线性帧缓冲区）
	or  bx, 4000h       ; ← 关键添加：设置"不清除显存"标志 (VBE 3.0+)
	int 10h

	cmp	ax,	004Fh
	jnz Label_SET_SVGA_MODE_VESA_VBE_FAIL

	;init IDT GDT goto protect mode
	cli ;close interrupt
;This is an operand size prefix that forces lgdt to interpret GdtPtr in 32-bit mode (even if the current mode is still 16-bit real mode)
	db 0x66
	lgdt [GdtPtr]

	db 0x66
	lidt [IDT_POINTER]

	mov eax,cr0
	or eax,1
	mov cr0,eax
	jmp dword SelectorCode32:GO_TO_TMP_Protect ;selectors:

Label_SET_SVGA_MODE_VESA_VBE_FAIL:
	mov	ax,	1301h
	mov	bx,	000fh
	;row 15
	mov	dx,	0F00h
	mov	cx,	31
	push	ax
	;Let ES = DS to ensure that ES:BP correctly refers to the string
	mov	ax,	ds
	mov	es,	ax
	pop	ax
	mov	bp, SETSVGAMODEVESAVBEFAILMessage
	int	10h
	jmp $

Label_SVGA_Mode_Info_FAIL:
	mov	ax,	1301h
	mov	bx,	000Fh
	mov	dx,	0D00h		;row 10
	mov	cx,	28
	push	ax
	mov	ax,	ds
	mov	es,	ax
	pop	ax
	mov	bp,	GetSVGAModeInfoErrMessage
	int	10h

Lable_Search_In_Root_Dir_Begin:

	cmp	word	[RootDirSizeForLoop],	0
	jz	Label_No_KernelBin
	dec	word	[RootDirSizeForLoop]	
	mov	ax,	00h
	mov	es,	ax
	mov	bx,	8000h
	mov	ax,	[SectorNo]
	mov	cl,	1
	call	Func_ReadOneSector
	mov	si,	KernelFileName
	mov	di,	8000h
	cld
	mov	dx,	10h

[SECTION .s32]
[BITS 32]
;0x103d0
GO_TO_TMP_Protect:
	;go to tmp long mode
	;Points to a 32-bit data segment descriptor in GDT
	mov ax,0x10
	mov ds,ax
	mov es,ax
	mov fs,ax
	mov ss,ax
	mov esp,7E00h

	call support_long_mode
	;The test directive is the logical equivalent of AND but does not store the result but only updates the flag bits.
	test eax, eax
	jz no_support

	;init template page table 0x90000
	;A four-level page table structure
	; PML4
	mov	dword	[0x90000],	0x91007
	mov dword	[0x90004],  0x00000
	mov	dword	[0x90800],	0x91007
	mov dword	[0x90804],  0x00000
	;PDPT		
	mov	dword	[0x91000],	0x92007
	mov dword	[0x91004],  0x00000
	;PDT->PT
	mov	dword	[0x92000],	0x000083
	mov dword	[0x92004],  0x000000
	mov	dword	[0x92008],	0x200083
	mov dword	[0x9200C],  0x000000
	mov	dword	[0x92010],	0x400083
	mov dword	[0x92014],  0x000000
	mov	dword	[0x92018],	0x600083
	mov dword	[0x9201C],  0x000000
	mov	dword	[0x92020],	0x800083
	mov dword	[0x92024],  0x000000
	mov	dword	[0x92028],	0xa00083
	mov dword	[0x9202C],  0x000000

	;load GDTR
	db 0x66
	lgdt [GdtPtr64]
	mov ax,0x10
	mov ds,ax
	mov es,ax
	mov fs,ax
	mov ss,ax
	mov gs,ax

	mov esp,7E00h

	;open PAE
	mov eax, cr4
	bts eax, 5
	mov cr4, eax

	;load cr3
	mov eax, 0x90000
	mov cr3, eax
	;open long mode
	xor ecx, ecx
	mov ecx, 0C0000080h
	rdmsr

	bts eax, 8
	wrmsr

	;open PE and paging
	mov eax, cr0
	bts eax, 0
	bts eax, 31
	mov cr0, eax
	;0x104e9
	;jmp far 0008:00100000
	jmp SelectorCode64:OffsetOfKernelFile
	;after jump,address:0008:0000000000100000
;test support long mode or not
support_long_mode:
	mov eax, 0x80000000
	;The CPUID command returns the following value:
	;EAX = maximum supported extension number (e.g., EAX >= 0x80000001 if 0x80000001 is supported
	cpuid
	cmp eax, 0x80000001
	setnb al;Set if Not Below
	;If EAX >= 0x80000001 (that is, extended functionality is supported), AL=1.
	;Otherwise AL is equal to 0.
	;bt (Bit Test) :
	;The 29th Bit (counting from 0) of the EDX register is tested, which is the long mode support bit (LM Bit).
	;The result is stored in CF (Carry Flag).
	jb support_long_mode_done
	mov eax, 0x80000001
	cpuid
	bt edx, 29
	;Set if Carry) :
;If CF=1 (that is, EDX[29]=1, long mode is supported), then AL=1.
;Otherwise AL is equal to 0.
	setc al

support_long_mode_done:
	movzx eax, al
	ret
no_support:
	jmp $

; A section of code that defines a 16-bit real pattern
;Declare the subsequent code to be 16 bits
[SECTION .s16lib]
[BITS 16]
;display num at al
Label_DispAL:
	push ecx
	push edx
	push edi
	mov edi,[DisplayPosition]
	mov ah,0fh
	mov dl,al
	shr al,4
	mov ecx,2

.begin:
	and al,0fh
	cmp al,9
	ja .1
	add al,'0'
	jmp .2
.1:
	sub al,0Ah
	add al,'A'
.2:
	mov [gs:edi],ax
	add edi,2
	mov al,dl
	loop .begin
	mov [DisplayPosition],edi
	pop edi
	pop edx
	pop ecx

	ret


;=======	tmp IDT
;An empty IDT is initialized

IDT:
;Each interrupt descriptor (or gate descriptor) occupies 8 bytes, so this IDT can accommodate 80 interrupt/exception handler entries
	times	0x50	dq	0 ;allocate 8 bit
IDT_END:

IDT_POINTER:
		dw	IDT_END - IDT - 1
		dd	IDT

;=======	tmp variable

RootDirSizeForLoop	dw	RootDirSectors
SectorNo		dw	0
Odd			db	0
SETSVGAMODEVESAVBEFAILMessage db "Ops,SET SVGA MODE VESA VBE FAIL"
GetSVGAVBEInfoErrMessage:	db	"Ops,Get SVGA VBE Info ERROR" ;27
GetSVGAVBEInfoOKMessage:	db	"Wow,Get SVGA VBE Info SUCCESSFUL!" ;33
StartGetSVGAVBEInfoMessage db "Get SVGA Info..."  ;16
GetSVGAModeInfoErrMessage:	db	"Ops,Get SVGA Mode Info ERROR" ;28
StartGetSVGAModeInfoMessage:	db	"Start Get SVGA Mode Info" ;24
GetSVGAModeInfoOKMessage:	db	"Wow,Get SVGA Mode Info SUCCESSFUL!" ;34
OffsetOfKernelFileCount	dd	OffsetOfKernelFile
StartGetMemStructMessage db "Get Memory Struct..." ;20
GetMemStructErrMessage db "Ops,Get Memory Struct Failed" ;28
GetMemStructOKMessage db "Wow,Get Memory Struct OK" ;24
DisplayPosition		dd	0
KernelFileName:		db	"KERNEL  BIN",0
startLoaderMessage: db "os Loading..." ;13
NoKernelMessage:	db	"ERROR:No Kernel Found" ;21