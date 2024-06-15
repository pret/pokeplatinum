    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0035
    .short 0xFD13

_000A:
    ScrCmd_23E 0
    ScrCmd_23E 1, 0x40ED
    GoToIfEq 0x40ED, 0, _002B
    ClearFlag 0x20A
    ScrCmd_23E 7
    End

_002B:
    SetFlag 0x20A
    ScrCmd_23E 7
    End

_0035:
    ScrCmd_23E 0
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_23E 1, 0x800C
    GoToIfEq 0x800C, 0, _00EE
    GetTimePeriod 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _007E
    GoToIfEq 0x8008, 1, _008A
    GoTo _0096

_007E:
    ScrCmd_0CD 0
    Message 0
    GoTo _00A2

_008A:
    ScrCmd_0CD 0
    Message 1
    GoTo _00A2

_0096:
    ScrCmd_0CD 0
    Message 2
    GoTo _00A2

_00A2:
    ScrCmd_23E 3, 0x800C
    GoToIfEq 0x800C, 0, _00D8
    ScrCmd_04E 0x486
    ScrCmd_23E 5, 0x8005, 0x8006
    ScrCmd_1FB 0x8005, 0x8006
    ScrCmd_04F
    Message 18
    WaitButtonPress
    ScrCmd_23E 4
    GoTo _0103

_00D8:
    ScrCmd_23E 6, 0x8005, 0x8006
    ScrCmd_1FB 0x8005, 0x8006
    WaitButtonPress
    GoTo _00F9

_00EE:
    Message 3
    WaitButtonPress
    GoTo _00F9

_00F9:
    CloseMessage
    ReleaseAll
    ScrCmd_23E 7
    End

_0103:
    CloseMessage
    ReleaseAll
    ScrCmd_23E 8
    End

    .byte 0
    .byte 0
    .byte 0
