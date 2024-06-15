    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _0024
    ScriptEntry _0043
    ScriptEntry _0062
    ScriptEntry _0081
    ScriptEntry _00A0
    ScriptEntry _00BF
    .short 0xFD13

_001E:
    SetFlag 0x9EF
    End

_0024:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_04B 0x5DC
    ScrCmd_04C 25, 0
    Message 0
    ScrCmd_04D
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0043:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_04B 0x5DC
    ScrCmd_04C 25, 0
    Message 1
    ScrCmd_04D
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0062:
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

_0081:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_04B 0x5DC
    ScrCmd_04C 25, 0
    Message 3
    ScrCmd_04D
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00A0:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_04B 0x5DC
    ScrCmd_04C 25, 0
    Message 4
    ScrCmd_04D
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00BF:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 5
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
