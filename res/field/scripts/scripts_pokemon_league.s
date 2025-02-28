#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0025
    ScriptEntry _003C
    ScriptEntryEnd

_000E:
    DrawSignpostWithMessage 1, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

_0025:
    DrawSignpostWithMessage 2, SIGNPOST_TYPE_BUILDING_INFO
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

_003C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
