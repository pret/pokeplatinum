#include "macros/scrcmd.inc"

    .data

    .byte 3
    .short 0x2328, 0
    .byte 1
    ScriptEntry _000B
    .byte 0

_000B:
    .short 0x40D5, 1, 0x2334
    .short 0x40D5, 2, 0x2335
    .short 0x40D5, 4, 0x2336
    .short 0x40D5, 3, 0x2337
    .short 0

    .balign 4, 0
