#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0031
    ScriptEntry _0044
    ScriptEntry _0057
    ScriptEntry _0012
    .short 0xFD13

_0012:
    ScrCmd_238 13, 0x4000
    GoToIfEq 0x4000, 0, _002B
    ClearFlag 0x219
    End

_002B:
    SetFlag 0x219
    End

_0031:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0044:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0057:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 25, 0
    Message 2
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
