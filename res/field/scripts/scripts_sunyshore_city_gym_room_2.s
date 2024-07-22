#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _001D
    ScriptEntry _0022
    ScriptEntry _0027
    .short 0xFD13

_0012:
    SetVar 0x4000, 0
    ScrCmd_175 1
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
