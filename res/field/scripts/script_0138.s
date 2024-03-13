    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _001A-.-4
    .long _0032-.-4
    .short 0xFD13

_000E:
    ScrCmd_028 0x8007, 0
    ScrCmd_014 0x7D2
    ScrCmd_002

_001A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0D3 0, 0x1A6
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0032:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
