    .include "macros/scrcmd.inc"

    .data

    .long _002D-.-4
    .long _0040-.-4
    .long _000E-.-4
    .short 0xFD13

_000E:
    ScrCmd_238 13, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0027
    ScrCmd_01F 0x219
    ScrCmd_002

_0027:
    ScrCmd_01E 0x219
    ScrCmd_002

_002D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0040:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
