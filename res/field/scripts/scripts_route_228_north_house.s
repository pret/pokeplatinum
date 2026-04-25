#include "macros/scrcmd.inc"
#include "res/text/bank/route_228_north_house.h"


    ScriptEntry Route228NorthHouse_ExpertM
    ScriptEntry Route228NorthHouse_Sign
    ScriptEntryEnd

Route228NorthHouse_ExpertM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TALKED_TO_ROUTE_228_NORTH_HOUSE_EXPERT_M, Route228NorthHouse_AskTeachUltimateMove
    SetFlag FLAG_TALKED_TO_ROUTE_228_NORTH_HOUSE_EXPERT_M
    Message Route228NorthHouse_Text_RewardWithUltimateMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route228NorthHouse_TryTeachUltimateMove
    GoTo Route228NorthHouse_ThatIsFine

Route228NorthHouse_AskTeachUltimateMove:
    Message Route228NorthHouse_Text_TeachUltimateMove
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route228NorthHouse_TryTeachUltimateMove
    GoTo Route228NorthHouse_ThatIsFine

Route228NorthHouse_TryTeachUltimateMove:
    Message Route228NorthHouse_Text_TeachWhichPokemon
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_0x8000
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8000, PARTY_SLOT_NONE, Route228NorthHouse_ThatIsFine
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, SPECIES_NONE, Route228NorthHouse_CantTeachEgg
    Call Route228NorthHouse_CheckFinalStageStarter
    GoToIfEq VAR_RESULT, 0, Route228NorthHouse_CantLearnMove
    SetVar VAR_0x8002, VAR_RESULT
    Call Route228NorthHouse_CheckHasUltimateMove
    GoToIfEq VAR_RESULT, TRUE, Route228NorthHouse_AlreadyKnowsMove
    GetPartyMonFriendship VAR_RESULT, VAR_0x8000
    GoToIfLt VAR_RESULT, 255, Route228NorthHouse_NotBondedEnough
    BufferPartyMonSpecies 0, VAR_0x8000
    GoToIfEq VAR_0x8002, 1, Route228NorthHouse_AskTeachBlastBurn
    GoToIfEq VAR_0x8002, 2, Route228NorthHouse_AskTeachHydroCannon
    GoTo Route228NorthHouse_AskTeachFrenzyPlant

Route228NorthHouse_AskTeachBlastBurn:
    Message Route228NorthHouse_Text_TeachBlastBurn
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, Route228NorthHouse_ThatIsFine
    SetVar VAR_0x8003, MOVE_BLAST_BURN
    GoTo Route228NorthHouse_TeachUltimateMove

Route228NorthHouse_AskTeachHydroCannon:
    Message Route228NorthHouse_Text_TeachHydroCannon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, Route228NorthHouse_ThatIsFine
    SetVar VAR_0x8003, MOVE_HYDRO_CANNON
    GoTo Route228NorthHouse_TeachUltimateMove

Route228NorthHouse_AskTeachFrenzyPlant:
    Message Route228NorthHouse_Text_TeachFrenzyPlant
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, Route228NorthHouse_ThatIsFine
    SetVar VAR_0x8003, MOVE_FRENZY_PLANT
    GoTo Route228NorthHouse_TeachUltimateMove

Route228NorthHouse_TeachUltimateMove:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    OpenMoveTutorMenu VAR_0x8000, VAR_0x8003
    CheckLearnedTutorMove VAR_RESULT
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0xFF, Route228NorthHouse_ThatIsFine
    ReleaseAll
    End

Route228NorthHouse_CheckFinalStageStarter:
    GoToIfEq VAR_0x8001, SPECIES_CHARIZARD, Route228NorthHouse_SetVarFireStarter
    GoToIfEq VAR_0x8001, SPECIES_TYPHLOSION, Route228NorthHouse_SetVarFireStarter
    GoToIfEq VAR_0x8001, SPECIES_BLAZIKEN, Route228NorthHouse_SetVarFireStarter
    GoToIfEq VAR_0x8001, SPECIES_INFERNAPE, Route228NorthHouse_SetVarFireStarter
    GoToIfEq VAR_0x8001, SPECIES_BLASTOISE, Route228NorthHouse_SetVarWaterStarter
    GoToIfEq VAR_0x8001, SPECIES_FERALIGATR, Route228NorthHouse_SetVarWaterStarter
    GoToIfEq VAR_0x8001, SPECIES_SWAMPERT, Route228NorthHouse_SetVarWaterStarter
    GoToIfEq VAR_0x8001, SPECIES_EMPOLEON, Route228NorthHouse_SetVarWaterStarter
    GoToIfEq VAR_0x8001, SPECIES_VENUSAUR, Route228NorthHouse_SetVarGrassStarter
    GoToIfEq VAR_0x8001, SPECIES_MEGANIUM, Route228NorthHouse_SetVarGrassStarter
    GoToIfEq VAR_0x8001, SPECIES_SCEPTILE, Route228NorthHouse_SetVarGrassStarter
    GoToIfEq VAR_0x8001, SPECIES_TORTERRA, Route228NorthHouse_SetVarGrassStarter
    SetVar VAR_RESULT, 0
    Return

Route228NorthHouse_SetVarFireStarter:
    SetVar VAR_RESULT, 1
    Return

Route228NorthHouse_SetVarWaterStarter:
    SetVar VAR_RESULT, 2
    Return

Route228NorthHouse_SetVarGrassStarter:
    SetVar VAR_RESULT, 3
    Return

Route228NorthHouse_CheckHasUltimateMove:
    GoToIfEq VAR_0x8002, 1, Route228NorthHouse_CheckHasBlastBurn
    GoToIfEq VAR_0x8002, 2, Route228NorthHouse_CheckHasHydroCannon
    GoTo Route228NorthHouse_CheckHasFrenzyPlant

Route228NorthHouse_CheckHasBlastBurn:
    CheckPartyMonHasMove VAR_RESULT, MOVE_BLAST_BURN, VAR_0x8000
    Return

Route228NorthHouse_CheckHasHydroCannon:
    CheckPartyMonHasMove VAR_RESULT, MOVE_HYDRO_CANNON, VAR_0x8000
    Return

Route228NorthHouse_CheckHasFrenzyPlant:
    CheckPartyMonHasMove VAR_RESULT, MOVE_FRENZY_PLANT, VAR_0x8000
    Return

Route228NorthHouse_ThatIsFine:
    Message Route228NorthHouse_Text_ThatIsFine
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route228NorthHouse_CantLearnMove:
    Message Route228NorthHouse_Text_CantLearnMove
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route228NorthHouse_CantTeachEgg:
    Message Route228NorthHouse_Text_CantTeachEgg
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route228NorthHouse_NotBondedEnough:
    Message Route228NorthHouse_Text_NotBondedEnough
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route228NorthHouse_AlreadyKnowsMove:
    Message Route228NorthHouse_Text_AlreadyKnowsMove
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route228NorthHouse_Sign:
    EventMessage Route228NorthHouse_Text_PokemonListedLearnUltimateMoves
    End

    .balign 4, 0
