#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0029
    ScriptEntry _0031
    ScriptEntryEnd

_000E:
    SetVar VAR_0x4000, 0
    InitPersistedMapFeaturesForPlatformLift
    CheckPlatformLiftNotUsedWhenEnteredMap VAR_0x4001
    GoToIfEq VAR_0x4001, 0, _0029
    End

_0029:
    SetVar VAR_0x4000, 1
    End

_0031:
    TriggerPlatformLift
    SetVar VAR_0x4000, 1
    End

    .byte 0
