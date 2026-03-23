#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_town.h"
#include "res/field/events/events_solaceon_town.h"


    ScriptEntry SolaceonTown_Rancher1
    ScriptEntry SolaceonTown_Cowgirl1
    ScriptEntry SolaceonTown_Twin
    ScriptEntry SolaceonTown_Cowgirl2
    ScriptEntry SolaceonTown_Rancher2
    ScriptEntry SolaceonTown_RuinManiac
    ScriptEntry SolaceonTown_MapSign
    ScriptEntry SolaceonTown_SignPokemonDayCare
    ScriptEntry SolaceonTown_SignPokemonNewsPress
    ScriptEntry SolaceonTown_OnTransition
    ScriptEntry SolaceonTown_OnResume
    ScriptEntry SolaceonTown_TriggerRival
    ScriptEntryEnd

SolaceonTown_OnResume:
    End

SolaceonTown_OnTransition:
    CheckDaycareHasEgg VAR_MAP_LOCAL_0
    GoToIfNe VAR_MAP_LOCAL_0, FALSE, SolaceonTown_SetDayCareManDirEast
    End

SolaceonTown_SetDayCareManDirEast:
    SetObjectEventDir LOCALID_DAY_CARE_MAN, DIR_EAST
    End

SolaceonTown_Rancher1:
    NPCMessage SolaceonTown_Text_BreathingInRefreshingAir
    End

SolaceonTown_Cowgirl1:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_RELIC, SolaceonTown_TakeATourThroughTheRuins
    Message SolaceonTown_Text_TakeItEasySlowAndCasual
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTown_TakeATourThroughTheRuins:
    Message SolaceonTown_Text_TakeATourThroughTheRuins
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTown_Twin:
    NPCMessage SolaceonTown_Text_ImTooLittle
    End

SolaceonTown_Cowgirl2:
    NPCMessage SolaceonTown_Text_EverySundayIVisitTheLostTower
    End

SolaceonTown_Rancher2:
    NPCMessage SolaceonTown_Text_OverTimeTheTownCameToBe
    End

SolaceonTown_RuinManiac:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPoketchAppRegistered POKETCH_APPID_POKEMONHISTORY, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SolaceonTown_EachPokemonHasItsOwnHistory
    GetLocalDexSeenCount VAR_RESULT
    GoToIfLt VAR_RESULT, 50, SolaceonTown_IfYoureCompetentYoudHaveMetFiftyPokemon
    Message SolaceonTown_Text_ThisHeresAPoketchAppPokemonHistory
    SetVar VAR_0x8004, POKETCH_APPID_POKEMONHISTORY
    Common_GivePoketchApp
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTown_IfYoureCompetentYoudHaveMetFiftyPokemon:
    Message SolaceonTown_Text_IfYoureCompetentYoudHaveMetFiftyPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTown_EachPokemonHasItsOwnHistory:
    Message SolaceonTown_Text_EachPokemonHasItsOwnHistory
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTown_MapSign:
    ShowMapSign SolaceonTown_Text_MapSign
    End

SolaceonTown_SignPokemonDayCare:
    ShowLandmarkSign SolaceonTown_Text_SignPokemonDayCare
    End

SolaceonTown_SignPokemonNewsPress:
    ShowLandmarkSign SolaceonTown_Text_SignPokemonNewsPress
    End

SolaceonTown_TriggerRival:
    LockAll
    ApplyMovement LOCALID_PLAYER, SolaceonTown_Movement_PlayerNoticeRival
    WaitMovement
    Common_SetRivalBGM
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    SetObjectEventPos LOCALID_RIVAL, VAR_0x8004, 0x295
    ClearFlag FLAG_HIDE_SOLACEON_TOWN_RIVAL
    AddObject LOCALID_RIVAL
    LockObject LOCALID_RIVAL
    ApplyMovement LOCALID_PLAYER, SolaceonTown_Movement_PlayerFaceNorth
    ApplyMovement LOCALID_RIVAL, SolaceonTown_Movement_RivalWalkSouth
    WaitMovement
    Message SolaceonTown_Text_Yahoo
    CloseMessage
    ApplyMovement LOCALID_RIVAL, SolaceonTown_Movement_RivalLookAround
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message SolaceonTown_Text_IGotSomethingCool
    ApplyMovement LOCALID_RIVAL, SolaceonTown_Movement_RivalExclamationMark
    WaitMovement
    Message SolaceonTown_Text_CheckOutTheRuins
    CloseMessage
    ApplyMovement LOCALID_RIVAL, SolaceonTown_Movement_RivalLeave
    WaitMovement
    RemoveObject LOCALID_RIVAL
    Common_FadeToDefaultMusic2
    SetVar VAR_SOLACEON_TOWN_STATE, 1
    ReleaseAll
    End

    .balign 4, 0
SolaceonTown_Movement_RivalWalkSouth:
    WalkFastSouth 7
    EndMovement

    .balign 4, 0
SolaceonTown_Movement_RivalLookAround:
    WalkOnSpotFastWest
    Delay8
    WalkOnSpotFastEast
    Delay8
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
SolaceonTown_Movement_RivalExclamationMark:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
SolaceonTown_Movement_RivalLeave:
    WalkFastNorth 7
    EndMovement

    .balign 4, 0
SolaceonTown_Movement_PlayerNoticeRival:
    Delay8
    EmoteExclamationMark
    Delay8 3
    EndMovement

    .balign 4, 0
SolaceonTown_Movement_PlayerFaceNorth:
    FaceNorth
    EndMovement
