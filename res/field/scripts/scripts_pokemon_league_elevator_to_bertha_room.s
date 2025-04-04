#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0029
    ScriptEntry _0031
    ScriptEntryEnd

_000E:
    SetVar 0x4000, 0
    InitPersistedMapFeaturesForPlatformLift
    CheckPlatformLiftNotUsedWhenEnteredMap 0x4001
    GoToIfEq 0x4001, 0, _0029
    End

_0029:
    SetVar 0x4000, 1
    End

_0031:
    TriggerPlatformLift
    SetVar 0x4000, 1
    End

    .byte 0
