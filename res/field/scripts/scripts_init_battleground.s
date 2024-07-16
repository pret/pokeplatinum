#include "macros/scrcmd.inc"

    .data

    .byte 2
    .short 4, 0
    .byte 1
    ScriptEntry _000B
    .byte 0

_000B:
    .short 0x40C1, 0, 3
    .short 0

    .balign 4, 0
