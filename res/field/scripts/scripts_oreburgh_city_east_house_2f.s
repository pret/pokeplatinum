#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0025
    ScriptEntry _0081
    ScriptEntry _0083
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
    GoToIfSet 0x10A, _006C
    Message 1
    SetVar 0x8004, 3
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0077
    CallCommonScript 0x7FC
    SetFlag 0x10A
    GoTo _006C
    End

_006C:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0077:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0081:
    End

_0083:
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
