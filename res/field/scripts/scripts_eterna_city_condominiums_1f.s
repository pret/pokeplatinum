#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_condominiums_1f.h"


    ScriptEntry EternaCityCondominiums1F_ExpertM
    ScriptEntry EternaCityCondominiums1F_NinjaBoy
    ScriptEntry EternaCityCondominiums1F_PokefanM
    ScriptEntryEnd

EternaCityCondominiums1F_ExpertM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message EternaCityCondominiums1F_Text_WantMeToRateTheNicknamesOfYourPokemon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, EternaCityCondominiums1F_TryGiveNickname
    GoTo EternaCityCondominiums1F_ISeePleaseComeVisitAgain
    End

EternaCityCondominiums1F_TryGiveNickname:
    Message EternaCityCondominiums1F_Text_WhichPokemonsNicknameShouldICritique
    WaitABPress
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0xFF, EternaCityCondominiums1F_ISeePleaseComeVisitAgain
    SetVar VAR_0x8005, VAR_RESULT
    GetPartyMonSpecies VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_NONE, EternaCityCondominiums1F_SelectedEgg
    CheckIsPartyMonOutsider VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, EternaCityCondominiums1F_SelectedOutsiderPokemon
    BufferPartyMonNickname 0, VAR_0x8005
    Message EternaCityCondominiums1F_Text_WouldYouLikeToGiveItAnEvenBetterName
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, EternaCityCondominiums1F_GiveNewNickname
    GoTo EternaCityCondominiums1F_ISeePleaseComeVisitAgain
    End

EternaCityCondominiums1F_ISeePleaseComeVisitAgain:
    Message EternaCityCondominiums1F_Text_ISeePleaseComeVisitAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_SelectedEgg:
    Message EternaCityCondominiums1F_Text_AnEggCanGoByNoOtherName
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_SelectedOutsiderPokemon:
    BufferPartyMonNickname 0, VAR_0x8005
    Message EternaCityCondominiums1F_Text_NicknameIsItThatIsATrulyImpeccableName
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_GiveNewNickname:
    Message EternaCityCondominiums1F_Text_AhGoodThenWhatShallTheNewNicknameBe
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
    Message EternaCityCondominiums1F_Text_ThisPokemonShallBeKnownAsNicknameItIsABetterNameThanBefore
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_GaveSameNickname:
    BufferPartyMonNickname 0, VAR_0x8005
    Message EternaCityCondominiums1F_Text_ThisPokemonShallBeKnownAsNicknameItLooksNoDifferentFromBefore
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_NinjaBoy:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TRADED_FOR_CHARAP_CHATOT, EternaCityCondominiums1F_DidThatChatotITradedYouTotallyLearnThatChatterMove
    Message EternaCityCondominiums1F_Text_DoYouGotThatPokemonNamedBuizelWannTradeItForMyChatot
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
    GoToIfNe VAR_0x8005, VAR_RESULT, EternaCityCondominiums1F_WhatITotallyWantIsABuizel
    StartNPCTrade VAR_0x8004
    FinishNPCTrade
    SetFlag FLAG_TRADED_FOR_CHARAP_CHATOT
    Message EternaCityCondominiums1F_Text_YesSoAwesomeABuizel
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_WhatITotallyWantIsABuizel:
    FinishNPCTrade
    Message EternaCityCondominiums1F_Text_WhatITotallyWantIsABuizel
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

EternaCityCondominiums1F_DidThatChatotITradedYouTotallyLearnThatChatterMove:
    Message EternaCityCondominiums1F_Text_DidThatChatotITradedYouTotallyLearnThatChatterMove
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_PokefanM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetTimeOfDay VAR_RESULT
    GoToIfEq VAR_RESULT, TIMEOFDAY_LATE_NIGHT, EternaCityCondominiums1F_ImBuildingSuperintendentMantain24HourWatchZZZ
    GoTo EternaCityCondominiums1F_HiImTheBuildingSuperintented
    End

EternaCityCondominiums1F_HiImTheBuildingSuperintented:
    Message EternaCityCondominiums1F_Text_HiImTheBuildingSuperintented
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums1F_ImBuildingSuperintendentMantain24HourWatchZZZ:
    Message EternaCityCondominiums1F_Text_ImBuildingSuperintendentMantain24HourWatchZZZ
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
