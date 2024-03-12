    .include "macros/scrcmd.inc"

    .data

    .long _007D-.-4
    .long _0090-.-4
    .long _00A3-.-4
    .long _00B6-.-4
    .long _00CD-.-4
    .long _00F9-.-4
    .long _0022-.-4
    .long _00E4-.-4
    .short 0xFD13

_0022:
    ScrCmd_1B6 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0069
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _0069
    ScrCmd_011 0x4000, 2
    ScrCmd_01C 1, _0069
    ScrCmd_011 0x4000, 3
    ScrCmd_01C 1, _0073
    ScrCmd_011 0x4000, 4
    ScrCmd_01C 1, _0073
    ScrCmd_002

_0069:
    ScrCmd_01F 0x268
    ScrCmd_01E 0x269
    ScrCmd_002

_0073:
    ScrCmd_01F 0x269
    ScrCmd_01E 0x268
    ScrCmd_002

_007D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0090:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00A3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00B6:
    ScrCmd_036 4, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_00CD:
    ScrCmd_036 5, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_00E4:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 6, 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_00F9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002
