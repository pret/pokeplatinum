#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_b6f.h"

    .data

    ScriptEntry _0022
    ScriptEntry _0026
    ScriptEntry _0051
    ScriptEntry _0080
    ScriptEntry _0093
    ScriptEntry _00B4
    ScriptEntry _00D5
    ScriptEntry _00F6
    ScriptEntryEnd

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
    PlayCry 0x1E1, 0
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
    PlayCry SPECIES_UXIE, 0
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
    PlayCry 0x1E2, 0
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
    MoveAction_066
    MoveAction_033
    MoveAction_075
    MoveAction_066
    EndMovement

    .balign 4, 0
_011C:
    MoveAction_013
    MoveAction_118
    MoveAction_014
    MoveAction_035
    EndMovement

    .balign 4, 0
_0130:
    MoveAction_067
    EndMovement
