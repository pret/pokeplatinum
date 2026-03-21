#include "macros/scrcmd.inc"
#include "res/text/bank/rock_peak_ruins.h"


    ScriptEntry RockPeakRuins_OnTransition
    ScriptEntry RockPeakRuins_Statue
    ScriptEntry RockPeakRuins_DotNorthWest
    ScriptEntry RockPeakRuins_DotNorthEast
    ScriptEntry RockPeakRuins_DotWest
    ScriptEntry RockPeakRuins_DotMiddle
    ScriptEntry RockPeakRuins_DotEast
    ScriptEntry RockPeakRuins_DotSouthWest
    ScriptEntry RockPeakRuins_DotSouthEast
    ScriptEntryEnd

RockPeakRuins_OnTransition:
    GoToIfLt VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_DID_NOT_CATCH_REGI, RockPeakRuins_ResetState
    End

RockPeakRuins_ResetState:
    SetVar VAR_ROCK_PEAK_RUINS_STATE, 0
    End

RockPeakRuins_Statue:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_CAUGHT_REGI, RockPeakRuins_CaughtRegirockStatueStoppedEmanatingPower
    GoToIfEq VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_DID_NOT_CATCH_REGI, RockPeakRuins_DidNotCatchRegirockStatueStoppedEmanatingPower
    GoToIfUnset FLAG_GAME_COMPLETED, RockPeakRuins_ItsAStatueOfAPokemonItSeemsToExudePower
    CheckPartyHasFatefulEncounterRegigigas VAR_RESULT
    GoToIfEq VAR_RESULT, 0, RockPeakRuins_ItsAStatueOfAPokemonFromSomewhereSomethingSpokeOut
    GoToIfEq VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_ACTIVATED_STATUE, RockPeakRuins_EncounterRegirock
    GoToIfLt VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, RockPeakRuins_ItsAStatueOfAPokemonFromSomewhereSomethingSpokeOut
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_29F 1
    SetVar VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_ACTIVATED_STATUE
    Message RockPeakRuins_Text_SomethingChangedInTheAir
    GoTo RockPeakRuins_StatueEnd
    End

RockPeakRuins_EncounterRegirock:
    PlayCry SPECIES_REGIROCK
    Message RockPeakRuins_Text_RegirockCry
    WaitCry
    CloseMessage
    StartLegendaryBattle SPECIES_REGIROCK, 30
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, RockPeakRuins_BlackOut
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, RockPeakRuins_DidNotCatchRegirockStatueStoppedEmanatingPower
    SetVar VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_CAUGHT_REGI
    ReleaseAll
    End

RockPeakRuins_CaughtRegirockStatueStoppedEmanatingPower:
    Message RockPeakRuins_Text_ThePokemonStatueHasStoppedEmanatingPower
    GoTo RockPeakRuins_StatueEnd
    End

RockPeakRuins_DidNotCatchRegirockStatueStoppedEmanatingPower:
    SetVar VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_DID_NOT_CATCH_REGI
    Message RockPeakRuins_Text_ThePokemonStatueHasStoppedEmanatingPower
    GoTo RockPeakRuins_StatueEnd
    End

RockPeakRuins_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

RockPeakRuins_ItsAStatueOfAPokemonItSeemsToExudePower:
    Message RockPeakRuins_Text_ItsAStatueOfAPokemonItSeemsToExudePower
    GoTo RockPeakRuins_StatueEnd
    End

RockPeakRuins_ItsAStatueOfAPokemonFromSomewhereSomethingSpokeOut:
    Message RockPeakRuins_Text_ItsAStatueOfAPokemonFromSomewhereSomethingSpokeOut
    GoTo RockPeakRuins_StatueEnd
    End

RockPeakRuins_StatueEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

RockPeakRuins_DotNorthWest:
    SetVar VAR_MAP_LOCAL_1, 1
    GoToIfGe VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, RockPeakRuins_DotEnd
    GoTo RockPeakRuins_ActivateDot
    End

RockPeakRuins_DotNorthEast:
    SetVar VAR_MAP_LOCAL_2, 1
    GoToIfGe VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, RockPeakRuins_DotEnd
    GoTo RockPeakRuins_ActivateDot
    End

RockPeakRuins_DotWest:
    SetVar VAR_MAP_LOCAL_3, 1
    GoToIfGe VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, RockPeakRuins_DotEnd
    GoTo RockPeakRuins_ActivateDot
    End

RockPeakRuins_DotMiddle:
    SetVar VAR_MAP_LOCAL_4, 1
    GoToIfGe VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, RockPeakRuins_DotEnd
    GoTo RockPeakRuins_ActivateDot
    End

RockPeakRuins_DotEast:
    SetVar VAR_MAP_LOCAL_5, 1
    GoToIfGe VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, RockPeakRuins_DotEnd
    GoTo RockPeakRuins_ActivateDot
    End

RockPeakRuins_DotSouthWest:
    SetVar VAR_MAP_LOCAL_6, 1
    GoToIfGe VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, RockPeakRuins_DotEnd
    GoTo RockPeakRuins_ActivateDot
    End

RockPeakRuins_DotSouthEast:
    SetVar VAR_MAP_LOCAL_7, 1
    GoToIfGe VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, RockPeakRuins_DotEnd
    GoTo RockPeakRuins_ActivateDot
    End

RockPeakRuins_ActivateDot:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    ActivateRegiRuinsDot VAR_ROCK_PEAK_RUINS_STATE, DOT_TYPE_ROCK_PEAK_RUINS, VAR_0x8004, VAR_0x8005
    GoToIfGe VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, RockPeakRuins_ActivateStatue
    ReleaseAll
    End

RockPeakRuins_DotEnd:
    End

RockPeakRuins_ActivateStatue:
    GoToIfUnset FLAG_GAME_COMPLETED, RockPeakRuins_DotEnd
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_29F 1
    SetVar VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_ACTIVATED_STATUE
    Message RockPeakRuins_Text_SomethingChangedInTheAir
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
