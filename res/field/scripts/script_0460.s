    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _001D
    .short 0xFD13

_000A:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_001D:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0044
    Message 2
    GoTo _004F
    End

_0044:
    Message 3
    GoTo _004F
    End

_004F:
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
