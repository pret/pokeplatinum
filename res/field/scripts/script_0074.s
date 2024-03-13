    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _000C-.-4
    .short 0xFD13

_000A:
    ScrCmd_002

_000C:
    ScrCmd_002

    .byte 0
    .byte 0
