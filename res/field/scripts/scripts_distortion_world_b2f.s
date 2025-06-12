#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_b2f.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0012
    ScriptEntry _0084
    ScriptEntryEnd

_000E:
    InitPersistedMapFeaturesForDistortionWorld
    End

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfEq VAR_DISTORTION_WORLD_PROGRESS, 5, _0084
    GetPlayer3DPos VAR_0x8004, VAR_0x8005, VAR_0x8006
    GoToIfEq VAR_0x8005, 232, _0059
    ApplyMovement 128, _00DC
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 128, _00E4
    WaitMovement
    GoTo _007A

_0059:
    ApplyMovement 128, _00F0
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 128, _00F8
    ApplyMovement LOCALID_PLAYER, _011C
    WaitMovement
_007A:
    SetVar VAR_DISTORTION_WORLD_PROGRESS, 5
    ReleaseAll
    End

_0084:
    GetPlayer3DPos VAR_0x8004, VAR_0x8005, VAR_0x8006
    GoToIfEq VAR_0x8005, 231, _00B6
    GoToIfEq VAR_0x8005, 232, _00C6
    ApplyMovement 128, _0104
    WaitMovement
    GoTo _00D0

_00B6:
    ApplyMovement 128, _010C
    WaitMovement
    GoTo _00D0

_00C6:
    ApplyMovement 128, _0114
    WaitMovement
_00D0:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00DC:
    FaceSouth
    EndMovement

    .balign 4, 0
_00E4:
    MoveAction_106
    FaceWest
    EndMovement

    .balign 4, 0
_00F0:
    FaceEast
    EndMovement

    .balign 4, 0
_00F8:
    MoveAction_106
    FaceWest
    EndMovement

    .balign 4, 0
_0104:
    FaceWest
    EndMovement

    .balign 4, 0
_010C:
    FaceEast
    EndMovement

    .balign 4, 0
_0114:
    FaceSouth
    EndMovement

    .balign 4, 0
_011C:
    MoveAction_107
    FaceNorth
    EndMovement
