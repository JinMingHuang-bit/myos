
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
	;If the comparison of the 16 items is completed, then move on to read the next sector.
	jz	Label_Goto_Next_Sector_In_Root_Dir
	;The item counter is decremented by 1.
	dec	dx
	; Each file name is 11 bytes in length (in 8.3 format)
	mov	cx,	11

Label_Cmp_FileName:

	cmp	cx,	0
	; If all 11 bytes match, then the file is found.
	jz	Label_FileName_Found
	dec	cx
	; Take a byte (the target file name) from SI
	lodsb
	; Compare with the bytes in the current directory item
	cmp	al,	byte	[es:di]
	;Compare with the bytes in the current directory item
	jz	Label_Go_On
	; If the condition is not met, proceed to handle the next directory item.
	jmp	Label_Different

Label_Go_On:
	
	inc	di
	jmp	Label_Cmp_FileName

Label_Different:
	 ;Clear the lower 5 bits of DI to zero, so that it points to the beginning of the current directory entry (32-byte alignment)
	and	di,	0ffe0h
	; Add 32 bytes and point to the next directory entry
	add	di,	20h
	mov	si,	LoaderFileName
	jmp	Label_Search_For_LoaderBin

Label_Goto_Next_Sector_In_Root_Dir:
	;All directory entries of the current sector have been compared. Read the next sector.
	; Increment the sector number by 1
	add	word	[SectorNo],	1
	;loop
	jmp	Lable_Search_In_Root_Dir_Begin
	
;=======	display on screen : ERROR:No LOADER Found

Label_No_LoaderBin:
	;Set AH to 13h and AL to 01h. AH = 13h represents the "display string" function of BIOS interrupt int 10h; 
	;AL = 01h indicates that after displaying the string, the cursor moves to the end of the string, 
	;and the character attributes are provided by the BL register.
	mov	ax,	1301h
	;BH = 00h (usually for displaying page numbers, here it is 0), BL = 0Ch. BL stores character attributes.
	; 0Ch corresponds to bright red foreground and black background (color attributes in text mode).
	mov	bx,	000ch
	;DH = 01h (line number, counting starts from 0, so it's the 2nd line), DL = 00h (column number, the 1st column). 
	;The string will be displayed starting from the 1st column of the 2nd line on the screen.
	mov	dx,	0100h
	;Set the length of the string to be displayed to 21 characters.
	mov	cx,	21
	;Push the value of AX onto the stack for later use, as we will be modifying AX next.
	push	ax
	;Copy the value of the data segment register DS to the AX register.
	mov	ax,	ds
	;Copy the value of AX to the extra segment register ES, making ES point to the same segment as DS. 
	;This is required by the int 10h AH=13h function, which requires the string to be pointed to by ES:BP.
	mov	es,	ax
	;Restore the original value of AX (which is 1301h) from the stack.
	pop	ax
	;Store the offset address of the string NoLoaderMessage in BP. At this time, ES:BP points to the memory location where the string is stored.
	mov	bp,	NoLoaderMessage
	;Invoke the int 10h interrupt of the BIOS to execute the string display operation.
	int	10h
	;dead loop
	jmp	$

;=======	found loader.bin name in root director struct

Label_FileName_Found:
	;Load the total number of sectors occupied by the root directory area (a previously calculated constant) into the AX register.
	mov	ax,	RootDirSectors
	;Align DI to the starting address of the current directory entry (32-byte boundary), 
	;ensuring that DI points to the beginning of the directory entry.
	and	di,	0ffe0h
	;In the directory entry, the offset 0x1A represents the starting cluster number of the file (2 bytes). 
	;Increase DI by 0x1A to make it point to this field.
	add	di,	01ah
	;Read a word (2 bytes) from the memory address pointed to by ES:DI into CX, which is to obtain the starting cluster number of loader.bin.
	mov	cx,	word	[es:di]
	;Push the starting cluster number onto the stack for later use,
	; in case it is needed to traverse multiple clusters occupied by the file (if the file size exceeds one cluster) 
	;through the FAT table.
	push	cx
	;Add the cluster number and the number of root directory sectors。
	add	cx,	ax
	;Add a balance value (SectorBalance), after this step, in CX, 
	;it will be the actual logical sector number (LBA) corresponding to this cluster.
	add	cx,	SectorBalance
	;The BaseOfLoader is the constant 0x1000, which means it is loaded at 0x1000 * 16 + 0x00 = 0x10000.
	mov	ax,	BaseOfLoader
	;Set the segment address BaseOfLoader to the extra segment register ES, preparing for data loading.
	mov	es,	ax
	;OffsetOfLoader is a constant (e.g., 0x0100), representing the offset address of the loader program within the segment.
	;At this time, ES:BX together point to the starting address of the loader program in memory.
	mov	bx,	OffsetOfLoader
	;Store the calculated logical sector number in AX, as a parameter for the subsequent disk reading function (starting sector number).
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
	;Set CL = 1 (Read 1 sector)
	mov	cl,	1
	call	Func_ReadOneSector
	;Based on the current cluster number, search for the next cluster number in the FAT table, and the result is returned in AX.
	pop	ax
	call	Func_GetFATEntry
	cmp	ax,	0fffh
	;Compare whether AX is equal to 0xFFF. If they are equal, it indicates that this is the end cluster of the file, 
	;and then jump to Label_File_Loaded (file loading completed)
	jz	Label_File_Loaded
	;Push the next cluster number onto the stack for storage. This value will be used in the "pop ax" instruction in the next loop.
	push	ax
	;Calculate the physical sector number corresponding to the next cluster. 
	;The formula is: Sector number = Cluster number + RootDirSectors + SectorBalance
	mov	dx,	RootDirSectors
	add	ax,	dx
	add	ax,	SectorBalance
	;Updating the memory pointer increments the value of BX by the size of one sector (512 bytes)
	;In this way, the next sector to be read will be placed after the current sector, 
	;and the ES remains unchanged. Therefore, the file is continuously loaded into the memory.
	add	bx,	[BPB_BytesPerSec]
	;continue loading the next sector of the file
	jmp	Label_Go_On_Loading_File

Label_File_Loaded:
	;long jump to the loader program, transferring control to the loaded loader.bin
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
	;Save the values of the ES, BX, and AX registers, as they will be modified later.
	push	es
	push	bx
	push	ax
	;Set ES to 0, as the FAT table will be read to the memory address 0:8000h
	mov	ax,	00
	mov	es,	ax
	pop	ax
	mov	byte	[Odd],	0
	;Calculate the byte offset of the FAT entry:
	;Multiply by 3: ax = cluster number × 3
	;Divide by 2: ax ÷ 2, quotient in AX, remainder in DX
	;Result: AX = byte offset, DX = remainder (0 or 1)
	mov	bx,	3
	mul	bx
	mov	bx,	2
	div	bx
	;Determine the parity (odd or even)
	cmp	dx,	0
	jz	Label_Even
	mov	byte	[Odd],	1

Label_Even:

	xor	dx,	dx
	mov	bx,	[BPB_BytesPerSec]
	;Calculate: byte offset ÷ bytes per sector, quotient in AX, remainder in DX
	div	bx
	push	dx
	mov	bx,	8000h
	add	ax,	SectorNumOfFAT1Start
	  ;Set the number of sectors read to 2 (FAT entries may span sectors, so 2 sectors must be read consecutively to ensure coverage)
	mov	cl,	2
	call	Func_ReadOneSector
	
	pop	dx
	;Restore the sector internal offset to DX
	add	bx,	dx
	mov	ax,	[es:bx]
	cmp	byte	[Odd],	1
	jnz	Label_Even_2
	;If the cluster number is odd ([Odd] = 1), shift AX right by 4 bits
	;Because odd cluster numbers occupy the high 12 bits of a 2-byte entry, we need to shift right by 4 bits to align them
	shr	ax,	4

Label_Even_2:
	;Extract the 12-bit FAT entry using AND AX, 0xFFF to get the lower 12 bits, resulting in the next cluster number
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

