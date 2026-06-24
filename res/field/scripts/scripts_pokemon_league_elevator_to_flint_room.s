#include "macros/scrcmd.inc"


    ScriptEntry PokemonLeagueElevatorToFlintRoom_OnTransition
    ScriptEntry PokemonLeagueElevatorToFlintRoom_DisablePlatformLift
    ScriptEntry PokemonLeagueElevatorToFlintRoom_CoordEvent_PlatformLift
    ScriptEntryEnd

PokemonLeagueElevatorToFlintRoom_OnTransition:
    SetVar VAR_MAP_LOCAL_0x0, 0
    InitPersistedMapFeaturesForPlatformLift
    CheckPlatformLiftNotUsedWhenEnteredMap VAR_MAP_LOCAL_0x1
    GoToIfEq VAR_MAP_LOCAL_0x1, FALSE, PokemonLeagueElevatorToFlintRoom_DisablePlatformLift
    End

PokemonLeagueElevatorToFlintRoom_DisablePlatformLift:
    SetVar VAR_MAP_LOCAL_0x0, 1
    End

PokemonLeagueElevatorToFlintRoom_CoordEvent_PlatformLift:
    TriggerPlatformLift
    SetVar VAR_MAP_LOCAL_0x0, 1
    End

    .balign 4, 0
