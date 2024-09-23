# Makefile

all: os-image

# สร้างไฟล์อิมเมจ os-image โดยรวม bootloader และ kernel
os-image: bootloader.bin kernel.bin
    cat bootloader.bin kernel.bin > os-image

# คอมไพล์ bootloader
bootloader.bin: boot.asm
    nasm -f bin boot.asm -o bootloader.bin

# คอมไพล์ kernel
kernel.bin: kernel.c
    gcc -m32 -ffreestanding -c kernel.c -o kernel.o
    ld -m elf_i386 -o kernel.bin -Ttext 0x1000 --oformat binary kernel.o

clean:
    rm -f *.bin *.o os-image
