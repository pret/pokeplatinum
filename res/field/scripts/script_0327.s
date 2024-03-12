    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _000E-.-4
    .short 0xFD13

_000A:
    ScrCmd_25B
    ScrCmd_002

_000E:
    ScrCmd_25C
    ScrCmd_002

    .byte 0
    .byte 0
