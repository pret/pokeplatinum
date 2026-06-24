#include "macros/scrcmd.inc"


    ScriptEntry PokemonLeagueElevatorToAaronRoom_OnTransition
    ScriptEntry PokemonLeagueElevatorToAaronRoom_DisablePlatformLift
    ScriptEntry PokemonLeagueElevatorToAaronRoom_CoordEvent_PlatformLift
    ScriptEntryEnd

PokemonLeagueElevatorToAaronRoom_OnTransition:
    SetVar VAR_MAP_LOCAL_0x0, 0
    InitPersistedMapFeaturesForPlatformLift
    CheckPlatformLiftNotUsedWhenEnteredMap VAR_MAP_LOCAL_0x1
    GoToIfEq VAR_MAP_LOCAL_0x1, FALSE, PokemonLeagueElevatorToAaronRoom_DisablePlatformLift
    End

PokemonLeagueElevatorToAaronRoom_DisablePlatformLift:
    SetVar VAR_MAP_LOCAL_0x0, 1
    End

PokemonLeagueElevatorToAaronRoom_CoordEvent_PlatformLift:
    TriggerPlatformLift
    SetVar VAR_MAP_LOCAL_0x0, 1
    End

    .balign 4, 0
