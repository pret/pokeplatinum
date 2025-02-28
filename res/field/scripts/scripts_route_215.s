#include "macros/scrcmd.inc"
#include "res/text/bank/route_215.h"

    .data

    ScriptEntry _008D
    ScriptEntry _00A0
    ScriptEntry _00FA
    ScriptEntry _0111
    ScriptEntry _013D
    ScriptEntry _0150
    ScriptEntry _0022
    ScriptEntry _0128
    ScriptEntryEnd

_0022:
    GetTimeOfDay 0x4000
    GoToIfEq 0x4000, 0, _0069
    GoToIfEq 0x4000, 1, _007B
    GoToIfEq 0x4000, 2, _007B
    GoToIfEq 0x4000, 3, _007B
    GoToIfEq 0x4000, 4, _007B
    End

_0069:
    ClearFlag 0x273
    ClearFlag 0x275
    SetFlag 0x272
    SetFlag 0x274
    End

_007B:
    ClearFlag 0x272
    ClearFlag 0x274
    SetFlag 0x273
    SetFlag 0x275
    End

_008D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 205, _00E5
    Message 1
    SetVar 0x8004, 0x189
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00F0
    CallCommonScript 0x7FC
    SetFlag 205
    GoTo _00E5

_00E5:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F0:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_00FA:
    DrawSignpostWithMessage 5, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

_0111:
    DrawSignpostWithMessage 6, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

_0128:
    DrawSignpostTextBox
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    DrawSignpostMessage 7
    CallCommonScript 0x7D0
    End

_013D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0150:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
