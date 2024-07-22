#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _0034
    .short 0xFD13

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0021:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0034:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 193, _00A1
    ScrCmd_1C0 0x800C, 74
    GoToIfEq 0x800C, 0, _0096
    Message 3
    SetVar 0x8004, 14
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _008C
    SetFlag 193
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_008C:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0096:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A1:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
