    .include "macros/scrcmd.inc"

    .data

    .long _0038-.-4
    .long _007C-.-4
    .long _0154-.-4
    .long _019D-.-4
    .long _01E6-.-4
    .long _022F-.-4
    .long _0278-.-4
    .long _0358-.-4
    .long _036B-.-4
    .long _037E-.-4
    .long _0391-.-4
    .long _0032-.-4
    .short 0xFD13

_0032:
    ScrCmd_01E 0x9E5
    ScrCmd_002

_0038:
    ScrCmd_060
    ScrCmd_028 0x4113, 1
    ScrCmd_01E 0x290
    ScrCmd_01E 0x291
    ScrCmd_01A _02C1
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_01A _02F5
    ScrCmd_02C 1
    ScrCmd_0CD 0
    ScrCmd_04E 0x486
    ScrCmd_02C 2
    ScrCmd_04F
    ScrCmd_02C 3
    ScrCmd_01A _0095
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_007C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_01A _0095
    ScrCmd_016 _0103
    ScrCmd_002

_0095:
    ScrCmd_041 31, 5, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 11, 0
    ScrCmd_042 16, 1
    ScrCmd_042 12, 2
    ScrCmd_042 13, 3
    ScrCmd_042 14, 4
    ScrCmd_042 15, 5
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _010E
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0146
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _011C
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _012A
    ScrCmd_011 0x8008, 4
    ScrCmd_01C 1, _0138
    ScrCmd_01B

_0103:
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_010E:
    ScrCmd_02C 5
    ScrCmd_02C 4
    ScrCmd_016 _0095
    ScrCmd_002

_011C:
    ScrCmd_02C 7
    ScrCmd_02C 4
    ScrCmd_016 _0095
    ScrCmd_002

_012A:
    ScrCmd_02C 8
    ScrCmd_02C 4
    ScrCmd_016 _0095
    ScrCmd_002

_0138:
    ScrCmd_02C 9
    ScrCmd_02C 4
    ScrCmd_016 _0095
    ScrCmd_002

_0146:
    ScrCmd_02C 6
    ScrCmd_02C 4
    ScrCmd_016 _0095
    ScrCmd_002

_0154:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 17
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _017F
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _018A
    ScrCmd_002

_017F:
    ScrCmd_02C 18
    ScrCmd_016 _018A
    ScrCmd_002

_018A:
    ScrCmd_02C 19
    ScrCmd_016 _0195
    ScrCmd_002

_0195:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_019D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 20
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01C8
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01D3
    ScrCmd_002

_01C8:
    ScrCmd_02C 21
    ScrCmd_016 _01D3
    ScrCmd_002

_01D3:
    ScrCmd_02C 22
    ScrCmd_016 _01DE
    ScrCmd_002

_01DE:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01E6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 23
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0211
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _021C
    ScrCmd_002

_0211:
    ScrCmd_02C 24
    ScrCmd_016 _021C
    ScrCmd_002

_021C:
    ScrCmd_02C 25
    ScrCmd_016 _0227
    ScrCmd_002

_0227:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_022F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 26
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _025A
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0265
    ScrCmd_002

_025A:
    ScrCmd_02C 27
    ScrCmd_016 _0265
    ScrCmd_002

_0265:
    ScrCmd_02C 28
    ScrCmd_016 _0270
    ScrCmd_002

_0270:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0278:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 29
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02A3
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02AE
    ScrCmd_002

_02A3:
    ScrCmd_02C 30
    ScrCmd_016 _02AE
    ScrCmd_002

_02AE:
    ScrCmd_02C 31
    ScrCmd_016 _02B9
    ScrCmd_002

_02B9:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_02C1:
    ScrCmd_05E 3, _0334
    ScrCmd_05E 4, _0334
    ScrCmd_05E 5, _0334
    ScrCmd_05E 6, _0334
    ScrCmd_05E 7, _0334
    ScrCmd_05E 8, _0334
    ScrCmd_05F
    ScrCmd_01B

_02F5:
    ScrCmd_05E 3, _033C
    ScrCmd_05E 4, _033C
    ScrCmd_05E 5, _033C
    ScrCmd_05E 6, _0344
    ScrCmd_05E 7, _0344
    ScrCmd_05E 8, _0344
    ScrCmd_05E 0xFF, _034C
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_0334:
    .short 1, 1
    .short 0xFE, 0x00

    .balign 4, 0
_033C:
    .short 3, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0344:
    .short 2, 1
    .short 0xFE, 0x00

    .balign 4, 0
_034C:
    .short 12, 3
    .short 34, 1
    .short 0xFE, 0x00

_0358:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 32
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_036B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 33
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_037E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0391:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 35
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002
