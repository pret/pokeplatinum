    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0026
    ScriptEntry _0039
    ScriptEntry _004C
    ScriptEntry _005F
    ScriptEntry _0072
    ScriptEntry _0085
    ScriptEntry _0098
    ScriptEntry _00AB
    ScriptEntry _00BE
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
    FacePlayer
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_004C:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_005F:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 3
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0072:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 4
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0085:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 5
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0098:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 6
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00AB:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 7
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00BE:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 8
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
