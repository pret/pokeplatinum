    .include "macros/scrcmd.inc"

    .data

    .long _0014-.-4
    .long _012B-.-4
    .long _0169-.-4
    .long _0173-.-4
    .long _01DC-.-4

_0014:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0056
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0066
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0076
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0086
    ScrCmd_002

_0056:
    ScrCmd_05E 0, _018C
    ScrCmd_05F
    ScrCmd_016 _0096

_0066:
    ScrCmd_05E 0, _01A0
    ScrCmd_05F
    ScrCmd_016 _0096

_0076:
    ScrCmd_05E 0, _01B4
    ScrCmd_05F
    ScrCmd_016 _0096

_0086:
    ScrCmd_05E 0, _01C8
    ScrCmd_05F
    ScrCmd_016 _0096

_0096:
    ScrCmd_15B 4, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0173
    ScrCmd_1CD 9, 100, 0, 0, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0E5 0x13E, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01DC
    ScrCmd_02C 1
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_04E 0x489
    ScrCmd_04F
    ScrCmd_15C 4
    ScrCmd_260 23
    ScrCmd_023 0x10A
    ScrCmd_023 0x118
    ScrCmd_023 0x11C
    ScrCmd_023 0x145
    ScrCmd_023 0x14A
    ScrCmd_023 0x154
    ScrCmd_023 0x157
    ScrCmd_023 0x165
    ScrCmd_1CD 10, 100, 0x13E, 0, 0
    ScrCmd_028 0x407B, 1
    ScrCmd_01E 0x206
    ScrCmd_01F 0x207
    ScrCmd_02C 3
    ScrCmd_016 _012B

_012B:
    ScrCmd_028 0x8004, 0x188
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0169
    ScrCmd_014 0x7FC
    ScrCmd_01E 125
    ScrCmd_0D1 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0169:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0173:
    ScrCmd_020 125
    ScrCmd_01C 0, _012B
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_018C:
    .short 2, 4
    .short 0, 4
    .short 3, 4
    .short 1, 4
    .short 0xFE, 0x00

    .balign 4, 0
_01A0:
    .short 3, 4
    .short 1, 4
    .short 2, 4
    .short 0, 4
    .short 0xFE, 0x00

    .balign 4, 0
_01B4:
    .short 0, 4
    .short 2, 4
    .short 1, 4
    .short 3, 4
    .short 0xFE, 0x00

    .balign 4, 0
_01C8:
    .short 0, 4
    .short 3, 4
    .short 1, 4
    .short 2, 4
    .short 0xFE, 0x00

_01DC:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
