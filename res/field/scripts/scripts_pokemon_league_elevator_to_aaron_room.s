#include "macros/scrcmd.inc"


    ScriptEntry PokemonLeagueElevatorToAaronRoom_OnTransition
    ScriptEntry _0029
    ScriptEntry PokemonLeagueElevatorToAaronRoom_TriggerPlatformLift
    ScriptEntryEnd

PokemonLeagueElevatorToAaronRoom_OnTransition:
    SetVar VAR_MAP_LOCAL_0, 0
    InitPersistedMapFeaturesForPlatformLift
    CheckPlatformLiftNotUsedWhenEnteredMap VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 0, _0029
    End

_0029:
    SetVar VAR_MAP_LOCAL_0, 1
    End

PokemonLeagueElevatorToAaronRoom_TriggerPlatformLift:
    TriggerPlatformLift
    SetVar VAR_MAP_LOCAL_0, 1
    End

    .balign 4, 0
