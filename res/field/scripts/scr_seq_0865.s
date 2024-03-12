    .include "macros/scrcmd.inc"

    .data

    .byte 2
    .short 1, 0
    .byte 1
    .long _000B-.-4
    .byte 0

_000B:
    .short 0x40DB, 1, 2
    .short 0x40DB, 2, 3
    .short 0x40DB, 3, 4
    .short 0

    .balign 4, 0
