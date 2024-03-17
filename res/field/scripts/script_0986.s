    .include "macros/scrcmd.inc"

    .data

    .byte 2
    MoveAction_005 0
    .byte 1
    .long _000B-.-4
    .byte 0

_000B:
    .short 0x40F9, 0, 3
    .short 0

    .balign 4, 0
