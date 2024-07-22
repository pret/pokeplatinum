#include "macros/scrcmd.inc"

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
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0051:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    CloseMessage
    SetFlag 0x977
    ApplyMovement 134, _0108
    WaitMovement
    ApplyMovement 134, _011C
    WaitMovement
    SetVar 0x4055, 7
    ReleaseAll
    End

_0080:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0093:
    LockAll
    ScrCmd_04C 0x1E1, 0
    Message 0
    CloseMessage
    ScrCmd_04D
    ApplyMovement 131, _0130
    WaitMovement
    ScrCmd_312 131
    ReleaseAll
    End

_00B4:
    LockAll
    ScrCmd_04C 0x1E0, 0
    Message 1
    CloseMessage
    ScrCmd_04D
    ApplyMovement 132, _0130
    WaitMovement
    ScrCmd_312 132
    ReleaseAll
    End

_00D5:
    LockAll
    ScrCmd_04C 0x1E2, 0
    Message 2
    CloseMessage
    ScrCmd_04D
    ApplyMovement 133, _0130
    WaitMovement
    ScrCmd_312 133
    ReleaseAll
    End

_00F6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
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
