    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0010
    .short 0xFD13

_000A:
    SetFlag 0x9D6
    End

_0010:
    PlayFanfare 0x5DC
    LockAll
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 2
    .byte 0
    .byte 0
