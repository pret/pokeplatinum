#include "macros/scrcmd.inc"
#include "res/text/bank/resort_area_ribbon_syndicate_1f.h"
#include "res/field/events/events_resort_area_ribbon_syndicate_1f.h"
#include "generated/ribbons.h"


    ScriptEntry ResortAreaRibbonSyndicate1F_Beauty
    ScriptEntry ResortAreaRibbonSyndicate1F_CashierF
    ScriptEntry ResortAreaRibbonSyndicate1F_MiddleAgedWoman
    ScriptEntry ResortAreaRibbonSyndicate1F_Lady
    ScriptEntry ResortAreaRibbonSyndicate1F_Skitty
    ScriptEntry ResortAreaRibbonSyndicate1F_Psyduck
    ScriptEntry ResortAreaRibbonSyndicate1F_OnFrameCheckEntry
    ScriptEntry ResortAreaRibbonSyndicate1F_OnTransition
    ScriptEntryEnd

ResortAreaRibbonSyndicate1F_OnTransition:
    GoToIfSet FLAG_JOINED_RIBBON_SYNDICATE, ResortAreaRibbonSyndicate1F_SetBeautyPositionAwayFromDoor
    End

ResortAreaRibbonSyndicate1F_SetBeautyPositionAwayFromDoor:
    SetObjectEventPos LOCALID_BEAUTY, 16, 14
    SetObjectEventDir LOCALID_BEAUTY, DIR_SOUTH
    End

ResortAreaRibbonSyndicate1F_OnFrameCheckEntry:
    LockAll
    WaitTime 20, VAR_RESULT
    CountPartyRibbons VAR_0x8004
    GoToIfLt VAR_0x8004, 10, ResortAreaRibbonSyndicate1F_DenyEntry
    SetVar VAR_RESORT_AREA_RIBBON_SYNDICATE_1F_STATE, 1
    SetFlag FLAG_JOINED_RIBBON_SYNDICATE
    BufferPlayerName 0
    Message ResortAreaRibbonSyndicate1F_Text_YouMustJoinUs
    CloseMessage
    ApplyMovement LOCALID_BEAUTY, ResortAreaRibbonSyndicate1F_Movement_BeautyMoveAside
    WaitMovement
    ReleaseAll
    End

ResortAreaRibbonSyndicate1F_DenyEntry:
    Message ResortAreaRibbonSyndicate1F_Text_CollectLotsOfRibbons
    CloseMessage
    WaitTime 20, VAR_RESULT
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_RESORT_AREA, 0, 824, 454, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

    .balign 4, 0
ResortAreaRibbonSyndicate1F_Movement_BeautyMoveAside:
    FaceWest
    LockDir
    WalkNormalEast
    UnlockDir
    EndMovement

ResortAreaRibbonSyndicate1F_Beauty:
    BufferPlayerName 0
    NPCMessage ResortAreaRibbonSyndicate1F_Text_LookedForwardSeeingYou
    End

ResortAreaRibbonSyndicate1F_CashierF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFirstNonEggInParty VAR_0x8000
    BufferPlayerName 0
    BufferPartyMonSpecies 2, VAR_0x8000
    GetPartyMonRibbon VAR_RESULT, VAR_0x8000, RIBBON_GORGEOUS_ROYAL
    GoToIfEq VAR_RESULT, TRUE, ResortAreaRibbonSyndicate1F_ThatsGorgeousRoyalRibbon
    GetPartyMonRibbon VAR_RESULT, VAR_0x8000, RIBBON_ROYAL
    GoToIfEq VAR_RESULT, TRUE, ResortAreaRibbonSyndicate1F_OfferGorgeousRoyalRibbon
    GetPartyMonRibbon VAR_RESULT, VAR_0x8000, RIBBON_GORGEOUS
    GoToIfEq VAR_RESULT, TRUE, ResortAreaRibbonSyndicate1F_OfferRoyalRibbon
    GoTo ResortAreaRibbonSyndicate1F_OfferGorgeousRibbon

ResortAreaRibbonSyndicate1F_OfferGorgeousRibbon:
    ShowMoney 20, 2
    Message ResortAreaRibbonSyndicate1F_Text_OfferGorgeousRibbon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, ResortAreaRibbonSyndicate1F_PleaseVisitAgain
    GoToIfNotEnoughMoney 10000, ResortAreaRibbonSyndicate1F_DontJokeAboutMoney
    AddToGameRecord RECORD_MONEY_SPENT, 10000
    RemoveMoney 10000
    UpdateMoneyDisplay
    PlaySE SEQ_SE_DP_REGI
    WaitSE SEQ_SE_DP_REGI
    Message ResortAreaRibbonSyndicate1F_Text_BoughtGorgeousRibbon
    Message ResortAreaRibbonSyndicate1F_Text_PutGorgeousRibbonOnPokemon
    WaitButton
    SetPartyMonRibbon VAR_0x8000, RIBBON_GORGEOUS
    CloseMessage
    HideMoney
    ReleaseAll
    End

ResortAreaRibbonSyndicate1F_OfferRoyalRibbon:
    ShowMoney 20, 2
    Message ResortAreaRibbonSyndicate1F_Text_OfferRoyalRibbon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, ResortAreaRibbonSyndicate1F_PleaseVisitAgain
    GoToIfNotEnoughMoney 100000, ResortAreaRibbonSyndicate1F_DontJokeAboutMoney
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 100000
    RemoveMoney 100000
    UpdateMoneyDisplay
    PlaySE SEQ_SE_DP_REGI
    WaitSE SEQ_SE_DP_REGI
    Message ResortAreaRibbonSyndicate1F_Text_BoughtRoyalRibbon
    Message ResortAreaRibbonSyndicate1F_Text_PutRoyalRibbonOnPokemon
    WaitButton
    SetPartyMonRibbon VAR_0x8000, RIBBON_ROYAL
    CloseMessage
    HideMoney
    ReleaseAll
    End

ResortAreaRibbonSyndicate1F_OfferGorgeousRoyalRibbon:
    ShowMoney 20, 2
    Message ResortAreaRibbonSyndicate1F_Text_OfferGorgeousRoyalRibbon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, ResortAreaRibbonSyndicate1F_PleaseVisitAgain
    GoToIfNotEnoughMoney 999999, ResortAreaRibbonSyndicate1F_DontJokeAboutMoney
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 999999
    RemoveMoney 999999
    UpdateMoneyDisplay
    PlaySE SEQ_SE_DP_REGI
    WaitSE SEQ_SE_DP_REGI
    Message ResortAreaRibbonSyndicate1F_Text_BoughtGorgeousRoyalRibbon
    Message ResortAreaRibbonSyndicate1F_Text_PutRoyalGorgeousRibbonOnPokemon
    WaitButton
    SetPartyMonRibbon VAR_0x8000, RIBBON_GORGEOUS_ROYAL
    CloseMessage
    HideMoney
    ReleaseAll
    End

ResortAreaRibbonSyndicate1F_ThatsGorgeousRoyalRibbon:
    Message ResortAreaRibbonSyndicate1F_Text_ThatsGorgeousRoyalRibbon
    WaitButton
    CloseMessage
    ReleaseAll
    End

ResortAreaRibbonSyndicate1F_DontJokeAboutMoney:
    Message ResortAreaRibbonSyndicate1F_Text_DontJokeAboutMoney
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

ResortAreaRibbonSyndicate1F_PleaseVisitAgain:
    Message ResortAreaRibbonSyndicate1F_Text_PleaseVisitAgain
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

ResortAreaRibbonSyndicate1F_MiddleAgedWoman:
    NPCMessage ResortAreaRibbonSyndicate1F_Text_SignOfStatus
    End

ResortAreaRibbonSyndicate1F_Lady:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, ResortAreaRibbonSyndicate1F_WishMenPayAttention
    GoToIfEq VAR_RESULT, GENDER_FEMALE, ResortAreaRibbonSyndicate1F_WomenWorthyBeingSeen
    End

ResortAreaRibbonSyndicate1F_WishMenPayAttention:
    Message ResortAreaRibbonSyndicate1F_Text_WishMenPayAttention
    WaitButton
    CloseMessage
    ReleaseAll
    End

ResortAreaRibbonSyndicate1F_WomenWorthyBeingSeen:
    Message ResortAreaRibbonSyndicate1F_Text_WomenWorthyBeingSeen
    WaitButton
    CloseMessage
    ReleaseAll
    End

ResortAreaRibbonSyndicate1F_Skitty:
    PokemonCryAndMessage SPECIES_SKITTY, ResortAreaRibbonSyndicate1F_Text_SkittyCry
    End

ResortAreaRibbonSyndicate1F_Psyduck:
    PokemonCryAndMessage SPECIES_PSYDUCK, ResortAreaRibbonSyndicate1F_Text_PsyduckCry
    End
