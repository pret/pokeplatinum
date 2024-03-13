    .include "macros/scrcmd.inc"

    .data

    .long _0010-.-4
    .long _000A-.-4
    .short 0xFD13

_000A:
    ScrCmd_01E 0x9D8
    ScrCmd_002

_0010:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
