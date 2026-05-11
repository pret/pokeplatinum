#include "macros/scrcmd.inc"


    ScriptEntry PokemonLeagueElevatorToFlintRoom_OnTransition
    ScriptEntry PokemonLeagueElevatorToFlintRoom_DisablePlatformLift
    ScriptEntry PokemonLeagueElevatorToFlintRoom_TriggerPlatformLift
    ScriptEntryEnd

PokemonLeagueElevatorToFlintRoom_OnTransition:
    SetVar VAR_MAP_LOCAL_0, 0
    InitPersistedMapFeaturesForPlatformLift
    CheckPlatformLiftNotUsedWhenEnteredMap VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, FALSE, PokemonLeagueElevatorToFlintRoom_DisablePlatformLift
    End

PokemonLeagueElevatorToFlintRoom_DisablePlatformLift:
    SetVar VAR_MAP_LOCAL_0, 1
    End

PokemonLeagueElevatorToFlintRoom_TriggerPlatformLift:
    TriggerPlatformLift
    SetVar VAR_MAP_LOCAL_0, 1
    End

    .balign 4, 0
