    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _001A
    ScriptEntry _0028
    ScriptEntry _0036
    ScriptEntry _0044
    ScriptEntry _0057
    ScriptEntry _006A
    .short 0xFD13

_001A:
    PlayFanfare 0x5DC
    LockAll
    ScrCmd_1B5 3
    ReleaseAll
    End

_0028:
    PlayFanfare 0x5DC
    LockAll
    ScrCmd_1B5 4
    ReleaseAll
    End

_0036:
    PlayFanfare 0x5DC
    LockAll
    ScrCmd_1B5 5
    ReleaseAll
    End

_0044:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0057:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_006A:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
