#include "macros/scrcmd.inc"

    .data

    .byte 2
    .short 19, 0
    .byte 1
    ScriptEntry _000B
    .byte 0

_000B:
    .short 0x407E, 0, 1
    .short 0

    .balign 4, 0
