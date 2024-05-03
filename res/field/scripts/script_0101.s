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
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0056
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0066
    CompareVarToValue 0x800C, 2
    GoToIf 1, _0076
    CompareVarToValue 0x800C, 3
    GoToIf 1, _0086
    End

_0056:
    ScrCmd_05E 0, _018C
    ScrCmd_05F
    GoTo _0096

_0066:
    ScrCmd_05E 0, _01A0
    ScrCmd_05F
    GoTo _0096

_0076:
    ScrCmd_05E 0, _01B4
    ScrCmd_05F
    GoTo _0096

_0086:
    ScrCmd_05E 0, _01C8
    ScrCmd_05F
    GoTo _0096

_0096:
    ScrCmd_15B 4, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0173
    ScrCmd_1CD 9, 100, 0, 0, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0E5 0x13E, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01DC
    ScrCmd_02C 1
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_04E 0x489
    ScrCmd_04F
    ScrCmd_15C 4
    ScrCmd_260 23
    SetTrainerFlag 0x10A
    SetTrainerFlag 0x118
    SetTrainerFlag 0x11C
    SetTrainerFlag 0x145
    SetTrainerFlag 0x14A
    SetTrainerFlag 0x154
    SetTrainerFlag 0x157
    SetTrainerFlag 0x165
    ScrCmd_1CD 10, 100, 0x13E, 0, 0
    SetVar 0x407B, 1
    SetFlag 0x206
    ClearFlag 0x207
    ScrCmd_02C 3
    GoTo _012B

_012B:
    SetVar 0x8004, 0x188
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0169
    ScrCmd_014 0x7FC
    SetFlag 125
    ScrCmd_0D1 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0169:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_0173:
    CheckFlag 125
    GoToIf 0, _012B
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_018C:
    MoveAction_002 4
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    EndMovement

    .balign 4, 0
_01A0:
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    MoveAction_000 4
    EndMovement

    .balign 4, 0
_01B4:
    MoveAction_000 4
    MoveAction_002 4
    MoveAction_001 4
    MoveAction_003 4
    EndMovement

    .balign 4, 0
_01C8:
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    EndMovement

_01DC:
    ScrCmd_0EB
    ScrCmd_061
    End

    .byte 0
    .byte 0
