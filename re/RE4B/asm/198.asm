; RE4B p.697  3.20.2 Executable code

xor esi, 011223344h ; garbage
add esi, eax    ; garbage
add eax, ebx
mov edx, eax    ; garbage
shl edx, 4      ; garbage
mul ecx
xor esi, ecx    ; garbage
