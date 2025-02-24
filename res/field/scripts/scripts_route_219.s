#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    ShowSignpostMessage 0, SIGNPOST_ROUTE_MAP
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

    .byte 0
    .byte 0
    .byte 0
