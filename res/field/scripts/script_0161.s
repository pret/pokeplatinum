    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _001E
    ScriptEntry _0031
    ScriptEntry _0062
    .short 0xFD13

_0012:
    SetVar 0x8007, 0
    ScrCmd_014 0x7D2
    End

_001E:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0031:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_15B 7, 0x800C
    GoToIfEq 0x800C, 1, _0057
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0057:
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0062:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 3
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
