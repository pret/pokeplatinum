#include "macros/scrcmd.inc"


    ScriptEntry PokemonLeagueElevatorToLucianRoom_OnTransition
    ScriptEntry PokemonLeagueElevatorToLucianRoom_DisablePlatformLift
    ScriptEntry PokemonLeagueElevatorToLucianRoom_CoordEvent_PlatformLift
    ScriptEntryEnd

PokemonLeagueElevatorToLucianRoom_OnTransition:
    SetVar VAR_MAP_LOCAL_0x0, 0
    InitPersistedMapFeaturesForPlatformLift
    CheckPlatformLiftNotUsedWhenEnteredMap VAR_MAP_LOCAL_0x1
    GoToIfEq VAR_MAP_LOCAL_0x1, FALSE, PokemonLeagueElevatorToLucianRoom_DisablePlatformLift
    End

PokemonLeagueElevatorToLucianRoom_DisablePlatformLift:
    SetVar VAR_MAP_LOCAL_0x0, 1
    End

PokemonLeagueElevatorToLucianRoom_CoordEvent_PlatformLift:
    TriggerPlatformLift
    SetVar VAR_MAP_LOCAL_0x0, 1
    End

    .balign 4, 0
