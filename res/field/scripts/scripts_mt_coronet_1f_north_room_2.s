#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0077
    ScriptEntry _000E
    ScriptEntry _0043
    .short 0xFD13

_000E:
    CallIfNe 0x406A, 0x122, _003B
    ScrCmd_32B 0x4001
    GoToIfEq 0x4001, 0, _0063
    GoToIfEq 0x4001, 1, _006D
    End

_003B:
    SetVar 0x406A, 0
    Return

_0043:
    ScrCmd_32B 0x4001
    GoToIfEq 0x4001, 0, _0063
    GoToIfEq 0x4001, 1, _006D
    End

_0063:
    ScrCmd_18A 3, 17, 16
    End

_006D:
    ScrCmd_18A 2, 17, 16
    End

_0077:
    End

    .byte 0
    .byte 0
    .byte 0
