    .include "macros/scrcmd.inc"

    .data

    .byte 2
    MoveAction_00B 0
    .byte 1
    .long _000B-.-4
    .byte 0

_000B:
    .short 0x40CD, 1, 12
    .short 0

    .balign 4, 0
