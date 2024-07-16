#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0045
    .short 0xFD13

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_134 14, 0x800C
    GoToIfNe 0x800C, 0, _003A
    Message 0
    SetVar 0x8004, 14
    CallCommonScript 0x7D9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_003A:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0045:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_134 14, 0x800C
    GoToIfNe 0x800C, 0, _0071
    GoTo _0066

_0066:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0071:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
