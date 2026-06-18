#include "macros/scrcmd.inc"
#include "res/text/bank/verity_lakefront.h"


    ScriptEntry VerityLakefront_OnLoad
    ScriptEntry VerityLakefront_OnTransition
    ScriptEntry VerityLakefront_CoordEvent_WereAtTheLake
    ScriptEntry VerityLakefront_TrainerTipsSignpost
    ScriptEntryEnd

VerityLakefront_OnLoad:
    GoToIfUnset FLAG_DEFEATED_COMMANDER_SATURN_VALOR_CAVERN, VerityLakefront_RemoveWarpsLakeVerityNormal
    GoToIfSet FLAG_DEFEATED_COMMANDER_SATURN_VALOR_CAVERN, VerityLakefront_RemoveWarpsLakeVerityLowWater
    End

VerityLakefront_RemoveWarpsLakeVerityNormal:
    SetWarpEventPos 2, 80, 840
    SetWarpEventPos 3, 81, 840
    End

VerityLakefront_RemoveWarpsLakeVerityLowWater:
    SetWarpEventPos 1, 80, 840
    SetWarpEventPos 0, 81, 840
    End

VerityLakefront_OnTransition:
    GoToIfUnset FLAG_DEFEATED_COMMANDER_SATURN_VALOR_CAVERN, VerityLakefront_RemoveWarpsLakeVerityNormal
    GoToIfSet FLAG_DEFEATED_COMMANDER_SATURN_VALOR_CAVERN, VerityLakefront_RemoveWarpsLakeVerityLowWater
    End

VerityLakefront_CoordEvent_WereAtTheLake:
    LockAll
    ApplyMovement LOCALID_FOLLOWER, VerityLakefront_Movement_RivalWalkOnSpotNorth
    ApplyMovement LOCALID_PLAYER, VerityLakefront_Movement_PlayerFaceRival
    WaitMovement
    BufferRivalName 0
    Message VerityLakefront_Text_WereAtTheLake
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfInRange VAR_0x8004, 80, 85, VerityLakefront_WalkToLakeVerity
    End

VerityLakefront_WalkToLakeVerity:
    ApplyMovement LOCALID_PLAYER, VerityLakefront_Movement_PlayerEnterLakeVerity
    ApplyMovement LOCALID_FOLLOWER, VerityLakefront_Movement_RivalEnterLakeVerity
    WaitMovement
    GoTo VerityLakefront_WarpToLakeVerity

VerityLakefront_WarpToLakeVerity:
    SetVar VAR_VERITY_LAKEFRONT_STATE, 1
    ReleaseAll
    PlaySE SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_LAKE_VERITY_LOW_WATER, 46, 54, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    End

    .balign 4, 0
VerityLakefront_Movement_RivalWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VerityLakefront_Movement_RivalEnterLakeVerity:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
VerityLakefront_Movement_PlayerEnterLakeVerity:
    WalkNormalNorth
    SetInvisible
    EndMovement

    .balign 4, 0
VerityLakefront_Movement_PlayerFaceRival:
    WalkOnSpotNormalSouth
    EndMovement

VerityLakefront_TrainerTipsSignpost:
    ShowScrollingSign VerityLakefront_Text_LakeVerityAhead
    End

    .balign 4, 0
