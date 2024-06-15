    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _0034
    .short 0xFD13

_000E:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0021:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0034:
    PlayFanfare 0x5DC
    LockAll
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
