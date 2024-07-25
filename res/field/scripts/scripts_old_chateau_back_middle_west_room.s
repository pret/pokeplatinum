#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 0x149, _009C
    GoToIfSet 0xAB0, _009C
    GetTimeOfDay 0x800C
    GoToIfLt 0x800C, 3, _009C
    Message 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0096
    BufferPlayerName 0
    Message 2
    CloseMessage
    ScrCmd_04C 0x1DF, 0
    ScrCmd_04D
    SetFlag 0xAB0
    ScrCmd_124 0x1DF, 20
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _00A7
    ScrCmd_2BC 0x800C
    GoToIfEq 0x800C, 1, _008B
    SetFlag 0x149
    ReleaseAll
    End

_008B:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0096:
    CloseMessage
    ReleaseAll
    End

_009C:
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A7:
    ScrCmd_0EB
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
