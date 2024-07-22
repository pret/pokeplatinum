#include "macros/scrcmd.inc"

    .data

    .byte 2
    .short 14, 0
    .byte 1
    ScriptEntry _000B
    .byte 0

_000B:
    .short 0x40B7, 1, 4
    .short 0x40B7, 2, 2
    .short 0x40B7, 3, 5
    .short 0x40B7, 0xFF, 3
    .short 0

    .balign 4, 0
