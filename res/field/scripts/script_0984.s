    .include "macros/scrcmd.inc"

    .data

    .byte 1
    .long _0006-.-4
    .byte 0

_0006:
    .short 0x40A3, 0, 1
    .short 0

    .balign 4, 0
