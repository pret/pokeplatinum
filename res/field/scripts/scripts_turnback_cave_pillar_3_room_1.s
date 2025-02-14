#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    AddVar 0x410C, 1
    ScrCmd_285 0x410B, 0x410C
    End

    .byte 2
    .byte 0
    .byte 0
    .byte 0
