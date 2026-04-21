#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_b6f.h"

// NOTE: These constants must mirror those in ov9_02249960.c
#define LOCALID_MESPRIT 131
#define LOCALID_UXIE    132
#define LOCALID_AZELF   133
#define LOCALID_CYNTHIA 134

    ScriptEntry DistortionWorldB6F_OnTransition
    ScriptEntry DistortionWorldB6F_Cynthia
    ScriptEntry DistortionWorldB6F_CynthiaPuzzleFinished
    ScriptEntry DistortionWorldB6F_WereGettingClose
    ScriptEntry DistortionWorldB6F_TriggerMespritBoulderInPit
    ScriptEntry DistortionWorldB6F_TriggerUxieBoulderInPit
    ScriptEntry DistortionWorldB6F_TriggerAzelfBoulderInPit
    ScriptEntry DistortionWorldB6F_BoulderPit
    ScriptEntryEnd

DistortionWorldB6F_OnTransition:
    InitPersistedMapFeaturesForDistortionWorld
    End

DistortionWorldB6F_Cynthia:
    GoToIfEq VAR_DISTORTION_WORLD_PROGRESS, 7, DistortionWorldB6F_WereGettingClose
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
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB6F_Movement_CynthiaNoticePlatform
    WaitMovement
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB6F_Movement_CynthiaJumpOnPlatform
    WaitMovement
    SetVar VAR_DISTORTION_WORLD_PROGRESS, 7
    ReleaseAll
    End

DistortionWorldB6F_WereGettingClose:
    NPCMessage DistortionWorldB6F_Text_WereGettingClose
    End

DistortionWorldB6F_TriggerMespritBoulderInPit:
    LockAll
    PlayCry SPECIES_MESPRIT
    Message DistortionWorldB6F_Text_MespritCry
    CloseMessage
    WaitCry
    ApplyMovement LOCALID_MESPRIT, DistortionWorldB6F_Movement_LakeGuardianWarpOut
    WaitMovement
    DeleteDistortionWorldMapObject LOCALID_MESPRIT
    ReleaseAll
    End

DistortionWorldB6F_TriggerUxieBoulderInPit:
    LockAll
    PlayCry SPECIES_UXIE
    Message DistortionWorldB6F_Text_UxieCry
    CloseMessage
    WaitCry
    ApplyMovement LOCALID_UXIE, DistortionWorldB6F_Movement_LakeGuardianWarpOut
    WaitMovement
    DeleteDistortionWorldMapObject LOCALID_UXIE
    ReleaseAll
    End

DistortionWorldB6F_TriggerAzelfBoulderInPit:
    LockAll
    PlayCry SPECIES_AZELF
    Message DistortionWorldB6F_Text_AzelfCry
    CloseMessage
    WaitCry
    ApplyMovement LOCALID_AZELF, DistortionWorldB6F_Movement_LakeGuardianWarpOut
    WaitMovement
    DeleteDistortionWorldMapObject LOCALID_AZELF
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
