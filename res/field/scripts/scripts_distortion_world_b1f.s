#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_b1f.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0012
    ScriptEntry _004B
    ScriptEntryEnd

_000E:
    InitPersistedMapFeaturesForDistortionWorld
    End

_0012:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0078
    ApplyMovement 128, _00A8
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 128, _00B4
    ApplyMovement LOCALID_PLAYER, _0080
    WaitMovement
    ScrCmd_312 128
    SetVar VAR_DISTORTION_WORLD_PROGRESS, 3
    ReleaseAll
    End

_004B:
    LockAll
    PlayCry SPECIES_MESPRIT
    Message 1
    CloseMessage
    WaitCry
    ScrCmd_311 129
    ApplyMovement LOCALID_PLAYER, _0090
    ApplyMovement 129, _00D8
    WaitMovement
    ScrCmd_312 129
    ReleaseAll
    End

    .balign 4, 0
_0078:
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0080:
    MoveAction_Delay16
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0090:
    MoveAction_FaceWest
    MoveAction_Delay1 8
    MoveAction_Delay32
    MoveAction_Delay16
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_00A8:
    MoveAction_Delay16 3
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_00B4:
    MoveAction_WalkNormalWest
    MoveAction_WalkNormalSouth 2
    MoveAction_WalkOnSpotNormalWest
    MoveAction_Delay16
    MoveAction_119 2
    MoveAction_118
    MoveAction_119
    MoveAction_Delay16
    EndMovement

    .balign 4, 0
_00D8:
    MoveAction_Delay16 3
    MoveAction_WalkSlowNorth
    MoveAction_WalkNormalNorth
    MoveAction_WalkFastNorth
    MoveAction_WalkFasterNorth 8
    EndMovement
