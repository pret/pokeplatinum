    .include "macros/scrcmd.inc"

    .data

    .byte 2
    MoveAction_001 0
    .byte 4
    MoveAction_018 0
    .byte 1
    .long _0010-.-4
    .byte 0

_0010:
    .short 0x4078, 2, 4
    .short 0x4078, 4, 5
    .short 0x40F8, 3, 23
    .short 0

    .balign 4, 0
