#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_forest_outside.h"

    .data

    ScriptEntry _0012
    ScriptEntry _0058
    ScriptEntry _006F
    ScriptEntry _0018
    ScriptEntryEnd

_0012:
    SetFlag 0x9C4
    End

_0018:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x12A, _004D
    SetVar 0x8004, 95
    ScrCmd_261 0, 0x8004
    Message 0
    SetVar 0x8005, 1
    CallCommonScript 0x7DF
    SetFlag 0x12A
    CloseMessage
    ReleaseAll
    End

_004D:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0058:
    DrawSignpostWithMessage 2, SIGNPOST_TYPE_BUILDING_INFO
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

_006F:
    DrawSignpostTextBox
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    DrawSignpostMessage 3
    CallCommonScript 0x7D0
    End
