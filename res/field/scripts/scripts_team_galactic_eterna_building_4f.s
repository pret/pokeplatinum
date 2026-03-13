#include "macros/scrcmd.inc"
#include "res/text/bank/team_galactic_eterna_building_4f.h"
#include "res/field/events/events_team_galactic_eterna_building_4f.h"


    ScriptEntry TeamGalacticEternaBuilding4F_OnLoad
    ScriptEntry TeamGalacticEternaBuilding4F_Jupiter
    ScriptEntry TeamGalacticEternaBuilding4F_Clefairy
    ScriptEntry TeamGalacticEternaBuilding4F_Buneary
    ScriptEntry TeamGalacticEternaBuilding4F_PokefanM
    ScriptEntry TeamGalacticEternaBuilding4F_Sign
    ScriptEntryEnd

TeamGalacticEternaBuilding4F_OnLoad:
    ScrCmd_2CD
    End

TeamGalacticEternaBuilding4F_Unused:
    ScrCmd_2CD
    End

TeamGalacticEternaBuilding4F_Jupiter:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement LOCALID_POKEFAN_M, TeamGalacticEternaBuilding4F_Movement_PokefanMWalkOnSpotNorth
    WaitMovement
    Message TeamGalacticEternaBuilding4F_Text_IJupiterWillDealWithYou
    CloseMessage
    StartTrainerBattle TRAINER_COMMANDER_JUPITER_TEAM_GALACTIC_ETERNA_BUILDING
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, TeamGalacticEternaBuilding4F_BlackOut
    Message TeamGalacticEternaBuilding4F_Text_WellArentYouTough
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    RemoveObject LOCALID_JUPITER
    FadeScreenIn
    WaitFadeScreen
    WaitTime 15, VAR_RESULT
    GetPlayerDir VAR_0x8004
    GoToIfEq VAR_0x8004, DIR_NORTH, TeamGalacticEternaBuilding4F_PokefanMWalkToPlayerNorth
    GoToIfEq VAR_0x8004, DIR_WEST, TeamGalacticEternaBuilding4F_PokefanMWalkToPlayerWest
    GoToIfEq VAR_0x8004, DIR_EAST, TeamGalacticEternaBuilding4F_PokefanMWalkToPlayerEast
    End

TeamGalacticEternaBuilding4F_PokefanMWalkToPlayerNorth:
    ApplyMovement LOCALID_POKEFAN_M, TeamGalacticEternaBuilding4F_Movement_PokefanMWalkToPlayerNorth
    ApplyMovement LOCALID_PLAYER, TeamGalacticEternaBuilding4F_Movement_PlayerFacePokefanM
    WaitMovement
    GoTo TeamGalacticEternaBuilding4F_HandleTeamGalacticLeftEternaBuilding
    End

TeamGalacticEternaBuilding4F_PokefanMWalkToPlayerWest:
    ApplyMovement LOCALID_POKEFAN_M, TeamGalacticEternaBuilding4F_Movement_PokefanMWalkToPlayerWest
    WaitMovement
    GoTo TeamGalacticEternaBuilding4F_HandleTeamGalacticLeftEternaBuilding
    End

TeamGalacticEternaBuilding4F_PokefanMWalkToPlayerEast:
    ApplyMovement LOCALID_POKEFAN_M, TeamGalacticEternaBuilding4F_Movement_PokefanMWalkToPlayerEast
    WaitMovement
    GoTo TeamGalacticEternaBuilding4F_HandleTeamGalacticLeftEternaBuilding
    End

TeamGalacticEternaBuilding4F_HandleTeamGalacticLeftEternaBuilding:
    Message TeamGalacticEternaBuilding4F_Text_ICantThankYouEnoughRightNowButCruiseByMyCycleShopOK
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SetFlag FLAG_HIDE_ETERNA_CITY_GALACTIC_GRUNTS
    SetFlag FLAG_HIDE_TEAM_GALACTIC_ETERNA_BUILDING_1F_LOOKER
    SetFlag FLAG_HIDE_TEAM_GALACTIC_ETERNA_BUILDING_1F_GRUNT_M_LOOKER
    SetFlag FLAG_TEAM_GALACTIC_LEFT_ETERNA_BUILDING
    ClearFlag FLAG_HIDE_CYCLE_SHOP_POKEFAN_M
    ClearFlag FLAG_HIDE_CYCLE_SHOP_CLEFAIRY
    ClearFlag FLAG_HIDE_ETERNA_CITY_POKECENTER_1F_BUNEARY
    RemoveObject LOCALID_POKEFAN_M
    RemoveObject LOCALID_CLEFAIRY
    RemoveObject LOCALID_BUNEARY
    SetVar VAR_ETERNA_CITY_STATE, 3
    FadeScreenIn
    WaitFadeScreen
    SetFlag FLAG_ALT_MUSIC_GALACTIC_ETERNA_BUILDING
    ReleaseAll
    End

TeamGalacticEternaBuilding4F_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
TeamGalacticEternaBuilding4F_Movement_PokefanMWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
TeamGalacticEternaBuilding4F_Movement_PokefanMWalkToPlayerNorth:
    WalkNormalNorth
    EndMovement

TeamGalacticEternaBuilding4F_UnusedMovement:
    Delay8
    WalkNormalEast 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
TeamGalacticEternaBuilding4F_Movement_PokefanMWalkToPlayerWest:
    WalkNormalNorth 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
TeamGalacticEternaBuilding4F_Movement_PokefanMWalkToPlayerEast:
    WalkNormalNorth 3
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
TeamGalacticEternaBuilding4F_Movement_PlayerFacePokefanM:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

TeamGalacticEternaBuilding4F_UnusedMovement2:
    WalkOnSpotNormalWest
    Delay4
    WalkOnSpotNormalSouth
    EndMovement

TeamGalacticEternaBuilding4F_UnusedMovement3:
    WalkOnSpotNormalWest
    EndMovement

TeamGalacticEternaBuilding4F_Clefairy:
    PokemonCryAndMessage SPECIES_CLEFAIRY, TeamGalacticEternaBuilding4F_Text_ClefairyPi
    End

TeamGalacticEternaBuilding4F_Buneary:
    PokemonCryAndMessage SPECIES_BUNEARY, TeamGalacticEternaBuilding4F_Text_BunearyMyun
    End

TeamGalacticEternaBuilding4F_PokefanM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TEAM_GALACTIC_LEFT_ETERNA_BUILDING, TeamGalacticEternaBuilding4F_ICantThankYouEnoughRightNowButCruiseByMyCycleShopOK
    Message TeamGalacticEternaBuilding4F_Text_WhatIsItWithThisTeamGalactic
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TeamGalacticEternaBuilding4F_ICantThankYouEnoughRightNowButCruiseByMyCycleShopOK:
    Message TeamGalacticEternaBuilding4F_Text_ICantThankYouEnoughRightNowButCruiseByMyCycleShopOK
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TeamGalacticEternaBuilding4F_Sign:
    EventMessage TeamGalacticEternaBuilding4F_Text_WorkingForWorldPeace
    End
