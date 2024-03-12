    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _002A-.-4
    .short 0xFD13

_000A:
    ScrCmd_01E 0x9D4
    ScrCmd_01A _001C
    ScrCmd_285 0x410B, 0x410C
    ScrCmd_002

_001C:
    ScrCmd_028 0x410B, 0
    ScrCmd_028 0x410C, 0
    ScrCmd_01B

_002A:
    ScrCmd_020 0x121
    ScrCmd_01C 1, _0046
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0046:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
