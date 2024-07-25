#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0016
    ScriptEntry _005D
    ScriptEntry _007C
    ScriptEntry _00A5
    ScriptEntry _00B6
    .short 0xFD13

_0016:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 130, _0052
    Message 0
    SetVar 0x8004, 0x1C2
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    SetFlag 130
    SetVar 0x4114, 1
    ScrCmd_14C 9
    GoTo _0052
    End

_0052:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 35, 0
    Message 2
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 129, _009A
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009A:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
