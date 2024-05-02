    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _000E-.-4
    .short 0xFD13

_000A:
    ScrCmd_25B
    End

_000E:
    ScrCmd_25C
    End

    .byte 0
    .byte 0
