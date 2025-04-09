#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0077
    ScriptEntry _000E
    ScriptEntry _0043
    ScriptEntryEnd

_000E:
    CallIfNe 0x406A, 0x122, _003B
    CheckPartyHasFatefulEncounterRegigigas 0x4001
    GoToIfEq 0x4001, 0, _0063
    GoToIfEq 0x4001, 1, _006D
    End

_003B:
    SetVar 0x406A, 0
    Return

_0043:
    CheckPartyHasFatefulEncounterRegigigas 0x4001
    GoToIfEq 0x4001, 0, _0063
    GoToIfEq 0x4001, 1, _006D
    End

_0063:
    SetWarpEventPos 3, 17, 16
    End

_006D:
    SetWarpEventPos 2, 17, 16
    End

_0077:
    End

    .byte 0
    .byte 0
    .byte 0
