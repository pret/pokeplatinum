#include "macros/scrcmd.inc"

    .data

    .byte 2
    .short 7, 0
    .byte 3
    .short 8, 0
    .byte 1
    ScriptEntry _0010
    .byte 0

_0010:
    .short 0x40DF, 1, 9
    .short 0x40DF, 2, 10
    .short 0

    .balign 4, 0
