    .include "macros/scrcmd.inc"

    .data

    .byte 2
    MoveAction_016 0
    .byte 3
    MoveAction_017 0
    .byte 1
    .long _0010-.-4
    .byte 0

_0010:
    .short 0x40D8, 1, 4
    .short 0x40D8, 2, 5
    .short 0x40D8, 3, 8
    .short 0x40D8, 0xFF, 6
    .short 0

    .balign 4, 0
