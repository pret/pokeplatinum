#include "macros/scrcmd.inc"

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
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_23E 1, 0x800C
    GoToIfEq 0x800C, 0, _00EE
    GetTimeOfDay 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _007E
    GoToIfEq 0x8008, 1, _008A
    GoTo _0096

_007E:
    BufferPlayerName 0
    Message 0
    GoTo _00A2

_008A:
    BufferPlayerName 0
    Message 1
    GoTo _00A2

_0096:
    BufferPlayerName 0
    Message 2
    GoTo _00A2

_00A2:
    ScrCmd_23E 3, 0x800C
    GoToIfEq 0x800C, 0, _00D8
    PlaySound SEQ_FANFA4
    ScrCmd_23E 5, 0x8005, 0x8006
    ScrCmd_1FB 0x8005, 0x8006
    WaitSound
    Message 18
    WaitABXPadPress
    ScrCmd_23E 4
    GoTo _0103

_00D8:
    ScrCmd_23E 6, 0x8005, 0x8006
    ScrCmd_1FB 0x8005, 0x8006
    WaitABXPadPress
    GoTo _00F9

_00EE:
    Message 3
    WaitABXPadPress
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
