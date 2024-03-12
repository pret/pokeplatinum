    .include "macros/scrcmd.inc"

    .data

    .long _003B-.-4
    .long _00D8-.-4
    .long _0184-.-4
    .long _0016-.-4
    .long _0197-.-4
    .short 0xFD13

_0016:
    ScrCmd_011 0x411F, 2
    ScrCmd_01D 0, _0025
    ScrCmd_002

_0025:
    ScrCmd_186 4, 8, 10
    ScrCmd_188 4, 14
    ScrCmd_189 4, 0
    ScrCmd_01B

_003B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_07E 0x1CF, 1, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0063
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0063:
    ScrCmd_02C 8
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0086
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00C2
    ScrCmd_002

_0086:
    ScrCmd_01E 0x10E
    ScrCmd_07C 0x1CF, 1, 0x800C
    ScrCmd_0CD 0
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_04B 0x5DC
    ScrCmd_049 0x608
    ScrCmd_05E 2, _00C8
    ScrCmd_05E 3, _00D0
    ScrCmd_05F
    ScrCmd_065 2
    ScrCmd_065 3
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00C2:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_00C8:
    .short 18, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00D0:
    .short 19, 1
    .short 0xFE, 0x00

_00D8:
    ScrCmd_060
    ScrCmd_05E 4, _012C
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 0xFF, _0168
    ScrCmd_05E 4, _0134
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 0xFF, _0174
    ScrCmd_05E 4, _015C
    ScrCmd_05F
    ScrCmd_028 0x407C, 1
    ScrCmd_028 0x411F, 2
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_012C:
    .short 12, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0134:
    .short 13, 2
    .short 34, 1
    .short 63, 2
    .short 35, 1
    .short 63, 2
    .short 15, 5
    .short 32, 1
    .short 75, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_015C:
    .short 14, 5
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0168:
    .short 63, 9
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0174:
    .short 63, 4
    .short 61, 1
    .short 32, 1
    .short 0xFE, 0x00

_0184:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0197:
    ScrCmd_060
    ScrCmd_186 4, 8, 11
    ScrCmd_188 4, 14
    ScrCmd_189 4, 0
    ScrCmd_01F 0x20D
    ScrCmd_064 4
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 8
    ScrCmd_01D 1, _025A
    ScrCmd_011 0x8004, 9
    ScrCmd_01D 1, _026E
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_05E 4, _0308
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_01E 0x10E
    ScrCmd_04B 0x5DC
    ScrCmd_049 0x608
    ScrCmd_05E 2, _00C8
    ScrCmd_05E 3, _00D0
    ScrCmd_05F
    ScrCmd_065 2
    ScrCmd_065 3
    ScrCmd_011 0x8004, 8
    ScrCmd_01D 1, _0282
    ScrCmd_011 0x8004, 9
    ScrCmd_01D 1, _028E
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_011 0x8004, 8
    ScrCmd_01D 1, _029A
    ScrCmd_011 0x8004, 9
    ScrCmd_01D 1, _02AE
    ScrCmd_065 4
    ScrCmd_01E 0x28A
    ScrCmd_028 0x411F, 4
    ScrCmd_061
    ScrCmd_002

_025A:
    ScrCmd_05E 4, _02E8
    ScrCmd_05E 0xFF, _02C4
    ScrCmd_05F
    ScrCmd_01B

_026E:
    ScrCmd_05E 4, _02FC
    ScrCmd_05E 0xFF, _02D0
    ScrCmd_05F
    ScrCmd_01B

_0282:
    ScrCmd_05E 4, _0318
    ScrCmd_05F
    ScrCmd_01B

_028E:
    ScrCmd_05E 4, _0310
    ScrCmd_05F
    ScrCmd_01B

_029A:
    ScrCmd_05E 4, _0320
    ScrCmd_05E 0xFF, _02DC
    ScrCmd_05F
    ScrCmd_01B

_02AE:
    ScrCmd_05E 4, _0338
    ScrCmd_05E 0xFF, _02DC
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_02C4:
    .short 63, 4
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02D0:
    .short 63, 3
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02DC:
    .short 63, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02E8:
    .short 12, 2
    .short 15, 1
    .short 12, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02FC:
    .short 12, 3
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0308:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0310:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0318:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0320:
    .short 12, 5
    .short 38, 1
    .short 39, 1
    .short 63, 2
    .short 19, 6
    .short 0xFE, 0x00

    .balign 4, 0
_0338:
    .short 12, 5
    .short 38, 1
    .short 39, 1
    .short 63, 2
    .short 19, 7
    .short 0xFE, 0x00
