    .include "macros/scrcmd.inc"

    .data

    .long _0070-.-4
    .long _0083-.-4
    .long _0096-.-4
    .long _00A9-.-4
    .long _002F-.-4
    .long _001A-.-4
    .short 0xFD13

_001A:
    ScrCmd_238 11, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _004F
    ScrCmd_002

_002F:
    ScrCmd_238 11, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 5, _0055
    ScrCmd_020 0x217
    ScrCmd_01D 0, _004F
    ScrCmd_002

_004F:
    ScrCmd_01E 0x217
    ScrCmd_01B

_0055:
    ScrCmd_020 0x217
    ScrCmd_01C 1, _0066
    ScrCmd_01F 0x217
    ScrCmd_002

_0066:
    ScrCmd_01F 0x217
    ScrCmd_064 4
    ScrCmd_002

_0070:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0083:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0096:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00A9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002
