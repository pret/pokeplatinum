    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0020-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_147 1
    ScrCmd_061
    End

_0020:
    End

    .byte 0
    .byte 0
