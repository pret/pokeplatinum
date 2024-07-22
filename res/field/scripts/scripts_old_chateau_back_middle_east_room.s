#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _002E
    .short 0xFD13

_000A:
    ScrCmd_292 25, 0x4000
    GoToIfEq 0x4000, 1, _0022
    SetFlag 0x27C
    End

_0022:
    ClearFlag 0x27C
    SetVar 0x4111, 1
    End

_002E:
    LockAll
    ApplyMovement 1, _004C
    WaitMovement
    SetFlag 0x27C
    ScrCmd_065 1
    SetVar 0x4111, 0
    ReleaseAll
    End

    .balign 4, 0
_004C:
    MoveAction_041
    MoveAction_001
    MoveAction_041
    MoveAction_049
    MoveAction_00D 2
    MoveAction_04A
    MoveAction_045
    EndMovement
