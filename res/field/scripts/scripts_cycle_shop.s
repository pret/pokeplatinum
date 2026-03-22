#include "macros/scrcmd.inc"
#include "res/text/bank/cycle_shop.h"


    ScriptEntry CycleShop_PokefanM
    ScriptEntry CycleShop_Clefairy
    ScriptEntry CycleShop_Youngster
    ScriptEntry CycleShop_Manual
    ScriptEntry CycleShop_Catalog
    ScriptEntryEnd

CycleShop_PokefanM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_BICYCLE, CycleShop_ThisIsTheLatestModelSoIllReadTheOperatingManualToYou
    Message CycleShop_Text_ThanksForRescuingMeThisIsSomethingToShowMyThanks
    SetVar VAR_0x8004, ITEM_BICYCLE
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_BICYCLE
    SetVar VAR_ETERNA_CITY_BLOCK_EXITS_STATE, 1
    SetBlackOutWarpId 9
    GoTo CycleShop_ThisIsTheLatestModelSoIllReadTheOperatingManualToYou
    End

CycleShop_ThisIsTheLatestModelSoIllReadTheOperatingManualToYou:
    Message CycleShop_Text_ThisIsTheLatestModelSoIllReadTheOperatingManualToYou
    WaitButton
    CloseMessage
    ReleaseAll
    End

CycleShop_Clefairy:
    PokemonCryAndMessage SPECIES_CLEFAIRY, CycleShop_Text_ClefairyPipPiih
    End

CycleShop_Youngster:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TEAM_GALACTIC_LEFT_ETERNA_BUILDING, CycleShop_WhatWasTeamGalacticTryingToDoWithOtherPeoplesPokemon
    Message CycleShop_Text_TheManagersGoneOffToTheTeamGalacticBuildingAndHasntReturned
    WaitButton
    CloseMessage
    ReleaseAll
    End

CycleShop_WhatWasTeamGalacticTryingToDoWithOtherPeoplesPokemon:
    Message CycleShop_Text_WhatWasTeamGalacticTryingToDoWithOtherPeoplesPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

CycleShop_Manual:
    EventMessage CycleShop_Text_ThereIsAManualOnTheLatestModelBicycle
    End

CycleShop_Catalog:
    EventMessage CycleShop_Text_TheresACatalogFromTheHoennRegionOnItsPopularBikes
    End

    .balign 4, 0
