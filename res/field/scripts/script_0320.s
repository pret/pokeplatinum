    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0010
    .short 0xFD13

_000A:
    SetFlag 0x9D8
    End

_0010:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_284 0x800C
    GoToIfGe 0x800C, 10, _0034
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0034:
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
