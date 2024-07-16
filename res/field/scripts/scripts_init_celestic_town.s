#include "macros/scrcmd.inc"

    .data

    .byte 2
    .short 1, 0
    .byte 1
    ScriptEntry _000B
    .byte 0

_000B:
    .short 0x4074, 1, 5
    .short 0

    .balign 4, 0
