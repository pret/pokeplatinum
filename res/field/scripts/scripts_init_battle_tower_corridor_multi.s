#include "macros/scrcmd.inc"


    .byte 2
    .short 1, 0
    .byte 3
    .short 2, 0
    .byte 1
    ScriptEntry _0010
    .byte 0

_0010:
    .short 0x40DD, 1, 3
    .short 0

    .balign 4, 0
