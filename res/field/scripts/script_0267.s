    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0031-.-4
    .short 0xFD13

_000A:
    ScrCmd_01E 0x9CA
    ScrCmd_020 0x964
    ScrCmd_01C 0, _002F
    ScrCmd_22D 2, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _002F
    ScrCmd_01E 0x27E
_002F:
    ScrCmd_002

_0031:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x964
    ScrCmd_01C 1, _004F
    ScrCmd_02C 0
    ScrCmd_016 _005A
    ScrCmd_002

_004F:
    ScrCmd_02C 1
    ScrCmd_016 _005A
    ScrCmd_002

_005A:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
