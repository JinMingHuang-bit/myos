; The Unreal Mode testing program 
; For testing in the Bochs emulator 
; NASM Syntax

org 0x7c00                  ; BIOS loading address

[BITS 16]
start:
    ; Set the segment register
    cli
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0x7c00

    ; Display message indicating entering real mode
    mov si, msg_real
    call print_string


    mov si, msg_try_high
    call print_string

    xor eax, eax
    mov ax, 0x1000          
    mov ds, ax
    mov bx, 0               
    mov al, [ds:bx]         
    
    mov si, msg_done
    call print_string
    
    mov ax, cs          ;
    mov ds, ax 
    ; Enter the main mode
    mov si, msg_unreal
    call print_string
    
    call enter_unreal       ; Switch to Unreal Mode

    ; Now it is in the main mode and you can access 4GB of storage space. 
    ; Set a test mark at the 2MB position.
    mov eax, 0x200000       ; 2MB address
    mov byte [ds:eax], 0x55 ; Write in the test value
    
    ;Then read and display from the 2MB position.
    mov eax, 0x200000
    mov bl, [ds:eax]
    
    ; displaying results
    mov si, msg_success
    call print_string
    
    ; Read and display the written value
    mov si, msg_value
    call print_string
    mov al, bl
    call print_hex_byte
    
    ; loop
    jmp $

; Enter the main mode function
enter_unreal:
    cli
    
    ; Keep the original DS
    ; push ds
    
    ; Load GDT
    lgdt [gdt_ptr]
    
    ; Enter protection mode
    mov eax, cr0
    or al, 1
    mov cr0, eax
    
    ; Switch to the refresh pipeline
    jmp 0x08:protect_mode_32

[BITS 32]
protect_mode_32:
    ; Load a 4GB data segment
    mov ax, 0x10
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    ; Now switch to 16-bit protected mode to refresh the D flag in the CS cache.
    jmp 0x18:protect_mode_16    ; 0x18 points to the 16-bit code segment descriptor in the GDT.
[BITS 16]
protect_mode_16:
    ;In 16-bit protected mode, the D value in the CS cache is 0, ensuring that the instruction decoding is correct when returning to real mode subsequently.
    ; At this point, 4GB of data can still be accessed (as DS and others are still in the 4GB segment)
    ; Return to real mode
    mov eax, cr0
    and al, 0xFE
    mov cr0, eax

    ; Jump back to the real mode. The CS cache will maintain D=0 (because it came from the 16-bit protected mode)
    jmp 0:real_mode_back

real_mode_back:
    ; Restore SS and SP
    ; xor ax, ax
    ; mov ss, ax
    ; mov sp, 0x7c00
    
    ; Restore DS to 0 (but retain the 4GB attribute of the cache)
    ; pop ds                  ; The original DS = 0
    
    sti
    ret

;Print string function
print_string:
    cld
    lodsb
    or al, al
    jz .done
    mov ah, 0x0E
    int 0x10
    jmp print_string
.done:
    ret

; Print hexadecimal bytes
print_hex_byte:
    cld
    push ax
    mov ah, al
    shr al, 4
    call print_hex_digit
    mov al, ah
    and al, 0x0F
    call print_hex_digit
    pop ax
    ret
    
print_hex_digit:
    add al, '0'
    cmp al, '9'
    jle .print
    add al, 7
.print:
    mov ah, 0x0E
    int 0x10
    ret

; data segent
msg_real    db '1. In Real Mode (16-bit)', 13, 10, 0
msg_try_high db '2. Trying to access >1MB memory...', 13, 10, 0
msg_done    db '   (This will wrap around in real mode)', 13, 10, 0
msg_unreal  db '3. Entering Unreal Mode...', 13, 10, 0
msg_success db '4. Unreal Mode active!', 13, 10, 0
msg_value   db '   Value at 2MB: 0x', 0

; GDT

align 8
gdt:
    ;NULL descriptor
    dw 0, 0, 0, 0
    ; Code segment descriptor (Base address 0, Maximum length 4GB)
    dw 0xFFFF, 0, 0x9A00, 0xCF
    ; Data segment descriptor (base address 0, limit 4GB)
    dw 0xFFFF, 0, 0x9200, 0xCF
    ; 16-bit code segment descriptor (base address 0, limit 64KB, D=0) —— used to return and refresh the CS cache before execution
    dw 0xFFFF, 0, 0x9E00, 0x00   

gdt_ptr:
    dw $ - gdt - 1
    dd gdt

; Fill up to 510 bytes and end with the boot sector flag.
times 510-($-$$) db 0
dw 0xAA55