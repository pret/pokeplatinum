#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_city.h"
#include "res/field/events/events_snowpoint_city.h"


    ScriptEntry SnowpointCity_OnTransition
    ScriptEntry SnowpointCity_TempleGuard
    ScriptEntry SnowpointCity_TriggerTempleGuard
    ScriptEntry SnowpointCity_Candice
    ScriptEntry SnowpointCity_AceTrainerSnowF
    ScriptEntry SnowpointCity_SnowpointNPCF1
    ScriptEntry SnowpointCity_SnowpointNPCF2
    ScriptEntry SnowpointCity_SnowpointNPCM
    ScriptEntry SnowpointCity_Sailor
    ScriptEntry SnowpointCity_MapSign
    ScriptEntry SnowpointCity_GymSign
    ScriptEntry SnowpointCity_SailorSSSpiral
    ScriptEntryEnd

SnowpointCity_OnTransition:
    GoToIfGe VAR_SNOWPOINT_CITY_STATE, 1, SnowpointCity_HideCandice
    End

SnowpointCity_HideCandice:
    SetFlag FLAG_HIDE_SNOWPOINT_CITY_CANDICE
    End

SnowpointCity_TriggerTempleGuard:
    LockAll
    ApplyMovement LOCALID_TEMPLE_GUARD, SnowpointCity_Movement_TempleGuardWalkOnSpotWest
    WaitMovement
    Message SnowpointCity_Text_OnlyChosenMayEnterTemple
    CloseMessage
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SnowpointCity_CheckAllowEnterTemple
    GoTo SnowpointCity_TempleGuardBlockPlayer
    End

SnowpointCity_TempleGuardBlockPlayer:
    ApplyMovement LOCALID_TEMPLE_GUARD, SnowpointCity_Movement_TempleGuardWalkOnSpotSOuth
    ApplyMovement LOCALID_PLAYER, SnowpointCity_Movement_PlayerWalkSouth
    WaitMovement
    ReleaseAll
    End

SnowpointCity_CheckAllowEnterTemple:
    GoToIfUnset FLAG_GAME_COMPLETED, SnowpointCity_TempleGuardBlockPlayer
    GoTo SnowpointCity_CallAllowEnterTemple

    .balign 4, 0
SnowpointCity_Movement_TempleGuardWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
SnowpointCity_Movement_TempleGuardWalkOnSpotSOuth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SnowpointCity_Movement_PlayerWalkSouth:
    WalkNormalSouth
    EndMovement

SnowpointCity_TempleGuard:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SnowpointCity_TempleGuardNationalDex
    GoTo SnowpointCity_MayNotEnterTemple

SnowpointCity_MayNotEnterTemple:
    Message SnowpointCity_Text_OnlyChosenMayEnterTemple2
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCity_TempleGuardNationalDex:
    GoToIfUnset FLAG_GAME_COMPLETED, SnowpointCity_MayNotEnterTemple
    GoToIfEq VAR_SNOWPOINT_CITY_STATE, 0, SnowpointCity_OnlyChosenMayEnterTemple
    Message SnowpointCity_Text_BuiltInAncientTimes
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCity_OnlyChosenMayEnterTemple:
    Message SnowpointCity_Text_OnlyChosenMayEnterTemple
    CloseMessage
    Call SnowpointCity_AllowEnterTemple
    ReleaseAll
    End

SnowpointCity_CallAllowEnterTemple:
    Call SnowpointCity_AllowEnterTemple
    ReleaseAll
    End

SnowpointCity_AllowEnterTemple:
    WaitTime 30, VAR_RESULT
    ClearFlag FLAG_HIDE_SNOWPOINT_CITY_CANDICE
    AddObject LOCALID_CANDICE
    ApplyMovement LOCALID_CANDICE, SnowpointCity_Movement_CandiceEnter
    WaitMovement
    Message SnowpointCity_Text_LetThatPersonIn
    CloseMessage
    ApplyMovement LOCALID_PLAYER, SnowpointCity_Movement_PlayerWalkOnSpotSouth
    ApplyMovement LOCALID_TEMPLE_GUARD, SnowpointCity_Movement_TempleGuardFaceSouth
    WaitMovement
    SetVar VAR_SNOWPOINT_CITY_STATE, 1
    Message SnowpointCity_Text_EnjoyYourExploring
    WaitButton
    CloseMessage
    Return

    .balign 4, 0
SnowpointCity_Movement_TempleGuardFaceSouth:
    FaceSouth
    EndMovement

    .balign 4, 0
SnowpointCity_Movement_PlayerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SnowpointCity_Movement_CandiceEnter:
    WalkNormalNorth 7
    EndMovement

SnowpointCity_Candice:
    NPCMessage SnowpointCity_Text_EnjoyYourExploring
    End

SnowpointCity_AceTrainerSnowF:
    NPCMessage SnowpointCity_Text_TownIsFreezingCold
    End

SnowpointCity_SnowpointNPCF1:
    NPCMessage SnowpointCity_Text_ScarfLooksWarm
    End

SnowpointCity_SnowpointNPCF2:
    NPCMessage SnowpointCity_Text_CandiceIsTeachingMe
    End

SnowpointCity_SnowpointNPCM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_SNOWPOINT_CITY_STATE, 1, SnowpointCity_PokemonDraggedCityHere
    Message SnowpointCity_Text_IWantToLookAroundTemple
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCity_PokemonDraggedCityHere:
    Message SnowpointCity_Text_PokemonDraggedCityHere
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCity_Sailor:
    NPCMessage SnowpointCity_Text_NothingExceptionalHere
    End

SnowpointCity_MapSign:
    ShowMapSign SnowpointCity_Text_MapSign
    End

SnowpointCity_GymSign:
    ShowScrollingSign SnowpointCity_Text_SignPokemonGym
    End

SnowpointCity_SailorSSSpiral:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_GAME_COMPLETED, SnowpointCity_ILookForwardToAGreatTrainer
    Message SnowpointCity_Text_SailToBattleZone
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, SnowpointCity_TakeShipToBattleZone
    GoToIfEq VAR_RESULT, MENU_NO, SnowpointCity_YouCantGoUsingSurf
    End

SnowpointCity_ILookForwardToAGreatTrainer:
    Message SnowpointCity_Text_ILookForwardToAGreatTrainer
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCity_YouCantGoUsingSurf:
    Message SnowpointCity_Text_YouCantGoUsingSurf
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCity_TakeShipToBattleZone:
    CallIfUnset FLAG_SAILED_TO_BATTLE_ZONE, SnowpointCity_Cynthia
    Message SnowpointCity_Text_LetsSetSail
    CloseMessage
    Call SnowpointCity_SailorEnterShip
    Call SnowpointCity_PlayerEnterShip
    TakeShipFromSnowpoint DIR_EAST, MAP_HEADER_FIGHT_AREA, 623, 434
    ReleaseAll
    End

SnowpointCity_Cynthia:
    ClearFlag FLAG_HIDE_SNOWPOINT_CITY_CYNTHIA
    AddObject LOCALID_CYNTHIA
    LockObject LOCALID_CYNTHIA
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, SnowpointCity_Movement_CynthiaEnter
    WaitMovement
    Message SnowpointCity_Text_ImGladIWaited
    ApplyMovement LOCALID_PLAYER, SnowpointCity_Movement_PlayerNoticeCynthia
    WaitMovement
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, SnowpointCity_Movement_CynthiaWalkEast
    WaitMovement
    WaitTime 15, VAR_RESULT
    Message SnowpointCity_Text_GoodThatOurWorldChanges
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, SnowpointCity_Movement_CynthiaWalkWestOnSpotSouth
    WaitMovement
    Message SnowpointCity_Text_TravelToFarOffPlaces
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, SnowpointCity_Movement_CynthiaLeave
    WaitMovement
    RemoveObject LOCALID_CYNTHIA
    ApplyMovement LOCALID_PLAYER, SnowpointCity_Movement_PlayerWalkOnSpotSouth2
    WaitMovement
    SetFlag FLAG_SAILED_TO_BATTLE_ZONE
    Return

    .balign 4, 0
SnowpointCity_Movement_PlayerNoticeCynthia:
    EmoteExclamationMark
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SnowpointCity_Movement_PlayerWalkOnSpotSouth2:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SnowpointCity_Movement_CynthiaEnter:
    WalkNormalWest 4
    WalkNormalSouth 2
    WalkNormalWest 6
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
SnowpointCity_Movement_CynthiaWalkEast:
    WalkNormalEast
    EndMovement

    .balign 4, 0
SnowpointCity_Movement_CynthiaWalkWestOnSpotSouth:
    WalkNormalWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SnowpointCity_Movement_CynthiaLeave:
    WalkNormalNorth 2
    WalkNormalEast 3
    WalkNormalNorth 2
    WalkNormalEast 7
    EndMovement

SnowpointCity_SailorEnterShip:
    ApplyMovement LOCALID_SAILOR_SS_SPIRAL, SnowpointCity_Movement_SailorSSSpiralFaceSouth
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_SAILOR_SS_SPIRAL, SnowpointCity_Movement_SetInvisible
    WaitMovement
    Return

SnowpointCity_PlayerEnterShip:
    ApplyMovement LOCALID_PLAYER, SnowpointCity_Movement_PlayerWalkToShip
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, SnowpointCity_Movement_SetInvisible
    WaitMovement
    Return

    .balign 4, 0
SnowpointCity_Movement_SailorSSSpiralFaceSouth:
    FaceSouth
    Delay15
    EndMovement

    .balign 4, 0
SnowpointCity_Movement_SetInvisible:
    SetInvisible
    EndMovement

    .balign 4, 0
SnowpointCity_Movement_PlayerWalkToShip:
    WalkNormalSouth
    Delay15
    EndMovement
