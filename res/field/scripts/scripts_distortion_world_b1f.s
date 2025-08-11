#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_b1f.h"


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
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0080:
    Delay16
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0090:
    FaceWest
    Delay1 8
    Delay32
    Delay16
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_00A8:
    Delay16 3
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_00B4:
    WalkNormalWest
    WalkNormalSouth 2
    WalkOnSpotNormalWest
    Delay16
    MoveAction_119 2
    MoveAction_118
    MoveAction_119
    Delay16
    EndMovement

    .balign 4, 0
_00D8:
    Delay16 3
    WalkSlowNorth
    WalkNormalNorth
    WalkFastNorth
    WalkFasterNorth 8
    EndMovement
