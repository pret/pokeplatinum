#include "macros/scrcmd.inc"
#include "res/text/bank/route_210_grandma_wilma_house.h"
#include "generated/pokemon_types.h"


    ScriptEntry Route210GrandmaWilmaHouse_OnTransition
    ScriptEntry Route210GrandmaWilmaHouse_Wilma
    ScriptEntryEnd

Route210GrandmaWilmaHouse_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_DRAGON_MASTERS_HOUSE
    End

Route210GrandmaWilmaHouse_Wilma:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TALKED_TO_ROUTE_210_GRANDMA_WILMA, Route210GrandmaWilmaHouse_AskTeachDracoMeteor
    SetFlag FLAG_TALKED_TO_ROUTE_210_GRANDMA_WILMA
    Message Route210GrandmaWilmaHouse_Text_ImWilmaTeachDracoMeteor
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, Route210GrandmaWilmaHouse_DoComeBack
    GoTo Route210GrandmaWilmaHouse_CheckCanAnyMonLearn

Route210GrandmaWilmaHouse_AskTeachDracoMeteor:
    Message Route210GrandmaWilmaHouse_Text_TeachDracoMeteor
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, Route210GrandmaWilmaHouse_DoComeBack
    GoTo Route210GrandmaWilmaHouse_CheckCanAnyMonLearn

Route210GrandmaWilmaHouse_DoComeBack:
    Message Route210GrandmaWilmaHouse_Text_DoComeBack
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route210GrandmaWilmaHouse_NoPokemonCanLearn:
    Message Route210GrandmaWilmaHouse_Text_NoPokemonCanLearn
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route210GrandmaWilmaHouse_CantLearnDracoMeteor:
    Message Route210GrandmaWilmaHouse_Text_CantLearnDracoMeteor
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route210GrandmaWilmaHouse_CantTeachEgg:
    Message Route210GrandmaWilmaHouse_Text_CantTeachEgg
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route210GrandmaWilmaHouse_AlreadyKnowsDracoMeteor:
    BufferMoveName 0, MOVE_DRACO_METEOR
    Message Route210GrandmaWilmaHouse_Text_AlreadyKnowsDracoMeteor
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route210GrandmaWilmaHouse_DoesntFullyTrustYou:
    Message Route210GrandmaWilmaHouse_Text_DoesntFullyTrustYou
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route210GrandmaWilmaHouse_CheckCanAnyMonLearn:
    GetPartyCount VAR_MAP_LOCAL_0
Route210GrandmaWilmaHouse_CheckMonDragonType:
    SubVar VAR_MAP_LOCAL_0, 1
    GetPartyMonSpecies VAR_MAP_LOCAL_0, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_NONE, Route210GrandmaWilmaHouse_TryCheckNextMon
    GetPartyMonType VAR_0x8004, VAR_0x8005, VAR_MAP_LOCAL_0
    GoToIfEq VAR_0x8004, TYPE_DRAGON, Route210GrandmaWilmaHouse_CheckHasDracoMeteor
    GoToIfEq VAR_0x8005, TYPE_DRAGON, Route210GrandmaWilmaHouse_CheckHasDracoMeteor
    GoTo Route210GrandmaWilmaHouse_TryCheckNextMon

Route210GrandmaWilmaHouse_CheckHasDracoMeteor:
    CheckPartyMonHasMove VAR_RESULT, MOVE_DRACO_METEOR, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, FALSE, Route210GrandmaWilmaHouse_PickPokemonToTeach
Route210GrandmaWilmaHouse_TryCheckNextMon:
    GoToIfNe VAR_MAP_LOCAL_0, 0, Route210GrandmaWilmaHouse_CheckMonDragonType
    GoTo Route210GrandmaWilmaHouse_NoPokemonCanLearn

Route210GrandmaWilmaHouse_PickPokemonToTeach:
    Message Route210GrandmaWilmaHouse_Text_PickPokemonToTeach
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_0x8000
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8000, PARTY_SLOT_NONE, Route210GrandmaWilmaHouse_DoComeBack
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, SPECIES_NONE, Route210GrandmaWilmaHouse_CantTeachEgg
    Call Route210GrandmaWilmaHouse_CheckSelectedDragonType
    GoToIfEq VAR_RESULT, FALSE, Route210GrandmaWilmaHouse_CantLearnDracoMeteor
    CheckPartyMonHasMove VAR_RESULT, MOVE_DRACO_METEOR, VAR_0x8000
    GoToIfEq VAR_RESULT, TRUE, Route210GrandmaWilmaHouse_AlreadyKnowsDracoMeteor
    GetPartyMonFriendship VAR_RESULT, VAR_0x8000
    GoToIfLt VAR_RESULT, 255, Route210GrandmaWilmaHouse_DoesntFullyTrustYou
    SetVar VAR_0x8003, MOVE_DRACO_METEOR
    GoTo Route210GrandmaWilmaHouse_TryTeachDracoMeteor

Route210GrandmaWilmaHouse_TryTeachDracoMeteor:
    FadeScreenOut
    WaitFadeScreen
    OpenMoveTutorMenu VAR_0x8000, MOVE_DRACO_METEOR
    CheckLearnedTutorMove VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0xFF, Route210GrandmaWilmaHouse_DoComeBack
    Message Route210GrandmaWilmaHouse_Text_ExplainDracoMeteor
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route210GrandmaWilmaHouse_CheckSelectedDragonType:
    GetPartyMonType VAR_0x8004, VAR_0x8005, VAR_0x8000
    GoToIfEq VAR_0x8004, TYPE_DRAGON, Route210GrandmaWilmaHouse_SelectedDragonType
    GoToIfEq VAR_0x8005, TYPE_DRAGON, Route210GrandmaWilmaHouse_SelectedDragonType
    SetVar VAR_RESULT, FALSE
    Return

Route210GrandmaWilmaHouse_SelectedDragonType:
    SetVar VAR_RESULT, TRUE
    Return

    .balign 4, 0
