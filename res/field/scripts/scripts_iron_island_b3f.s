#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0032
    ScriptEntry _0075
    ScriptEntry _0081
    ScriptEntry _0012
    .short 0xFD13

_0012:
    ScrCmd_32B 0x4004
    GoToIfEq 0x4004, 0, _0061
    GoToIfEq 0x4004, 1, _006B
    End

_0032:
    ScrCmd_25B
    CallIfNe 0x4069, 0x122, _0079
    ScrCmd_32B 0x4004
    GoToIfEq 0x4004, 0, _0061
    GoToIfEq 0x4004, 1, _006B
    End

_0061:
    ScrCmd_18A 3, 17, 1
    End

_006B:
    ScrCmd_18A 2, 17, 1
    End

_0075:
    ScrCmd_25C
    End

_0079:
    SetVar 0x4069, 0
    Return

_0081:
    End

    .byte 0
