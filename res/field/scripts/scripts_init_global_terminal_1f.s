#include "macros/scrcmd.inc"

    .data

    .byte 3
    .short 13, 0
    .byte 1
    ScriptEntry _000B
    .byte 0

_000B:
    .short 0x40D5, 6, 12
    .short 0

    .balign 4, 0
