    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0045
    .short 0xFD13

_000A:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_134 11, 0x800C
    GoToIfEq 0x800C, 1, _003A
    Message 0
    SetVar 0x8004, 11
    ScrCmd_014 0x7D9
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_003A:
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0045:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_04B 0x5DC
    ScrCmd_04C 0x1B8, 0
    Message 2
    ScrCmd_04D
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End
