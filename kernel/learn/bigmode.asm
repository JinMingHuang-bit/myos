; 大模式（Unreal Mode）测试程序
; 用于 Bochs 模拟器测试
; NASM 语法

org 0x7c00                  ; BIOS 加载地址

[BITS 16]
start:
    ; 设置段寄存器
    cli
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0x7c00

    ; 显示进入实模式消息
    mov si, msg_real
    call print_string

    ; 测试访问 1MB 以上内存（应该失败，因为实模式只能访问 1MB）
    mov si, msg_try_high
    call print_string
    
    ; 尝试读取 1MB 处的内存（实模式下会环绕到 0xFFFF:0x10 之类的地址）
    xor eax, eax
    mov ax, 0x1000          ; 段
    mov ds, ax
    mov bx, 0               ; 偏移
    mov al, [ds:bx]         ; 尝试读取，但实际读的是 0x10000 处
    
    mov si, msg_done
    call print_string
    
    mov ax, cs          ; 或者直接 xor ax, ax
    mov ds, ax 
    ; 进入大模式
    mov si, msg_unreal
    call print_string
    
    call enter_unreal       ; 切换到 Unreal Mode

    ; 现在处于大模式，可以访问 4GB 空间
    ; 设置一个测试标记到 2MB 处
    mov eax, 0x200000       ; 2MB 地址
    mov byte [ds:eax], 0x55 ; 写入测试值
    
    ; 再从 2MB 处读取并显示
    mov eax, 0x200000
    mov bl, [ds:eax]
    
    ; 显示结果
    mov si, msg_success
    call print_string
    
    ; 读取并显示写入的值
    mov si, msg_value
    call print_string
    mov al, bl
    call print_hex_byte
    
    ; 无限循环
    jmp $

; 进入大模式函数
enter_unreal:
    cli
    
    ; 保存原 DS
    push ds
    
    ; 加载 GDT
    lgdt [gdt_ptr]
    
    ; 进入保护模式
    mov eax, cr0
    or al, 1
    mov cr0, eax
    
    ; 跳转刷新流水线
    jmp 0x08:protect_mode

[BITS 32]
protect_mode:
    ; 加载 4GB 数据段
    mov ax, 0x10
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    
    ; 返回实模式
    mov eax, cr0
    and al, 0xFE
    mov cr0, eax
    
    ; 跳回实模式
    jmp 0:real_mode_back


[BITS 16]
real_mode_back:
    ; 恢复 SS 和 SP
    xor ax, ax
    mov ss, ax
    mov sp, 0x7c00
    
    ; 恢复 DS 为 0（但缓存保留 4GB 属性）
    pop ds                  ; 原来的 DS=0
    
    sti
    ret

; 打印字符串函数
print_string:
    lodsb
    or al, al
    jz .done
    mov ah, 0x0E
    int 0x10
    jmp print_string
.done:
    ret

; 打印十六进制字节
print_hex_byte:
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

; 数据段
msg_real    db '1. In Real Mode (16-bit)', 13, 10, 0
msg_try_high db '2. Trying to access >1MB memory...', 13, 10, 0
msg_done    db '   (This will wrap around in real mode)', 13, 10, 0
msg_unreal  db '3. Entering Unreal Mode...', 13, 10, 0
msg_success db '4. Unreal Mode active!', 13, 10, 0
msg_value   db '   Value at 2MB: 0x', 0

; 全局描述符表
align 8
gdt:
    ; NULL 描述符
    dw 0, 0, 0, 0
    ; 代码段描述符 (基址0, 限长4GB)
    dw 0xFFFF, 0, 0x9A00, 0xCF
    ; 数据段描述符 (基址0, 限长4GB)
    dw 0xFFFF, 0, 0x9200, 0xCF

gdt_ptr:
    dw $ - gdt - 1
    dd gdt

; 填充到510字节，并以引导扇区标志结束
times 510-($-$$) db 0
dw 0xAA55