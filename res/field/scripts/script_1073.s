    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _006E
    ScriptEntry _00A9
    .short 0xFD13

_000E:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    GoToIfSet 0xAAA, _0059
    Message 0
    ScrCmd_1B7 0x8004, 5
    AddVar 0x8004, 149
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0064
    SetFlag 0xAAA
    ScrCmd_014 0x7E0
    CloseMessage
    ReleaseAll
    End

_0059:
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0064:
    ScrCmd_014 0x7E1
    CloseMessage
    ReleaseAll
    End

_006E:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    GoToIfSet 128, _009E
    Message 2
    SetVar 0x8004, 0x1C0
    SetVar 0x8005, 1
    SetFlag 128
    ScrCmd_014 0x7E0
    CloseMessage
    ReleaseAll
    End

_009E:
    Message 3
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00A9:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_257
    ReleaseAll
    End

    .byte 0
