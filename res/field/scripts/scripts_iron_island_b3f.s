#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0032
    ScriptEntry _0075
    ScriptEntry _0081
    ScriptEntry _0012
    ScriptEntryEnd

_0012:
    CheckPartyHasFatefulEncounterRegigigas 0x4004
    GoToIfEq VAR_0x4004, 0, _0061
    GoToIfEq VAR_0x4004, 1, _006B
    End

_0032:
    InitPersistedMapFeaturesForPlatformLift
    CallIfNe 0x4069, 0x122, _0079
    CheckPartyHasFatefulEncounterRegigigas 0x4004
    GoToIfEq VAR_0x4004, 0, _0061
    GoToIfEq VAR_0x4004, 1, _006B
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
    SetVar 0x4069, 0
    Return

_0081:
    End

    .byte 0
