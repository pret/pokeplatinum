#include "macros/scrcmd.inc"
#include "res/text/bank/iron_ruins.h"


    ScriptEntry IronRuins_OnTransition
    ScriptEntry IronRuins_Statue
    ScriptEntry IronRuins_DotNorthWest
    ScriptEntry IronRuins_DotNorthEast
    ScriptEntry IronRuins_DotWest
    ScriptEntry IronRuins_DotMiddle
    ScriptEntry IronRuins_DotEast
    ScriptEntry IronRuins_DotSouthWest
    ScriptEntry IronRuins_DotSouthEast
    ScriptEntryEnd

IronRuins_OnTransition:
    GoToIfLt VAR_IRON_RUINS_STATE, RUINS_STATE_DID_NOT_CATCH_REGI, IronRuins_ResetState
    End

IronRuins_ResetState:
    SetVar VAR_IRON_RUINS_STATE, 0
    End

IronRuins_Statue:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_IRON_RUINS_STATE, RUINS_STATE_CAUGHT_REGI, IronRuins_CaughtRegisteelStatueStoppedEmanatingPower
    GoToIfEq VAR_IRON_RUINS_STATE, RUINS_STATE_DID_NOT_CATCH_REGI, IronRuins_DidNotCatchRegisteelStatueStoppedEmanatingPower
    GoToIfUnset FLAG_GAME_COMPLETED, IronRuins_ItsAStatueOfAPokemonBecomeStrongerYouMust
    CheckPartyHasFatefulEncounterRegigigas VAR_RESULT
    GoToIfEq VAR_RESULT, 0, IronRuins_ItsAStatueOfAPokemon
    GoToIfEq VAR_IRON_RUINS_STATE, RUINS_STATE_ACTIVATED_STATUE, IronRuins_EncounterRegisteel
    GoToIfLt VAR_IRON_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IronRuins_ItsAStatueOfAPokemon
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_29F 1
    SetVar VAR_IRON_RUINS_STATE, RUINS_STATE_ACTIVATED_STATUE
    Message IronRuins_Text_SomethingChangedInTheAir
    GoTo IronRuins_StatueEnd
    End

IronRuins_EncounterRegisteel:
    PlayCry SPECIES_REGISTEEL
    Message IronRuins_Text_RegisteelCry
    WaitCry
    CloseMessage
    StartLegendaryBattle SPECIES_REGISTEEL, 30
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, IronRuins_BlackOut
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, IronRuins_DidNotCatchRegisteelStatueStoppedEmanatingPower
    SetVar VAR_IRON_RUINS_STATE, RUINS_STATE_CAUGHT_REGI
    ReleaseAll
    End

IronRuins_CaughtRegisteelStatueStoppedEmanatingPower:
    Message IronRuins_Text_ThePokemonStatueHasStoppedEmanatingPower
    GoTo IronRuins_StatueEnd
    End

IronRuins_DidNotCatchRegisteelStatueStoppedEmanatingPower:
    SetVar VAR_IRON_RUINS_STATE, RUINS_STATE_DID_NOT_CATCH_REGI
    Message IronRuins_Text_ThePokemonStatueHasStoppedEmanatingPower
    GoTo IronRuins_StatueEnd
    End

IronRuins_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

IronRuins_ItsAStatueOfAPokemonBecomeStrongerYouMust:
    Message IronRuins_Text_ItsAStatueOfAPokemonBecomeStrongerYouMust
    GoTo IronRuins_StatueEnd
    End

IronRuins_ItsAStatueOfAPokemon:
    Message IronRuins_Text_ItsAStatueOfAPokemon
    GoTo IronRuins_StatueEnd
    End

IronRuins_StatueEnd:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

IronRuins_DotNorthWest:
    SetVar VAR_MAP_LOCAL_1, 1
    GoToIfGe VAR_IRON_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IronRuins_DotEnd
    GoTo IronRuins_ActivateDot
    End

IronRuins_DotNorthEast:
    SetVar VAR_MAP_LOCAL_2, 1
    GoToIfGe VAR_IRON_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IronRuins_DotEnd
    GoTo IronRuins_ActivateDot
    End

IronRuins_DotWest:
    SetVar VAR_MAP_LOCAL_3, 1
    GoToIfGe VAR_IRON_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IronRuins_DotEnd
    GoTo IronRuins_ActivateDot
    End

IronRuins_DotMiddle:
    SetVar VAR_MAP_LOCAL_4, 1
    GoToIfGe VAR_IRON_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IronRuins_DotEnd
    GoTo IronRuins_ActivateDot
    End

IronRuins_DotEast:
    SetVar VAR_MAP_LOCAL_5, 1
    GoToIfGe VAR_IRON_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IronRuins_DotEnd
    GoTo IronRuins_ActivateDot
    End

IronRuins_DotSouthWest:
    SetVar VAR_MAP_LOCAL_6, 1
    GoToIfGe VAR_IRON_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IronRuins_DotEnd
    GoTo IronRuins_ActivateDot
    End

IronRuins_DotSouthEast:
    SetVar VAR_MAP_LOCAL_7, 1
    GoToIfGe VAR_IRON_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IronRuins_DotEnd
    GoTo IronRuins_ActivateDot
    End

IronRuins_ActivateDot:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    ActivateRegiRuinsDot VAR_IRON_RUINS_STATE, DOT_TYPE_IRON_RUINS, VAR_0x8004, VAR_0x8005
    GoToIfGe VAR_IRON_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IronRuins_ActivateStatue
    ReleaseAll
    End

IronRuins_DotEnd:
    End

IronRuins_ActivateStatue:
    GoToIfUnset FLAG_GAME_COMPLETED, IronRuins_DotEnd
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_29F 1
    SetVar VAR_IRON_RUINS_STATE, RUINS_STATE_ACTIVATED_STATUE
    Message IronRuins_Text_SomethingChangedInTheAir
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
