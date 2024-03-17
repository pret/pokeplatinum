    .include "macros/scrcmd.inc"

    .data

    .byte 2
    MoveAction_00E 0
    .byte 1
    .long _000B-.-4
    .byte 0

_000B:
    .short 0x40BC, 1, 4
    .short 0x40BC, 2, 2
    .short 0x40BC, 3, 5
    .short 0x40BC, 0xFF, 3
    .short 0

    .balign 4, 0
