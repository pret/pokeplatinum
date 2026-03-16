#include "macros/scrcmd.inc"


    ScriptEntry MtCoronet1FNorthRoom2_Unused
    ScriptEntry MtCoronet1FNorthRoom2_OnTransition
    ScriptEntry MtCoronet1FNorthRoom2_OnLoad
    ScriptEntryEnd

MtCoronet1FNorthRoom2_OnTransition:
    CallIfNe VAR_ICEBERG_RUINS_STATE, RUINS_STATE_CAUGHT_REGI, MtCoronet1FNorthRoom2_ResetIcebergRuinsState
    CheckPartyHasFatefulEncounterRegigigas VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, FALSE, MtCoronet1FNorthRoom2_SetWarpEventIcebergRuins
    GoToIfEq VAR_MAP_LOCAL_1, TRUE, MtCoronet1FNorthRoom2_SetWarpEventMtCoronetIcebergRuins
    End

MtCoronet1FNorthRoom2_ResetIcebergRuinsState:
    SetVar VAR_ICEBERG_RUINS_STATE, 0
    Return

MtCoronet1FNorthRoom2_OnLoad:
    CheckPartyHasFatefulEncounterRegigigas VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, FALSE, MtCoronet1FNorthRoom2_SetWarpEventIcebergRuins
    GoToIfEq VAR_MAP_LOCAL_1, TRUE, MtCoronet1FNorthRoom2_SetWarpEventMtCoronetIcebergRuins
    End

MtCoronet1FNorthRoom2_SetWarpEventIcebergRuins:
    SetWarpEventPos 3, 17, 16
    End

MtCoronet1FNorthRoom2_SetWarpEventMtCoronetIcebergRuins:
    SetWarpEventPos 2, 17, 16
    End

MtCoronet1FNorthRoom2_Unused:
    End

    .balign 4, 0
