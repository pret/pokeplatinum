#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _001D
    .short 0xFD13

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_001D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x11C, _00BD
    GoToIfSet 120, _004A
    Message 1
    SetFlag 120
    GoTo _00C8
    End

_004A:
    ScrCmd_264 0x800C
    GoToIfEq 0x800C, 0, _009C
    GoToIfEq 0x800C, 1, _00A7
    Message 4
    SetVar 0x8004, 215
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00B2
    SetFlag 0x11C
    CallCommonScript 0x7FC
    GoTo _00BD
    End

_009C:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A7:
    Message 3
    GoTo _00C8
    End

_00B2:
    Message 5
    GoTo _00C8
    End

_00BD:
    Message 6
    GoTo _00C8
    End

_00C8:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
