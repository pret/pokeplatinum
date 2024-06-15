    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    GoToIfSet 0x107, _0024
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0024:
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
