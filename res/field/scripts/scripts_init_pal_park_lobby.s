#include "macros/scrcmd.inc"


    .byte 2
    .short 1, 0
    .byte 1
    ScriptEntry _000B
    .byte 0

_000B:
    .short 0x40C6, 0, 10
    .short 0x40F3, 1, 3
    .short 0x40F3, 2, 12
    .short 0

    .balign 4, 0
