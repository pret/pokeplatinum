#include "macros/scrcmd.inc"
#include "generated/tutor_locations.h"
#include "res/text/bank/survival_area_north_house.h"


    ScriptEntry SurvivalAreaNorthHouse_Psychic
    ScriptEntry SurvivalAreaNorthHouse_Hiker
    ScriptEntry SurvivalAreaNorthHouse_Book
    ScriptEntryEnd

SurvivalAreaNorthHouse_Psychic:
    NPCMessage SurvivalAreaNorthHouse_Text_LookingForwardToVisitors
    End

SurvivalAreaNorthHouse_Hiker:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SurvivalAreaNorthHouse_Text_WantToTeachMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, SurvivalAreaNorthHouse_TryTeachMove
    GoToIfEq VAR_RESULT, MENU_NO, SurvivalAreaNorthHouse_SeeYouThen
    End

SurvivalAreaNorthHouse_TryTeachMove:
    Message SurvivalAreaNorthHouse_Text_TeachWhichPokemon
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_0x8000
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8000, PARTY_SLOT_NONE, SurvivalAreaNorthHouse_SeeYouThen
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, SPECIES_NONE, SurvivalAreaNorthHouse_CantTeachEgg
    CheckHasLearnableTutorMoves VAR_0x8000, TUTOR_LOCATION_SURVIVAL_AREA, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, SurvivalAreaNorthHouse_NoMovesToTeach
    BufferPartyMonNickname 0, VAR_0x8000
    Message SurvivalAreaNorthHouse_Text_TeachWhichMove
    ShowMoveTutorMoveSelectionMenu VAR_0x8000, TUTOR_LOCATION_SURVIVAL_AREA, VAR_RESULT
    SetVar VAR_0x8003, VAR_RESULT
    GoToIfEq VAR_0x8003, MENU_CANCEL, SurvivalAreaNorthHouse_SeeYouThen
    CheckCanAffordMove VAR_0x8003, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, SurvivalAreaNorthHouse_NotEnoughShards
    GetPartyMonMoveCount VAR_RESULT, VAR_0x8000
    SetVar VAR_0x8002, VAR_RESULT
    GoToIfEq VAR_RESULT, LEARNED_MOVES_MAX, SurvivalAreaNorthHouse_TryReplaceMove
    GoTo SurvivalAreaNorthHouse_TeachMove
    End

SurvivalAreaNorthHouse_TryReplaceMove:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message SurvivalAreaNorthHouse_Text_DeleteOlderMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, SurvivalAreaNorthHouse_StopTryingToTeachMove
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    OpenSummaryScreenTeachMove VAR_0x8000, VAR_0x8003
    GetSummarySelectedMoveSlot VAR_0x8002
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8002, LEARNED_MOVES_MAX, SurvivalAreaNorthHouse_StopTryingToTeachMove
    GetPartyMonMove VAR_RESULT, VAR_0x8000, VAR_0x8002
    BufferMoveName 1, VAR_RESULT
    Message SurvivalAreaNorthHouse_Text_OKToForgetMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, SurvivalAreaNorthHouse_StopTryingToTeachMove
    BufferPartyMonNickname 0, VAR_0x8000
    GetPartyMonMove VAR_RESULT, VAR_0x8000, VAR_0x8002
    BufferMoveName 1, VAR_RESULT
    Message SurvivalAreaNorthHouse_Text_OneTwoThreePoof
    PlaySE SEQ_SE_DP_KON
    WaitSE SEQ_SE_DP_KON
    WaitTime 30, VAR_RESULT
    Message SurvivalAreaNorthHouse_Text_PokemonForgotMove
    WaitTime 32, VAR_RESULT
    PlayFanfare SEQ_FANFA1
    BufferMoveName 1, VAR_0x8003
    Message SurvivalAreaNorthHouse_Text_PokemonLearnedMove2
    WaitFanfare
    WaitTime 16, VAR_RESULT
    GoTo SurvivalAreaNorthHouse_PayShards
    End

SurvivalAreaNorthHouse_StopTryingToTeachMove:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message SurvivalAreaNorthHouse_Text_StopTryingToTeachMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, SurvivalAreaNorthHouse_DidntLearnMove
    GoTo SurvivalAreaNorthHouse_TryReplaceMove
    End

SurvivalAreaNorthHouse_DidntLearnMove:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message SurvivalAreaNorthHouse_Text_PokemonDidntLearnMove
    GoTo SurvivalAreaNorthHouse_SeeYouThen
    End

SurvivalAreaNorthHouse_TeachMove:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message SurvivalAreaNorthHouse_Text_PokemonLearnedMove
    PlayFanfare SEQ_FANFA1
    WaitFanfare
    WaitTime 16, VAR_RESULT
    GoTo SurvivalAreaNorthHouse_PayShards
    End

SurvivalAreaNorthHouse_PayShards:
    PayShardCost VAR_0x8003
    ResetMoveSlot VAR_0x8000, VAR_0x8002, VAR_0x8003
    GoTo SurvivalAreaNorthHouse_SeeYouThen
    End

SurvivalAreaNorthHouse_CantTeachEgg:
    Message SurvivalAreaNorthHouse_Text_CantTeachEgg
    WaitButton
    CloseMessage
    ReleaseAll
    End

SurvivalAreaNorthHouse_SeeYouThen:
    Message SurvivalAreaNorthHouse_Text_SeeYouThen
    WaitButton
    CloseMessage
    ReleaseAll
    End

SurvivalAreaNorthHouse_NoMovesToTeach:
    Message SurvivalAreaNorthHouse_Text_NoMovesToTeach
    WaitButton
    CloseMessage
    ReleaseAll
    End

SurvivalAreaNorthHouse_NotEnoughShards:
    Message SurvivalAreaNorthHouse_Text_NotEnoughShards
    WaitButton
    CloseMessage
    ReleaseAll
    End

SurvivalAreaNorthHouse_Book:
    EventMessage SurvivalAreaNorthHouse_Text_ShardColorsEmphasize
    End
