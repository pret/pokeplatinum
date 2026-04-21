#include "macros/scrcmd.inc"
#include "res/text/bank/verity_lakefront.h"


    ScriptEntry VerityLakefront_OnLoad
    ScriptEntry VerityLakefront_OnTransition
    ScriptEntry VerityLakefront_TriggerWereAtTheLake
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

VerityLakefront_TriggerWereAtTheLake:
    LockAll
    ApplyMovement LOCALID_FOLLOWER, VerityLakefront_Movement_RivalWalkOnSpotNorth
    ApplyMovement LOCALID_PLAYER, VerityLakefront_Movement_PlayerFaceRival
    WaitMovement
    BufferRivalName 0
    Message VerityLakefront_Text_WereAtTheLake
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfInRange VAR_0x8004, 80, 85, VerityLakefront_WalkToLakeValor
    End

VerityLakefront_WalkToLakeValor:
    ApplyMovement LOCALID_PLAYER, VerityLakefront_Movement_PlayerEnterLakeValor
    ApplyMovement LOCALID_FOLLOWER, VerityLakefront_Movement_RivalEnterLakeValor
    WaitMovement
    GoTo VerityLakefront_WarpToLakeValor

VerityLakefront_WarpToLakeValor:
    SetVar VAR_UNK_0x4082, 1
    ReleaseAll
    PlaySE SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_LAKE_VERITY_LOW_WATER, 0, 46, 54, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    End

    .balign 4, 0
VerityLakefront_Movement_RivalWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VerityLakefront_Movement_RivalEnterLakeValor:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
VerityLakefront_Movement_PlayerEnterLakeValor:
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
