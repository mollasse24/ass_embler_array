format PE GUI
entry Start

include 'win32wxp.inc'

section '.data' data readable writeable
        Caption db 'DAVID IM WROTE THIS ON ASSEMBLER', 0
        Text db 'LOVEEEEEEE YOUUUUUUU', 0

section '.idata' import readable writeable
library kernel32, 'KERNEL32.DLL', \
        user32, 'USER32.DLL'

import user32, MessageBoxA, 'MessageBoxA'
import kernel32, ExitProcess, 'ExitProcess'

section '.text' code readable executable
Start:
        nop
        nop
        nop
        invoke MessageBoxA, dword 0, Text, Caption, dword 0
        invoke ExitProcess, dword 0