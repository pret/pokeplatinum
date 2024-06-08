    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0022
    ScriptEntry _0026
    ScriptEntry _0051
    ScriptEntry _0080
    ScriptEntry _0093
    ScriptEntry _00B4
    ScriptEntry _00D5
    ScriptEntry _00F6
    .short 0xFD13

_0022:
    ScrCmd_2F2
    End

_0026:
    GoToIfEq 0x4055, 7, _0080
    GoToIfSet 0x9AD, _0051
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
    ApplyMovement 134, _0108
    WaitMovement
    ApplyMovement 134, _011C
    WaitMovement
    SetVar 0x4055, 7
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
    ApplyMovement 131, _0130
    WaitMovement
    ScrCmd_312 131
    ScrCmd_061
    End

_00B4:
    ScrCmd_060
    ScrCmd_04C 0x1E0, 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_04D
    ApplyMovement 132, _0130
    WaitMovement
    ScrCmd_312 132
    ScrCmd_061
    End

_00D5:
    ScrCmd_060
    ScrCmd_04C 0x1E2, 0
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_04D
    ApplyMovement 133, _0130
    WaitMovement
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
