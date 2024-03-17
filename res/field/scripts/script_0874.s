    .include "macros/scrcmd.inc"

    .data

    .byte 4
    MoveAction_015 0
    .byte 2
    MoveAction_010 0
    .byte 3
    MoveAction_016 0
    .byte 1
    .long _0015-.-4
    .byte 0

_0015:
    .short 0x40BA, 1, 4
    .short 0x40BA, 2, 2
    .short 0x40BA, 3, 5
    .short 0x40BA, 0xFF, 3
    .short 0

    .balign 4, 0
