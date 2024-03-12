    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0068-.-4
    .long _013A-.-4
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 202
    ScrCmd_01C 1, _0053
    ScrCmd_02C 0
    ScrCmd_028 0x8004, 0x1A3
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _005E
    ScrCmd_014 0x7FC
    ScrCmd_01E 202
    ScrCmd_016 _0053

_0053:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_005E:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0068:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x161
    ScrCmd_01C 1, _012F
    ScrCmd_01E 0x161
    ScrCmd_02C 2
    ScrCmd_1B7 0x800C, 10
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0103
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0103
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0103
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0103
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _010E
    ScrCmd_011 0x800C, 5
    ScrCmd_01C 1, _010E
    ScrCmd_011 0x800C, 6
    ScrCmd_01C 1, _010E
    ScrCmd_011 0x800C, 7
    ScrCmd_01C 1, _0119
    ScrCmd_011 0x800C, 8
    ScrCmd_01C 1, _0119
    ScrCmd_016 _0124

_0103:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_010E:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0119:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0124:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_012F:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_013A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
