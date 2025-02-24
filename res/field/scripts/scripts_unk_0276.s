#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _000C
    ScriptEntryEnd

_000A:
    End

_000C:
    ShowSignpostMessage 3, SIGNPOST_BUILDING_INFO
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

    .byte 0
