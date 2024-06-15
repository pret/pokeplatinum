    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0023
    ScriptEntry _0036
    .short 0xFD13

_000E:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 0
    ScrCmd_035
    ScrCmd_148 4
    ReleaseAll
    End

_0023:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0036:
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
