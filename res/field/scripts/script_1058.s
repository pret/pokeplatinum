    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0033
    .short 0xFD13

_000A:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    GoToIfSet 144, _0028
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0028:
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0033:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_0CD 0
    GoToIfSet 144, _0054
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0054:
    Message 3
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
