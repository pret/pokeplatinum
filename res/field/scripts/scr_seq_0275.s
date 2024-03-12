    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_01E 0x9CD
    ScrCmd_002

    .byte 2
    .byte 0
    .byte 0
    .byte 0
