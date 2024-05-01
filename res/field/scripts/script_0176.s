    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0025-.-4
    .long _0114-.-4
    .long _0148-.-4
    .short 0xFD13

_0012:
    ScrCmd_020 235
    ScrCmd_01C 1, _001F
    End

_001F:
    ScrCmd_01E 0x1F3
    End

_0025:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 6, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00F8
    ScrCmd_1CD 9, 167, 0, 0, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0E5 0x13F, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _010E
    ScrCmd_02C 1
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_04E 0x489
    ScrCmd_04F
    ScrCmd_15C 6
    ScrCmd_260 23
    ScrCmd_023 0x10C
    ScrCmd_023 0x10D
    ScrCmd_023 0x33B
    ScrCmd_023 0x10E
    ScrCmd_023 0x10F
    ScrCmd_023 0x33C
    ScrCmd_1CD 10, 167, 0x13F, 0, 0
    ScrCmd_01E 0x1BF
    ScrCmd_02C 3
    ScrCmd_016 _00B0

_00B0:
    ScrCmd_028 0x8004, 0x18F
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00EE
    ScrCmd_014 0x7FC
    ScrCmd_01E 158
    ScrCmd_0D1 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00EE:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_00F8:
    ScrCmd_020 158
    ScrCmd_01C 0, _00B0
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_010E:
    ScrCmd_0EB
    ScrCmd_061
    End

_0114:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 6, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _013A
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_013A:
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0148:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_15B 6, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0172
    ScrCmd_0CE 0
    ScrCmd_0CE 1
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0172:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_0CE 2
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
