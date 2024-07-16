#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _002E
    .short 0xFD13

_000A:
    ScrCmd_292 10, 0x4000
    GoToIfEq 0x4000, 1, _0022
    SetFlag 0x27B
    End

_0022:
    ClearFlag 0x27B
    SetVar 0x4110, 1
    End

_002E:
    LockAll
    ApplyMovement 0xFF, _0054
    ApplyMovement 0, _0064
    WaitMovement
    SetFlag 0x27B
    ScrCmd_065 0
    SetVar 0x4110, 0
    ReleaseAll
    End

    .balign 4, 0
_0054:
    MoveAction_00C
    MoveAction_042
    MoveAction_002
    EndMovement

    .balign 4, 0
_0064:
    MoveAction_03F
    MoveAction_002
    MoveAction_041
    MoveAction_049
    MoveAction_00E 10
    MoveAction_04A
    MoveAction_045
    EndMovement
