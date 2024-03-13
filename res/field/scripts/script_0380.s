    .include "macros/scrcmd.inc"

    .data

    .long _0016-.-4
    .long _001A-.-4
    .long _0070-.-4
    .long _011D-.-4
    .long _012A-.-4
    .short 0xFD13

_0016:
    ScrCmd_2F2
    ScrCmd_002

_001A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 7
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _003A
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_003A:
    ScrCmd_0CD 0
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_049 0x5D2
    ScrCmd_328 0
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 221, 0, 31, 33, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_002

_0070:
    ScrCmd_060
    ScrCmd_05E 0xFF, _0140
    ScrCmd_05F
    ScrCmd_05E 0xFF, _014C
    ScrCmd_05F
    ScrCmd_311 128
    ScrCmd_05E 128, _017C
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_035
    ScrCmd_05E 128, _0198
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_035
    ScrCmd_05E 128, _01A4
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 0xFF, _0154
    ScrCmd_05E 128, _01AC
    ScrCmd_05F
    ScrCmd_321 0
    ScrCmd_05E 0xFF, _0160
    ScrCmd_05E 128, _01B4
    ScrCmd_05F
    ScrCmd_003 30, 0x800C
    ScrCmd_322
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_05E 0xFF, _0174
    ScrCmd_05E 128, _01C4
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_05E 128, _01CC
    ScrCmd_05F
    ScrCmd_312 128
    ScrCmd_028 0x4055, 1
    ScrCmd_061
    ScrCmd_002

_011D:
    ScrCmd_060
    ScrCmd_02C 5
    ScrCmd_032
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_012A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0140:
    .short 14, 1
    .short 63, 1
    .short 0xFE, 0x00

    .balign 4, 0
_014C:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0154:
    .short 63, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0160:
    .short 62, 1
    .short 2, 1
    .short 75, 1
    .short 3, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0174:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_017C:
    .short 33, 1
    .short 65, 2
    .short 35, 1
    .short 63, 1
    .short 32, 1
    .short 63, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0198:
    .short 33, 1
    .short 63, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01A4:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01AC:
    .short 13, 2
    .short 0xFE, 0x00

    .balign 4, 0
_01B4:
    .short 2, 1
    .short 75, 1
    .short 3, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01C4:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01CC:
    .short 14, 3
    .short 13, 3
    .short 14, 2
    .short 13, 1
    .short 14, 6
    .short 0xFE, 0x00
