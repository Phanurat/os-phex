// kernel.c - kernel

void main() {
    char *video_memory = (char *) 0xB8000;  // หน่วยความจำสำหรับแสดงข้อความ

    video_memory[0] = 'P';  // ตัวอักษร 'P'
    video_memory[1] = 0x07; // สีของ 'P' (ขาวบนพื้นดำ)

    video_memory[2] = 'h';  // ตัวอักษร 'h'
    video_memory[3] = 0x07; // สีของ 'h'

    video_memory[4] = 'e';  // ตัวอักษร 'e'
    video_memory[5] = 0x07; // สีของ 'e'

    video_memory[6] = 'x';  // ตัวอักษร 'x'
    video_memory[7] = 0x07; // สีของ 'x'
}
