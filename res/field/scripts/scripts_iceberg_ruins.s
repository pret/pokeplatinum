#include "macros/scrcmd.inc"
#include "res/text/bank/iceberg_ruins.h"


    ScriptEntry IcebergRuins_OnTransition
    ScriptEntry IcebergRuins_Statue
    ScriptEntry IcebergRuins_DotNorth
    ScriptEntry IcebergRuins_DotFarWest
    ScriptEntry IcebergRuins_DotMiddleWest
    ScriptEntry IcebergRuins_DotMiddle
    ScriptEntry IcebergRuins_DotMiddleEast
    ScriptEntry IcebergRuins_DotFarEast
    ScriptEntry IcebergRuins_DotSouth
    ScriptEntryEnd

IcebergRuins_OnTransition:
    GoToIfLt VAR_ICEBERG_RUINS_STATE, RUINS_STATE_DID_NOT_CATCH_REGI, IcebergRuins_ResetState
    End

IcebergRuins_ResetState:
    SetVar VAR_ICEBERG_RUINS_STATE, 0
    End

IcebergRuins_Statue:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_ICEBERG_RUINS_STATE, RUINS_STATE_CAUGHT_REGI, IcebergRuins_CaughtRegiceStatueStoppedEmanatingPower
    GoToIfEq VAR_ICEBERG_RUINS_STATE, RUINS_STATE_DID_NOT_CATCH_REGI, IcebergRuins_DidNotCatchRegiceStatueStoppedEmanatingPower
    GoToIfUnset FLAG_GAME_COMPLETED, IcebergRuins_ItsAStatueOfAPokemonBecomeStrongerYouMust
    CheckPartyHasFatefulEncounterRegigigas VAR_RESULT
    GoToIfEq VAR_RESULT, 0, IcebergRuins_ItsAStatueOfAPokemon
    GoToIfEq VAR_ICEBERG_RUINS_STATE, RUINS_STATE_ACTIVATED_STATUE, IcebergRuins_EncounterRegice
    GoToIfLt VAR_ICEBERG_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IcebergRuins_ItsAStatueOfAPokemon
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_29F 1
    SetVar VAR_ICEBERG_RUINS_STATE, RUINS_STATE_ACTIVATED_STATUE
    Message IcebergRuins_Text_SomethingChangedInTheAir
    GoTo IcebergRuins_StatueEnd
    End

IcebergRuins_EncounterRegice:
    PlayCry SPECIES_REGICE
    Message IcebergRuins_Text_RegiceCry
    WaitCry
    CloseMessage
    StartLegendaryBattle SPECIES_REGICE, 30
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, IcebergRuins_BlackOut
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, IcebergRuins_DidNotCatchRegiceStatueStoppedEmanatingPower
    SetVar VAR_ICEBERG_RUINS_STATE, RUINS_STATE_CAUGHT_REGI
    ReleaseAll
    End

IcebergRuins_CaughtRegiceStatueStoppedEmanatingPower:
    Message IcebergRuins_Text_ThePokemonStatueHasStoppedEmanatingPower
    GoTo IcebergRuins_StatueEnd
    End

IcebergRuins_DidNotCatchRegiceStatueStoppedEmanatingPower:
    SetVar VAR_ICEBERG_RUINS_STATE, RUINS_STATE_DID_NOT_CATCH_REGI
    Message IcebergRuins_Text_ThePokemonStatueHasStoppedEmanatingPower
    GoTo IcebergRuins_StatueEnd
    End

IcebergRuins_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

IcebergRuins_ItsAStatueOfAPokemonBecomeStrongerYouMust:
    Message IcebergRuins_Text_ItsAStatueOfAPokemonBecomeStrongerYouMust
    GoTo IcebergRuins_StatueEnd
    End

IcebergRuins_ItsAStatueOfAPokemon:
    Message IcebergRuins_Text_ItsAStatueOfAPokemon
    GoTo IcebergRuins_StatueEnd
    End

IcebergRuins_StatueEnd:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

IcebergRuins_DotNorth:
    SetVar VAR_MAP_LOCAL_1, 1
    GoToIfGe VAR_ICEBERG_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IcebergRuins_DotEnd
    GoTo IcebergRuins_ActivateDot
    End

IcebergRuins_DotFarWest:
    SetVar VAR_MAP_LOCAL_2, 1
    GoToIfGe VAR_ICEBERG_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IcebergRuins_DotEnd
    GoTo IcebergRuins_ActivateDot
    End

IcebergRuins_DotMiddleWest:
    SetVar VAR_MAP_LOCAL_3, 1
    GoToIfGe VAR_ICEBERG_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IcebergRuins_DotEnd
    GoTo IcebergRuins_ActivateDot
    End

IcebergRuins_DotMiddle:
    SetVar VAR_MAP_LOCAL_4, 1
    GoToIfGe VAR_ICEBERG_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IcebergRuins_DotEnd
    GoTo IcebergRuins_ActivateDot
    End

IcebergRuins_DotMiddleEast:
    SetVar VAR_MAP_LOCAL_5, 1
    GoToIfGe VAR_ICEBERG_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IcebergRuins_DotEnd
    GoTo IcebergRuins_ActivateDot
    End

IcebergRuins_DotFarEast:
    SetVar VAR_MAP_LOCAL_6, 1
    GoToIfGe VAR_ICEBERG_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IcebergRuins_DotEnd
    GoTo IcebergRuins_ActivateDot
    End

IcebergRuins_DotSouth:
    SetVar VAR_MAP_LOCAL_7, 1
    GoToIfGe VAR_ICEBERG_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IcebergRuins_DotEnd
    GoTo IcebergRuins_ActivateDot
    End

IcebergRuins_ActivateDot:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    ActivateRegiRuinsDot VAR_ICEBERG_RUINS_STATE, DOT_TYPE_ICEBERG_RUINS, VAR_0x8004, VAR_0x8005
    GoToIfGe VAR_ICEBERG_RUINS_STATE, RUINS_STATE_ACTIVATED_ALL_DOTS, IcebergRuins_ActivateStatue
    ReleaseAll
    End

IcebergRuins_DotEnd:
    End

IcebergRuins_ActivateStatue:
    GoToIfUnset FLAG_GAME_COMPLETED, IcebergRuins_DotEnd
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_29F 1
    SetVar VAR_ICEBERG_RUINS_STATE, RUINS_STATE_ACTIVATED_STATUE
    Message IcebergRuins_Text_SomethingChangedInTheAir
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
