    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _012C-.-4
    .long _01C4-.-4
    .long _01D5-.-4
    .short 0xFD13

_0012:
    ScrCmd_060
    ScrCmd_05E 0, _00E8
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 0, _00F0
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 8
    ScrCmd_01C 1, _0054
    ScrCmd_011 0x8004, 9
    ScrCmd_01C 1, _0064
    ScrCmd_002

_0054:
    ScrCmd_05E 0, _00F8
    ScrCmd_05F
    ScrCmd_016 _0074

_0064:
    ScrCmd_05E 0, _0100
    ScrCmd_05F
    ScrCmd_016 _0074

_0074:
    ScrCmd_0E5 0x193, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00E1
    ScrCmd_02C 2
    ScrCmd_028 0x8004, 1
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _00DB
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_05E 0, _0110
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_05E 0, _0124
    ScrCmd_05F
    ScrCmd_065 0
    ScrCmd_028 0x40D6, 1
    ScrCmd_061
    ScrCmd_002

_00DB:
    ScrCmd_014 0x7FC
    ScrCmd_01B

_00E1:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_00E8:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00F0:
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00F8:
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0100:
    .short 13, 1
    .short 15, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0110:
    .short 12, 1
    .short 15, 4
    .short 12, 3
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0124:
    .short 15, 7
    .short 0xFE, 0x00

_012C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_07E 0x1B8, 1, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0154
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0154:
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0177
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01AB
    ScrCmd_002

_0177:
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_04B 0x5DC
    ScrCmd_049 0x608
    ScrCmd_05E 1, _01B4
    ScrCmd_05E 2, _01BC
    ScrCmd_05F
    ScrCmd_01E 0x226
    ScrCmd_065 1
    ScrCmd_065 2
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01AB:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_01B4:
    .short 18, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01BC:
    .short 19, 1
    .short 0xFE, 0x00

_01C4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01D5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 9
    ScrCmd_016 _01E6
    ScrCmd_002

_01E6:
    ScrCmd_02C 10
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_29D 0x10C, 0
    ScrCmd_29D 0x10D, 1
    ScrCmd_29D 0x10E, 2
    ScrCmd_29D 0x10F, 3
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0240
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _024B
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _0256
    ScrCmd_016 _0261
    ScrCmd_002

_0240:
    ScrCmd_02C 11
    ScrCmd_016 _01E6
    ScrCmd_002

_024B:
    ScrCmd_02C 12
    ScrCmd_016 _01E6
    ScrCmd_002

_0256:
    ScrCmd_02C 13
    ScrCmd_016 _01E6
    ScrCmd_002

_0261:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
