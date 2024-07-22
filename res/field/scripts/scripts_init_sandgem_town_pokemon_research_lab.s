#include "macros/scrcmd.inc"

    .data

    .byte 2
    .short 1, 0
    .byte 1
    ScriptEntry _000B
    .byte 0

_000B:
    .short 0x40A6, 0, 2
    .short 0x40A6, 2, 15
    .short 0

    .balign 4, 0
