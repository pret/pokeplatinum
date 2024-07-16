#include "macros/scrcmd.inc"

    .data

    .byte 2
    .short 1, 0
    .byte 3
    .short 5, 0
    .byte 1
    ScriptEntry _0010
    .byte 0

_0010:
    .short 0x40D9, 1, 2
    .short 0x40D9, 2, 3
    .short 0

    .balign 4, 0
