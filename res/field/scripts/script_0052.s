    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _011F-.-4
    .long _0153-.-4
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0103
    ScrCmd_1CD 9, 47, 0, 0, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0E5 246, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0119
    ScrCmd_02C 1
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_04E 0x489
    ScrCmd_04F
    ScrCmd_023 244
    ScrCmd_023 245
    ScrCmd_15C 0
    ScrCmd_260 23
    ScrCmd_023 244
    ScrCmd_023 245
    ScrCmd_01E 0x23F
    ScrCmd_028 0x40F0, 1
    ScrCmd_028 0x4076, 1
    ScrCmd_028 0x4079, 2
    ScrCmd_1CD 10, 47, 246, 0, 0
    ScrCmd_028 0x4077, 3
    ScrCmd_01F 0x17A
    ScrCmd_01F 0x19D
    ScrCmd_01F 0x19C
    ScrCmd_01E 0x198
    ScrCmd_02C 3
    ScrCmd_016 _00BB
    ScrCmd_002

_00BB:
    ScrCmd_028 0x8004, 0x193
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00F9
    ScrCmd_014 0x7FC
    ScrCmd_01E 117
    ScrCmd_0D1 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00F9:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0103:
    ScrCmd_020 117
    ScrCmd_01C 0, _00BB
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0119:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

_011F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0145
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0145:
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0153:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_15B 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _017D
    ScrCmd_0CE 0
    ScrCmd_0CE 1
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_017D:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_0CE 2
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
