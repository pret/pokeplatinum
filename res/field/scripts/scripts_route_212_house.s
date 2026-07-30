#include "macros/scrcmd.inc"
#include "generated/tutor_locations.h"
#include "res/text/bank/route_212_house.h"


    ScriptEntry Route212House_OnTransition
    ScriptEntry Route212House_Twin
    ScriptEntry Route212House_Beauty
    ScriptEntry Route212House_Diary
    ScriptEntry Route212House_Hiker
    ScriptEntryEnd

Route212House_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_ROUTE_212_MOVE_TUTOR
    End

Route212House_Twin:
    NPCMessage Route212House_Text_DaddyCollectsShards
    End

Route212House_Beauty:
    NPCMessage Route212House_Text_DaddyLikesBlueShards
    End

Route212House_Diary:
    EventMessage Route212House_Text_BlueShardsForMe
    End

Route212House_Hiker:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message Route212House_Text_WantToTeachMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route212House_TryTeachMove
    GoToIfEq VAR_RESULT, MENU_NO, Route212House_SeeYouThen
    End

Route212House_TryTeachMove:
    Message Route212House_Text_TeachWhichPokemon
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_0x8000
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8000, PARTY_SLOT_NONE, Route212House_SeeYouThen
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, SPECIES_NONE, Route212House_CantTeachEgg
    CheckHasLearnableTutorMoves VAR_0x8000, TUTOR_LOCATION_ROUTE_212, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Route212House_NoMovesToTeach
    BufferPartyMonNickname 0, VAR_0x8000
    Message Route212House_Text_TeachWhichMove
    ShowMoveTutorMoveSelectionMenu VAR_0x8000, TUTOR_LOCATION_ROUTE_212, VAR_RESULT
    SetVar VAR_0x8003, VAR_RESULT
    GoToIfEq VAR_0x8003, MENU_CANCEL, Route212House_SeeYouThen
    CheckCanAffordMove VAR_0x8003, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Route212House_NotEnoughShards
    GetPartyMonMoveCount VAR_RESULT, VAR_0x8000
    SetVar VAR_0x8002, VAR_RESULT
    GoToIfEq VAR_RESULT, LEARNED_MOVES_MAX, Route212House_TryReplaceMove
    GoTo Route212House_TeachMove
    End

Route212House_TryReplaceMove:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message Route212House_Text_DeleteOlderMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, Route212House_StopTryingToTeachMove
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    OpenSummaryScreenTeachMove VAR_0x8000, VAR_0x8003
    GetSummarySelectedMoveSlot VAR_0x8002
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8002, LEARNED_MOVES_MAX, Route212House_StopTryingToTeachMove
    GetPartyMonMove VAR_RESULT, VAR_0x8000, VAR_0x8002
    BufferMoveName 1, VAR_RESULT
    Message Route212House_Text_OKToForgetMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, Route212House_StopTryingToTeachMove
    BufferPartyMonNickname 0, VAR_0x8000
    GetPartyMonMove VAR_RESULT, VAR_0x8000, VAR_0x8002
    BufferMoveName 1, VAR_RESULT
    Message Route212House_Text_OneTwoThreePoof
    PlaySE SEQ_SE_DP_KON
    WaitSE SEQ_SE_DP_KON
    WaitTime 30, VAR_RESULT
    Message Route212House_Text_PokemonForgotMove
    WaitTime 32, VAR_RESULT
    PlayFanfare SEQ_FANFA1
    BufferMoveName 1, VAR_0x8003
    Message Route212House_Text_PokemonLearnedMove2
    WaitFanfare
    WaitTime 16, VAR_RESULT
    GoTo Route212House_PayShards
    End

Route212House_StopTryingToTeachMove:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message Route212House_Text_StopTryingToTeachMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route212House_DidntLearnMove
    GoTo Route212House_TryReplaceMove
    End

Route212House_DidntLearnMove:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message Route212House_Text_PokemonDidntLearnMove
    GoTo Route212House_SeeYouThen
    End

Route212House_TeachMove:
    BufferPartyMonNickname 0, VAR_0x8000
    BufferMoveName 1, VAR_0x8003
    Message Route212House_Text_PokemonLearnedMove
    PlayFanfare SEQ_FANFA1
    WaitFanfare
    WaitTime 16, VAR_RESULT
    GoTo Route212House_PayShards
    End

Route212House_PayShards:
    PayShardCost VAR_0x8003
    ResetMoveSlot VAR_0x8000, VAR_0x8002, VAR_0x8003
    GoTo Route212House_SeeYouThen
    End

Route212House_CantTeachEgg:
    Message Route212House_Text_CantTeachEgg
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route212House_SeeYouThen:
    Message Route212House_Text_SeeYouThen
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route212House_NoMovesToTeach:
    Message Route212House_Text_NoMovesToTeach
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route212House_NotEnoughShards:
    Message Route212House_Text_NotEnoughShards
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
