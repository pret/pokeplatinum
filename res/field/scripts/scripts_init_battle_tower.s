#include "macros/scrcmd.inc"

    .data

    .byte 2
    .short 22, 0
    .byte 3
    .short 23, 0
    .byte 1
    ScriptEntry _0010
    .byte 0

_0010:
    .short 0x40D8, 1, 4
    .short 0x40D8, 2, 5
    .short 0x40D8, 3, 8
    .short 0x40D8, 0xFF, 6
    .short 0

    .balign 4, 0
