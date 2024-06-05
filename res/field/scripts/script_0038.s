    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0016-.-4
    .long _0126-.-4
    .long _015A-.-4
    .short 0xFD13

_0012:
    ScrCmd_173
    End

_0016:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 5, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _0107
    ScrCmd_1CD 9, 35, 0, 0, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0E5 250, 0
    ScrCmd_0EC 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0120
    ScrCmd_02C 1
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_04E 0x489
    ScrCmd_04F
    ScrCmd_15C 5
    ScrCmd_260 23
    SetTrainerFlag 232
    SetTrainerFlag 0x100
    SetTrainerFlag 0x101
    SetTrainerFlag 0x117
    SetTrainerFlag 0x11B
    SetTrainerFlag 0x13A
    SetTrainerFlag 0x16F
    ScrCmd_1CD 10, 35, 250, 0, 0
    ClearFlag 0x1B2
    ClearFlag 0x2CC
    ClearFlag 0x1B8
    ClearFlag 0x1B6
    ClearFlag 0x1B7
    SetVar 0x4078, 2
    SetFlag 0x198
    ScrCmd_02C 3
    GoTo _00BF

_00BF:
    SetVar 0x8004, 0x1A2
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _00FD
    ScrCmd_014 0x7FC
    SetFlag 146
    ScrCmd_0D1 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00FD:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_0107:
    CheckFlag 146
    GoToIf 0, _00BF
    ScrCmd_0CE 1
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0120:
    ScrCmd_0EB
    ScrCmd_061
    End

_0126:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 5, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _014C
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_014C:
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_015A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_15B 5, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _0184
    ScrCmd_0CE 0
    ScrCmd_0CE 1
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0184:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_0CE 2
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
