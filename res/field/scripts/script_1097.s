    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0028
    ScriptEntry _002A
    ScriptEntry _003D
    .short 0xFD13

_0012:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_147 1
    ReleaseAll
    End

_0028:
    End

_002A:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_003D:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End
