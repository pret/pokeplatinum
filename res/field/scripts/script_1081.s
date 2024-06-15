    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _005C
    .short 0xFD13

_000E:
    CallIfSet 254, _001B
    End

_001B:
    ClearFlag 0x1D1
    Return

_0021:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_134 8, 0x800C
    GoToIfEq 0x800C, 1, _0051
    Message 0
    SetVar 0x8004, 8
    ScrCmd_014 0x7D9
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0051:
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_005C:
    PlayFanfare 0x5DC
    LockAll
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
