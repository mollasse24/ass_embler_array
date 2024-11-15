format PE
entry Start
include 'win32wxp.inc'
section '.idata' import readable writeable
library msvcrt, 'MSVCRT.DLL',\
kernel32, 'KERNEL32.DLL'
import msvcrt, printf, 'printf'
import kernel32, ExitProcess, 'ExitProcess', Sleep, 'Sleep'
section '.data' data readable writeable
        Spec db '%d', 0x0D, 0x0A, 0
        a dd 0x3, 0x5, 0x1
section '.text' code readable executable
Start:
        mov eax, a
        mov ecx, 3
Next:
        push eax
        push ecx
        push ebx
        cinvoke printf, Spec, dword [eax]
        invoke Sleep, 500
        pop edx
        pop ecx
        pop eax
        add eax, 4
        loop Next
        invoke ExitProcess, dword 0