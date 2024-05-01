    .include "macros/scrcmd.inc"

    .data

    .long _0022-.-4
    .long _0026-.-4
    .long _0051-.-4
    .long _0080-.-4
    .long _0093-.-4
    .long _00B4-.-4
    .long _00D5-.-4
    .long _00F6-.-4
    .short 0xFD13

_0022:
    ScrCmd_2F2
    End

_0026:
    CompareVarToValue 0x4055, 7
    ScrCmd_01C 1, _0080
    CheckFlag 0x9AD
    ScrCmd_01C 1, _0051
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0051:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_034
    SetFlag 0x977
    ScrCmd_05E 134, _0108
    ScrCmd_05F
    ScrCmd_05E 134, _011C
    ScrCmd_05F
    ScrCmd_028 0x4055, 7
    ScrCmd_061
    End

_0080:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0093:
    ScrCmd_060
    ScrCmd_04C 0x1E1, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_04D
    ScrCmd_05E 131, _0130
    ScrCmd_05F
    ScrCmd_312 131
    ScrCmd_061
    End

_00B4:
    ScrCmd_060
    ScrCmd_04C 0x1E0, 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_04D
    ScrCmd_05E 132, _0130
    ScrCmd_05F
    ScrCmd_312 132
    ScrCmd_061
    End

_00D5:
    ScrCmd_060
    ScrCmd_04C 0x1E2, 0
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_04D
    ScrCmd_05E 133, _0130
    ScrCmd_05F
    ScrCmd_312 133
    ScrCmd_061
    End

_00F6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0108:
    MoveAction_042
    MoveAction_021
    MoveAction_04B
    MoveAction_042
    EndMovement

    .balign 4, 0
_011C:
    MoveAction_00D
    MoveAction_076
    MoveAction_00E
    MoveAction_023
    EndMovement

    .balign 4, 0
_0130:
    MoveAction_043
    EndMovement
