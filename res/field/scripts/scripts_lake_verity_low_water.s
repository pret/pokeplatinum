#include "macros/scrcmd.inc"
#include "res/text/bank/lake_verity_low_water.h"
#include "res/field/events/events_lake_verity_low_water.h"


    ScriptEntry LakeVerityLowWater_OnTransition
    ScriptEntry LakeVerityLowWater_OnLoad
    ScriptEntry LakeVerityLowWater_OnFrameCyrus
    ScriptEntry LakeVerityLowWater_ProfRowan
    ScriptEntry LakeVerityLowWater_Counterpart
    ScriptEntry _048A
    ScriptEntry _048C
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
    GoToIfSet FLAG_MAP_LOCAL, LakeVerityLowWater_HideStarly
    End

LakeVerityLowWater_HideStarly:
    SetFlag FLAG_HIDE_LAKE_VERITY_LOW_WATER_STARLY
    RemoveObject LOCALID_STARLY_SOUTH
    RemoveObject LOCALID_STARLY_EAST
    ClearFlag FLAG_MAP_LOCAL
    End
    End

LakeVerityLowWater_OnFrameCyrus:
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
    Message LakeVerityLowWater_Text_IWillMakeTimeAndSpaceMine
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
    PlayFanfare SEQ_SE_DP_KAIDAN2
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
    Message LakeVerityLowWater_Text_LetsCatchThatLegendaryPokemon
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
    Message LakeVerityLowWater_Text_ThatWasTheLegendaryPokemonCrying
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
    PlayFanfare SEQ_SE_DP_KAIDAN2
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

LakeVerityLowWater_UnusedMovement:
    WalkOnSpotNormalEast
    EndMovement

LakeVerityLowWater_UnusedMovement2:
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

LakeVerityLowWater_UnusedMovement3:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

LakeVerityLowWater_UnusedMovement4:
    WalkOnSpotNormalWest
    EndMovement

LakeVerityLowWater_UnusedMovement5:
    WalkNormalSouth 4
    WalkNormalWest 2
    WalkNormalSouth 5
    EndMovement

LakeVerityLowWater_UnusedMovement6:
    WalkNormalWest
    WalkNormalSouth 5
    WalkNormalWest
    WalkNormalSouth 3
    EndMovement

LakeVerityLowWater_UnusedMovement7:
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

LakeVerityLowWater_UnusedMovement8:
    WalkNormalSouth 3
    SetInvisible
    EndMovement

LakeVerityLowWater_UnusedMovement9:
    WalkNormalNorth 4
    WalkNormalEast 2
    WalkNormalNorth 4
    WalkOnSpotNormalWest
    EndMovement

LakeVerityLowWater_UnusedMovement10:
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

LakeVerityLowWater_UnusedMovement11:
    WalkOnSpotNormalEast
    EndMovement

LakeVerityLowWater_UnusedMovement12:
    WalkOnSpotFastEast
    EndMovement

LakeVerityLowWater_UnusedMovement13:
    WalkOnSpotNormalSouth
    EndMovement

LakeVerityLowWater_UnusedMovement14:
    Delay8 7
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

LakeVerityLowWater_UnusedMovement15:
    Delay4
    WalkOnSpotNormalSouth
    EndMovement

LakeVerityLowWater_UnusedMovement16:
    WalkNormalWest
    WalkNormalSouth
    WalkOnSpotNormalWest
    EndMovement

LakeVerityLowWater_UnusedMovement17:
    WalkOnSpotFastSouth
    EndMovement

LakeVerityLowWater_UnusedMovement18:
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

LakeVerityLowWater_UnusedMovement19:
    WalkOnSpotNormalSouth
    EndMovement

LakeVerityLowWater_UnusedMovement20:
    Delay8 5
    WalkOnSpotNormalSouth
    Delay8 2
    WalkOnSpotNormalEast
    WalkOnSpotNormalNorth
    EndMovement

LakeVerityLowWater_UnusedMovement21:
    WalkOnSpotNormalSouth
    EndMovement

LakeVerityLowWater_UnusedMovement22:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

LakeVerityLowWater_UnusedMovement23:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

LakeVerityLowWater_UnusedMovement24:
    WalkOnSpotNormalNorth
    EndMovement

LakeVerityLowWater_UnusedMovement25:
    Delay8
    WalkOnSpotNormalSouth
    WalkNormalSouth 4
    WalkNormalWest
    WalkNormalSouth 6
    SetInvisible
    EndMovement

LakeVerityLowWater_UnusedMovement26:
    WalkFastNorth 6
    EndMovement

LakeVerityLowWater_UnusedMovement27:
    WalkFastWest 7
    EndMovement

LakeVerityLowWater_ProfRowan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TALKED_TO_LAKE_VERITY_LOW_WATER_PROF_ROWAN, LakeVerityLowWater_RowanHowWasLakeValor
    SetFlag FLAG_TALKED_TO_LAKE_VERITY_LOW_WATER_PROF_ROWAN
    BufferPlayerName 0
    Message LakeVerityLowWater_Text_RowanNoLegendaryPokemonHowWasLakeValor
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

LakeVerityLowWater_RowanHowWasLakeValor:
    BufferPlayerName 0
    Message LakeVerityLowWater_Text_RowanHowWasLakeValor
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

LakeVerityLowWater_Counterpart:
    PlayFanfare SEQ_SE_CONFIRM
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
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_048A:
    End

_048C:
    End

    .balign 4, 0
