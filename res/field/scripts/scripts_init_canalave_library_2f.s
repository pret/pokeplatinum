#include "macros/scrcmd.inc"


    .byte 2
    .short 5, 0
    .byte 1
    ScriptEntry _000B
    .byte 0

_000B:
    .short 0x4056, 2, 6
    .short 0

    .balign 4, 0
