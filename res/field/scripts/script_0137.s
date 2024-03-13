    .include "macros/scrcmd.inc"

    .data

    .long _001E-.-4
    .long _0022-.-4
    .long _011E-.-4
    .long _0152-.-4
    .long _0190-.-4
    .long _01A1-.-4
    .long _01B2-.-4
    .short 0xFD13

_001E:
    ScrCmd_174
    ScrCmd_002

_0022:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 2, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00FF
    ScrCmd_1CD 9, 133, 0, 0, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0E5 0x13D, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0118
    ScrCmd_02C 1
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_04E 0x489
    ScrCmd_04F
    ScrCmd_15C 2
    ScrCmd_260 23
    ScrCmd_023 0x135
    ScrCmd_023 0x136
    ScrCmd_023 0x137
    ScrCmd_023 0x138
    ScrCmd_1CD 10, 133, 0x13D, 0, 0
    ScrCmd_01E 0x1A3
    ScrCmd_01F 0x1A8
    ScrCmd_028 0x407D, 1
    ScrCmd_028 0x411A, 1
    ScrCmd_02C 3
    ScrCmd_016 _00B7
    ScrCmd_002

_00B7:
    ScrCmd_028 0x8004, 0x183
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00F5
    ScrCmd_014 0x7FC
    ScrCmd_01E 157
    ScrCmd_0D1 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00F5:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00FF:
    ScrCmd_020 157
    ScrCmd_01C 0, _00B7
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0118:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

_011E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 2, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0144
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0144:
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0152:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_15B 2, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _017C
    ScrCmd_0CE 0
    ScrCmd_0CE 1
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_017C:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_0CE 2
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0190:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01A1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01B2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
