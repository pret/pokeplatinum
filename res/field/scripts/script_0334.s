    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare 0x5DC
    LockAll
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
