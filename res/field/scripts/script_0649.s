    .include "macros/scrcmd.inc"

    .data

    .byte 2
    MoveAction_004 0
    .byte 1
    .long _000B-.-4
    .byte 0

_000B:
    .short 0x411F, 1, 2
    .short 0

    .balign 4, 0
