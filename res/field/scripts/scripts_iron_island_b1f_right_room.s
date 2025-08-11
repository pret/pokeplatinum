#include "macros/scrcmd.inc"


    ScriptEntry _000A
    ScriptEntry _000E
    ScriptEntryEnd

_000A:
    InitPersistedMapFeaturesForPlatformLift
    End

_000E:
    TriggerPlatformLift
    End

    .balign 4, 0
