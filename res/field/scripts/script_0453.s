    .include "macros/scrcmd.inc"

    .data

    .long _00B5-.-4
    .long _00C8-.-4
    .long _00DF-.-4
    .long _00F6-.-4
    .long _010B-.-4
    .long _011E-.-4
    .long _0131-.-4
    .long _0144-.-4
    .long _0157-.-4
    .long _002A-.-4
    .short 0xFD13

_002A:
    ScrCmd_1B6 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0071
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _0071
    ScrCmd_011 0x4000, 2
    ScrCmd_01C 1, _0071
    ScrCmd_011 0x4000, 3
    ScrCmd_01C 1, _0093
    ScrCmd_011 0x4000, 4
    ScrCmd_01C 1, _0093
    ScrCmd_002

_0071:
    ScrCmd_01F 0x260
    ScrCmd_01F 0x262
    ScrCmd_01F 0x264
    ScrCmd_01F 0x266
    ScrCmd_01E 0x261
    ScrCmd_01E 0x263
    ScrCmd_01E 0x265
    ScrCmd_01E 0x267
    ScrCmd_002

_0093:
    ScrCmd_01F 0x261
    ScrCmd_01F 0x263
    ScrCmd_01F 0x265
    ScrCmd_01F 0x267
    ScrCmd_01E 0x260
    ScrCmd_01E 0x262
    ScrCmd_01E 0x264
    ScrCmd_01E 0x266
    ScrCmd_002

_00B5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00C8:
    ScrCmd_036 6, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_00DF:
    ScrCmd_036 7, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_00F6:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 8, 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_010B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_011E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0131:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0144:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0157:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
