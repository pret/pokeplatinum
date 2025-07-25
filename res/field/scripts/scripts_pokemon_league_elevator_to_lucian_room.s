#include "macros/scrcmd.inc"


    ScriptEntry _000E
    ScriptEntry _0029
    ScriptEntry _0031
    ScriptEntryEnd

_000E:
    SetVar VAR_MAP_LOCAL_0, 0
    InitPersistedMapFeaturesForPlatformLift
    CheckPlatformLiftNotUsedWhenEnteredMap VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 0, _0029
    End

_0029:
    SetVar VAR_MAP_LOCAL_0, 1
    End

_0031:
    TriggerPlatformLift
    SetVar VAR_MAP_LOCAL_0, 1
    End

    .byte 0
