#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0021
    ScriptEntryEnd

_000A:
    DrawSignpostWithMessage 0, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

_0021:
    DrawSignpostWithMessage 1, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End
