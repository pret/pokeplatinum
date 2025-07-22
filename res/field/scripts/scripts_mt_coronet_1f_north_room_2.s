#include "macros/scrcmd.inc"


    ScriptEntry _0077
    ScriptEntry _000E
    ScriptEntry _0043
    ScriptEntryEnd

_000E:
    CallIfNe VAR_UNK_0x406A, 0x122, _003B
    CheckPartyHasFatefulEncounterRegigigas VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 0, _0063
    GoToIfEq VAR_MAP_LOCAL_1, 1, _006D
    End

_003B:
    SetVar VAR_UNK_0x406A, 0
    Return

_0043:
    CheckPartyHasFatefulEncounterRegigigas VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 0, _0063
    GoToIfEq VAR_MAP_LOCAL_1, 1, _006D
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
