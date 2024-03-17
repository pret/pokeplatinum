    .include "macros/scrcmd.inc"

    .data

    .byte 2
    MoveAction_001 0
    .byte 1
    .long _000B-.-4
    .byte 0

_000B:
    .short 0x40A1, 0, 41
    .short 0

    .balign 4, 0
