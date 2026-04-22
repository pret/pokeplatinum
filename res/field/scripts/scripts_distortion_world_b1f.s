#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_b1f.h"

// NOTE: These constants must mirror those in ov9_02249960.c
#define LOCALID_CYNTHIA 128
#define LOCALID_MESPRIT 129

    ScriptEntry DistortionWorldB1F_OnTransition
    ScriptEntry DistortionWorldB1F_OnFrameFirstEntry
    ScriptEntry DistortionWorldB1F_TriggerMesprit
    ScriptEntryEnd

DistortionWorldB1F_OnTransition:
    InitPersistedMapFeaturesForDistortionWorld
    End

DistortionWorldB1F_OnFrameFirstEntry:
    LockAll
    ApplyMovement LOCALID_PLAYER, DistortionWorldB1F_Movement_PlayerWalkOnSpotNorth
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB1F_Movement_CynthiaWalkOnSpotSouth
    WaitMovement
    Message DistortionWorldB1F_Text_WillWeSeeGiratina
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB1F_Movement_CynthiaLeave
    ApplyMovement LOCALID_PLAYER, DistortionWorldB1F_Movement_PlayerWatchCynthiaLeave
    WaitMovement
    DeleteDistortionWorldMapObject LOCALID_CYNTHIA
    SetVar VAR_DISTORTION_WORLD_PROGRESS, 3
    ReleaseAll
    End

DistortionWorldB1F_TriggerMesprit:
    LockAll
    PlayCry SPECIES_MESPRIT
    Message DistortionWorldB1F_Text_MespritCry
    CloseMessage
    WaitCry
    AddDistortionWorldMapObject LOCALID_MESPRIT
    ApplyMovement LOCALID_PLAYER, DistortionWorldB1F_Movement_PlayerWatchMesprit
    ApplyMovement LOCALID_MESPRIT, DistortionWorldB1F_Movement_MespritMoveNorth
    WaitMovement
    DeleteDistortionWorldMapObject LOCALID_MESPRIT
    ReleaseAll
    End

    .balign 4, 0
DistortionWorldB1F_Movement_PlayerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
DistortionWorldB1F_Movement_PlayerWatchCynthiaLeave:
    Delay16
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
DistortionWorldB1F_Movement_PlayerWatchMesprit:
    FaceWest
    Delay1 8
    Delay32
    Delay16
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
DistortionWorldB1F_Movement_CynthiaWalkOnSpotSouth:
    Delay16 3
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
DistortionWorldB1F_Movement_CynthiaLeave:
    WalkNormalWest
    WalkNormalSouth 2
    WalkOnSpotNormalWest
    Delay16
    JumpDistortionWorldWest 2
    JumpDistortionWorldSouth
    JumpDistortionWorldWest
    Delay16
    EndMovement

    .balign 4, 0
DistortionWorldB1F_Movement_MespritMoveNorth:
    Delay16 3
    WalkSlowNorth
    WalkNormalNorth
    WalkFastNorth
    WalkFasterNorth 8
    EndMovement
