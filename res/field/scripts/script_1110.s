    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _02E8-.-4
    .long _02FB-.-4
    .long _030E-.-4
    .short 0xFD13

_0012:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0xAA5
    ScrCmd_01C 1, _00E2
    ScrCmd_011 0x400A, 1
    ScrCmd_01C 1, _00E2
    ScrCmd_247 0x4000
    ScrCmd_0CD 0
    ScrCmd_0D6 1, 0x4000
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0058
    ScrCmd_016 _0063

_0058:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0063:
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_01A _0160
    ScrCmd_016 _0074

_0074:
    ScrCmd_02C 3
    ScrCmd_1B7 0x800C, 4
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00AA
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00B3
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _00BC
    ScrCmd_016 _00C5

_00AA:
    ScrCmd_02C 4
    ScrCmd_016 _00CE

_00B3:
    ScrCmd_02C 5
    ScrCmd_016 _00CE

_00BC:
    ScrCmd_02C 6
    ScrCmd_016 _00CE

_00C5:
    ScrCmd_02C 7
    ScrCmd_016 _00CE

_00CE:
    ScrCmd_034
    ScrCmd_049 0x662
    ScrCmd_01A _00ED
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00E2:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00ED:
    ScrCmd_1B7 0x800C, 100
    ScrCmd_011 0x800C, 5
    ScrCmd_01C 0, _0113
    ScrCmd_011 0x800C, 30
    ScrCmd_01C 0, _0124
    ScrCmd_016 _0135

_0113:
    ScrCmd_1BA 30, 0x4000
    ScrCmd_01A _0146
    ScrCmd_02C 8
    ScrCmd_01B

_0124:
    ScrCmd_1BA 10, 0x4000
    ScrCmd_01A _0146
    ScrCmd_02C 10
    ScrCmd_01B

_0135:
    ScrCmd_1BA 5, 0x4000
    ScrCmd_01A _0146
    ScrCmd_02C 11
    ScrCmd_01B

_0146:
    ScrCmd_04B 0x662
    ScrCmd_01E 0xAA5
    ScrCmd_028 0x400A, 1
    ScrCmd_05E 1, _02DC
    ScrCmd_05F
    ScrCmd_01B

_0160:
    ScrCmd_069 0x8005, 0x8006
    ScrCmd_011 0x8005, 11
    ScrCmd_01C 1, _0193
    ScrCmd_011 0x8005, 13
    ScrCmd_01C 1, _01AB
    ScrCmd_011 0x8006, 4
    ScrCmd_01C 1, _01C3
    ScrCmd_016 _01DB

_0193:
    ScrCmd_05E 0xFF, _026C
    ScrCmd_05E 2, _0210
    ScrCmd_05F
    ScrCmd_016 _01F3

_01AB:
    ScrCmd_05E 0xFF, _0280
    ScrCmd_05E 2, _0224
    ScrCmd_05F
    ScrCmd_016 _01F3

_01C3:
    ScrCmd_05E 0xFF, _0294
    ScrCmd_05E 2, _023C
    ScrCmd_05F
    ScrCmd_016 _01F3

_01DB:
    ScrCmd_05E 0xFF, _02AC
    ScrCmd_05E 2, _0250
    ScrCmd_05F
    ScrCmd_016 _01F3

_01F3:
    ScrCmd_05E 0, _02C4
    ScrCmd_05E 1, _02CC
    ScrCmd_05E 3, _02D4
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_0210:
    .short 15, 2
    .short 13, 2
    .short 15, 3
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0224:
    .short 13, 1
    .short 15, 1
    .short 13, 1
    .short 15, 4
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_023C:
    .short 15, 2
    .short 13, 2
    .short 15, 3
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0250:
    .short 15, 1
    .short 13, 1
    .short 15, 2
    .short 13, 1
    .short 15, 2
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_026C:
    .short 15, 3
    .short 13, 2
    .short 15, 2
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0280:
    .short 63, 2
    .short 13, 2
    .short 15, 3
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0294:
    .short 13, 1
    .short 15, 3
    .short 13, 2
    .short 15, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02AC:
    .short 63, 2
    .short 15, 3
    .short 13, 1
    .short 15, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02C4:
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02CC:
    .short 15, 3
    .short 0xFE, 0x00

    .balign 4, 0
_02D4:
    .short 12, 4
    .short 0xFE, 0x00

    .balign 4, 0
_02DC:
    .short 12, 1
    .short 33, 1
    .short 0xFE, 0x00

_02E8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_02FB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_030E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
