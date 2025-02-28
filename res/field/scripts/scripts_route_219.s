#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    DrawSignpostWithMessage 0, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

    .byte 0
    .byte 0
    .byte 0
