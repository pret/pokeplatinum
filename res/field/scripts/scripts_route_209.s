#include "macros/scrcmd.inc"
#include "res/text/bank/route_209.h"


    ScriptEntry Route209_PokefanM
    ScriptEntry Route209_HallowedTower
    ScriptEntry Route209_ArrowSignpostHearthomeCity
    ScriptEntry Route209_ArrowSignpostSolaceonTown
    ScriptEntry Route209_Fisherman
    ScriptEntry Route209_JoggerRichard
    ScriptEntry Route209_JoggerRaul
    ScriptEntry Route209_OnTransition
    ScriptEntry Route209_TrainerTips
    ScriptEntryEnd

Route209_OnTransition:
    GetTimeOfDay VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, TIMEOFDAY_MORNING, Route209_SetJoggersBattle
    GoToIfInRange VAR_MAP_LOCAL_0, TIMEOFDAY_DAY, TIMEOFDAY_LATE_NIGHT, Route209_SetJoggersNoBattle
    End

Route209_SetJoggersBattle:
    ClearFlag FLAG_HIDE_ROUTE_209_JOGGER_RICHARD
    ClearFlag FLAG_HIDE_ROUTE_209_JOGGER_RAUL
    SetFlag FLAG_HIDE_ROUTE_209_JOGGER_RICHARD_NO_BATTLE
    SetFlag FLAG_HIDE_ROUTE_209_JOGGER_RAUL_NO_BATTLE
    End

Route209_SetJoggersNoBattle:
    ClearFlag FLAG_HIDE_ROUTE_209_JOGGER_RICHARD_NO_BATTLE
    ClearFlag FLAG_HIDE_ROUTE_209_JOGGER_RAUL_NO_BATTLE
    SetFlag FLAG_HIDE_ROUTE_209_JOGGER_RICHARD
    SetFlag FLAG_HIDE_ROUTE_209_JOGGER_RAUL
    End

Route209_PokefanM:
    NPCMessage Route209_Text_ThisIsTheLostTower
    End

Route209_HallowedTower:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfEq VAR_HALLOWED_TOWER_STATE, 1, Route209_CheckSpiritombCounter
    CheckItem ITEM_ODD_KEYSTONE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Route209_ThereIsABrokenTower
    Message Route209_Text_WouldYouLikeToUseTheOddKeystone
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route209_UseOddKeystone
    CloseMessage
    ReleaseAll
    End

Route209_UseOddKeystone:
    BufferPlayerName 0
    Message Route209_Text_PlayerUsedTheOddKeystone
    WaitButton
    RemoveItem ITEM_ODD_KEYSTONE, 1, VAR_RESULT
    SetVar VAR_HALLOWED_TOWER_STATE, 1
    CloseMessage
    ReleaseAll
    End

Route209_CheckSpiritombCounter:
    GetSpiritombCounter VAR_RESULT
    GoToIfGe VAR_RESULT, 32, Route209_EncounterSpiritomb
    GoToIfGe VAR_RESULT, 29, Route209_ThereIsSomeSortOfPresence
    GoToIfGe VAR_RESULT, 22, Route209_IsThatTowerShaking
    GoToIfGe VAR_RESULT, 15, Route209_IsThatCryingComingFromInside
    GoToIfGe VAR_RESULT, 8, Route209_ItsStonesAppearToHaveShifted
    GoTo Route209_ItWasBuiltManyYearsAgo

Route209_EncounterSpiritomb:
    WaitSE SEQ_SE_CONFIRM
    PlayCry SPECIES_SPIRITOMB
    Message Route209_Text_SpiritombCry
    WaitCry
    CloseMessage
    StartWildBattle SPECIES_SPIRITOMB, 25
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Route209_BlackOut
    SetVar VAR_HALLOWED_TOWER_STATE, 0
    ClearSpiritombCounter
    End

Route209_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

Route209_ItWasBuiltManyYearsAgo:
    Message Route209_Text_ItWasBuiltManyYearsAgo
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route209_ItsStonesAppearToHaveShifted:
    Message Route209_Text_ItsStonesAppearToHaveShifted
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route209_IsThatCryingComingFromInside:
    Message Route209_Text_IsThatCryingComingFromInside
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route209_IsThatTowerShaking:
    Message Route209_Text_IsTheTowerShaking
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route209_ThereIsSomeSortOfPresence:
    Message Route209_Text_ThereIsSomeSortOfPresence
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route209_ThereIsABrokenTower:
    Message Route209_Text_ThereIsABrokenTower
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route209_Fisherman:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_0x8004, ITEM_GOOD_ROD
    BufferItemNameWithArticle 0, VAR_0x8004
    CapitalizeFirstLetter 0
    GoToIfSet FLAG_GOOD_ROD_OBTAINED, Route209_AskExplainHowToFish
    Message Route209_Text_GoodRodIsReallyGoodWouldntYouAgree
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route209_AcceptGoodRod
    GoToIfEq VAR_RESULT, MENU_NO, Route209_RefuseGoodRod
    End

Route209_AskExplainHowToFish:
    BufferItemName 0, VAR_0x8004
    Message Route209_Text_DoINeedToExplainHowToFish
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route209_ExplainHowToFish
    GoToIfEq VAR_RESULT, MENU_NO, Route209_WhenYouReelPokemonYouBattleIt
    End

Route209_ExplainHowToFish:
    Message Route209_Text_ExplainHowToFish
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route209_WhenYouReelPokemonYouBattleIt:
    Message Route209_Text_WhenYouReelPokemonYouBattleIt
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route209_RefuseGoodRod:
    Message Route209_Text_YouDontLikeToFish
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route209_AcceptGoodRod:
    BufferItemName 0, VAR_0x8004
    Message Route209_Text_TakeThisGoodRod
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    SetFlag FLAG_GOOD_ROD_OBTAINED
    GoTo Route209_AskExplainHowToFish

Route209_ArrowSignpostHearthomeCity:
    ShowArrowSign Route209_Text_SignRt209HearthomeCity
    End

Route209_ArrowSignpostSolaceonTown:
    ShowArrowSign Route209_Text_Rt209SolaceonTown
    End

Route209_TrainerTips:
    ShowScrollingSign Route209_Text_TrainerTipsRegisterKeyItems
    End

Route209_JoggerRichard:
    NPCMessage Route209_Text_DoYouJogEveryMorning
    End

Route209_JoggerRaul:
    NPCMessage Route209_Text_AWildPokemonChasedAfterMe
    End

    .balign 4, 0
