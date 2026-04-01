#include "macros/scrcmd.inc"


    ScriptEntry IronIslandB3F_OnTransition
    ScriptEntry IronIslandB3F_TriggerPlatformLift
    ScriptEntry IronIslandB3F_Unused
    ScriptEntry IronIslandB3F_OnLoad
    ScriptEntryEnd

IronIslandB3F_OnLoad:
    CheckPartyHasFatefulEncounterRegigigas VAR_MAP_LOCAL_4
    GoToIfEq VAR_MAP_LOCAL_4, FALSE, IronIslandB3F_RemoveWarpIronRuinsWithRegisteel
    GoToIfEq VAR_MAP_LOCAL_4, TRUE, IronIslandB3F_RemoveWarpIronRuinsWithoutRegisteel
    End

IronIslandB3F_OnTransition:
    InitPersistedMapFeaturesForPlatformLift
    CallIfNe VAR_IRON_RUINS_STATE, RUINS_STATE_CAUGHT_REGI, IronIslandB3F_ResetIronRuinsState
    CheckPartyHasFatefulEncounterRegigigas VAR_MAP_LOCAL_4
    GoToIfEq VAR_MAP_LOCAL_4, FALSE, IronIslandB3F_RemoveWarpIronRuinsWithRegisteel
    GoToIfEq VAR_MAP_LOCAL_4, TRUE, IronIslandB3F_RemoveWarpIronRuinsWithoutRegisteel
    End

IronIslandB3F_RemoveWarpIronRuinsWithRegisteel:
    SetWarpEventPos 3, 17, 1
    End

IronIslandB3F_RemoveWarpIronRuinsWithoutRegisteel:
    SetWarpEventPos 2, 17, 1
    End

IronIslandB3F_TriggerPlatformLift:
    TriggerPlatformLift
    End

IronIslandB3F_ResetIronRuinsState:
    SetVar VAR_IRON_RUINS_STATE, 0
    Return

IronIslandB3F_Unused:
    End

    .balign 4, 0
