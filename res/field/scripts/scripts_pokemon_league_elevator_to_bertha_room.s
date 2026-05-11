#include "macros/scrcmd.inc"


    ScriptEntry PokemonLeagueElevatorToBerthaRoom_OnTransition
    ScriptEntry PokemonLeagueElevatorToBerthaRoom_DisablePlatformLift
    ScriptEntry PokemonLeagueElevatorToBerthaRoom_TriggerPlatformLift
    ScriptEntryEnd

PokemonLeagueElevatorToBerthaRoom_OnTransition:
    SetVar VAR_MAP_LOCAL_0, 0
    InitPersistedMapFeaturesForPlatformLift
    CheckPlatformLiftNotUsedWhenEnteredMap VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, FALSE, PokemonLeagueElevatorToBerthaRoom_DisablePlatformLift
    End

PokemonLeagueElevatorToBerthaRoom_DisablePlatformLift:
    SetVar VAR_MAP_LOCAL_0, 1
    End

PokemonLeagueElevatorToBerthaRoom_TriggerPlatformLift:
    TriggerPlatformLift
    SetVar VAR_MAP_LOCAL_0, 1
    End

    .balign 4, 0
