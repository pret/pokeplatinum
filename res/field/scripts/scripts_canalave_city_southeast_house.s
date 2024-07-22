#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0066
    .short 0xFD13

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 201, _0051
    Message 0
    SetVar 0x8004, 0x177
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _005C
    CallCommonScript 0x7FC
    SetFlag 201
    GoTo _0051
    End

_0051:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005C:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0066:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
