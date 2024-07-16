#include "macros/scrcmd.inc"

    .data

    ScriptEntry _002D
    ScriptEntry _0040
    ScriptEntry _000E
    .short 0xFD13

_000E:
    ScrCmd_238 13, 0x4000
    GoToIfEq 0x4000, 0, _0027
    ClearFlag 0x219
    End

_0027:
    SetFlag 0x219
    End

_002D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0040:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
