#include "macros/scrcmd.inc"
#include "res/text/bank/route_226_house.h"


    ScriptEntry Route226House_OnTransition
    ScriptEntry Route226House_Meister
    ScriptEntry Route226House_Sign
    ScriptEntryEnd

Route226House_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_THE_MEISTERS_HOUSE
    End

Route226House_Meister:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TRADED_FOR_FOPPA_MAGIKARP, Route226House_MakeFriendsAnywhere
    GoToIfSet FLAG_ENABLED_POKEDEX_LANGUAGE_DETECTION, Route226House_AskTrade
    Message Route226House_Text_ImTheMeister
    TurnOnPokedexLanguageDetection
    SetFlag FLAG_ENABLED_POKEDEX_LANGUAGE_DETECTION
    Message Route226House_Text_PowerUpPokedex
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route226House_AskTrade:
    Message Route226House_Text_AskTradeFinneonForMagikarp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route226House_TryTrade
    GoTo Route226House_ThisIsATragedy

Route226House_TryTrade:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectPokemonToTrade
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, PARTY_SLOT_NONE, Route226House_ThisIsATragedy
    InitNPCTrade NPC_TRADE_FOPPA_MAGIKARP
    SetVar VAR_0x8004, VAR_RESULT
    GetPartyMonSpecies VAR_0x8004, VAR_0x8005
    GetNPCTradeRequestedSpecies VAR_RESULT
    GoToIfNe VAR_0x8005, VAR_RESULT, Route226House_ThatIsNoFinneon
    StartNPCTrade VAR_0x8004
    FinishNPCTrade
    SetFlag FLAG_TRADED_FOR_FOPPA_MAGIKARP
    Message Route226House_Text_DankeSchon
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route226House_ThatIsNoFinneon:
    FinishNPCTrade
    Message Route226House_Text_ThatIsNoFinneon
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route226House_ThisIsATragedy:
    Message Route226House_Text_ThisIsATragedy
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route226House_MakeFriendsAnywhere:
    Message Route226House_Text_MakeFriendsAnywhere
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route226House_Sign:
    EventMessage Route226House_Text_VisitedOver150Countries
    End
