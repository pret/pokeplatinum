    .include "macros/scrcmd.inc"

    .data

    .byte 4
    MoveAction_002 0
    .byte 2
    MoveAction_001 0
    .byte 3
    MoveAction_007 0
    .byte 1
    .long _0015-.-4
    .byte 0

_0015:
    .short 0x411E, 1, 8
    .short 0

    .balign 4, 0
