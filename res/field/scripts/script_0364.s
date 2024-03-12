    .include "macros/scrcmd.inc"

    .data

    .long _0032-.-4
    .long _0308-.-4
    .long _03AD-.-4
    .long _03C4-.-4
    .long _031B-.-4
    .long _032C-.-4
    .long _033D-.-4
    .long _0350-.-4
    .long _0361-.-4
    .long _0374-.-4
    .long _0387-.-4
    .long _039A-.-4
    .short 0xFD13

_0032:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 23
    ScrCmd_01D 1, _01A8
    ScrCmd_011 0x8004, 24
    ScrCmd_01D 1, _01BA
    ScrCmd_011 0x8004, 25
    ScrCmd_01D 1, _01CC
    ScrCmd_011 0x8004, 26
    ScrCmd_01D 1, _01DE
    ScrCmd_01F 0x276
    ScrCmd_064 11
    ScrCmd_062 11
    ScrCmd_05E 11, _02C8
    ScrCmd_05E 0xFF, _0290
    ScrCmd_05F
    ScrCmd_049 0x602
    ScrCmd_0CD 1
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_003 30, 0x800C
    ScrCmd_05E 11, _02D0
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 11, _02E0
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_05E 11, _02E8
    ScrCmd_05F
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 23
    ScrCmd_01D 1, _01F0
    ScrCmd_011 0x8004, 24
    ScrCmd_01D 1, _0204
    ScrCmd_011 0x8004, 25
    ScrCmd_01D 1, _0218
    ScrCmd_011 0x8004, 26
    ScrCmd_01D 1, _022C
    ScrCmd_065 11
    ScrCmd_01F 0x277
    ScrCmd_064 12
    ScrCmd_062 12
    ScrCmd_05E 12, _02C8
    ScrCmd_05E 0xFF, _0290
    ScrCmd_05F
    ScrCmd_049 0x602
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_003 30, 0x800C
    ScrCmd_011 0x409E, 1
    ScrCmd_01D 0, _019E
    ScrCmd_011 0x409E, 1
    ScrCmd_01D 4, _01A3
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 23
    ScrCmd_01D 1, _0240
    ScrCmd_011 0x8004, 24
    ScrCmd_01D 1, _0254
    ScrCmd_011 0x8004, 25
    ScrCmd_01D 1, _0268
    ScrCmd_011 0x8004, 26
    ScrCmd_01D 1, _027C
    ScrCmd_065 12
    ScrCmd_028 0x410E, 1
    ScrCmd_061
    ScrCmd_002

_019E:
    ScrCmd_02C 5
    ScrCmd_01B

_01A3:
    ScrCmd_02C 6
    ScrCmd_01B

_01A8:
    ScrCmd_186 11, 23, 41
    ScrCmd_186 12, 23, 40
    ScrCmd_01B

_01BA:
    ScrCmd_186 11, 24, 41
    ScrCmd_186 12, 24, 40
    ScrCmd_01B

_01CC:
    ScrCmd_186 11, 25, 41
    ScrCmd_186 12, 25, 40
    ScrCmd_01B

_01DE:
    ScrCmd_186 11, 26, 41
    ScrCmd_186 12, 26, 40
    ScrCmd_01B

_01F0:
    ScrCmd_05E 11, _02F0
    ScrCmd_05E 0xFF, _02A8
    ScrCmd_05F
    ScrCmd_01B

_0204:
    ScrCmd_05E 11, _02F0
    ScrCmd_05E 0xFF, _02A8
    ScrCmd_05F
    ScrCmd_01B

_0218:
    ScrCmd_05E 11, _02FC
    ScrCmd_05E 0xFF, _02B8
    ScrCmd_05F
    ScrCmd_01B

_022C:
    ScrCmd_05E 11, _02FC
    ScrCmd_05E 0xFF, _02B8
    ScrCmd_05F
    ScrCmd_01B

_0240:
    ScrCmd_05E 12, _02F0
    ScrCmd_05E 0xFF, _02A8
    ScrCmd_05F
    ScrCmd_01B

_0254:
    ScrCmd_05E 12, _02F0
    ScrCmd_05E 0xFF, _02A8
    ScrCmd_05F
    ScrCmd_01B

_0268:
    ScrCmd_05E 12, _02FC
    ScrCmd_05E 0xFF, _02B8
    ScrCmd_05F
    ScrCmd_01B

_027C:
    ScrCmd_05E 12, _02FC
    ScrCmd_05E 0xFF, _02B8
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_0290:
    .short 62, 7
    .short 37, 1
    .short 71, 1
    .short 16, 1
    .short 72, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02A8:
    .short 63, 1
    .short 35, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02B8:
    .short 63, 1
    .short 34, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02C8:
    .short 16, 8
    .short 0xFE, 0x00

    .balign 4, 0
_02D0:
    .short 34, 1
    .short 35, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02E0:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02E8:
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02F0:
    .short 19, 1
    .short 16, 8
    .short 0xFE, 0x00

    .balign 4, 0
_02FC:
    .short 18, 1
    .short 16, 8
    .short 0xFE, 0x00

_0308:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_031B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_032C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_033D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0350:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0361:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0374:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0387:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_039A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_03AD:
    ScrCmd_036 7, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_03C4:
    ScrCmd_036 8, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

    .byte 0
