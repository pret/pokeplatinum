    .include "macros/scrcmd.inc"

    .data

    .byte 2
    .short 7, 0
    .byte 1
    .long _000B-.-4
    .byte 0

_000B:
    .short 0x40DA, 1, 3
    .short 0x40DA, 2, 4
    .short 0

    .balign 4, 0
