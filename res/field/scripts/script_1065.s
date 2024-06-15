    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _003A
    .short 0xFD13

_000A:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _002F
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_002F:
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_003A:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _009A
    GoTo _005A

_005A:
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _007A
    GoToIfEq 0x800C, 1, _0086
    End

_007A:
    ScrCmd_0CD 0
    Message 2
    GoTo _0092

_0086:
    ScrCmd_0CD 0
    Message 3
    GoTo _0092

_0092:
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_009A:
    GoToIfUnset 0x964, _005A
    GoToIfSet 240, _00C4
    SetFlag 240
    ScrCmd_21B
    ScrCmd_0CD 0
    Message 4
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00C4:
    ScrCmd_0CD 0
    ScrCmd_0E3 0x4001, 0x4000
    ScrCmd_0E2 1, 0x4001
    ScrCmd_0DA 2, 0x4000, 0, 1
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _00FA
    GoToIfEq 0x800C, 1, _0103
    End

_00FA:
    Message 5
    GoTo _010F

_0103:
    ScrCmd_0CD 0
    Message 6
    GoTo _010F

_010F:
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
