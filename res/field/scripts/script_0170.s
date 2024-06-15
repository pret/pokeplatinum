    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    GoToIfGe 0x40B5, 1, _002C
    SetVar 0x40B5, 1
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_002C:
    ScrCmd_134 18, 0x800C
    GoToIfEq 0x800C, 1, _0125
    ScrCmd_134 17, 0x800C
    GoToIfEq 0x800C, 1, _00A7
    ScrCmd_134 16, 0x800C
    GoToIfEq 0x800C, 1, _0089
    GoTo _006B

_006B:
    ScrCmd_213 0x8000, 12
    GoToIfNe 0x8000, 0xFF, _00C5
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0089:
    ScrCmd_213 0x8000, 14
    GoToIfNe 0x8000, 0xFF, _00E5
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00A7:
    ScrCmd_213 0x8000, 24
    GoToIfNe 0x8000, 0xFF, _0105
    Message 3
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00C5:
    ScrCmd_198 0x8000, 0x8001
    ScrCmd_0D0 0, 0x8000
    Message 4
    SetVar 0x8004, 16
    ScrCmd_014 0x7D9
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00E5:
    ScrCmd_198 0x8000, 0x8001
    ScrCmd_0D0 0, 0x8000
    Message 5
    SetVar 0x8004, 17
    ScrCmd_014 0x7D9
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0105:
    ScrCmd_198 0x8000, 0x8001
    ScrCmd_0D0 0, 0x8000
    Message 6
    SetVar 0x8004, 18
    ScrCmd_014 0x7D9
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0125:
    Message 7
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End
