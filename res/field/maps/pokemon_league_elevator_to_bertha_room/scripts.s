#include "macros/scrcmd.inc"


    ScriptEntry PokemonLeagueElevatorToBerthaRoom_OnTransition
    ScriptEntry PokemonLeagueElevatorToBerthaRoom_DisablePlatformLift
    ScriptEntry PokemonLeagueElevatorToBerthaRoom_CoordEvent_PlatformLift
    ScriptEntryEnd

PokemonLeagueElevatorToBerthaRoom_OnTransition:
    SetVar VAR_MAP_LOCAL_0x00, 0
    InitPersistedMapFeaturesForPlatformLift
    CheckPlatformLiftNotUsedWhenEnteredMap VAR_MAP_LOCAL_0x01
    GoToIfEq VAR_MAP_LOCAL_0x01, FALSE, PokemonLeagueElevatorToBerthaRoom_DisablePlatformLift
    End

PokemonLeagueElevatorToBerthaRoom_DisablePlatformLift:
    SetVar VAR_MAP_LOCAL_0x00, 1
    End

PokemonLeagueElevatorToBerthaRoom_CoordEvent_PlatformLift:
    TriggerPlatformLift
    SetVar VAR_MAP_LOCAL_0x00, 1
    End

    .balign 4, 0
