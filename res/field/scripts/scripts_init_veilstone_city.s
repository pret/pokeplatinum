#include "macros/scrcmd.inc"


    .byte 2
    .short 1, 0
    .byte 1
    ScriptEntry _000B
    .byte 0

_000B:
    .short 0x411A, 1, 29
    .short 0

    .balign 4, 0
