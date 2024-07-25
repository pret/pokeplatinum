#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001C
    ScriptEntry _0056
    ScriptEntry _00A1
    ScriptEntry _00B4
    ScriptEntry _001A
    ScriptEntry _00C5
    .short 0xFD13

_001A:
    End

_001C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0043
    Message 1
    GoTo _004E
    End

_0043:
    Message 2
    GoTo _004E
    End

_004E:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0056:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x964, _007F
    GoToIfSet 0x9B8, _008E
    Message 3
    GoTo _0099
    End

_007F:
    SetFlag 0x145
    Message 5
    GoTo _0099
    End

_008E:
    Message 4
    GoTo _0099
    End

_0099:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C5:
    BufferPlayerName 0
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
