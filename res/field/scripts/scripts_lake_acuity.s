#include "macros/scrcmd.inc"
#include "res/text/bank/lake_acuity.h"
#include "res/field/events/events_lake_acuity.h"


    ScriptEntry LakeAcuity_TriggerJupiterRival
    ScriptEntryEnd

LakeAcuity_TriggerJupiterRival:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    AddFreeCamera VAR_0x8004, VAR_0x8005
    ApplyFreeCameraMovement LakeAcuity_Movement_CameraMoveNorth
    WaitMovement
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_RIVAL, LakeAcuity_Movement_RivalWalkOnSpotNorth
    WaitMovement
    BufferRivalName 0
    Message LakeAcuity_Text_YoureNotGettingAway
    CloseMessage
    ApplyMovement LOCALID_JUPITER, LakeAcuity_Movement_JupiterWalkOnSpotSouth
    WaitMovement
    Message LakeAcuity_Text_BackToVeilstoneCity
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 14, LakeAcuity_JupiterWalkToPlayerX14
    CallIfEq VAR_0x8004, 15, LakeAcuity_JupiterWalkToPlayerX15
    RestoreCamera
    Message LakeAcuity_Text_DontWasteYourTime
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 14, LakeAcuity_JupiterLeaveX14
    CallIfEq VAR_0x8004, 15, LakeAcuity_JupiterLeaveX15
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_JUPITER
    WaitSE SEQ_SE_DP_KAIDAN2
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 14, LakeAcuity_PlayerWalkToRivalX14
    CallIfEq VAR_0x8004, 15, LakeAcuity_PlayerWalkToRivalX15
    ApplyMovement LOCALID_RIVAL, LakeAcuity_Movement_RivalWalkOnSpotWest
    WaitMovement
    BufferRivalName 0
    Message LakeAcuity_Text_ICouldntDoAnything
    CloseMessage
    ApplyMovement LOCALID_RIVAL, LakeAcuity_Movement_RivalWalkOnSpotNorth2
    WaitMovement
    Message LakeAcuity_Text_UxieWasSuffering
    CloseMessage
    WaitTime 30, VAR_RESULT
    ApplyMovement LOCALID_RIVAL, LakeAcuity_Movement_RivalWalkOnSpotWest
    WaitMovement
    Message LakeAcuity_Text_IHaveToBeStronger
    CloseMessage
    ApplyMovement LOCALID_RIVAL, LakeAcuity_Movement_RivalLeave
    ApplyMovement LOCALID_PLAYER, LakeAcuity_Movement_PlayerWatchRivalLeave
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_RIVAL
    WaitSE SEQ_SE_DP_KAIDAN2
    SetFlag FLAG_ALT_MUSIC_LAKE_ACUITY
    ClearFlag FLAG_HIDE_VEILSTONE_CITY_GRUNT_M_STORAGE_KEY
    SetVar VAR_LAKE_ACUITY_STATE, 2
    ClearFlag FLAG_HIDE_SANDGEM_TOWN_LAB_PROF_ROWAN
    SetFlag FLAG_HIDE_LAKE_VERITY_LOW_WATER_COUNTERPART
    SetFlag FLAG_HIDE_LAKE_VERITY_LOW_WATER_PROF_ROWAN
    SetFlag FLAG_HIDE_LAKE_VERITY_COUNTERPART
    SetFlag FLAG_HIDE_LAKE_VERITY_PROF_ROWAN
    ClearFlag FLAG_LAKE_VALOR_EXPLODED
    ReleaseAll
    End

LakeAcuity_JupiterWalkToPlayerX14:
    ApplyMovement LOCALID_JUPITER, LakeAcuity_Movement_JupiterWalkToPlayerX14
    ApplyFreeCameraMovement LakeAcuity_Movement_CameraMoveSouth
    WaitMovement
    ApplyMovement LOCALID_PLAYER, LakeAcuity_Movement_PlayerWalkOnSpotEast
    WaitMovement
    Return

LakeAcuity_JupiterWalkToPlayerX15:
    ApplyMovement LOCALID_JUPITER, LakeAcuity_Movement_JupiterWalkToPlayerX15
    ApplyFreeCameraMovement LakeAcuity_Movement_CameraMoveSouth
    WaitMovement
    Return

LakeAcuity_JupiterLeaveX14:
    ApplyMovement LOCALID_JUPITER, LakeAcuity_Movement_JupiterLeaveX14
    WaitMovement
    Return

LakeAcuity_JupiterLeaveX15:
    ApplyMovement LOCALID_JUPITER, LakeAcuity_Movement_JupiterLeaveX15
    WaitMovement
    Return

LakeAcuity_PlayerWalkToRivalX14:
    ApplyMovement LOCALID_PLAYER, LakeAcuity_Movement_PlayerWalkToRivalX14
    WaitMovement
    Return

LakeAcuity_PlayerWalkToRivalX15:
    ApplyMovement LOCALID_PLAYER, LakeAcuity_Movement_PlayerWalkToRivalX15
    WaitMovement
    Return

    .balign 4, 0
LakeAcuity_Movement_PlayerWalkToRivalX14:
    WalkNormalNorth 5
    WalkNormalEast 2
    EndMovement

    .balign 4, 0
LakeAcuity_Movement_PlayerWalkToRivalX15:
    WalkNormalNorth 5
    WalkNormalEast
    EndMovement

    .balign 4, 0
LakeAcuity_Movement_PlayerWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
LakeAcuity_Movement_PlayerWatchRivalLeave:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
LakeAcuity_Movement_RivalWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
LakeAcuity_Movement_RivalWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
LakeAcuity_Movement_RivalWalkOnSpotNorth2:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
LakeAcuity_Movement_RivalLeave:
    WalkNormalSouth 2
    WalkNormalWest 2
    WalkNormalSouth 3
    EndMovement

    .balign 4, 0
LakeAcuity_Movement_JupiterWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
LakeAcuity_Movement_JupiterWalkToPlayerX14:
    WalkNormalWest 2
    WalkNormalSouth 6
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
LakeAcuity_Movement_JupiterWalkToPlayerX15:
    WalkNormalWest 2
    WalkNormalSouth 5
    EndMovement

    .balign 4, 0
LakeAcuity_Movement_JupiterLeaveX14:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
LakeAcuity_Movement_JupiterLeaveX15:
    WalkNormalWest
    WalkNormalSouth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
LakeAcuity_Movement_CameraMoveNorth:
    WalkNormalNorth 5
    EndMovement

    .balign 4, 0
LakeAcuity_Movement_CameraMoveSouth:
    WalkNormalSouth 5
    EndMovement
