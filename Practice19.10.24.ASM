Format PE
entry Start
section '.data' data readable writeable
        a dd 0x1, 0x6, 0x3, 0x4, 0x9
section '.text' code readable executable
Start:
        mov eax, a
        xor ebx, ebx
        mov ecx, 5
        sub eax, 4
Next:
        add eax, 4
        cmp ecx, dword 0
        je Final
        cmp [eax], dword 0x1
        ja Greater
        loop Next
        jmp Final

Greater:
        cmp [eax], dword 0x5
        jb Greater2
        loop Next
        jmp Next

Greater2:
        inc ebx
        loop Next


Final:
        int3