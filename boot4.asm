
	org	0x7c00	
; Stack base address definition:
BaseOfStack	equ	0x7c00
; Loader memory location definition:
BaseOfLoader	equ	0x1000
OffsetOfLoader	equ	0x00
; FAT12 Root Area Size:
; The root directory occupies 14 sectors with 32 bytes per entry, for a total of 14*512/32=224 entries
RootDirSectors	equ	14
; Root start sector number:
; The root directory area in FAT12 filesystems starts at sector 19 (zero-based).
SectorNumOfRootDirStart	equ	19
; FAT1 start sector number:
; The first FAT table of the FAT12 filesystem starts at sector 1, immediately following the boot sector
SectorNumOfFAT1Start	equ	1
; Conversion base value from cluster number to physical sector:
SectorBalance	equ	17	

	;Jump to the startup tab
		jmp	short Label_Start
	; no-operation
		nop
		; BIOS Parameter Block (BPB) and Boot Sector Data Structure Definition
		; OEM Name Identifier
		BS_OEMName	db	'myosboot'
		; The number of bytes for each sector is 512, which is the standard value.
		BPB_BytesPerSec	dw	512
		; The number of sectors in each cluster is typically 1 for floppy disks.
		BPB_SecPerClus	db	1
		; The number of reserved sectors (from the beginning of the volume to the point before the first FAT table) is usually 1, which is the boot sector itself.
		BPB_RsvdSecCnt	dw	1
		; Number of FAT tables
		BPB_NumFATs	db	2
		; The maximum number of directory entries (files/folders) that can be contained in the root directory, typically 224.
		BPB_RootEntCnt	dw	224
		; Total sector count (16 bits), 2880 corresponds to the standard 1.44MB floppy disk capacity.
		BPB_TotSec16	dw	2880
		; Media descriptor, 0xF0 indicates a 3.5-inch high-density floppy disk.
		BPB_Media	db	0xf0
		; Sector count per FAT table, typically 9.
		BPB_FATSz16	dw	9
		; Sectors per track, typically 18.
		BPB_SecPerTrk	dw	18
		; Number of heads, typically 2.
		BPB_NumHeads	dw	2
		; Hidden sectors before the volume start, usually 0 for floppy disks.
		BPB_HiddSec	dd	0
		; Total sector count (32 bits)
		BPB_TotSec32	dd	0
		; Drive number
		BS_DrvNum	db	0
		; Reserved field 1
		BS_Reserved1	db	0
		; Extend the signature, with the value 0x29 indicating that the following three fields (volume ID, label, file system type) are valid.。
		BS_BootSig	db	0x29
		; Volume ID
		BS_VolID	dd	0
		; Volume label
		BS_VolLab	db	'boot loader'
		; File system type
		BS_FileSysType	db	'FAT12   '
	
Label_Start:
	;Make the data segment and the additional segment point to the same memory segment as the code segment.
	mov	ax,	cs
	mov	ds,	ax
	mov	es,	ax
	mov	ss,	ax
	;init stack,for call and return
	mov	sp,	BaseOfStack

;=======	clear screen

	mov	ax,	0600h
	mov	bx,	0700h
	mov	cx,	0
	mov	dx,	0184fh
	int	10h

;=======	set focus

	mov	ax,	0200h
	mov	bx,	0000h
	mov	dx,	0000h
	int	10h

;=======	display on screen : Start Booting......

	mov	ax,	1301h
	mov	bx,	000fh
	mov	dx,	0000h
	mov	cx,	10
	push	ax
	mov	ax,	ds
	mov	es,	ax
	pop	ax
	mov	bp,	StartBootMessage
	int	10h

;=======	reset floppy

	xor	ah,	ah
	xor	dl,	dl
	int	13h

;=======	search loader.bin
	mov	word	[SectorNo],	SectorNumOfRootDirStart

Lable_Search_In_Root_Dir_Begin:
	;RootDirSizeForLoop is RootDirSectors
	;Compare whether the variable RootDirSizeForLoop (representing the number of root directory sectors to be searched) is equal to 0.
	cmp	word	[RootDirSizeForLoop],	0
	;No, error handling
	jz	Label_No_LoaderBin
	;Search for a sector
	dec	word	[RootDirSizeForLoop]	
	mov	ax,	00h
	mov	es,	ax
	;Set BX to 0x8000. Combined with ES = 0, the target address is the physical address 0x0000:0x8000 = 0x8000. 
	;This is the memory buffer used to store the root directory sectors read from the disk.
	mov	bx,	8000h
	;Load the value of the variable SectorNo (the current sector number of the root directory to be read) into AX
	mov	ax,	[SectorNo]
	;Set CL to 1, indicating that one sector is to be read.
	mov	cl,	1
	call	Func_ReadOneSector
	mov	si,	LoaderFileName
	;Set the target index register DI to point to 0x8000, which is the starting address of the root directory sector buffer that was just read.
	mov	di,	8000h
	cld
	;Set DX to 0x10 (decimal 16). In FAT12, each root directory entry is 32 bytes, and one sector (512 bytes) contains 16 entries. 
	;DX will be used for counting, indicating the number of directory entries to be compared within the current sector.
	mov	dx,	10h
	
Label_Search_For_LoaderBin:

	cmp	dx,	0
	jz	Label_Goto_Next_Sector_In_Root_Dir
	dec	dx
	mov	cx,	11

Label_Cmp_FileName:

	cmp	cx,	0
	jz	Label_FileName_Found
	dec	cx
	lodsb	
	cmp	al,	byte	[es:di]
	jz	Label_Go_On
	jmp	Label_Different

Label_Go_On:
	
	inc	di
	jmp	Label_Cmp_FileName

Label_Different:

	and	di,	0ffe0h
	add	di,	20h
	mov	si,	LoaderFileName
	jmp	Label_Search_For_LoaderBin

Label_Goto_Next_Sector_In_Root_Dir:
	
	add	word	[SectorNo],	1
	jmp	Lable_Search_In_Root_Dir_Begin
	
;=======	display on screen : ERROR:No LOADER Found

Label_No_LoaderBin:

	mov	ax,	1301h
	mov	bx,	000ch
	mov	dx,	0100h
	mov	cx,	21
	push	ax
	mov	ax,	ds
	mov	es,	ax
	pop	ax
	mov	bp,	NoLoaderMessage
	int	10h
	jmp	$

;=======	found loader.bin name in root director struct

Label_FileName_Found:

	mov	ax,	RootDirSectors
	and	di,	0ffe0h
	add	di,	01ah
	mov	cx,	word	[es:di]
	push	cx
	add	cx,	ax
	add	cx,	SectorBalance
	mov	ax,	BaseOfLoader
	mov	es,	ax
	mov	bx,	OffsetOfLoader
	mov	ax,	cx

Label_Go_On_Loading_File:
	push	ax
	push	bx
	mov	ah,	0eh
	mov	al,	'.'
	mov	bl,	0fh
	int	10h
	pop	bx
	pop	ax

	mov	cl,	1
	call	Func_ReadOneSector
	pop	ax
	call	Func_GetFATEntry
	cmp	ax,	0fffh
	jz	Label_File_Loaded
	push	ax
	mov	dx,	RootDirSectors
	add	ax,	dx
	add	ax,	SectorBalance
	add	bx,	[BPB_BytesPerSec]
	jmp	Label_Go_On_Loading_File

Label_File_Loaded:
	
	jmp	BaseOfLoader:OffsetOfLoader

;=======	read one sector from floppy

Func_ReadOneSector:
	;A Stack Frame is created to save bp and adjust esp to reserve space for local variables
	push	bp
	mov	bp,	sp
	;Allocate 2 bytes on the stack (for temporary variables [bp-2])
	sub	esp,	2
	;Calculate CHS parameters (cylinder, head, sector)
	mov	byte	[bp - 2],	cl
	push	bx
	mov	bl,	[BPB_SecPerTrk]
	div	bl
	inc	ah
	mov	cl,	ah
	mov	dh,	al
	;Since cylinder number = track number / 2 (because BPB_NumHeads=2), shr al, 1 implements division directly
	shr	al,	1
	mov	ch,	al
	and	dh,	1
	pop	bx
	;Setting the drive letter
	mov	dl,	[BS_DrvNum]
Label_Go_On_Reading:
;Call the function number 02h (read sector) of BIOS INT 13h
;INT 13h parameter:
;ah = 02h: Read the sector.
;al: The number of sectors to be read (specified by [bp-2])
	mov	ah,	2
	mov	al,	byte	[bp - 2]
	int	13h
	jc	Label_Go_On_Reading
	add	esp,	2
	pop	bp
	ret

;=======	get FAT Entry

Func_GetFATEntry:

	push	es
	push	bx
	push	ax
	mov	ax,	00
	mov	es,	ax
	pop	ax
	mov	byte	[Odd],	0
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
	div	bx
	push	dx
	mov	bx,	8000h
	add	ax,	SectorNumOfFAT1Start
	  ;Set the number of sectors read to 2 (FAT entries may span sectors, so 2 sectors must be read consecutively to ensure coverage)
	mov	cl,	2
	call	Func_ReadOneSector
	
	pop	dx
	add	bx,	dx
	mov	ax,	[es:bx]
	cmp	byte	[Odd],	1
	jnz	Label_Even_2
	shr	ax,	4

Label_Even_2:
	and	ax,	0fffh
	pop	bx
	pop	es
	ret

;=======	tmp variable

RootDirSizeForLoop	dw	RootDirSectors
SectorNo		dw	0
Odd			db	0

;=======	display messages

StartBootMessage:	db	"hello myos"
NoLoaderMessage:	db	"ERROR:No LOADER Found"
LoaderFileName:		db	"LOADER  BIN",0

;=======	fill zero until whole sector

	times	510 - ($ - $$)	db	0
	dw	0xaa55

