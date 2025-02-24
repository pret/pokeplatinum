#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0021
    ScriptEntryEnd

_000A:
    ShowSignpostMessage 0, SIGNPOST_ROUTE_MAP
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0021:
    ShowSignpostMessage 1, SIGNPOST_ROUTE_MAP
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End
