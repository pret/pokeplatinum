#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0029
    ScriptEntry _000A
    .short 0xFD13

_000A:
    ScrCmd_238 10, 0x4000
    GoToIfEq 0x4000, 0, _0023
    ClearFlag 0x216
    End

_0023:
    SetFlag 0x216
    End

_0029:
    End

    .byte 0
