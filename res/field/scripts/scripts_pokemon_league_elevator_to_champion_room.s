#include "macros/scrcmd.inc"


    ScriptEntry PokemonLeagueElevatorToChampionRoom_OnTransition
    ScriptEntry PokemonLeagueElevatorToChampionRoom_DisablePlatformLift
    ScriptEntry PokemonLeagueElevatorToChampionRoom_CoordEvent_PlatformLift
    ScriptEntryEnd

PokemonLeagueElevatorToChampionRoom_OnTransition:
    SetVar VAR_MAP_LOCAL_0x00, 0
    InitPersistedMapFeaturesForPlatformLift
    CheckPlatformLiftNotUsedWhenEnteredMap VAR_MAP_LOCAL_0x01
    GoToIfEq VAR_MAP_LOCAL_0x01, FALSE, PokemonLeagueElevatorToChampionRoom_DisablePlatformLift
    End

PokemonLeagueElevatorToChampionRoom_DisablePlatformLift:
    SetVar VAR_MAP_LOCAL_0x00, 1
    End

PokemonLeagueElevatorToChampionRoom_CoordEvent_PlatformLift:
    TriggerPlatformLift
    SetVar VAR_MAP_LOCAL_0x00, 1
    End

    .balign 4, 0
