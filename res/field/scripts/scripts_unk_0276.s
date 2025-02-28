#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _000C
    ScriptEntryEnd

_000A:
    End

_000C:
    DrawSignpostWithMessage 3, SIGNPOST_TYPE_BUILDING_INFO
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

    .byte 0
