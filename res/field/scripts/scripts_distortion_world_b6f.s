#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_b6f.h"

    ScriptEntry DistortionWorldB6F_OnTransition
    ScriptEntry DistortionWorldB6F_Cynthia
    ScriptEntry DistortionWorldB6F_CynthiaPuzzleFinished
    ScriptEntry DistortionWorldB6F_WereGettingClose
    ScriptEntry DistortionWorldB6F_CoordEvent_MespritBoulderInPit
    ScriptEntry DistortionWorldB6F_CoordEvent_UxieBoulderInPit
    ScriptEntry DistortionWorldB6F_CoordEvent_AzelfBoulderInPit
    ScriptEntry DistortionWorldB6F_BoulderPit
    ScriptEntryEnd

DistortionWorldB6F_OnTransition:
    InitPersistedMapFeaturesForDistortionWorld
    End

DistortionWorldB6F_Cynthia:
    GoToIfEq VAR_DISTORTION_WORLD_PROGRESS, DIST_WORLD_PROGRESS_FINISHED_BOULDER_PUZZLE, DistortionWorldB6F_WereGettingClose
    GoToIfSet FLAG_DISTORTION_WORLD_PUZZLE_FINISHED, DistortionWorldB6F_CynthiaPuzzleFinished
    NPCMessage DistortionWorldB6F_Text_ThisPlaceGiantPuzzle
    End

DistortionWorldB6F_CynthiaPuzzleFinished:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message DistortionWorldB6F_Text_LakePokemonWentHome
    CloseMessage
    SetFlag FLAG_DISTORTION_WORLD_STEPPING_STONES
    ApplyMovement DIST_WORLD_MAP_OBJECT_B6F_CYNTHIA, DistortionWorldB6F_Movement_CynthiaNoticePlatform
    WaitMovement
    ApplyMovement DIST_WORLD_MAP_OBJECT_B6F_CYNTHIA, DistortionWorldB6F_Movement_CynthiaJumpOnPlatform
    WaitMovement
    SetVar VAR_DISTORTION_WORLD_PROGRESS, DIST_WORLD_PROGRESS_FINISHED_BOULDER_PUZZLE
    ReleaseAll
    End

DistortionWorldB6F_WereGettingClose:
    NPCMessage DistortionWorldB6F_Text_WereGettingClose
    End

DistortionWorldB6F_CoordEvent_MespritBoulderInPit:
    LockAll
    PlayCry SPECIES_MESPRIT
    Message DistortionWorldB6F_Text_MespritCry
    CloseMessage
    WaitCry
    ApplyMovement DIST_WORLD_MAP_OBJECT_B6F_MESPRIT, DistortionWorldB6F_Movement_LakeGuardianWarpOut
    WaitMovement
    DeleteDistortionWorldMapObject DIST_WORLD_MAP_OBJECT_B6F_MESPRIT
    ReleaseAll
    End

DistortionWorldB6F_CoordEvent_UxieBoulderInPit:
    LockAll
    PlayCry SPECIES_UXIE
    Message DistortionWorldB6F_Text_UxieCry
    CloseMessage
    WaitCry
    ApplyMovement DIST_WORLD_MAP_OBJECT_B6F_UXIE, DistortionWorldB6F_Movement_LakeGuardianWarpOut
    WaitMovement
    DeleteDistortionWorldMapObject DIST_WORLD_MAP_OBJECT_B6F_UXIE
    ReleaseAll
    End

DistortionWorldB6F_CoordEvent_AzelfBoulderInPit:
    LockAll
    PlayCry SPECIES_AZELF
    Message DistortionWorldB6F_Text_AzelfCry
    CloseMessage
    WaitCry
    ApplyMovement DIST_WORLD_MAP_OBJECT_B6F_AZELF, DistortionWorldB6F_Movement_LakeGuardianWarpOut
    WaitMovement
    DeleteDistortionWorldMapObject DIST_WORLD_MAP_OBJECT_B6F_AZELF
    ReleaseAll
    End

DistortionWorldB6F_BoulderPit:
    EventMessage DistortionWorldB6F_Text_BoulderMightFit
    End

    .balign 4, 0
DistortionWorldB6F_Movement_CynthiaNoticePlatform:
    Delay32
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    Delay32
    EndMovement

    .balign 4, 0
DistortionWorldB6F_Movement_CynthiaJumpOnPlatform:
    WalkNormalSouth
    JumpDistortionWorldSouth
    WalkNormalWest
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
DistortionWorldB6F_Movement_LakeGuardianWarpOut:
    WarpOut
    EndMovement
