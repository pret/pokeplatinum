    .include "macros/scrcmd.inc"

    .data

    .long _003B-.-4
    .long _0056-.-4
    .long _0012-.-4
    .long _0056-.-4
    .short 0xFD13

_0012:
    ScrCmd_28B 2, 0x4000
    CompareVarToValue 0x4000, 0
    GoToIf 1, _0035
    CheckFlag 0x11E
    GoToIf 1, _0035
    ClearFlag 0x24E
    End

_0035:
    SetFlag 0x24E
    End

_003B:
    CheckFlag 142
    GoToIf 1, _0048
    End

_0048:
    SetFlag 0x24E
    ScrCmd_065 0
    ClearFlag 142
    End

_0056:
    ScrCmd_060
    SetVar 0x4118, 0
    Call _00E9
    Call _0104
    ScrCmd_04C 0x1ED, 0
    ScrCmd_04D
    Call _016F
    ScrCmd_04C 0x1ED, 0
    ScrCmd_02C 0
    ScrCmd_034
    SetFlag 142
    ScrCmd_2BD 0x1ED, 80
    ClearFlag 142
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _00DF
    ScrCmd_2BC 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _00D0
    CompareVarToValue 0x4056, 0
    CallIf 1, _00C8
    SetFlag 0x11E
    ScrCmd_061
    End

_00C8:
    SetVar 0x4056, 1
    Return

_00D0:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ClearFlag 0x24E
    ScrCmd_061
    End

_00DF:
    ClearFlag 0x24E
    ScrCmd_0EB
    ScrCmd_061
    End

_00E9:
    ScrCmd_05E 0xFF, _00F8
    ScrCmd_05F
    Return

    .balign 4, 0
_00F8:
    MoveAction_04B
    MoveAction_041
    EndMovement

_0104:
    ScrCmd_069 0x8004, 0x8005
    SetVar 0x8008, 0x8004
    CompareVarToValue 0x8008, 30
    GoToIf 1, _0139
    CompareVarToValue 0x8008, 31
    GoToIf 1, _014B
    CompareVarToValue 0x8008, 32
    GoToIf 1, _015D
_0137:
    Return

_0139:
    ScrCmd_05E 0xFF, _017C
    ScrCmd_05F
    GoTo _0137
    End

_014B:
    ScrCmd_05E 0xFF, _018C
    ScrCmd_05F
    GoTo _0137
    End

_015D:
    ScrCmd_05E 0xFF, _0194
    ScrCmd_05F
    GoTo _0137
    End

_016F:
    ScrCmd_05E 0xFF, _01A4
    ScrCmd_05F
    Return

    .balign 4, 0
_017C:
    MoveAction_00C 4
    MoveAction_00F
    MoveAction_000
    EndMovement

    .balign 4, 0
_018C:
    MoveAction_00C 4
    EndMovement

    .balign 4, 0
_0194:
    MoveAction_00C 4
    MoveAction_00E
    MoveAction_000
    EndMovement

    .balign 4, 0
_01A4:
    MoveAction_00C 2
    EndMovement
