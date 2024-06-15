    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0026
    ScriptEntry _0039
    ScriptEntry _004A
    ScriptEntry _005D
    ScriptEntry _0070
    ScriptEntry _0083
    ScriptEntry _0096
    ScriptEntry _00A9
    ScriptEntry _00BC
    .short 0xFD13

_0026:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0039:
    PlayFanfare 0x5DC
    LockAll
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_004A:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_005D:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 3
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0070:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 4
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0083:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 5
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0096:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 6
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00A9:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 7
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00BC:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_04B 0x5DC
    ScrCmd_04C 25, 0
    Message 8
    ScrCmd_04D
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
