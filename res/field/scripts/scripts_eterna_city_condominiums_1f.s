#include "macros/scrcmd.inc"
#include "constants/npc_trades.h"
#include "res/text/bank/eterna_city_condominiums_1f.h"


    ScriptEntry EternaCityCondominiums1F_ExpertM
    ScriptEntry EternaCityCondominiums1F_NinjaBoy
    ScriptEntry EternaCityCondominiums1F_PokefanM
    ScriptEntryEnd

EternaCityCondominiums1F_ExpertM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message EternaCityCondominiums1F_Text_WantMeToRateNicknames
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, EternaCityCondominiums1F_TryGiveNickname
    GoTo EternaCityCondominiums1F_PleaseComeVisitAgain
    End

EternaCityCondominiums1F_TryGiveNickname:
    Message EternaCityCondominiums1F_Text_CritiqueWhichNickname
    WaitABPress
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0xFF, EternaCityCondominiums1F_PleaseComeVisitAgain
    SetVar VAR_0x8005, VAR_RESULT
    GetPartyMonSpecies VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_NONE, EternaCityCondominiums1F_SelectedEgg
    CheckIsPartyMonOutsider VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, EternaCityCondominiums1F_SelectedOutsiderPokemon
    BufferPartyMonNickname 0, VAR_0x8005
    Message EternaCityCondominiums1F_Text_GiveItABetterName
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, EternaCityCondominiums1F_GiveNewNickname
    GoTo EternaCityCondominiums1F_PleaseComeVisitAgain
    End

EternaCityCondominiums1F_PleaseComeVisitAgain:
    Message EternaCityCondominiums1F_Text_PleaseComeVisitAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_SelectedEgg:
    Message EternaCityCondominiums1F_Text_CantNicknameEgg
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_SelectedOutsiderPokemon:
    BufferPartyMonNickname 0, VAR_0x8005
    Message EternaCityCondominiums1F_Text_TrulyImpeccableName
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_GiveNewNickname:
    Message EternaCityCondominiums1F_Text_WhatShallNewNicknameBe
    WaitABPress
    CloseMessage
    SetVar VAR_RESULT, 0
    FadeScreenOut
    WaitFadeScreen
    OpenPokemonNamingScreen VAR_0x8005, VAR_RESULT
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 1, EternaCityCondominiums1F_GaveSameNickname
    ScrCmd_2B8 VAR_0x8005
    IncrementGameRecord RECORD_POKEMON_NICKNAMED
    BufferPartyMonNickname 0, VAR_0x8005
    Message EternaCityCondominiums1F_Text_BetterNameThanBefore
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_GaveSameNickname:
    BufferPartyMonNickname 0, VAR_0x8005
    Message EternaCityCondominiums1F_Text_NoDifferentFromBefore
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_NinjaBoy:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TRADED_FOR_CHARAP_CHATOT, EternaCityCondominiums1F_DidChatotLearnChatter
    Message EternaCityCondominiums1F_Text_AskTradeBuizelForChatot
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, EternaCityCondominiums1F_TryTrade
    GoTo EternaCityCondominiums1F_OhOKTotallyGotIt
    End

EternaCityCondominiums1F_TryTrade:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectPokemonToTrade
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0xFF, EternaCityCondominiums1F_OhOKTotallyGotIt
    InitNPCTrade NPC_TRADE_CHARAP_CHATOT
    SetVar VAR_0x8004, VAR_RESULT
    GetPartyMonSpecies VAR_0x8004, VAR_0x8005
    GetNPCTradeRequestedSpecies VAR_RESULT
    GoToIfNe VAR_0x8005, VAR_RESULT, EternaCityCondominiums1F_IWantBuizel
    StartNPCTrade VAR_0x8004
    FinishNPCTrade
    SetFlag FLAG_TRADED_FOR_CHARAP_CHATOT
    Message EternaCityCondominiums1F_Text_YesSoAwesomeABuizel
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_IWantBuizel:
    FinishNPCTrade
    Message EternaCityCondominiums1F_Text_IWantBuizel
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_OhOKTotallyGotIt:
    Message EternaCityCondominiums1F_Text_OhOKTotallyGotIt
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_DidChatotLearnChatter:
    Message EternaCityCondominiums1F_Text_DidChatotLearnChatter
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_PokefanM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetTimeOfDay VAR_RESULT
    GoToIfEq VAR_RESULT, TIMEOFDAY_LATE_NIGHT, EternaCityCondominiums1F_Mantain24HourWatchZzz
    GoTo EternaCityCondominiums1F_ImBuildingSuperintented
    End

EternaCityCondominiums1F_ImBuildingSuperintented:
    Message EternaCityCondominiums1F_Text_ImBuildingSuperintented
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_Mantain24HourWatchZzz:
    Message EternaCityCondominiums1F_Text_Mantain24HourWatchZzz
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
