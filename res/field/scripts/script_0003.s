    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0016
    ScriptEntry _002C
    ScriptEntry _0042
    ScriptEntry _0055
    ScriptEntry _0068
    .short 0xFD13

_0016:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_147 1
    ReleaseAll
    End

_002C:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_148 0
    ReleaseAll
    End

_0042:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0055:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0068:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
