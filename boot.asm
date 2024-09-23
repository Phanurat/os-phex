; boot.asm - bootloader

[BITS 16]            ; โหมด 16-bit
[ORG 0x7C00]         ; Bootloader จะถูกโหลดที่ตำแหน่ง 0x7C00

start:
    ; แสดง 'P'
    mov ah, 0x0E     ; BIOS interrupt เพื่อแสดงตัวอักษร
    mov al, 'P'      ; ตัวอักษร 'P'
    int 0x10         ; เรียก BIOS interrupt เพื่อแสดง

    ; แสดง 'h'
    mov al, 'h'      ; ตัวอักษร 'h'
    int 0x10

    ; แสดง 'e'
    mov al, 'e'      ; ตัวอักษร 'e'
    int 0x10

    ; แสดง 'x'
    mov al, 'x'      ; ตัวอักษร 'x'
    int 0x10

    ; แสดง 'i'
    mov al, 'i'      ; ตัวอักษร 'i'
    int 0x10

    hlt              ; หยุดการทำงาน

times 510-($-$$) db 0  ; เติมข้อมูลให้ครบ 512 bytes
dw 0xAA55              ; Boot signature เพื่อบอก BIOS ว่านี่คือ bootable sector
