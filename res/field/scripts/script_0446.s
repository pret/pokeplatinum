    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0072
    .short 0xFD13

_000A:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    GoToIfUnset 123, _0067
    GoToIfSet 161, _005C
    Message 0
    SetVar 0x8004, 247
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00CF
    ScrCmd_014 0x7FC
    SetFlag 161
    GoTo _005C
    End

_005C:
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0067:
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0072:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    GoToIfUnset 123, _00D9
    GoToIfSet 0x116, _00C4
    Message 3
    SetVar 0x8004, 224
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00CF
    ScrCmd_014 0x7FC
    SetFlag 0x116
    GoTo _00C4
    End

_00C4:
    Message 4
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00CF:
    ScrCmd_014 0x7E1
    CloseMessage
    ReleaseAll
    End

_00D9:
    Message 5
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End
