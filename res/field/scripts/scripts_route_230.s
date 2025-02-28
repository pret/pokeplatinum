#include "macros/scrcmd.inc"
#include "res/text/bank/route_230.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0025
    ScriptEntry _0038
    ScriptEntryEnd

_000E:
    DrawSignpostWithMessage 0, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

_0025:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0038:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
