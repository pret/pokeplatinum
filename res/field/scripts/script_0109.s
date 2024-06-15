    .include "macros/scrcmd.inc"

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
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0044:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0057:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_04B 0x5DC
    ScrCmd_04C 25, 0
    Message 2
    ScrCmd_04D
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
