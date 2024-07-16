#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0070
    ScriptEntry _0083
    ScriptEntry _0096
    ScriptEntry _00A9
    ScriptEntry _002F
    ScriptEntry _001A
    .short 0xFD13

_001A:
    ScrCmd_238 11, 0x4000
    CallIfEq 0x4000, 0, _004F
    End

_002F:
    ScrCmd_238 11, 0x4000
    GoToIfNe 0x4000, 0, _0055
    CallIfUnset 0x217, _004F
    End

_004F:
    SetFlag 0x217
    Return

_0055:
    GoToIfSet 0x217, _0066
    ClearFlag 0x217
    End

_0066:
    ClearFlag 0x217
    ScrCmd_064 4
    End

_0070:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0083:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0096:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
