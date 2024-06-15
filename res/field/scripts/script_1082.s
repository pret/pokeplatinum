    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _002C
    .short 0xFD13

_000A:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_247 0x800C
    ScrCmd_212 0x8004, 0x800C
    ScrCmd_17C 0, 0x8004
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_002C:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
