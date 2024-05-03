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
    End

_0022:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 2, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _00FF
    ScrCmd_1CD 9, 133, 0, 0, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0E5 0x13D, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0118
    ScrCmd_02C 1
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_04E 0x489
    ScrCmd_04F
    ScrCmd_15C 2
    ScrCmd_260 23
    SetTrainerFlag 0x135
    SetTrainerFlag 0x136
    SetTrainerFlag 0x137
    SetTrainerFlag 0x138
    ScrCmd_1CD 10, 133, 0x13D, 0, 0
    SetFlag 0x1A3
    ClearFlag 0x1A8
    SetVar 0x407D, 1
    SetVar 0x411A, 1
    ScrCmd_02C 3
    GoTo _00B7
    End

_00B7:
    SetVar 0x8004, 0x183
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _00F5
    ScrCmd_014 0x7FC
    SetFlag 157
    ScrCmd_0D1 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F5:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_00FF:
    CheckFlag 157
    GoToIf 0, _00B7
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0118:
    ScrCmd_0EB
    ScrCmd_061
    End

_011E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 2, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0144
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0144:
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0152:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_15B 2, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _017C
    ScrCmd_0CE 0
    ScrCmd_0CE 1
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_017C:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_0CE 2
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0190:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01A1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01B2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
