#include "macros/scrcmd.inc"


    .byte 2
    .short 7, 0
    .byte 1
    ScriptEntry _000B
    .byte 0

_000B:
    .short 0x40DA, 1, 3
    .short 0x40DA, 2, 4
    .short 0

    .balign 4, 0
