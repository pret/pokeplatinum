    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    GoToIfSet 118, _004B
    Message 0
    SetVar 0x8004, 0x14B
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0056
    SetFlag 118
    ScrCmd_014 0x7E0
    CloseMessage
    ReleaseAll
    End

_004B:
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0056:
    ScrCmd_014 0x7E1
    CloseMessage
    ReleaseAll
    End
