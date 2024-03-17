    .include "macros/scrcmd.inc"

    .data

    .byte 2
    MoveAction_001 0
    .byte 3
    MoveAction_002 0
    .byte 1
    .long _0010-.-4
    .byte 0

_0010:
    .short 0x40D0, 0, 6
    .short 0

    .balign 4, 0
