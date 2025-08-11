#include "macros/scrcmd.inc"


    ScriptEntry _0032
    ScriptEntry _0075
    ScriptEntry _0081
    ScriptEntry _0012
    ScriptEntryEnd

_0012:
    CheckPartyHasFatefulEncounterRegigigas VAR_MAP_LOCAL_4
    GoToIfEq VAR_MAP_LOCAL_4, 0, _0061
    GoToIfEq VAR_MAP_LOCAL_4, 1, _006B
    End

_0032:
    InitPersistedMapFeaturesForPlatformLift
    CallIfNe VAR_UNK_0x4069, 0x122, _0079
    CheckPartyHasFatefulEncounterRegigigas VAR_MAP_LOCAL_4
    GoToIfEq VAR_MAP_LOCAL_4, 0, _0061
    GoToIfEq VAR_MAP_LOCAL_4, 1, _006B
    End

_0061:
    SetWarpEventPos 3, 17, 1
    End

_006B:
    SetWarpEventPos 2, 17, 1
    End

_0075:
    TriggerPlatformLift
    End

_0079:
    SetVar VAR_UNK_0x4069, 0
    Return

_0081:
    End

    .balign 4, 0
