#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0025
    ScriptEntry _0038
    ScriptEntry _0097
    .short 0xFD13

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
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
    GoToIfSet 192, _008C
    BufferItemName 0, 13
    Message 2
    SetVar 0x8004, 13
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0082
    SetFlag 192
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0082:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_008C:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0097:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 54, 0
    Message 4
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
