    .include "macros/scrcmd.inc"

    .data

    .byte 4
    .short 0x23F3, 0
    .byte 1
    .long _000B-.-4
    .byte 0

_000B:
    .short 0x40D4, 0, 0x23F0
    .short 0x4080, 1, 0x23F5
    .short 0

    .balign 4, 0
