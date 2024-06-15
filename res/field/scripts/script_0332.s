    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0010
    .short 0xFD13

_000A:
    SetFlag 0x9DC
    End

_0010:
    PlayFanfare 0x5DC
    LockAll
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
