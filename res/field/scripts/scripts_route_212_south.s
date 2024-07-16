#include "macros/scrcmd.inc"

    .data

    ScriptEntry _007D
    ScriptEntry _0090
    ScriptEntry _00A3
    ScriptEntry _00B6
    ScriptEntry _00CD
    ScriptEntry _00F9
    ScriptEntry _0022
    ScriptEntry _00E4
    .short 0xFD13

_0022:
    GetTimeOfDay 0x4000
    GoToIfEq 0x4000, 0, _0069
    GoToIfEq 0x4000, 1, _0069
    GoToIfEq 0x4000, 2, _0069
    GoToIfEq 0x4000, 3, _0073
    GoToIfEq 0x4000, 4, _0073
    End

_0069:
    ClearFlag 0x268
    SetFlag 0x269
    End

_0073:
    ClearFlag 0x269
    SetFlag 0x268
    End

_007D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0090:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B6:
    ScrCmd_036 4, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_00CD:
    ScrCmd_036 5, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_00E4:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 6, 0x800C
    CallCommonScript 0x7D0
    End

_00F9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
