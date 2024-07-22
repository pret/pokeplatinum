#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    SetVar 0x4000, 0
    ScrCmd_171
    End
