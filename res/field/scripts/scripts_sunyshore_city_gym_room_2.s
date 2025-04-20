#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _001D
    ScriptEntry _0022
    ScriptEntry _0027
    ScriptEntryEnd

_0012:
    SetVar VAR_MAP_LOCAL_0, 0
    InitPersistedMapFeaturesForSunyshoreGym 1
    End

_001D:
    ScrCmd_176 0
    End

_0022:
    ScrCmd_176 1
    End

_0027:
    End

    .byte 0
    .byte 0
    .byte 0
