    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 0
    ScrCmd_1B7 0x800C, 4
    GoToIfEq 0x800C, 0, _0044
    GoToIfEq 0x800C, 1, _004F
    GoToIfEq 0x800C, 2, _005A
    GoTo _0065

_0044:
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_004F:
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_005A:
    Message 3
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0065:
    Message 4
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End
