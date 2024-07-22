#include "macros/scrcmd.inc"

    .data

    .byte 2
    .short 0x264B, 0
    .byte 1
    ScriptEntry _000B
    .byte 0

_000B:
    .short 0x40D5, 5, 0x2648
    .short 0x40F7, 0, 1
    .short 0

    .balign 4, 0
