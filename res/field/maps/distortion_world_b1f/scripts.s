#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_b1f.h"

    ScriptEntry DistortionWorldB1F_OnTransition
    ScriptEntry DistortionWorldB1F_OnFrame_FirstEntry
    ScriptEntry DistortionWorldB1F_CoordEvent_Mesprit
    ScriptEntryEnd

DistortionWorldB1F_OnTransition:
    InitPersistedMapFeaturesForDistortionWorld
    End

DistortionWorldB1F_OnFrame_FirstEntry:
    LockAll
    ApplyMovement LOCALID_PLAYER, DistortionWorldB1F_Movement_PlayerWalkOnSpotNorth
    ApplyMovement DIST_WORLD_MAP_OBJECT_B1F_CYNTHIA_ELEVATOR, DistortionWorldB1F_Movement_CynthiaWalkOnSpotSouth
    WaitMovement
    Message DistortionWorldB1F_Text_WillWeSeeGiratina
    CloseMessage
    ApplyMovement DIST_WORLD_MAP_OBJECT_B1F_CYNTHIA_ELEVATOR, DistortionWorldB1F_Movement_CynthiaLeave
    ApplyMovement LOCALID_PLAYER, DistortionWorldB1F_Movement_PlayerWatchCynthiaLeave
    WaitMovement
    DeleteDistortionWorldMapObject DIST_WORLD_MAP_OBJECT_B1F_CYNTHIA_ELEVATOR
    SetVar VAR_DISTORTION_WORLD_PROGRESS, DIST_WORLD_PROGRESS_ENTERED_B1F
    ReleaseAll
    End

DistortionWorldB1F_CoordEvent_Mesprit:
    LockAll
    PlayCry SPECIES_MESPRIT
    Message DistortionWorldB1F_Text_MespritCry
    CloseMessage
    WaitCry
    AddDistortionWorldMapObject DIST_WORLD_MAP_OBJECT_B1F_MESPRIT
    ApplyMovement LOCALID_PLAYER, DistortionWorldB1F_Movement_PlayerWatchMesprit
    ApplyMovement DIST_WORLD_MAP_OBJECT_B1F_MESPRIT, DistortionWorldB1F_Movement_MespritMoveNorth
    WaitMovement
    DeleteDistortionWorldMapObject DIST_WORLD_MAP_OBJECT_B1F_MESPRIT
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
