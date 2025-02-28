#include "macros/scrcmd.inc"
#include "res/text/bank/route_208.h"

    .data

    ScriptEntry _0016
    ScriptEntry _002D
    ScriptEntry _0044
    ScriptEntry _0070
    ScriptEntry _005B
    ScriptEntryEnd

_0016:
    DrawSignpostWithMessage 2, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

_002D:
    DrawSignpostWithMessage 3, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

_0044:
    DrawSignpostWithMessage 4, SIGNPOST_TYPE_BUILDING_INFO
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

_005B:
    DrawSignpostTextBox
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    DrawSignpostMessage 5
    CallCommonScript 0x7D0
    End

_0070:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x13F, _00B5
    Message 0
    SetVar 0x8004, 111
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00C0
    SetFlag 0x13F
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_00B5:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C0:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
