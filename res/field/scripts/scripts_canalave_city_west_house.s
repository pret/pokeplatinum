#include "macros/scrcmd.inc"


    ScriptEntry _0029
    ScriptEntry _000A
    ScriptEntryEnd

_000A:
    ScrCmd_238 10, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0023
    ClearFlag FLAG_UNK_0x0216
    End

_0023:
    SetFlag FLAG_UNK_0x0216
    End

_0029:
    End

    .byte 0
