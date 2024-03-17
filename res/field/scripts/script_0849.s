    .include "macros/scrcmd.inc"

    .data

    .byte 2
    MoveAction_001 0
    .byte 4
    MoveAction_002 0
    .byte 1
    .long _0010-.-4
    .byte 0

_0010:
    .short 0x4097, 0, 5
    .short 0

    .balign 4, 0
