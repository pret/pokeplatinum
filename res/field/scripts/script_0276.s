    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _000C-.-4
    .short 0xFD13

_000A:
    End

_000C:
    ScrCmd_036 3, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

    .byte 0
