#include "macros/scrcmd.inc"
#include "generated/tutor_locations.h"
#include "res/text/bank/snowpoint_city_east_house.h"


    ScriptEntry SnowpointCityEastHouse_ExpertM
    ScriptEntry SnowpointCityEastHouse_Hiker
    ScriptEntryEnd

SnowpointCityEastHouse_ExpertM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_HEARD_DAILY_TRENDY_SAYING, SnowpointCityEastHouse_UseTrendySayings
    ScrCmd_27F VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SnowpointCityEastHouse_AreYouUsingTrendySayings
    Message SnowpointCityEastHouse_Text_HearTrendySaying
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, SnowpointCityEastHouse_ComeOnNow
    ScrCmd_27D VAR_RESULT, 0
    GoToIfEq VAR_RESULT, -1, SnowpointCityEastHouse_AreYouUsingTrendySayings
    SetFlag FLAG_HEARD_DAILY_TRENDY_SAYING
    Message SnowpointCityEastHouse_Text_TrendyThingIsThis
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCityEastHouse_UseTrendySayings:
    Message SnowpointCityEastHouse_Text_UseTrendySayings
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCityEastHouse_ComeOnNow:
    Message SnowpointCityEastHouse_Text_ComeOnNow
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCityEastHouse_AreYouUsingTrendySayings:
    Message SnowpointCityEastHouse_Text_AreYouUsingTrendySayings
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCityEastHouse_Hiker:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SnowpointCityEastHouse_Text_WantMeToTeachMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, SnowpointCityEastHouse_TryTeachMove
    GoToIfEq VAR_RESULT, MENU_NO, SnowpointCityEastHouse_BeSeeingYou
    End

SnowpointCityEastHouse_TryTeachMove:
    Message SnowpointCityEastHouse_Text_WhichPokemon
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_0x8000
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8000, PARTY_SLOT_NONE, SnowpointCityEastHouse_BeSeeingYou
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, SPECIES_NONE, SnowpointCityEastHouse_CantTeachEgg
    CheckHasLearnableTutorMoves VAR_0x8000, TUTOR_LOCATION_SNOWPOINT_CITY, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, SnowpointCityEastHouse_NoMovesToTeach
    BufferPartyMonNickname 0, VAR_0x8000
    Message SnowpointCityEastHouse_Text_TeachWhichMove
    ShowMoveTutorMoveSelectionMenu VAR_0x8000, TUTOR_LOCATION_SNOWPOINT_CITY, VAR_RESULT
    SetVar VAR_0x8003, VAR_RESULT
    GoToIfEq VAR_0x8003, MENU_CANCEL, SnowpointCityEastHouse_BeSeeingYou
    CheckCanAffordMove VAR_0x8003, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, SnowpointCityEastHouse_NotEnoughShards
    GetPartyMonMoveCount VAR_RESULT, VAR_0x8000
    SetVar VAR_0x8002, VAR_RESULT
    GoToIfEq VAR_RESULT, LEARNED_MOVES_MAX, SnowpointCityEastHouse_TryReplaceMove
    GoTo SnowpointCityEastHouse_TeachMove
    End

SnowpointCityEastHouse_TryReplaceMove:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message SnowpointCityEastHouse_Text_DeleteOlderMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, SnowpointCityEastHouse_StopTryingToTeachMove
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    OpenSummaryScreenTeachMove VAR_0x8000, VAR_0x8003
    GetSummarySelectedMoveSlot VAR_0x8002
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8002, LEARNED_MOVES_MAX, SnowpointCityEastHouse_StopTryingToTeachMove
    GetPartyMonMove VAR_RESULT, VAR_0x8000, VAR_0x8002
    BufferMoveName 1, VAR_RESULT
    Message SnowpointCityEastHouse_Text_ForgetThisMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, SnowpointCityEastHouse_StopTryingToTeachMove
    BufferPartyMonNickname 0, VAR_0x8000
    GetPartyMonMove VAR_RESULT, VAR_0x8000, VAR_0x8002
    BufferMoveName 1, VAR_RESULT
    Message SnowpointCityEastHouse_Text_OneTwoThreePoof
    PlaySE SEQ_SE_DP_KON
    WaitSE SEQ_SE_DP_KON
    WaitTime 30, VAR_RESULT
    Message SnowpointCityEastHouse_Text_PokemonForgotMove
    WaitTime 32, VAR_RESULT
    PlayFanfare SEQ_FANFA1
    BufferMoveName 1, VAR_0x8003
    Message SnowpointCityEastHouse_Text_PokemonLearnedMove2
    WaitFanfare
    WaitTime 16, VAR_RESULT
    GoTo SnowpointCityEastHouse_PayShards
    End

SnowpointCityEastHouse_StopTryingToTeachMove:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message SnowpointCityEastHouse_Text_StopTryingToTeachMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, SnowpointCityEastHouse_DidntLearnMove
    GoTo SnowpointCityEastHouse_TryReplaceMove
    End

SnowpointCityEastHouse_DidntLearnMove:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message SnowpointCityEastHouse_Text_PokemonDidntLearnMove
    GoTo SnowpointCityEastHouse_BeSeeingYou
    End

SnowpointCityEastHouse_TeachMove:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message SnowpointCityEastHouse_Text_PokemonLearnedMove
    PlayFanfare SEQ_FANFA1
    WaitFanfare
    WaitTime 16, VAR_RESULT
    GoTo SnowpointCityEastHouse_PayShards
    End

SnowpointCityEastHouse_PayShards:
    PayShardCost VAR_0x8003
    ResetMoveSlot VAR_0x8000, VAR_0x8002, VAR_0x8003
    GoTo SnowpointCityEastHouse_BeSeeingYou
    End

SnowpointCityEastHouse_CantTeachEgg:
    Message SnowpointCityEastHouse_Text_CantTeachEgg
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCityEastHouse_BeSeeingYou:
    Message SnowpointCityEastHouse_Text_BeSeeingYou
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCityEastHouse_NoMovesToTeach:
    Message SnowpointCityEastHouse_Text_NoMovesToTeach
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCityEastHouse_NotEnoughShards:
    Message SnowpointCityEastHouse_Text_NotEnoughShards
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
