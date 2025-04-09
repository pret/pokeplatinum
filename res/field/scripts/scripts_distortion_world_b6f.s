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
    InitPersistedMapFeaturesForDistortionWorld
    End

_0026:
    GoToIfEq 0x4055, 7, _0080
    GoToIfSet FLAG_DISTORTION_WORLD_PUZZLE_FINISHED, _0051
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
    SetFlag FLAG_DISTORTION_WORLD_STEPPING_STONES
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
    PlayCry SPECIES_MESPRIT
    Message 0
    CloseMessage
    WaitCry
    ApplyMovement 131, _0130
    WaitMovement
    ScrCmd_312 131
    ReleaseAll
    End

_00B4:
    LockAll
    PlayCry SPECIES_UXIE
    Message 1
    CloseMessage
    WaitCry
    ApplyMovement 132, _0130
    WaitMovement
    ScrCmd_312 132
    ReleaseAll
    End

_00D5:
    LockAll
    PlayCry SPECIES_AZELF
    Message 2
    CloseMessage
    WaitCry
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
