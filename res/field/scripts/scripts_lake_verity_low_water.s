#include "macros/scrcmd.inc"
#include "res/text/bank/lake_verity_low_water.h"
#include "res/field/events/events_lake_verity_low_water.h"


    ScriptEntry LakeVerityLowWater_OnTransition
    ScriptEntry LakeVerityLowWater_OnLoad
    ScriptEntry LakeVerityLowWater_OnFrame_Cyrus
    ScriptEntry LakeVerityLowWater_ProfRowan
    ScriptEntry LakeVerityLowWater_Counterpart
    ScriptEntry LakeVerityLowWater_Dummy6
    ScriptEntry LakeVerityLowWater_Dummy7
    ScriptEntryEnd

LakeVerityLowWater_OnTransition:
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, LakeVerityLowWater_SetCounterpartGraphicsDawn
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, LakeVerityLowWater_SetCounterpartGraphicsLucas
    End

LakeVerityLowWater_SetCounterpartGraphicsDawn:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_F
    End

LakeVerityLowWater_SetCounterpartGraphicsLucas:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_M
    End

LakeVerityLowWater_OnLoad:
    GoToIfSet FLAG_MAP_LOCAL_REMOVE_OBJECT, LakeVerityLowWater_RemoveStarly
    End

LakeVerityLowWater_RemoveStarly:
    SetFlag FLAG_HIDE_LAKE_VERITY_LOW_WATER_STARLY
    RemoveObject LOCALID_STARLY_SOUTH
    RemoveObject LOCALID_STARLY_EAST
    ClearFlag FLAG_MAP_LOCAL_REMOVE_OBJECT
    End
    End

LakeVerityLowWater_OnFrame_Cyrus:
    LockAll
    ClearHasPartner
    ApplyMovement LOCALID_RIVAL, LakeVerityLowWater_Movement_RivalEnter
    ApplyMovement LOCALID_PLAYER, LakeVerityLowWater_Movement_PlayerEnter
    WaitMovement
    BufferRivalName 0
    Message LakeVerityLowWater_Text_WhatsGoingOn
    CloseMessage
    AddFreeCamera 46, 53
    ApplyFreeCameraMovement LakeVerityLowWater_Movement_PanToCyrus
    WaitMovement
    WaitTime 15, VAR_RESULT
    Message LakeVerityLowWater_Text_MakeTimeAndSpaceMine
    CloseMessage
    WaitTime 30, VAR_RESULT
    ApplyMovement LOCALID_CYRUS, LakeVerityLowWater_Movement_CyrusWalkToPlayer
    ApplyFreeCameraMovement LakeVerityLowWater_Movement_PanBackToPlayer
    WaitMovement
    RestoreCamera
    Message LakeVerityLowWater_Text_AllowMeToPass
    CloseMessage
    ApplyMovement LOCALID_RIVAL, LakeVerityLowWater_Movement_RivalMoveAwayForCyrus
    ApplyMovement LOCALID_PLAYER, LakeVerityLowWater_Movement_PlayerWatchRivalMoveAwayForCyrus
    WaitMovement
    ApplyMovement LOCALID_CYRUS, LakeVerityLowWater_Movement_CyrusLeave
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_CYRUS
    WaitTime 50, VAR_RESULT
    ApplyMovement LOCALID_PLAYER, LakeVerityLowWater_Movement_PlayerLookAtExit
    ApplyMovement LOCALID_RIVAL, LakeVerityLowWater_Movement_RivalWalkToExit
    WaitMovement
    BufferRivalName 0
    Message LakeVerityLowWater_Text_WhatWasThatAbout
    CloseMessage
    ApplyMovement LOCALID_RIVAL, LakeVerityLowWater_Movement_RivalFacePlayer
    ApplyMovement LOCALID_PLAYER, LakeVerityLowWater_Movement_PlayerFaceRival
    WaitMovement
    WaitTime 30, VAR_RESULT
    BufferPlayerName 1
    Message LakeVerityLowWater_Text_LetsCatchThatLegendary
    PlayCry SPECIES_MESPRIT
    Message LakeVerityLowWater_Text_LegendaryCry
    WaitCry
    CloseMessage
    ApplyMovement LOCALID_RIVAL, LakeVerityLowWater_Movement_RivalNoticeAndLookForLegendary
    ApplyMovement LOCALID_PLAYER, LakeVerityLowWater_Movement_PlayerWatchRivalLookForLegendary
    WaitMovement
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_RIVAL, LakeVerityLowWater_Movement_RivalWalkOnSpotWest
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message LakeVerityLowWater_Text_ThatWasTheLegendaryCrying
    CloseMessage
    ApplyMovement LOCALID_RIVAL, LakeVerityLowWater_Movement_RivalExclamationMark
    WaitMovement
    WaitTime 15, VAR_RESULT
    BufferPlayerName 1
    Message LakeVerityLowWater_Text_WaitWeDontHavePokeballs
    CloseMessage
    ApplyMovement LOCALID_RIVAL, LakeVerityLowWater_Movement_RivalLeave
    ApplyMovement LOCALID_PLAYER, LakeVerityLowWater_Movement_PlayerWatchRivalLeave
    WaitMovement
    SetFlag FLAG_HIDE_LAKE_VERITY_LOW_WATER_RIVAL
    RemoveObject LOCALID_RIVAL
    PlaySE SEQ_SE_DP_KAIDAN2
    GoTo LakeVerityLowWater_EndRivalFollower
    End

LakeVerityLowWater_EndRivalFollower:
    SetVar VAR_FOLLOWER_RIVAL_STATE, 4
    SetVar VAR_VISITED_LAKE_VERITY_WITH_RIVAL, 1
    ReleaseAll
    End

    .balign 4, 0
LakeVerityLowWater_Movement_PanToCyrus:
    Delay8
    WalkNormalNorth 9
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_PanBackToPlayer:
    WalkNormalSouth 9
    EndMovement

LakeVerityLowWater_Movement_Unused:
    WalkOnSpotNormalEast
    EndMovement

LakeVerityLowWater_Movement_Unused2:
    WalkOnSpotNormalSouth
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_CyrusWalkToPlayer:
    WalkNormalSouth 5
    WalkNormalWest
    WalkNormalSouth 4
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_CyrusLeave:
    WalkNormalSouth 3
    SetInvisible
    EndMovement

LakeVerityLowWater_Movement_Unused3:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

LakeVerityLowWater_Movement_Unused4:
    WalkOnSpotNormalWest
    EndMovement

LakeVerityLowWater_Movement_Unused5:
    WalkNormalSouth 4
    WalkNormalWest 2
    WalkNormalSouth 5
    EndMovement

LakeVerityLowWater_Movement_Unused6:
    WalkNormalWest
    WalkNormalSouth 5
    WalkNormalWest
    WalkNormalSouth 3
    EndMovement

LakeVerityLowWater_Movement_Unused7:
    WalkNormalSouth
    WalkOnSpotNormalWest
    Delay4
    WalkOnSpotFastEast
    Delay4
    WalkOnSpotFastWest
    Delay8
    WalkOnSpotNormalSouth
    Delay8
    EndMovement

LakeVerityLowWater_Movement_Unused8:
    WalkNormalSouth 3
    SetInvisible
    EndMovement

LakeVerityLowWater_Movement_Unused9:
    WalkNormalNorth 4
    WalkNormalEast 2
    WalkNormalNorth 4
    WalkOnSpotNormalWest
    EndMovement

LakeVerityLowWater_Movement_Unused10:
    WalkOnSpotNormalSouth
    Delay8
    WalkOnSpotFastEast
    Delay8
    WalkOnSpotNormalSouth
    Delay4
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_RivalEnter:
    WalkFastNorth
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_RivalMoveAwayForCyrus:
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_RivalWalkToExit:
    WalkNormalWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_RivalFacePlayer:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_RivalNoticeAndLookForLegendary:
    EmoteExclamationMark
    WalkFastNorth 3
    Delay8 3
    WalkOnSpotFastWest
    Delay8
    WalkOnSpotFastNorth
    Delay8 2
    WalkFastSouth 3
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_RivalExclamationMark:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_RivalWalkOnSpotWest:
    WalkOnSpotFastWest 4
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_RivalLeave:
    WalkFastSouth 2
    EndMovement

LakeVerityLowWater_Movement_Unused11:
    WalkOnSpotNormalEast
    EndMovement

LakeVerityLowWater_Movement_Unused12:
    WalkOnSpotFastEast
    EndMovement

LakeVerityLowWater_Movement_Unused13:
    WalkOnSpotNormalSouth
    EndMovement

LakeVerityLowWater_Movement_Unused14:
    Delay8 7
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

LakeVerityLowWater_Movement_Unused15:
    Delay4
    WalkOnSpotNormalSouth
    EndMovement

LakeVerityLowWater_Movement_Unused16:
    WalkNormalWest
    WalkNormalSouth
    WalkOnSpotNormalWest
    EndMovement

LakeVerityLowWater_Movement_Unused17:
    WalkOnSpotFastSouth
    EndMovement

LakeVerityLowWater_Movement_Unused18:
    WalkNormalSouth
    WalkNormalWest
    WalkNormalSouth 3
    WalkNormalWest
    WalkNormalSouth 6
    SetInvisible
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_PlayerEnter:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_PlayerWatchRivalMoveAwayForCyrus:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_PlayerLookAtExit:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_PlayerFaceRival:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_PlayerWatchRivalLookForLegendary:
    Delay8 4
    WalkOnSpotNormalNorth
    Delay8 9
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
LakeVerityLowWater_Movement_PlayerWatchRivalLeave:
    WalkOnSpotNormalSouth
    EndMovement

LakeVerityLowWater_Movement_Unused19:
    WalkOnSpotNormalSouth
    EndMovement

LakeVerityLowWater_Movement_Unused20:
    Delay8 5
    WalkOnSpotNormalSouth
    Delay8 2
    WalkOnSpotNormalEast
    WalkOnSpotNormalNorth
    EndMovement

LakeVerityLowWater_Movement_Unused21:
    WalkOnSpotNormalSouth
    EndMovement

LakeVerityLowWater_Movement_Unused22:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

LakeVerityLowWater_Movement_Unused23:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

LakeVerityLowWater_Movement_Unused24:
    WalkOnSpotNormalNorth
    EndMovement

LakeVerityLowWater_Movement_Unused25:
    Delay8
    WalkOnSpotNormalSouth
    WalkNormalSouth 4
    WalkNormalWest
    WalkNormalSouth 6
    SetInvisible
    EndMovement

LakeVerityLowWater_Movement_Unused26:
    WalkFastNorth 6
    EndMovement

LakeVerityLowWater_Movement_Unused27:
    WalkFastWest 7
    EndMovement

LakeVerityLowWater_ProfRowan:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TALKED_TO_LAKE_VERITY_LOW_WATER_PROF_ROWAN, LakeVerityLowWater_RowanHowWasLakeValor
    SetFlag FLAG_TALKED_TO_LAKE_VERITY_LOW_WATER_PROF_ROWAN
    BufferPlayerName 0
    Message LakeVerityLowWater_Text_RowanNoLegendaryHowWasLakeValor
    WaitButton
    CloseMessage
    ReleaseAll
    End

LakeVerityLowWater_RowanHowWasLakeValor:
    BufferPlayerName 0
    Message LakeVerityLowWater_Text_RowanHowWasLakeValor
    WaitButton
    CloseMessage
    ReleaseAll
    End

LakeVerityLowWater_Counterpart:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, LakeVerityLowWater_DawnHowWasLakeValor
    GoTo LakeVerityLowWater_LucasHowsLakeValor

LakeVerityLowWater_DawnHowWasLakeValor:
    BufferPlayerName 0
    Message LakeVerityLowWater_Text_DawnHowHasLakeValor
    GoTo LakeVerityLowWater_CloseMessage

LakeVerityLowWater_LucasHowsLakeValor:
    BufferPlayerName 0
    Message LakeVerityLowWater_Text_LucasHowsLakeValor
    GoTo LakeVerityLowWater_CloseMessage

LakeVerityLowWater_CloseMessage:
    WaitButton
    CloseMessage
    ReleaseAll
    End

LakeVerityLowWater_Dummy6:
    End

LakeVerityLowWater_Dummy7:
    End

    .balign 4, 0
