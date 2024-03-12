    .include "macros/scrcmd.inc"

    .data

    .long _0033-.-4
    .long _005C-.-4
    .long _0090-.-4
    .long _00A1-.-4
    .long _001A-.-4
    .long _00B2-.-4
    .short 0xFD13

_001A:
    ScrCmd_01E 0x2C9
    ScrCmd_011 0x4056, 2
    ScrCmd_01D 1, _002D
    ScrCmd_002

_002D:
    ScrCmd_01F 0x2C9
    ScrCmd_01B

_0033:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 168
    ScrCmd_01C 1, _0051
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0051:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_005C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_011 0x4056, 3
    ScrCmd_01C 4, _0082
    ScrCmd_02C 2
    ScrCmd_016 _007A
    ScrCmd_002

_007A:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0082:
    ScrCmd_0CD 0
    ScrCmd_02C 13
    ScrCmd_016 _007A
    ScrCmd_002

_0090:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00A1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00B2:
    ScrCmd_060
    ScrCmd_05E 1, _019C
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0104
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00E1
    ScrCmd_002

_00E1:
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0104
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00E1
    ScrCmd_002

_0104:
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_05E 1, _01B4
    ScrCmd_05F
    ScrCmd_02C 8
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0159
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0136
    ScrCmd_002

_0136:
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0159
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0136
    ScrCmd_002

_0159:
    ScrCmd_02C 10
    ScrCmd_034
    ScrCmd_05E 1, _01C4
    ScrCmd_05F
    ScrCmd_02C 11
    ScrCmd_034
    ScrCmd_05E 1, _01CC
    ScrCmd_05F
    ScrCmd_02C 12
    ScrCmd_034
    ScrCmd_05E 0xFF, _01E0
    ScrCmd_05E 1, _01D4
    ScrCmd_05F
    ScrCmd_065 1
    ScrCmd_028 0x4056, 3
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_019C:
    .short 35, 1
    .short 75, 1
    .short 15, 1
    .short 12, 1
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01B4:
    .short 33, 1
    .short 32, 1
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01C4:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01CC:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01D4:
    .short 63, 2
    .short 15, 2
    .short 0xFE, 0x00

    .balign 4, 0
_01E0:
    .short 13, 1
    .short 32, 1
    .short 0xFE, 0x00
