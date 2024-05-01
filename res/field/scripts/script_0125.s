    .include "macros/scrcmd.inc"

    .data

    .long _001E-.-4
    .long _0034-.-4
    .long _004A-.-4
    .long _0060-.-4
    .long _0076-.-4
    .long _0171-.-4
    .long _01A5-.-4
    .short 0xFD13

_001E:
    ScrCmd_028 0x4001, 0
    ScrCmd_028 0x4002, 1
    ScrCmd_028 0x4003, 0
    ScrCmd_16F
    End

_0034:
    ScrCmd_170
    ScrCmd_028 0x4001, 1
    ScrCmd_028 0x4002, 0
    ScrCmd_028 0x4003, 0
    End

_004A:
    ScrCmd_170
    ScrCmd_028 0x4001, 0
    ScrCmd_028 0x4002, 1
    ScrCmd_028 0x4003, 0
    End

_0060:
    ScrCmd_170
    ScrCmd_028 0x4001, 0
    ScrCmd_028 0x4002, 0
    ScrCmd_028 0x4003, 1
    End

_0076:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 3, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0155
    ScrCmd_1CD 9, 122, 0, 0, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0E5 0x13C, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _016B
    ScrCmd_02C 1
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_04E 0x489
    ScrCmd_04F
    ScrCmd_15C 3
    ScrCmd_260 23
    ScrCmd_023 0x125
    ScrCmd_023 0x153
    ScrCmd_023 0x191
    ScrCmd_023 0x1E3
    ScrCmd_023 0x1F1
    ScrCmd_023 0x1F2
    ScrCmd_028 0x407C, 3
    SetFlag 0x20C
    SetFlag 0x156
    ScrCmd_1CD 10, 122, 0x13C, 0, 0
    ScrCmd_02C 3
    GoTo _010D
    End

_010D:
    ScrCmd_028 0x8004, 0x17E
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _014B
    ScrCmd_014 0x7FC
    SetFlag 156
    ScrCmd_0D1 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_014B:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_0155:
    CheckFlag 156
    GoToIf 0, _010D
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_016B:
    ScrCmd_0EB
    ScrCmd_061
    End

_0171:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 3, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0197
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0197:
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01A5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_15B 3, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _01CF
    ScrCmd_0CE 0
    ScrCmd_0CE 1
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01CF:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_0CE 2
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
