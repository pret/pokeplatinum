    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _001D-.-4
    .long _0022-.-4
    .long _0027-.-4
    .short 0xFD13

_0012:
    ScrCmd_028 0x4000, 0
    ScrCmd_175 2
    End

_001D:
    ScrCmd_176 0
    End

_0022:
    ScrCmd_176 2
    End

_0027:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 7, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0104
    ScrCmd_1CD 9, 156, 0, 0, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0E5 0x140, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _011A
    ScrCmd_02C 1
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_04E 0x489
    ScrCmd_04F
    ScrCmd_15C 7
    ScrCmd_260 23
    ScrCmd_023 0x119
    ScrCmd_023 0x11D
    ScrCmd_023 0x12D
    ScrCmd_023 0x12E
    ScrCmd_023 0x12F
    ScrCmd_023 0x14B
    ScrCmd_023 0x155
    ScrCmd_023 0x158
    ScrCmd_028 0x407E, 2
    ScrCmd_1CD 10, 156, 246, 0, 0
    ScrCmd_02C 3
    GoTo _00BC

_00BC:
    ScrCmd_028 0x8004, 0x180
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00FA
    ScrCmd_014 0x7FC
    SetFlag 182
    ScrCmd_0D1 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00FA:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_0104:
    CheckFlag 182
    ScrCmd_01C 0, _00BC
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_011A:
    ScrCmd_0EB
    ScrCmd_061
    End
