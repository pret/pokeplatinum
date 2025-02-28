#include "macros/scrcmd.inc"
#include "res/text/bank/route_211_east.h"

    .data

    ScriptEntry _0012
    ScriptEntry _0088
    ScriptEntry _009F
    ScriptEntry _00B4
    ScriptEntryEnd

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 198, _0066
    Message 0
    CloseMessage
    FacePlayer
    ApplyMovement 0x800D, _0080
    WaitMovement
    Message 1
    SetVar 0x8004, 0x194
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0073
    CallCommonScript 0x7FC
    SetFlag 198
    GoTo _0066

_0066:
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0073:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0080:
    MoveAction_075
    EndMovement

_0088:
    DrawSignpostWithMessage 3, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

_009F:
    DrawSignpostTextBox
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    DrawSignpostMessage 4
    CallCommonScript 0x7D0
    End

_00B4:
    DrawSignpostWithMessage 5, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

    .byte 0
