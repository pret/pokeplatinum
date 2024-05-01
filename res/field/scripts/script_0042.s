    .include "macros/scrcmd.inc"

    .data

    .long _0016-.-4
    .long _003F-.-4
    .long _0080-.-4
    .long _0091-.-4
    .long _00A2-.-4
    .short 0xFD13

_0016:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 168
    GoToIf 1, _0034
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0034:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_003F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckFlag 168
    GoToIf 1, _0068
    ScrCmd_02C 2
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_05E 1, _0078
    ScrCmd_05F
    ScrCmd_061
    End

_0068:
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0078:
    MoveAction_000
    EndMovement

_0080:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0091:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_1B7 0x8000, 5
    CompareVarToValue 0x8000, 0
    CallIf 1, _00FC
    CompareVarToValue 0x8000, 1
    CallIf 1, _0101
    CompareVarToValue 0x8000, 2
    CallIf 1, _0106
    CompareVarToValue 0x8000, 3
    CallIf 1, _010B
    CompareVarToValue 0x8000, 4
    CallIf 1, _0110
    GoTo _0115
    End

_00FC:
    ScrCmd_02C 9
    Return

_0101:
    ScrCmd_02C 10
    Return

_0106:
    ScrCmd_02C 11
    Return

_010B:
    ScrCmd_02C 12
    Return

_0110:
    ScrCmd_02C 13
    Return

_0115:
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_1BD 0x8000
    CompareVarToValue 0x8000, 0
    CallIf 1, _0155
    CompareVarToValue 0x8000, 2
    CallIf 1, _0169
    CompareVarToValue 0x8000, 3
    CallIf 1, _0175
    ScrCmd_049 0x603
    ScrCmd_065 2
    ScrCmd_04B 0x603
    ScrCmd_061
    End

_0155:
    ScrCmd_05E 2, _018C
    ScrCmd_05E 0xFF, _01B0
    ScrCmd_05F
    Return

_0169:
    ScrCmd_05E 2, _018C
    ScrCmd_05F
    Return

_0175:
    ScrCmd_05E 2, _019C
    ScrCmd_05E 0xFF, _01BC
    ScrCmd_05F
    Return

    .balign 4, 0
_018C:
    MoveAction_00E 5
    MoveAction_00D 6
    MoveAction_03E
    EndMovement

    .balign 4, 0
_019C:
    MoveAction_00D
    MoveAction_00E 5
    MoveAction_00D 5
    MoveAction_03E
    EndMovement

    .balign 4, 0
_01B0:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_01BC:
    MoveAction_03F 2
    MoveAction_03E
    MoveAction_022
    EndMovement
