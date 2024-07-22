#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0031
    ScriptEntry _0044
    ScriptEntry _00CC
    ScriptEntry _0012
    .short 0xFD13

_0012:
    ScrCmd_238 9, 0x4000
    GoToIfEq 0x4000, 0, _002B
    ClearFlag 0x215
    End

_002B:
    SetFlag 0x215
    End

_0031:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0044:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x13D, _00A4
    ScrCmd_0DE 0x800C
    CallIfEq 0x800C, 0x183, _00B4
    CallIfEq 0x800C, 0x186, _00BC
    CallIfEq 0x800C, 0x189, _00C4
    SetVar 0x410A, 0x8004
    ScrCmd_343 0, 0x8004
    Message 1
    SetVar 0x8005, 1
    CallCommonScript 0x7DF
    SetFlag 0x13D
    CloseMessage
    ReleaseAll
    End

_00A4:
    ScrCmd_261 0, 0x410A
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B4:
    SetVar 0x8004, 92
    Return

_00BC:
    SetVar 0x8004, 93
    Return

_00C4:
    SetVar 0x8004, 94
    Return

_00CC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
