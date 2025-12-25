#include "macros/scrcmd.inc"


    ScriptEntry PokemonLeagueElevatorToLucianRoom_OnTransition
    ScriptEntry _0029
    ScriptEntry PokemonLeagueElevatorToLucianRoom_TriggerPlatformLift
    ScriptEntryEnd

PokemonLeagueElevatorToLucianRoom_OnTransition:
    SetVar VAR_MAP_LOCAL_0, 0
    InitPersistedMapFeaturesForPlatformLift
    CheckPlatformLiftNotUsedWhenEnteredMap VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 0, _0029
    End

_0029:
    SetVar VAR_MAP_LOCAL_0, 1
    End

PokemonLeagueElevatorToLucianRoom_TriggerPlatformLift:
    TriggerPlatformLift
    SetVar VAR_MAP_LOCAL_0, 1
    End

    .balign 4, 0
