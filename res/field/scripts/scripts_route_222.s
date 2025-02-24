#include "macros/scrcmd.inc"
#include "res/text/bank/route_222.h"

    .data

    ScriptEntry _00D7
    ScriptEntry _007D
    ScriptEntry _00EA
    ScriptEntry _0101
    ScriptEntry _0118
    ScriptEntry _012F
    ScriptEntry _0146
    ScriptEntry _0022
    ScriptEntryEnd

_0022:
    GetTimeOfDay 0x4000
    GoToIfEq 0x4000, 0, _0069
    GoToIfEq 0x4000, 1, _0069
    GoToIfEq 0x4000, 2, _0069
    GoToIfEq 0x4000, 3, _0073
    GoToIfEq 0x4000, 4, _0073
    End

_0069:
    ClearFlag 0x26A
    SetFlag 0x26B
    End

_0073:
    ClearFlag 0x26B
    SetFlag 0x26A
    End

_007D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 206, _00C2
    Message 0
    SetVar 0x8004, 0x17F
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00CD
    CallCommonScript 0x7FC
    SetFlag 206
    GoTo _00C2

_00C2:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CD:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_00D7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00EA:
    ShowSignpostMessage 4, SIGNPOST_ROUTE_MAP
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0101:
    ShowSignpostMessage 5, SIGNPOST_ROUTE_MAP
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0118:
    ShowSignpostMessage 6, SIGNPOST_BUILDING_INFO
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_012F:
    ShowSignpostMessage 7, SIGNPOST_BUILDING_INFO
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0146:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
