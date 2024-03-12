    .include "macros/scrcmd.inc"

    .data

    .long _001A-.-4
    .long _001E-.-4
    .long _0044-.-4
    .long _006F-.-4
    .long _0096-.-4
    .long _01DA-.-4
    .short 0xFD13

_001A:
    ScrCmd_2F2
    ScrCmd_002

_001E:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x246, 0, 15, 25, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_002

_0044:
    ScrCmd_060
    ScrCmd_05E 128, _028C
    ScrCmd_05E 0xFF, _0204
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 128, _029C
    ScrCmd_05F
    ScrCmd_028 0x4055, 8
    ScrCmd_002

_006F:
    ScrCmd_060
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 129, _0308
    ScrCmd_05E 128, _02AC
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_02C 4
    ScrCmd_032
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0096:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_0E5 0x194, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01CE
    ScrCmd_028 0x4055, 10
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 86
    ScrCmd_01C 1, _00E6
    ScrCmd_05E 0xFF, _0210
    ScrCmd_016 _00EE

_00E6:
    ScrCmd_05E 0xFF, _0248
_00EE:
    ScrCmd_05E 129, _0314
    ScrCmd_05E 128, _02DC
    ScrCmd_05F
    ScrCmd_312 129
    ScrCmd_05E 128, _02BC
    ScrCmd_05F
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 74
    ScrCmd_01C 1, _012F
    ScrCmd_05E 0xFF, _0254
    ScrCmd_016 _013F

_012F:
    ScrCmd_05E 128, _02E8
    ScrCmd_05E 0xFF, _0264
_013F:
    ScrCmd_02C 7
    ScrCmd_05F
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 74
    ScrCmd_01C 1, _016D
    ScrCmd_05E 128, _02F8
    ScrCmd_05E 0xFF, _0274
    ScrCmd_016 _017D

_016D:
    ScrCmd_05E 128, _0300
    ScrCmd_05E 0xFF, _0280
_017D:
    ScrCmd_0CD 0
    ScrCmd_02C 8
    ScrCmd_04E 0x48E
    ScrCmd_04F
    ScrCmd_14E
    ScrCmd_05F
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_05E 128, _02C8
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 74
    ScrCmd_01C 1, _01BB
    ScrCmd_05E 0xFF, _0220
    ScrCmd_016 _01C3

_01BB:
    ScrCmd_05E 0xFF, _0234
_01C3:
    ScrCmd_05F
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_002

_01CE:
    ScrCmd_028 0x4055, 9
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

_01DA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_011 0x4055, 10
    ScrCmd_01C 4, _01F8
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01F8:
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0204:
    .short 65, 2
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0210:
    .short 15, 1
    .short 34, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0220:
    .short 14, 1
    .short 12, 7
    .short 15, 4
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0234:
    .short 14, 1
    .short 12, 6
    .short 15, 4
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0248:
    .short 63, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0254:
    .short 66, 2
    .short 65, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0264:
    .short 66, 2
    .short 65, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0274:
    .short 62, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0280:
    .short 62, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_028C:
    .short 65, 2
    .short 32, 1
    .short 65, 2
    .short 0xFE, 0x00

    .balign 4, 0
_029C:
    .short 15, 1
    .short 117, 1
    .short 12, 7
    .short 0xFE, 0x00

    .balign 4, 0
_02AC:
    .short 63, 3
    .short 14, 1
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02BC:
    .short 15, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02C8:
    .short 12, 6
    .short 15, 4
    .short 13, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02DC:
    .short 65, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02E8:
    .short 66, 2
    .short 63, 1
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02F8:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0300:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0308:
    .short 13, 4
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0314:
    .short 13, 7
    .short 118, 1
    .short 65, 1
    .short 0xFE, 0x00
