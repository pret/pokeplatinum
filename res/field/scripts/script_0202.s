    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0028
    ScriptEntry _002A
    ScriptEntry _0086
    .short 0xFD13

_0012:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_147 1
    ReleaseAll
    End

_0028:
    End

_002A:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    GoToIfSet 213, _0071
    Message 0
    SetVar 0x8004, 232
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _007C
    ScrCmd_014 0x7FC
    SetFlag 213
    GoTo _0071
    End

_0071:
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_007C:
    ScrCmd_014 0x7E1
    CloseMessage
    ReleaseAll
    End

_0086:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
