#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    AddVar 0x410C, 1
    ScrCmd_285 0x410B, 0x410C
    End
