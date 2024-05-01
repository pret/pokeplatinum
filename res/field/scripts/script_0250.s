    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0010-.-4
    .short 0xFD13

_000A:
    ScrCmd_01E 0x9C9
    End

_0010:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_26D 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
